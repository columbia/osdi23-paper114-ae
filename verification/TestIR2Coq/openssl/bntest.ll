; ModuleID = 'test/bntest.c'
source_filename = "test/bntest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bignum_ctx = type opaque
%struct.anon = type { i32, i32, i32, i32 }
%struct.mpitest_st = type { i8*, i8*, i64 }
%struct.mod_exp_test_st = type { i8*, i8*, i8*, i8* }
%struct.anon.0 = type { i32, i32, double }
%struct.filetest_st = type { i8*, i32 (%struct.stanza_st*)* }
%struct.stanza_st = type { i8*, %struct.bio_st*, i32, i32, i32, i32, i32, i32, [150 x %struct.pair_st], %struct.bio_st*, [4096 x i8] }
%struct.pair_st = type { i8*, i8* }
%struct.bio_st = type opaque
%struct.bignum_st = type opaque
%struct.bn_recp_ctx_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_gencb_st = type opaque

@test_get_options.test_options = internal constant [11 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [file...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"stochastic\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Run stochastic tests\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"file\09File to run tests on. Normal tests are not run\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"test/bntest.c\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ctx = BN_CTX_new()\00", align 1
@ctx = internal unnamed_addr global %struct.bignum_ctx* null, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"test_sub\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"test_div_recip\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"test_signed_mod_replace_ab\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"test_signed_mod_replace_ba\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"test_mod\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"test_modexp_mont5\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"test_kronecker\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"test_rand\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"test_bn2padded\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"test_dec2bn\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"test_hex2bn\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"test_asc2bn\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"test_mpi\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"test_negzero\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"test_badmod\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"test_expmodzero\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"test_expmodone\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"test_smallprime\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"test_smallsafeprime\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"test_swap\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"test_ctx_consttime_flag\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"test_gf2m_add\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"test_gf2m_mod\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"test_gf2m_mul\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"test_gf2m_sqr\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"test_gf2m_modinv\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"test_gf2m_moddiv\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"test_gf2m_modexp\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"test_gf2m_modsqrt\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"test_gf2m_modsolvequad\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"test_is_prime\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"test_not_prime\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"test_gcd_prime\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"test_mod_exp\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"test_mod_exp_consttime\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"test_rand_range\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"run_file_tests\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"a = BN_new()\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"b = BN_new()\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"c = BN_new()\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"BN_bntest_rand(a, 512, 0, 0)\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"BN_copy(b, a)\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"BN_set_bit(a, i)\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"BN_add_word(b, i)\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"BN_bntest_rand(b, 400 + i - NUM1, 0, 0)\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"BN_sub(c, a, b)\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"BN_add(c, c, b)\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"BN_sub(c, c, a)\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@rand_neg.neg = internal unnamed_addr global i32 0, align 4
@rand_neg.sign = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], align 16
@.str.69 = private unnamed_addr constant [13 x i8] c"d = BN_new()\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"e = BN_new()\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"recp = BN_RECP_CTX_new()\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"BN_bntest_rand(a, 400, 0, 0)\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"BN_lshift(a, a, i)\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"BN_add_word(a, i)\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"BN_bntest_rand(b, 50 + 3 * (i - NUM1), 0, 0)\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"BN_RECP_CTX_set(recp, b, ctx)\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"BN_div_recp(d, c, a, recp, ctx)\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"BN_mul(e, d, b, ctx)\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"BN_add(d, e, c)\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"BN_sub(d, d, a)\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.82 = private unnamed_addr constant [41 x i8] c"a = set_signed_bn(signed_mod_tests[n].n)\00", align 1
@signed_mod_tests = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { i32 10, i32 3, i32 3, i32 1 }, %struct.anon { i32 -10, i32 3, i32 -3, i32 -1 }, %struct.anon { i32 10, i32 -3, i32 -3, i32 1 }, %struct.anon { i32 -10, i32 -3, i32 3, i32 -1 }], align 16
@.str.83 = private unnamed_addr constant [47 x i8] c"b = set_signed_bn(signed_mod_tests[n].divisor)\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"c = set_signed_bn(signed_mod_tests[n].result)\00", align 1
@.str.85 = private unnamed_addr constant [49 x i8] c"d = set_signed_bn(signed_mod_tests[n].remainder)\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"BN_div(a, b, a, b, ctx)\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"BN_div(b, a, a, b, ctx)\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(a, 1024, 0, 0)\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"BN_bntest_rand(b, 450 + i * 10, 0, 0)\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"BN_mod(c, a, b, ctx)\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"BN_div(d, e, a, b, ctx)\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"BN_mul(c, d, b, ctx)\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"BN_add(d, c, e)\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"m = BN_new()\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"mont = BN_MONT_CTX_new()\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(m, 1024, 0, 1)\00", align 1
@.str.102 = private unnamed_addr constant [49 x i8] c"BN_mod_exp_mont_consttime(d, a, p, m, ctx, NULL)\00", align 1
@.str.103 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&a, \227878787878787878787878787878787878787878787878787878787878787878\22 \227878787878787878787878787878787878787878787878787878787878787878\22 \227878787878787878787878787878787878787878787878787878787878787878\22 \227878787878787878787878787878787878787878787878787878787878787878\22)\00", align 1
@.str.104 = private unnamed_addr constant [257 x i8] c"7878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878787878\00", align 1
@.str.105 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&b, \22095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744\22 \22E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D68593\22 \229B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F03\22 \229CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81\22)\00", align 1
@.str.106 = private unnamed_addr constant [257 x i8] c"095D72C08C097BA488C5E439C655A192EAFB6380073D8C2664668EDDB4060744E16E57FB4EDB9AE10A0CEFCDC28A894F689A128379DB279D48A2E20849D685939B7803BCF46CEBF5C533FB0DD35B080593DE5472E3FE5DB951B8BFF9B4CB8F039CC638A5EE8CDD703719F8000E6A9F63BEED5F2FCD52FF293EA05A251BB4AB81\00", align 1
@.str.107 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&n, \22D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B\22 \2291B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5\22 \22D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA4\22 \222C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF\22)\00", align 1
@.str.108 = private unnamed_addr constant [257 x i8] c"D78AF684E71DB0C39CFF4E64FB9DB567132CB9C50CC98009FEB820B26F2DED9B91B9B5E2B83AE0AE4EB4E0523CA726BFBE969B89FD754F674CE99118C3F2D1C5D81FDC7C54E02B60262B241D53C040E99E45826ECA37A804668E690E1AFC1CA42C9A15D84D4954425F0B7642FC0BD9D7B24E2618D2DCC9B729D944BADACFDDAF\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"BN_MONT_CTX_set(mont, n, ctx)\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"BN_mod_mul_montgomery(c, a, b, mont, ctx)\00", align 1
@.str.111 = private unnamed_addr constant [42 x i8] c"BN_mod_mul_montgomery(d, b, a, mont, ctx)\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"parse_bigBN(&n, bn1strings)\00", align 1
@bn1strings = internal global [17 x i8*] [i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.161, i32 0, i32 0), i8* null], align 16
@.str.113 = private unnamed_addr constant [28 x i8] c"parse_bigBN(&a, bn2strings)\00", align 1
@bn2strings = internal global [17 x i8*] [i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.163, i32 0, i32 0), i8* null], align 16
@.str.114 = private unnamed_addr constant [14 x i8] c"b = BN_dup(a)\00", align 1
@.str.115 = private unnamed_addr constant [42 x i8] c"BN_mod_mul_montgomery(c, a, a, mont, ctx)\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c"BN_mod_mul_montgomery(d, a, b, mont, ctx)\00", align 1
@test_modexp_mont5.ahex = internal global [13 x i8*] [i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.126, i32 0, i32 0), i8* null], align 16
@.str.117 = private unnamed_addr constant [55 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.118 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.119 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFEADBCFC4DAE7FFF908E92820306B\00", align 1
@.str.120 = private unnamed_addr constant [65 x i8] c"9544D954000000006C0000000000000000000000000000000000000000000000\00", align 1
@.str.121 = private unnamed_addr constant [65 x i8] c"00000000000000000000FF030202FFFFF8FFEBDBCFC4DAE7FFF908E92820306B\00", align 1
@.str.122 = private unnamed_addr constant [65 x i8] c"9544D954000000006C000000FF0302030000000000FFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.123 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FC00FF02FFFFFFFF\00", align 1
@.str.124 = private unnamed_addr constant [65 x i8] c"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FCFD\00", align 1
@.str.125 = private unnamed_addr constant [65 x i8] c"FCFFFFFFFFFF000000000000000000FF0302030000000000FFFFFFFFFFFFFFFF\00", align 1
@.str.126 = private unnamed_addr constant [65 x i8] c"FF00FCFDFDFF030202FF00000000FFFFFFFFFFFFFFFFFF00FCFDFCFFFFFFFFFF\00", align 1
@test_modexp_mont5.nhex = internal global [13 x i8*] [i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.133, i32 0, i32 0), i8* null], align 16
@.str.127 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8000000\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"00000010000000006C0000000000000000000000000000000000000000000000\00", align 1
@.str.129 = private unnamed_addr constant [65 x i8] c"00000000000000000000000000000000000000FFFFFFFFFFFFF8F8F8F8000000\00", align 1
@.str.130 = private unnamed_addr constant [65 x i8] c"00000010000000006C000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.131 = private unnamed_addr constant [65 x i8] c"00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.132 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF\00", align 1
@.str.133 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"parse_bigBN(&a, ahex)\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"parse_bigBN(&n, nhex)\00", align 1
@.str.136 = private unnamed_addr constant [216 x i8] c"BN_hex2bn(&a, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22)\00", align 1
@.str.137 = private unnamed_addr constant [193 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.138 = private unnamed_addr constant [149 x i8] c"BN_hex2bn(&n, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22)\00", align 1
@.str.139 = private unnamed_addr constant [129 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.140 = private unnamed_addr constant [42 x i8] c"BN_mod_mul_montgomery(d, a, a, mont, ctx)\00", align 1
@.str.141 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&a, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\22)\00", align 1
@.str.142 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\00", align 1
@.str.143 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&b, \222020202020202020202020202020202020202020202020202020202020202020\22 \222020202020202020202020202020202020202020202020202020202020202020\22 \2220202020202020FF202020202020202020202020202020202020202020202020\22 \222020202020202020202020202020202020202020202020202020202020202020\22)\00", align 1
@.str.144 = private unnamed_addr constant [257 x i8] c"2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020FF2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020\00", align 1
@.str.145 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&n, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF\22)\00", align 1
@.str.146 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020FF\00", align 1
@.str.147 = private unnamed_addr constant [49 x i8] c"BN_mod_exp_mont_consttime(c, a, b, n, ctx, mont)\00", align 1
@.str.148 = private unnamed_addr constant [39 x i8] c"BN_mod_exp_mont(d, a, b, n, ctx, mont)\00", align 1
@.str.149 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&b, \221FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D\22 \229DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CB\22 \22B58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38\22 \22E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E\22)\00", align 1
@.str.150 = private unnamed_addr constant [257 x i8] c"1FA53F26F8811C58BE0357897AA5E165693230BC9DF5F01DFA6A2D59229EC69D9DE6A89C36E3B6957B22D6FAAD5A3C73AE587B710DBE92E83D3A9A3339A085CBB58F508CA4F837924BB52CC1698B7FDC2FD74362456A595A5B58E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E38E\00", align 1
@.str.151 = private unnamed_addr constant [283 x i8] c"BN_hex2bn(&n, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020202020DF\22)\00", align 1
@.str.152 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(p, 1024, 0, 0)\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"BN_one(a)\00", align 1
@.str.154 = private unnamed_addr constant [30 x i8] c"BN_MONT_CTX_set(mont, m, ctx)\00", align 1
@.str.155 = private unnamed_addr constant [36 x i8] c"BN_from_montgomery(e, a, mont, ctx)\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"BN_mod_exp_mont_consttime(d, e, p, m, ctx, NULL)\00", align 1
@.str.157 = private unnamed_addr constant [35 x i8] c"BN_mod_exp_simple(a, e, p, m, ctx)\00", align 1
@.str.158 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(e, 1024, 0, 0)\00", align 1
@.str.159 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFF00\00", align 1
@.str.160 = private unnamed_addr constant [65 x i8] c"0000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.161 = private unnamed_addr constant [65 x i8] c"00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF\00", align 1
@.str.162 = private unnamed_addr constant [65 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFF0000000000\00", align 1
@.str.163 = private unnamed_addr constant [65 x i8] c"000000000000000000000000000000000000000000FFFFFFFFFFFFFF00000000\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"r = BN_new()\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"t = BN_new()\00", align 1
@.str.166 = private unnamed_addr constant [50 x i8] c"BN_generate_prime_ex(b, 512, 0, NULL, NULL, NULL)\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"BN_copy(t, b)\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"BN_sub_word(t, 1)\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"BN_rshift1(t, t)\00", align 1
@.str.170 = private unnamed_addr constant [33 x i8] c"BN_mod_exp_recp(r, a, t, b, ctx)\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"BN_add_word(r, 1)\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"BN_ucmp(r, b)\00", align 1
@.str.173 = private unnamed_addr constant [35 x i8] c"Legendre symbol computation failed\00", align 1
@.str.174 = private unnamed_addr constant [36 x i8] c"kronecker = BN_kronecker(a, b, ctx)\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"legendre\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"kronecker\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"bn = BN_new()\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"BN_rand(bn, 0, 0 , 0 )\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"BN_rand(bn, 0, 1 , 1 )\00", align 1
@.str.181 = private unnamed_addr constant [23 x i8] c"BN_rand(bn, 1, 0 , 0 )\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c"BN_rand(bn, 1, 1 , 0 )\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"BN_rand(bn, 1, -1 , 1 )\00", align 1
@.str.185 = private unnamed_addr constant [23 x i8] c"BN_rand(bn, 2, 1 , 0 )\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"parsedecBN(&bn, \220\22)\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"parsedecBN(&bn, \22256\22)\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"parsedecBN(&bn, \22-42\22)\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"-42\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"parsedecBN(&bn, \221\22)\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"parsedecBN(&bn, \22-0\22)\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.198 = private unnamed_addr constant [49 x i8] c"parsedecBN(&bn, \2242trailing garbage is ignored\22)\00", align 1
@.str.199 = private unnamed_addr constant [30 x i8] c"42trailing garbage is ignored\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"parseBN(&bn, \220\22)\00", align 1
@.str.201 = private unnamed_addr constant [20 x i8] c"parseBN(&bn, \22256\22)\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"0x256\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"parseBN(&bn, \22-42\22)\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"0x42\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"parseBN(&bn, \22cb\22)\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"0xCB\00", align 1
@.str.208 = private unnamed_addr constant [19 x i8] c"parseBN(&bn, \22-0\22)\00", align 1
@.str.209 = private unnamed_addr constant [47 x i8] c"parseBN(&bn, \22abctrailing garbage is ignored\22)\00", align 1
@.str.210 = private unnamed_addr constant [31 x i8] c"abctrailing garbage is ignored\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"0xabc\00", align 1
@.str.212 = private unnamed_addr constant [20 x i8] c"BN_asc2bn(&bn, \220\22)\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"BN_asc2bn(&bn, \22256\22)\00", align 1
@.str.214 = private unnamed_addr constant [22 x i8] c"BN_asc2bn(&bn, \22-42\22)\00", align 1
@.str.215 = private unnamed_addr constant [25 x i8] c"BN_asc2bn(&bn, \220x1234\22)\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"0x1234\00", align 1
@.str.217 = private unnamed_addr constant [25 x i8] c"BN_asc2bn(&bn, \220X1234\22)\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"0X1234\00", align 1
@.str.219 = private unnamed_addr constant [26 x i8] c"BN_asc2bn(&bn, \22-0xabcd\22)\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"-0xabcd\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"0xabcd\00", align 1
@.str.222 = private unnamed_addr constant [21 x i8] c"BN_asc2bn(&bn, \22-0\22)\00", align 1
@.str.223 = private unnamed_addr constant [49 x i8] c"BN_asc2bn(&bn, \22123trailing garbage is ignored\22)\00", align 1
@.str.224 = private unnamed_addr constant [31 x i8] c"123trailing garbage is ignored\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@kMPITests = internal unnamed_addr constant [6 x %struct.mpitest_st] [%struct.mpitest_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i32 0, i32 0), i64 4 }, %struct.mpitest_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.235, i32 0, i32 0), i64 5 }, %struct.mpitest_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), i64 5 }, %struct.mpitest_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), i64 6 }, %struct.mpitest_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), i64 6 }, %struct.mpitest_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i32 0, i32 0), i64 6 }], align 16
@.str.226 = private unnamed_addr constant [29 x i8] c"BN_asc2bn(&bn, test->base10)\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"mpi_len\00", align 1
@.str.228 = private unnamed_addr constant [16 x i8] c"sizeof(scratch)\00", align 1
@.str.229 = private unnamed_addr constant [34 x i8] c"mpi_len2 = BN_bn2mpi(bn, scratch)\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"test->mpi\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.232 = private unnamed_addr constant [40 x i8] c"bn2 = BN_mpi2bn(scratch, mpi_len, NULL)\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"bn2\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"\00\00\00\01\01\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"\00\00\00\01\81\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"\00\00\00\02\00\80\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"\00\00\00\02\01\00\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"-256\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"\00\00\00\02\81\00\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"BN_set_word(a, 1)\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"BN_mul(c, a, b, ctx)\00", align 1
@.str.244 = private unnamed_addr constant [21 x i8] c"numerator = BN_new()\00", align 1
@.str.245 = private unnamed_addr constant [23 x i8] c"denominator = BN_new()\00", align 1
@.str.246 = private unnamed_addr constant [26 x i8] c"BN_set_word(numerator, 1)\00", align 1
@.str.247 = private unnamed_addr constant [28 x i8] c"BN_set_word(denominator, 2)\00", align 1
@.str.248 = private unnamed_addr constant [42 x i8] c"BN_div(a, b, numerator, denominator, ctx)\00", align 1
@.str.249 = private unnamed_addr constant [28 x i8] c"BN_set_word(denominator, 1)\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"zero = BN_new()\00", align 1
@.str.251 = private unnamed_addr constant [40 x i8] c"BN_div(a, b, BN_value_one(), zero, ctx)\00", align 1
@.str.252 = private unnamed_addr constant [57 x i8] c"BN_mod_mul(a, BN_value_one(), BN_value_one(), zero, ctx)\00", align 1
@.str.253 = private unnamed_addr constant [57 x i8] c"BN_mod_exp(a, BN_value_one(), BN_value_one(), zero, ctx)\00", align 1
@.str.254 = private unnamed_addr constant [68 x i8] c"BN_mod_exp_mont(a, BN_value_one(), BN_value_one(), zero, ctx, NULL)\00", align 1
@.str.255 = private unnamed_addr constant [78 x i8] c"BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(), zero, ctx, NULL)\00", align 1
@.str.256 = private unnamed_addr constant [33 x i8] c"BN_MONT_CTX_set(mont, zero, ctx)\00", align 1
@.str.257 = private unnamed_addr constant [19 x i8] c"BN_set_word(b, 16)\00", align 1
@.str.258 = private unnamed_addr constant [30 x i8] c"BN_MONT_CTX_set(mont, b, ctx)\00", align 1
@.str.259 = private unnamed_addr constant [65 x i8] c"BN_mod_exp_mont(a, BN_value_one(), BN_value_one(), b, ctx, NULL)\00", align 1
@.str.260 = private unnamed_addr constant [75 x i8] c"BN_mod_exp_mont_consttime(a, BN_value_one(), BN_value_one(), b, ctx, NULL)\00", align 1
@.str.261 = private unnamed_addr constant [45 x i8] c"BN_mod_exp(r, a, zero, BN_value_one(), NULL)\00", align 1
@.str.262 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.263 = private unnamed_addr constant [56 x i8] c"BN_mod_exp_mont(r, a, zero, BN_value_one(), NULL, NULL)\00", align 1
@.str.264 = private unnamed_addr constant [66 x i8] c"BN_mod_exp_mont_consttime(r, a, zero, BN_value_one(), NULL, NULL)\00", align 1
@.str.265 = private unnamed_addr constant [62 x i8] c"BN_mod_exp_mont_word(r, 42, zero, BN_value_one(), NULL, NULL)\00", align 1
@.str.266 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"BN_set_word(p, 0)\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"BN_set_word(m, 1)\00", align 1
@.str.270 = private unnamed_addr constant [29 x i8] c"BN_mod_exp(r, a, p, m, NULL)\00", align 1
@.str.271 = private unnamed_addr constant [40 x i8] c"BN_mod_exp_mont(r, a, p, m, NULL, NULL)\00", align 1
@.str.272 = private unnamed_addr constant [50 x i8] c"BN_mod_exp_mont_consttime(r, a, p, m, NULL, NULL)\00", align 1
@.str.273 = private unnamed_addr constant [45 x i8] c"BN_mod_exp_mont_word(r, 1, p, m, NULL, NULL)\00", align 1
@.str.274 = private unnamed_addr constant [36 x i8] c"BN_mod_exp_simple(r, a, p, m, NULL)\00", align 1
@.str.275 = private unnamed_addr constant [34 x i8] c"BN_mod_exp_recp(r, a, p, m, NULL)\00", align 1
@.str.276 = private unnamed_addr constant [52 x i8] c"BN_generate_prime_ex(r, kBits, 0, NULL, NULL, NULL)\00", align 1
@.str.277 = private unnamed_addr constant [15 x i8] c"BN_num_bits(r)\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"kBits\00", align 1
@.str.279 = private unnamed_addr constant [52 x i8] c"BN_generate_prime_ex(r, kBits, 1, NULL, NULL, NULL)\00", align 1
@.str.280 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(a, 1024, 1, 0)\00", align 1
@.str.281 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(b, 1024, 1, 0)\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"BN_copy(c, a)\00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"BN_copy(d, b)\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"cswap true\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"cswap false\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"swap, flags\00", align 1
@.str.288 = private unnamed_addr constant [34 x i8] c"BN_get_flags(b, BN_FLG_CONSTTIME)\00", align 1
@.str.289 = private unnamed_addr constant [34 x i8] c"BN_get_flags(a, BN_FLG_CONSTTIME)\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"cswap true, flags\00", align 1
@.str.291 = private unnamed_addr constant [19 x i8] c"cswap false, flags\00", align 1
@.str.292 = private unnamed_addr constant [20 x i8] c"unexpected %s value\00", align 1
@.str.293 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.295 = private unnamed_addr constant [20 x i8] c"nctx = BN_CTX_new()\00", align 1
@.str.296 = private unnamed_addr constant [27 x i8] c"sctx = BN_CTX_secure_new()\00", align 1
@.str.297 = private unnamed_addr constant [24 x i8] c"test_ctx_set_ct_flag(c)\00", align 1
@.str.298 = private unnamed_addr constant [26 x i8] c"test_ctx_check_ct_flag(c)\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"b[i] = BN_CTX_get(c)\00", align 1
@.str.300 = private unnamed_addr constant [37 x i8] c"BN_get_flags(b[i], BN_FLG_CONSTTIME)\00", align 1
@.str.301 = private unnamed_addr constant [22 x i8] c"BN_rand(a, 512, 0, 0)\00", align 1
@.str.302 = private unnamed_addr constant [27 x i8] c"BN_copy(b, BN_value_one())\00", align 1
@.str.303 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(c, a, b)\00", align 1
@.str.304 = private unnamed_addr constant [67 x i8] c"(BN_is_odd(a) && BN_is_odd(c)) || (!BN_is_odd(a) && !BN_is_odd(c))\00", align 1
@.str.305 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(c, c, c)\00", align 1
@.str.306 = private unnamed_addr constant [16 x i8] c"b[0] = BN_new()\00", align 1
@.str.307 = private unnamed_addr constant [16 x i8] c"b[1] = BN_new()\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"BN_GF2m_arr2poly(p0, b[0])\00", align 1
@p0 = internal global [6 x i32] [i32 163, i32 7, i32 6, i32 3, i32 0, i32 -1], align 16
@.str.309 = private unnamed_addr constant [27 x i8] c"BN_GF2m_arr2poly(p1, b[1])\00", align 1
@p1 = internal global [4 x i32] [i32 193, i32 15, i32 0, i32 -1], align 16
@.str.310 = private unnamed_addr constant [24 x i8] c"BN_GF2m_mod(c, a, b[j])\00", align 1
@.str.311 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(d, a, c)\00", align 1
@.str.312 = private unnamed_addr constant [24 x i8] c"BN_GF2m_mod(e, d, b[j])\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"f = BN_new()\00", align 1
@.str.314 = private unnamed_addr constant [13 x i8] c"g = BN_new()\00", align 1
@.str.315 = private unnamed_addr constant [13 x i8] c"h = BN_new()\00", align 1
@.str.316 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(c, 1024, 0, 0)\00", align 1
@.str.317 = private unnamed_addr constant [30 x i8] c"BN_bntest_rand(d, 1024, 0, 0)\00", align 1
@.str.318 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(e, a, c, b[j], ctx)\00", align 1
@.str.319 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(f, a, d)\00", align 1
@.str.320 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(g, f, c, b[j], ctx)\00", align 1
@.str.321 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(h, d, c, b[j], ctx)\00", align 1
@.str.322 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(f, e, g)\00", align 1
@.str.323 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(f, f, h)\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.325 = private unnamed_addr constant [33 x i8] c"BN_GF2m_mod_sqr(c, a, b[j], ctx)\00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"BN_copy(d, a)\00", align 1
@.str.327 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(d, a, d, b[j], ctx)\00", align 1
@.str.328 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(d, c, d)\00", align 1
@.str.329 = private unnamed_addr constant [33 x i8] c"BN_GF2m_mod_inv(c, a, b[j], ctx)\00", align 1
@.str.330 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(d, a, c, b[j], ctx)\00", align 1
@.str.331 = private unnamed_addr constant [29 x i8] c"BN_bntest_rand(c, 512, 0, 0)\00", align 1
@.str.332 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_div(d, a, c, b[j], ctx)\00", align 1
@.str.333 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(e, d, c, b[j], ctx)\00", align 1
@.str.334 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_div(f, a, e, b[j], ctx)\00", align 1
@.str.335 = private unnamed_addr constant [29 x i8] c"BN_bntest_rand(d, 512, 0, 0)\00", align 1
@.str.336 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_exp(e, a, c, b[j], ctx)\00", align 1
@.str.337 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_exp(f, a, d, b[j], ctx)\00", align 1
@.str.338 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_mul(e, e, f, b[j], ctx)\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"BN_add(f, c, d)\00", align 1
@.str.340 = private unnamed_addr constant [36 x i8] c"BN_GF2m_mod_exp(f, a, f, b[j], ctx)\00", align 1
@.str.341 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(f, e, f)\00", align 1
@.str.342 = private unnamed_addr constant [34 x i8] c"BN_GF2m_mod_sqrt(d, a, b[j], ctx)\00", align 1
@.str.343 = private unnamed_addr constant [33 x i8] c"BN_GF2m_mod_sqr(e, d, b[j], ctx)\00", align 1
@.str.344 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(f, c, e)\00", align 1
@.str.345 = private unnamed_addr constant [33 x i8] c"BN_GF2m_mod_sqr(d, c, b[j], ctx)\00", align 1
@.str.346 = private unnamed_addr constant [24 x i8] c"BN_GF2m_mod(e, a, b[j])\00", align 1
@.str.347 = private unnamed_addr constant [21 x i8] c"BN_GF2m_add(e, e, d)\00", align 1
@.str.348 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.349 = private unnamed_addr constant [43 x i8] c"%d tests found no roots; probably an error\00", align 1
@.str.350 = private unnamed_addr constant [26 x i8] c"BN_set_word(r, primes[i])\00", align 1
@primes = internal unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 5, i32 7, i32 17863], align 16
@.str.351 = private unnamed_addr constant [29 x i8] c"BN_check_prime(r, ctx, NULL)\00", align 1
@.str.352 = private unnamed_addr constant [30 x i8] c"BN_set_word(r, not_primes[i])\00", align 1
@not_primes = internal unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 4], align 16
@.str.353 = private unnamed_addr constant [15 x i8] c"gcd = BN_new()\00", align 1
@.str.354 = private unnamed_addr constant [51 x i8] c"BN_generate_prime_ex(a, 1024, 0, NULL, NULL, NULL)\00", align 1
@.str.355 = private unnamed_addr constant [51 x i8] c"BN_generate_prime_ex(b, 1024, 0, NULL, NULL, NULL)\00", align 1
@.str.356 = private unnamed_addr constant [23 x i8] c"BN_gcd(gcd, a, b, ctx)\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"BN_is_one(gcd)\00", align 1
@ModExpTests = internal unnamed_addr constant [16 x %struct.mod_exp_test_st] [%struct.mod_exp_test_st { i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.368, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.372, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }, %struct.mod_exp_test_st { i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0) }], align 16
@.str.358 = private unnamed_addr constant [18 x i8] c"result = BN_new()\00", align 1
@.str.359 = private unnamed_addr constant [29 x i8] c"BN_dec2bn(&base, test->base)\00", align 1
@.str.360 = private unnamed_addr constant [32 x i8] c"BN_dec2bn(&exponent, test->exp)\00", align 1
@.str.361 = private unnamed_addr constant [30 x i8] c"BN_dec2bn(&modulo, test->mod)\00", align 1
@.str.362 = private unnamed_addr constant [48 x i8] c"BN_mod_exp(result, base, exponent, modulo, ctx)\00", align 1
@.str.363 = private unnamed_addr constant [22 x i8] c"s = BN_bn2dec(result)\00", align 1
@.str.364 = private unnamed_addr constant [10 x i8] c"test->res\00", align 1
@.str.365 = private unnamed_addr constant [156 x i8] c"11661802380018791130421822926261696211062555589140005959993120844627946820899490684928760491249738643524880720584249698100907201002086675047927600340800371\00", align 1
@.str.366 = private unnamed_addr constant [137 x i8] c"8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.367 = private unnamed_addr constant [156 x i8] c"13407807926845237209807376456131917626043958556151178674833163543294276330515137663421134775482798690129946803802212663956180562088664022929883876655300863\00", align 1
@.str.368 = private unnamed_addr constant [155 x i8] c"8243904058268085430037326628480645845409758077568738532059032482829411441589060359473015812042675626645792847533045025133977349826758407619521544102068438\00", align 1
@.str.369 = private unnamed_addr constant [150 x i8] c"49742700414108038220788666961595869469958776189870102193128447260284386121835740784990869050050504348861513337232530490826340663197278031692737429054\00", align 1
@.str.370 = private unnamed_addr constant [150 x i8] c"49742700414108038220788666961595869469958774281887549950411485391663243362592271353668158565195557417149981094324650322556843202946445882670777892608\00", align 1
@.str.371 = private unnamed_addr constant [156 x i8] c"13407807165114202272155928309714524828153774826272517255370990284429769497230131760206012644403029349547320953206103351725462999947509743623340557059752191\00", align 1
@.str.372 = private unnamed_addr constant [155 x i8] c"5296244594780707015616522701706118082963369547253192207884519362176786998494754269566542021902852281553955919479361968433490044249304558011362360473525933\00", align 1
@.str.373 = private unnamed_addr constant [155 x i8] c"5148719036160389201525610950887605325980251964889646556085286545393154880917882341316935963597876203651239711308098807067785803336463909753993540214027190\00", align 1
@.str.374 = private unnamed_addr constant [155 x i8] c"6703903964971298549787012499102923063739682910296196688861780721860882015036773488400937149083451713845015929093243025426876941405973284973216824503042158\00", align 1
@.str.375 = private unnamed_addr constant [155 x i8] c"6703903964971298549787012499102923063739682910296196688861780721860882015036773488400937149083451713845015929093243025426876941405973284973216824503042159\00", align 1
@.str.376 = private unnamed_addr constant [154 x i8] c"890834085435375257741967877133046082794237143485305415862263654481513601097228909494719125666494654362966596010917307450870141892672764191218875181826063\00", align 1
@.str.377 = private unnamed_addr constant [155 x i8] c"3427446396505596330634350984901719674479522569002785244080234738428874363543574613629729936644454873653305371741673537907318534426985272974404612945608761\00", align 1
@.str.378 = private unnamed_addr constant [154 x i8] c"347274304491756456407885782611187456004533123731559738386965298569198700288908959884783511336015173659084450584054338327182069024088133164805266956353542\00", align 1
@.str.379 = private unnamed_addr constant [155 x i8] c"3608632990153469264412378349742339216742409743898601587274768025011077203298564355519276771734494617412284225520408258675349965114483434992887431333675068\00", align 1
@.str.380 = private unnamed_addr constant [154 x i8] c"845537437023407024291050822694198152023570976726072321216526487786890643880175215245684343282644317726448025670286639629620257469283458217850119569539086\00", align 1
@.str.381 = private unnamed_addr constant [155 x i8] c"5155371529688532178421209781159131443543419764974688878527112131744651820560942741233618315791898103806663680731773331932325760304416292040754017461076359\00", align 1
@.str.382 = private unnamed_addr constant [156 x i8] c"10055855947456947824680518748654384595609524365444295033292671082791323022555160232601405723625177570767523893639864538140315412108959927459825236754563832\00", align 1
@.str.383 = private unnamed_addr constant [156 x i8] c"10055855947456947824680518748654384595609524365444295033292671082791323022555160232601405723625177570767523893639864538140315412108959927459825236754563833\00", align 1
@.str.384 = private unnamed_addr constant [155 x i8] c"3155666506033786929967309937640790361084670559125912405342594979434514281852895628549089784140633802237856597253350882057776006558494345853302083699912572\00", align 1
@.str.385 = private unnamed_addr constant [155 x i8] c"3789819583801342198190405714582958759005991915505282362397087750421354472464482309884313568513392719866881818533879437723959004941019388529192775771488319\00", align 1
@.str.386 = private unnamed_addr constant [155 x i8] c"4695752552040706867080542538786056470322165281761525158189220280402554744766748475920074276424690564764466205012296891227919906548065034299166336940507214\00", align 1
@.str.387 = private unnamed_addr constant [155 x i8] c"2159140240970485794188159431017382878636879856244045329971239574891969113356066116282803432319645738605981983280459398974026896474502911811812651475927076\00", align 1
@.str.388 = private unnamed_addr constant [155 x i8] c"5239312332984325668414624633307915097111691815000872662334695514543653352139236244355716342933680820813722132244478049043787190399972784701334569424519255\00", align 1
@.str.389 = private unnamed_addr constant [155 x i8] c"1977953647322612860406858017869125467496941904523063466791308891117279673905853192947053975836177456987550529342885618109390409133788264851714311303725089\00", align 1
@.str.390 = private unnamed_addr constant [155 x i8] c"6456987954117763835533395796948878140715006860263624787492985786851463021696673830592391568882152644949976371994399712030236821104813318117996225041943964\00", align 1
@.str.391 = private unnamed_addr constant [156 x i8] c"13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946551499689575296532556\00", align 1
@.str.392 = private unnamed_addr constant [156 x i8] c"13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946551499689575296532557\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"n_success\00", align 1
@.str.394 = private unnamed_addr constant [18 x i8] c"binomial_critical\00", align 1
@.str.395 = private unnamed_addr constant [60 x i8] c"This test is expected to fail by chance 0.01%% of the time.\00", align 1
@rand_range_cases = internal unnamed_addr constant [37 x %struct.anon.0] [%struct.anon.0 { i32 2, i32 200, double 0x400EBB4EDB2F661F }, %struct.anon.0 { i32 3, i32 300, double 0x4017F74299D883BA }, %struct.anon.0 { i32 4, i32 400, double 0x401F42480E8C8ABD }, %struct.anon.0 { i32 5, i32 500, double 0x4022F9B79D909F1F }, %struct.anon.0 { i32 6, i32 600, double 0x402624185058DDE8 }, %struct.anon.0 { i32 7, i32 700, double 0x40292EE47DC37A3E }, %struct.anon.0 { i32 8, i32 800, double 0x402C22602C9081C3 }, %struct.anon.0 { i32 9, i32 900, double 0x402F03BE878FABDA }, %struct.anon.0 { i32 10, i32 1000, double 0x4030EB422467BE55 }, %struct.anon.0 { i32 11, i32 1100, double 0x40324E9A0AD8A116 }, %struct.anon.0 { i32 12, i32 1200, double 0x4033ACD5D80E496F }, %struct.anon.0 { i32 13, i32 1300, double 0x403506AC8605681F }, %struct.anon.0 { i32 14, i32 1400, double 0x40365CAE21101B00 }, %struct.anon.0 { i32 15, i32 1500, double 0x4037AF4E7685985B }, %struct.anon.0 { i32 16, i32 1600, double 0x4038FEEC17EBAF10 }, %struct.anon.0 { i32 17, i32 1700, double 0x403A4BD5992428D4 }, %struct.anon.0 { i32 18, i32 1800, double 0x403B964CF8D716D3 }, %struct.anon.0 { i32 19, i32 1900, double 0x403CDE8A6117720D }, %struct.anon.0 { i32 20, i32 2000, double 0x403E24BE2F7B17CE }, %struct.anon.0 { i32 30, i32 3000, double 0x4045474ABA387592 }, %struct.anon.0 { i32 40, i32 4000, double 0x404B493EC460ED81 }, %struct.anon.0 { i32 50, i32 5000, double 0x405095AC6CDAF4AE }, %struct.anon.0 { i32 60, i32 6000, double 0x40537B8DB4890929 }, %struct.anon.0 { i32 70, i32 7000, double 0x405659098D477BC0 }, %struct.anon.0 { i32 80, i32 8000, double 0x40592FE95FAA8A83 }, %struct.anon.0 { i32 90, i32 9000, double 0x405C016837F7BE12 }, %struct.anon.0 { i32 100, i32 10000, double 0x405ECE6A055757D6 }, %struct.anon.0 { i32 1000, i32 10000, double 0x4090C692131A8EF7 }, %struct.anon.0 { i32 2000, i32 20000, double 0x40A07041A6506141 }, %struct.anon.0 { i32 3000, i32 30000, double 0x40A86F07E6B3FEA0 }, %struct.anon.0 { i32 4000, i32 40000, double 0x40B0333AE21101B0 }, %struct.anon.0 { i32 5000, i32 50000, double 0x40B42C991B0CCBC0 }, %struct.anon.0 { i32 6000, i32 60000, double 0x40B8244CACF312B2 }, %struct.anon.0 { i32 7000, i32 70000, double 0x40BC1ABCF96E1587 }, %struct.anon.0 { i32 8000, i32 80000, double 0x40C00816AD256799 }, %struct.anon.0 { i32 9000, i32 90000, double 0x40C202664B662FE0 }, %struct.anon.0 { i32 10000, i32 100000, double 0x40C3FC5E5EBB773A }], align 16
@.str.396 = private unnamed_addr constant [49 x i8] c"counts = OPENSSL_zalloc(sizeof(*counts) * range)\00", align 1
@.str.397 = private unnamed_addr constant [15 x i8] c"rng = BN_new()\00", align 1
@.str.398 = private unnamed_addr constant [15 x i8] c"val = BN_new()\00", align 1
@.str.399 = private unnamed_addr constant [24 x i8] c"BN_set_word(rng, range)\00", align 1
@.str.400 = private unnamed_addr constant [24 x i8] c"BN_rand_range(val, rng)\00", align 1
@.str.401 = private unnamed_addr constant [35 x i8] c"v = (unsigned int)BN_get_word(val)\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.403 = private unnamed_addr constant [32 x i8] c"Chi^2 test negative %.4f > %4.f\00", align 1
@.str.404 = private unnamed_addr constant [39 x i8] c"test case %zu  range %u  iterations %u\00", align 1
@.str.405 = private unnamed_addr constant [31 x i8] c"s = OPENSSL_zalloc(sizeof(*s))\00", align 1
@file_test_run.filetests = internal unnamed_addr constant [12 x %struct.filetest_st] [%struct.filetest_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.406, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_sum }, %struct.filetest_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_lshift1 }, %struct.filetest_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.408, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_lshift }, %struct.filetest_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_rshift }, %struct.filetest_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_square }, %struct.filetest_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.411, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_product }, %struct.filetest_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.412, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_quotient }, %struct.filetest_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.413, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_modmul }, %struct.filetest_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_modexp }, %struct.filetest_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.415, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_exp }, %struct.filetest_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_modsqrt }, %struct.filetest_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.417, i32 0, i32 0), i32 (%struct.stanza_st*)* @file_gcd }], align 16
@.str.406 = private unnamed_addr constant [4 x i8] c"Sum\00", align 1
@.str.407 = private unnamed_addr constant [8 x i8] c"LShift1\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"LShift\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"RShift\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.411 = private unnamed_addr constant [8 x i8] c"Product\00", align 1
@.str.412 = private unnamed_addr constant [9 x i8] c"Quotient\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"ModMul\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c"ModExp\00", align 1
@.str.415 = private unnamed_addr constant [4 x i8] c"Exp\00", align 1
@.str.416 = private unnamed_addr constant [8 x i8] c"ModSqrt\00", align 1
@.str.417 = private unnamed_addr constant [4 x i8] c"GCD\00", align 1
@.str.418 = private unnamed_addr constant [22 x i8] c"%s:%d: Failed %s test\00", align 1
@.str.419 = private unnamed_addr constant [20 x i8] c"%s:%d: Unknown test\00", align 1
@.str.420 = private unnamed_addr constant [18 x i8] c"a = getBN(s, \22A\22)\00", align 1
@.str.421 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.422 = private unnamed_addr constant [18 x i8] c"b = getBN(s, \22B\22)\00", align 1
@.str.423 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.424 = private unnamed_addr constant [22 x i8] c"sum = getBN(s, \22Sum\22)\00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"ret = BN_new()\00", align 1
@.str.426 = private unnamed_addr constant [18 x i8] c"BN_add(ret, a, b)\00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"A + B\00", align 1
@.str.428 = private unnamed_addr constant [20 x i8] c"BN_sub(ret, sum, a)\00", align 1
@.str.429 = private unnamed_addr constant [8 x i8] c"Sum - A\00", align 1
@.str.430 = private unnamed_addr constant [20 x i8] c"BN_sub(ret, sum, b)\00", align 1
@.str.431 = private unnamed_addr constant [8 x i8] c"Sum - B\00", align 1
@.str.432 = private unnamed_addr constant [16 x i8] c"BN_copy(ret, a)\00", align 1
@.str.433 = private unnamed_addr constant [20 x i8] c"BN_add(ret, ret, b)\00", align 1
@.str.434 = private unnamed_addr constant [15 x i8] c"A + B (r is a)\00", align 1
@.str.435 = private unnamed_addr constant [16 x i8] c"BN_copy(ret, b)\00", align 1
@.str.436 = private unnamed_addr constant [20 x i8] c"BN_add(ret, a, ret)\00", align 1
@.str.437 = private unnamed_addr constant [15 x i8] c"A + B (r is b)\00", align 1
@.str.438 = private unnamed_addr constant [18 x i8] c"BN_copy(ret, sum)\00", align 1
@.str.439 = private unnamed_addr constant [20 x i8] c"BN_sub(ret, ret, a)\00", align 1
@.str.440 = private unnamed_addr constant [17 x i8] c"Sum - A (r is a)\00", align 1
@.str.441 = private unnamed_addr constant [22 x i8] c"BN_sub(ret, sum, ret)\00", align 1
@.str.442 = private unnamed_addr constant [17 x i8] c"Sum - A (r is b)\00", align 1
@.str.443 = private unnamed_addr constant [20 x i8] c"BN_sub(ret, ret, b)\00", align 1
@.str.444 = private unnamed_addr constant [17 x i8] c"Sum - B (r is a)\00", align 1
@.str.445 = private unnamed_addr constant [17 x i8] c"Sum - B (r is b)\00", align 1
@.str.446 = private unnamed_addr constant [19 x i8] c"BN_uadd(ret, a, b)\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"A +u B\00", align 1
@.str.448 = private unnamed_addr constant [21 x i8] c"BN_usub(ret, sum, a)\00", align 1
@.str.449 = private unnamed_addr constant [9 x i8] c"Sum -u A\00", align 1
@.str.450 = private unnamed_addr constant [21 x i8] c"BN_usub(ret, sum, b)\00", align 1
@.str.451 = private unnamed_addr constant [9 x i8] c"Sum -u B\00", align 1
@.str.452 = private unnamed_addr constant [21 x i8] c"BN_uadd(ret, ret, b)\00", align 1
@.str.453 = private unnamed_addr constant [16 x i8] c"A +u B (r is a)\00", align 1
@.str.454 = private unnamed_addr constant [21 x i8] c"BN_uadd(ret, a, ret)\00", align 1
@.str.455 = private unnamed_addr constant [16 x i8] c"A +u B (r is b)\00", align 1
@.str.456 = private unnamed_addr constant [21 x i8] c"BN_usub(ret, ret, a)\00", align 1
@.str.457 = private unnamed_addr constant [18 x i8] c"Sum -u A (r is a)\00", align 1
@.str.458 = private unnamed_addr constant [23 x i8] c"BN_usub(ret, sum, ret)\00", align 1
@.str.459 = private unnamed_addr constant [18 x i8] c"Sum -u A (r is b)\00", align 1
@.str.460 = private unnamed_addr constant [21 x i8] c"BN_usub(ret, ret, b)\00", align 1
@.str.461 = private unnamed_addr constant [18 x i8] c"Sum -u B (r is a)\00", align 1
@.str.462 = private unnamed_addr constant [18 x i8] c"Sum -u B (r is b)\00", align 1
@.str.463 = private unnamed_addr constant [25 x i8] c"BN_add_word(ret, b_word)\00", align 1
@.str.464 = private unnamed_addr constant [13 x i8] c"A + B (word)\00", align 1
@.str.465 = private unnamed_addr constant [25 x i8] c"BN_sub_word(ret, b_word)\00", align 1
@.str.466 = private unnamed_addr constant [15 x i8] c"Sum - B (word)\00", align 1
@.str.467 = private unnamed_addr constant [21 x i8] c"%s:%d: Can't find %s\00", align 1
@.str.468 = private unnamed_addr constant [22 x i8] c"Could not decode '%s'\00", align 1
@.str.469 = private unnamed_addr constant [30 x i8] c"lshift1 = getBN(s, \22LShift1\22)\00", align 1
@.str.470 = private unnamed_addr constant [15 x i8] c"two = BN_new()\00", align 1
@.str.471 = private unnamed_addr constant [21 x i8] c"remainder = BN_new()\00", align 1
@.str.472 = private unnamed_addr constant [20 x i8] c"BN_set_word(two, 2)\00", align 1
@.str.473 = private unnamed_addr constant [18 x i8] c"BN_add(ret, a, a)\00", align 1
@.str.474 = private unnamed_addr constant [6 x i8] c"A + A\00", align 1
@.str.475 = private unnamed_addr constant [25 x i8] c"BN_mul(ret, a, two, ctx)\00", align 1
@.str.476 = private unnamed_addr constant [6 x i8] c"A * 2\00", align 1
@.str.477 = private unnamed_addr constant [42 x i8] c"BN_div(ret, remainder, lshift1, two, ctx)\00", align 1
@.str.478 = private unnamed_addr constant [12 x i8] c"LShift1 / 2\00", align 1
@.str.479 = private unnamed_addr constant [12 x i8] c"LShift1 % 2\00", align 1
@.str.480 = private unnamed_addr constant [19 x i8] c"BN_lshift1(ret, a)\00", align 1
@.str.481 = private unnamed_addr constant [7 x i8] c"A << 1\00", align 1
@.str.482 = private unnamed_addr constant [25 x i8] c"BN_rshift1(ret, lshift1)\00", align 1
@.str.483 = private unnamed_addr constant [12 x i8] c"LShift >> 1\00", align 1
@.str.484 = private unnamed_addr constant [23 x i8] c"BN_set_bit(lshift1, 0)\00", align 1
@.str.485 = private unnamed_addr constant [38 x i8] c"BN_div(ret, NULL , lshift1, two, ctx)\00", align 1
@.str.486 = private unnamed_addr constant [18 x i8] c"(LShift1 | 1) / 2\00", align 1
@.str.487 = private unnamed_addr constant [18 x i8] c"(LShift | 1) >> 1\00", align 1
@.str.488 = private unnamed_addr constant [28 x i8] c"lshift = getBN(s, \22LShift\22)\00", align 1
@.str.489 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.490 = private unnamed_addr constant [21 x i8] c"BN_lshift(ret, a, n)\00", align 1
@.str.491 = private unnamed_addr constant [7 x i8] c"A << N\00", align 1
@.str.492 = private unnamed_addr constant [26 x i8] c"BN_rshift(ret, lshift, n)\00", align 1
@.str.493 = private unnamed_addr constant [7 x i8] c"A >> N\00", align 1
@.str.494 = private unnamed_addr constant [26 x i8] c"ret = getBN(s, attribute)\00", align 1
@.str.495 = private unnamed_addr constant [24 x i8] c"word = BN_get_word(ret)\00", align 1
@.str.496 = private unnamed_addr constant [8 x i8] c"INT_MAX\00", align 1
@.str.497 = private unnamed_addr constant [28 x i8] c"rshift = getBN(s, \22RShift\22)\00", align 1
@.str.498 = private unnamed_addr constant [21 x i8] c"BN_rshift(ret, a, n)\00", align 1
@.str.499 = private unnamed_addr constant [19 x i8] c"BN_rshift1(ret, a)\00", align 1
@.str.500 = private unnamed_addr constant [17 x i8] c"A >> 1 (rshift1)\00", align 1
@.str.501 = private unnamed_addr constant [28 x i8] c"square = getBN(s, \22Square\22)\00", align 1
@.str.502 = private unnamed_addr constant [20 x i8] c"BN_sqr(ret, a, ctx)\00", align 1
@.str.503 = private unnamed_addr constant [4 x i8] c"A^2\00", align 1
@.str.504 = private unnamed_addr constant [23 x i8] c"BN_mul(ret, a, a, ctx)\00", align 1
@.str.505 = private unnamed_addr constant [6 x i8] c"A * A\00", align 1
@.str.506 = private unnamed_addr constant [39 x i8] c"BN_div(ret, remainder, square, a, ctx)\00", align 1
@.str.507 = private unnamed_addr constant [11 x i8] c"Square / A\00", align 1
@.str.508 = private unnamed_addr constant [11 x i8] c"Square % A\00", align 1
@.str.509 = private unnamed_addr constant [30 x i8] c"product = getBN(s, \22Product\22)\00", align 1
@.str.510 = private unnamed_addr constant [23 x i8] c"BN_mul(ret, a, b, ctx)\00", align 1
@.str.511 = private unnamed_addr constant [6 x i8] c"A * B\00", align 1
@.str.512 = private unnamed_addr constant [40 x i8] c"BN_div(ret, remainder, product, a, ctx)\00", align 1
@.str.513 = private unnamed_addr constant [12 x i8] c"Product / A\00", align 1
@.str.514 = private unnamed_addr constant [12 x i8] c"Product % A\00", align 1
@.str.515 = private unnamed_addr constant [40 x i8] c"BN_div(ret, remainder, product, b, ctx)\00", align 1
@.str.516 = private unnamed_addr constant [12 x i8] c"Product / B\00", align 1
@.str.517 = private unnamed_addr constant [12 x i8] c"Product % B\00", align 1
@.str.518 = private unnamed_addr constant [32 x i8] c"quotient = getBN(s, \22Quotient\22)\00", align 1
@.str.519 = private unnamed_addr constant [34 x i8] c"remainder = getBN(s, \22Remainder\22)\00", align 1
@.str.520 = private unnamed_addr constant [10 x i8] c"Remainder\00", align 1
@.str.521 = private unnamed_addr constant [16 x i8] c"ret2 = BN_new()\00", align 1
@.str.522 = private unnamed_addr constant [17 x i8] c"nnmod = BN_new()\00", align 1
@.str.523 = private unnamed_addr constant [29 x i8] c"BN_div(ret, ret2, a, b, ctx)\00", align 1
@.str.524 = private unnamed_addr constant [6 x i8] c"A / B\00", align 1
@.str.525 = private unnamed_addr constant [6 x i8] c"A % B\00", align 1
@.str.526 = private unnamed_addr constant [30 x i8] c"BN_mul(ret, quotient, b, ctx)\00", align 1
@.str.527 = private unnamed_addr constant [28 x i8] c"BN_add(ret, ret, remainder)\00", align 1
@.str.528 = private unnamed_addr constant [25 x i8] c"Quotient * B + Remainder\00", align 1
@.str.529 = private unnamed_addr constant [27 x i8] c"Got A %% B (word) mismatch\00", align 1
@.str.530 = private unnamed_addr constant [13 x i8] c"A / B (word)\00", align 1
@.str.531 = private unnamed_addr constant [26 x i8] c"BN_copy(nnmod, remainder)\00", align 1
@.str.532 = private unnamed_addr constant [24 x i8] c"BN_add(nnmod, nnmod, b)\00", align 1
@.str.533 = private unnamed_addr constant [25 x i8] c"BN_nnmod(ret, a, b, ctx)\00", align 1
@.str.534 = private unnamed_addr constant [21 x i8] c"A % B (non-negative)\00", align 1
@.str.535 = private unnamed_addr constant [18 x i8] c"m = getBN(s, \22M\22)\00", align 1
@.str.536 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.537 = private unnamed_addr constant [29 x i8] c"mod_mul = getBN(s, \22ModMul\22)\00", align 1
@.str.538 = private unnamed_addr constant [30 x i8] c"BN_mod_mul(ret, a, b, m, ctx)\00", align 1
@.str.539 = private unnamed_addr constant [14 x i8] c"A * B (mod M)\00", align 1
@.str.540 = private unnamed_addr constant [27 x i8] c"BN_nnmod(a_tmp, a, m, ctx)\00", align 1
@.str.541 = private unnamed_addr constant [27 x i8] c"BN_nnmod(b_tmp, b, m, ctx)\00", align 1
@.str.542 = private unnamed_addr constant [42 x i8] c"BN_to_montgomery(a_tmp, a_tmp, mont, ctx)\00", align 1
@.str.543 = private unnamed_addr constant [42 x i8] c"BN_to_montgomery(b_tmp, b_tmp, mont, ctx)\00", align 1
@.str.544 = private unnamed_addr constant [52 x i8] c"BN_mod_mul_montgomery(ret, a_tmp, b_tmp, mont, ctx)\00", align 1
@.str.545 = private unnamed_addr constant [40 x i8] c"BN_from_montgomery(ret, ret, mont, ctx)\00", align 1
@.str.546 = private unnamed_addr constant [21 x i8] c"A * B (mod M) (mont)\00", align 1
@.str.547 = private unnamed_addr constant [18 x i8] c"e = getBN(s, \22E\22)\00", align 1
@.str.548 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.549 = private unnamed_addr constant [29 x i8] c"mod_exp = getBN(s, \22ModExp\22)\00", align 1
@.str.550 = private unnamed_addr constant [30 x i8] c"BN_mod_exp(ret, a, e, m, ctx)\00", align 1
@.str.551 = private unnamed_addr constant [14 x i8] c"A ^ E (mod M)\00", align 1
@.str.552 = private unnamed_addr constant [41 x i8] c"BN_mod_exp_mont(ret, a, e, m, ctx, NULL)\00", align 1
@.str.553 = private unnamed_addr constant [21 x i8] c"A ^ E (mod M) (mont)\00", align 1
@.str.554 = private unnamed_addr constant [51 x i8] c"BN_mod_exp_mont_consttime(ret, a, e, m, ctx, NULL)\00", align 1
@.str.555 = private unnamed_addr constant [26 x i8] c"A ^ E (mod M) (mont const\00", align 1
@.str.556 = private unnamed_addr constant [13 x i8] c"050505050505\00", align 1
@.str.557 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@.str.558 = private unnamed_addr constant [379 x i8] c"414141414141414141414127414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.559 = private unnamed_addr constant [28 x i8] c"BN_mod_exp(d, a, b, c, ctx)\00", align 1
@.str.560 = private unnamed_addr constant [21 x i8] c"BN_mul(e, a, a, ctx)\00", align 1
@.str.561 = private unnamed_addr constant [22 x i8] c"exp = getBN(s, \22Exp\22)\00", align 1
@.str.562 = private unnamed_addr constant [23 x i8] c"BN_exp(ret, a, e, ctx)\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"A ^ E\00", align 1
@.str.564 = private unnamed_addr constant [18 x i8] c"p = getBN(s, \22P\22)\00", align 1
@.str.565 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.566 = private unnamed_addr constant [31 x i8] c"mod_sqrt = getBN(s, \22ModSqrt\22)\00", align 1
@.str.567 = private unnamed_addr constant [28 x i8] c"BN_mod_sqrt(ret, a, p, ctx)\00", align 1
@.str.568 = private unnamed_addr constant [21 x i8] c"BN_sub(ret2, p, ret)\00", align 1
@.str.569 = private unnamed_addr constant [16 x i8] c"sqrt(A) (mod P)\00", align 1
@.str.570 = private unnamed_addr constant [22 x i8] c"gcd = getBN(s, \22GCD\22)\00", align 1
@.str.571 = private unnamed_addr constant [23 x i8] c"BN_gcd(ret, a, b, ctx)\00", align 1
@.str.572 = private unnamed_addr constant [9 x i8] c"gcd(A,B)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([11 x %struct.options_st], [11 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond, %entry
  %tobool9.not = phi i1 [ true, %entry ], [ false, %while.cond ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call = tail call i32 @opt_next() #11
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %while.cond.outer
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ], !llvm.loop !3

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !3

while.end:                                        ; preds = %while.cond
  %call3 = tail call i64 @test_get_argument_count() #11
  %conv = trunc i64 %call3 to i32
  %call4 = tail call %struct.bignum_ctx* @BN_CTX_new() #11
  store %struct.bignum_ctx* %call4, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %0 = bitcast %struct.bignum_ctx* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2943, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_sub) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_div_recip) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 (i32)* noundef nonnull @test_signed_mod_replace_ab, i32 noundef 4, i32 noundef 1) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 (i32)* noundef nonnull @test_signed_mod_replace_ba, i32 noundef 4, i32 noundef 1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_mod) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_modexp_mont5) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_kronecker) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_rand) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_bn2padded) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_dec2bn) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_hex2bn) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_asc2bn) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mpi, i32 noundef 6, i32 noundef 1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_negzero) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 ()* noundef nonnull @test_badmod) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 ()* noundef nonnull @test_expmodzero) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 ()* noundef nonnull @test_expmodone) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 (i32)* noundef nonnull @test_smallprime, i32 noundef 16, i32 noundef 1) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 (i32)* noundef nonnull @test_smallsafeprime, i32 noundef 16, i32 noundef 1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 ()* noundef nonnull @test_swap) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_ctx_consttime_flag) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_add) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_mod) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_mul) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_sqr) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_modinv) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_moddiv) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_modexp) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_modsqrt) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 ()* noundef nonnull @test_gf2m_modsolvequad) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i32 (i32)* noundef nonnull @test_is_prime, i32 noundef 5, i32 noundef 1) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32 (i32)* noundef nonnull @test_not_prime, i32 noundef 4, i32 noundef 1) #11
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 ()* noundef nonnull @test_gcd_prime) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mod_exp, i32 noundef 16, i32 noundef 1) #11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0), i32 (i32)* noundef nonnull @test_mod_exp_consttime, i32 noundef 16, i32 noundef 1) #11
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.then8
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 ()* noundef nonnull @test_rand_range) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i32 (i32)* noundef nonnull @run_file_tests, i32 noundef %conv, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.else, %if.then10, %if.then8, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 1, %if.then8 ], [ 1, %if.then10 ], [ 1, %if.else ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sub() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %for.body

for.cond:                                         ; preds = %land.lhs.true58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 150
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %lor.lhs.false5, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %lor.lhs.false5 ]
  %cmp9 = icmp ult i64 %indvars.iv, 50
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %call11 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp12 = icmp ne i32 %call11, 0
  %conv = zext i1 %cmp12 to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.then10
  %call15 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call) #11
  %3 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* noundef %3) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end40, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true
  %4 = trunc i64 %indvars.iv to i32
  %call19 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef %call, i32 noundef %4) #11
  %call20 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32 noundef %call19, i32 noundef 0) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end40, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %call24 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call2, i64 noundef %indvars.iv) #11
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv26) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end40, label %err

if.else:                                          ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  %6 = add i32 %5, 350
  %call31 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call2, i32 noundef %6, i32 noundef 0, i32 noundef 0) #11
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.else
  %call38 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %call38) #11
  %call39 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %call39) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then10, %land.lhs.true, %land.lhs.true18, %land.lhs.true22, %if.end37
  %call41 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv43) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end40
  %call47 = tail call i32 @BN_add(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #11
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv49) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %call53 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #11
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv55) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %call59 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end40, %land.lhs.true46, %land.lhs.true52, %land.lhs.true58, %if.else, %land.lhs.true22, %entry, %lor.lhs.false, %lor.lhs.false5
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %land.lhs.true22 ], [ %call2, %if.else ], [ %call2, %land.lhs.true58 ], [ %call2, %land.lhs.true52 ], [ %call2, %land.lhs.true46 ], [ %call2, %if.end40 ], [ %call2, %for.cond ]
  %c.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true22 ], [ %call6, %if.else ], [ %call6, %land.lhs.true58 ], [ %call6, %land.lhs.true52 ], [ %call6, %land.lhs.true46 ], [ %call6, %if.end40 ], [ %call6, %for.cond ]
  %st.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %if.end40 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true58 ], [ 0, %if.else ], [ 0, %land.lhs.true22 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_div_recip() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bn_recp_ctx_st* @BN_RECP_CTX_new() #11
  %5 = bitcast %struct.bn_recp_ctx_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0), i8* noundef %5) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %for.body

for.cond:                                         ; preds = %land.lhs.true84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 150
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %lor.lhs.false17, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %lor.lhs.false17 ]
  %cmp21 = icmp ult i64 %indvars.iv, 50
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body
  %call23 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 400, i32 noundef 0, i32 noundef 0) #11
  %cmp24 = icmp ne i32 %call23, 0
  %conv = zext i1 %cmp24 to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then22
  %call27 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call) #11
  %6 = bitcast %struct.bignum_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i8* noundef %6) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true
  %7 = trunc i64 %indvars.iv to i32
  %call31 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, i32 noundef %7) #11
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true30
  %call38 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call, i64 noundef %indvars.iv) #11
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end52

if.else:                                          ; preds = %for.body
  %8 = trunc i64 %indvars.iv to i32
  %9 = mul i32 %8, 3
  %10 = add i32 %9, -100
  %call45 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call2, i32 noundef %10, i32 noundef 0, i32 noundef 0) #11
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv47) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.else, %land.lhs.true36
  %call53 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %call53) #11
  %call54 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %call54) #11
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call55 = tail call i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef %call18, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %11) #11
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv57) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end52
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call61 = tail call i32 @BN_div_recp(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bn_recp_ctx_st* noundef %call18, %struct.bignum_ctx* noundef %12) #11
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv63) #11
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %13 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call67 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %13) #11
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv69) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %call73 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6) #11
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv75) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %call79 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv81) #11
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %land.lhs.true78
  %call85 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call10) #11
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end52, %land.lhs.true60, %land.lhs.true66, %land.lhs.true72, %land.lhs.true78, %land.lhs.true84, %if.else, %if.then22, %land.lhs.true, %land.lhs.true30, %land.lhs.true36, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %land.lhs.true36 ], [ %call2, %land.lhs.true30 ], [ %call2, %land.lhs.true ], [ %call2, %if.then22 ], [ %call2, %if.else ], [ %call2, %land.lhs.true84 ], [ %call2, %land.lhs.true78 ], [ %call2, %land.lhs.true72 ], [ %call2, %land.lhs.true66 ], [ %call2, %land.lhs.true60 ], [ %call2, %if.end52 ], [ %call2, %for.cond ]
  %c.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true36 ], [ %call6, %land.lhs.true30 ], [ %call6, %land.lhs.true ], [ %call6, %if.then22 ], [ %call6, %if.else ], [ %call6, %land.lhs.true84 ], [ %call6, %land.lhs.true78 ], [ %call6, %land.lhs.true72 ], [ %call6, %land.lhs.true66 ], [ %call6, %land.lhs.true60 ], [ %call6, %if.end52 ], [ %call6, %for.cond ]
  %d.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %land.lhs.true36 ], [ %call10, %land.lhs.true30 ], [ %call10, %land.lhs.true ], [ %call10, %if.then22 ], [ %call10, %if.else ], [ %call10, %land.lhs.true84 ], [ %call10, %land.lhs.true78 ], [ %call10, %land.lhs.true72 ], [ %call10, %land.lhs.true66 ], [ %call10, %land.lhs.true60 ], [ %call10, %if.end52 ], [ %call10, %for.cond ]
  %e.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %land.lhs.true36 ], [ %call14, %land.lhs.true30 ], [ %call14, %land.lhs.true ], [ %call14, %if.then22 ], [ %call14, %if.else ], [ %call14, %land.lhs.true84 ], [ %call14, %land.lhs.true78 ], [ %call14, %land.lhs.true72 ], [ %call14, %land.lhs.true66 ], [ %call14, %land.lhs.true60 ], [ %call14, %if.end52 ], [ %call14, %for.cond ]
  %recp.0 = phi %struct.bn_recp_ctx_st* [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %land.lhs.true36 ], [ %call18, %land.lhs.true30 ], [ %call18, %land.lhs.true ], [ %call18, %if.then22 ], [ %call18, %if.else ], [ %call18, %land.lhs.true84 ], [ %call18, %land.lhs.true78 ], [ %call18, %land.lhs.true72 ], [ %call18, %land.lhs.true66 ], [ %call18, %land.lhs.true60 ], [ %call18, %if.end52 ], [ %call18, %for.cond ]
  %st.0 = phi i32 [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %if.end52 ], [ 0, %land.lhs.true60 ], [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true72 ], [ 0, %land.lhs.true78 ], [ 0, %land.lhs.true84 ], [ 0, %if.else ], [ 0, %if.then22 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true36 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_RECP_CTX_free(%struct.bn_recp_ctx_st* noundef %recp.0) #11
  ret i32 %st.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_signed_mod_replace_ab(i32 noundef %n) #1 {
entry:
  %idxprom = sext i32 %n to i64
  %n1 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 0
  %0 = load i32, i32* %n1, align 16, !tbaa !11
  %call = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %0) #12
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.82, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %divisor = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 1
  %2 = load i32, i32* %divisor, align 4, !tbaa !14
  %call5 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %2) #12
  %3 = bitcast %struct.bignum_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.83, i64 0, i64 0), i8* noundef %3) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %result = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 2
  %4 = load i32, i32* %result, align 8, !tbaa !15
  %call11 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %4) #12
  %5 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0), i8* noundef %5) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %remainder = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 3
  %6 = load i32, i32* %remainder, align 4, !tbaa !16
  %call17 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %6) #12
  %7 = bitcast %struct.bignum_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.85, i64 0, i64 0), i8* noundef %7) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call20 = tail call i32 @BN_div(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef %8) #11
  %cmp = icmp ne i32 %call20, 0
  %conv = zext i1 %cmp to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call23 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true
  %call26 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call17) #11
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %err

err:                                              ; preds = %land.lhs.true25, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false14
  %b.0 = phi %struct.bignum_st* [ %call5, %land.lhs.true ], [ %call5, %if.end ], [ %call5, %lor.lhs.false14 ], [ %call5, %lor.lhs.false8 ], [ %call5, %lor.lhs.false ], [ null, %entry ], [ %call5, %land.lhs.true25 ]
  %c.0 = phi %struct.bignum_st* [ %call11, %land.lhs.true ], [ %call11, %if.end ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %land.lhs.true25 ]
  %d.0 = phi %struct.bignum_st* [ %call17, %land.lhs.true ], [ %call17, %if.end ], [ %call17, %lor.lhs.false14 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call17, %land.lhs.true25 ]
  %st.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %land.lhs.true25 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_signed_mod_replace_ba(i32 noundef %n) #1 {
entry:
  %idxprom = sext i32 %n to i64
  %n1 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 0
  %0 = load i32, i32* %n1, align 16, !tbaa !11
  %call = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %0) #12
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.82, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %divisor = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 1
  %2 = load i32, i32* %divisor, align 4, !tbaa !14
  %call5 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %2) #12
  %3 = bitcast %struct.bignum_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.83, i64 0, i64 0), i8* noundef %3) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %result = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 2
  %4 = load i32, i32* %result, align 8, !tbaa !15
  %call11 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %4) #12
  %5 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0), i8* noundef %5) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %remainder = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @signed_mod_tests, i64 0, i64 %idxprom, i32 3
  %6 = load i32, i32* %remainder, align 4, !tbaa !16
  %call17 = tail call fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %6) #12
  %7 = bitcast %struct.bignum_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.85, i64 0, i64 0), i8* noundef %7) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call20 = tail call i32 @BN_div(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call5, %struct.bignum_ctx* noundef %8) #11
  %cmp = icmp ne i32 %call20, 0
  %conv = zext i1 %cmp to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call23 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call11) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true
  %call26 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call17) #11
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %err

err:                                              ; preds = %land.lhs.true25, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false14
  %b.0 = phi %struct.bignum_st* [ %call5, %land.lhs.true ], [ %call5, %if.end ], [ %call5, %lor.lhs.false14 ], [ %call5, %lor.lhs.false8 ], [ %call5, %lor.lhs.false ], [ null, %entry ], [ %call5, %land.lhs.true25 ]
  %c.0 = phi %struct.bignum_st* [ %call11, %land.lhs.true ], [ %call11, %if.end ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %land.lhs.true25 ]
  %d.0 = phi %struct.bignum_st* [ %call17, %land.lhs.true ], [ %call17, %if.end ], [ %call17, %lor.lhs.false14 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call17, %land.lhs.true25 ]
  %st.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %land.lhs.true25 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %for.body

for.cond:                                         ; preds = %land.lhs.true58
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !17

for.body:                                         ; preds = %if.end, %for.cond
  %i.093 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %mul = mul nuw nsw i32 %i.093, 10
  %add = add nuw nsw i32 %mul, 450
  %call24 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call2, i32 noundef %add, i32 noundef 0, i32 noundef 0) #11
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv26) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %for.body
  %call31 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %call31) #11
  %call32 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %call32) #11
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call33 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %5) #11
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call38 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %6) #11
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %call44 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call47 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %7) #11
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv49) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %call53 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14) #11
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv55) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %call59 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end30, %land.lhs.true, %land.lhs.true43, %land.lhs.true46, %land.lhs.true52, %land.lhs.true58, %for.body, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %for.body ], [ %call2, %land.lhs.true58 ], [ %call2, %land.lhs.true52 ], [ %call2, %land.lhs.true46 ], [ %call2, %land.lhs.true43 ], [ %call2, %land.lhs.true ], [ %call2, %if.end30 ], [ %call2, %for.cond ]
  %c.0 = phi %struct.bignum_st* [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %for.body ], [ %call6, %land.lhs.true58 ], [ %call6, %land.lhs.true52 ], [ %call6, %land.lhs.true46 ], [ %call6, %land.lhs.true43 ], [ %call6, %land.lhs.true ], [ %call6, %if.end30 ], [ %call6, %for.cond ]
  %d.0 = phi %struct.bignum_st* [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %for.body ], [ %call10, %land.lhs.true58 ], [ %call10, %land.lhs.true52 ], [ %call10, %land.lhs.true46 ], [ %call10, %land.lhs.true43 ], [ %call10, %land.lhs.true ], [ %call10, %if.end30 ], [ %call10, %for.cond ]
  %e.0 = phi %struct.bignum_st* [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %for.body ], [ %call14, %land.lhs.true58 ], [ %call14, %land.lhs.true52 ], [ %call14, %land.lhs.true46 ], [ %call14, %land.lhs.true43 ], [ %call14, %land.lhs.true ], [ %call14, %if.end30 ], [ %call14, %for.cond ]
  %st.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %if.end30 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true58 ], [ 0, %for.body ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_modexp_mont5() #1 {
entry:
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %n = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !5
  %2 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !5
  %call = tail call %struct.bignum_st* @BN_new() #11
  store %struct.bignum_st* %call, %struct.bignum_st** %a, align 8, !tbaa !5
  %3 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %3) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i64 0, i64 0), i8* noundef %4) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i64 0, i64 0), i8* noundef %5) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %6) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %7 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %7) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #11
  store %struct.bignum_st* %call18, %struct.bignum_st** %b, align 8, !tbaa !5
  %8 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %8) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.bignum_st* @BN_new() #11
  store %struct.bignum_st* %call22, %struct.bignum_st** %n, align 8, !tbaa !5
  %9 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i64 0, i64 0), i8* noundef %9) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.bignum_st* @BN_new() #11
  %10 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %10) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #11
  %11 = bitcast %struct.bn_mont_ctx_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i64 0, i64 0), i8* noundef %11) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false29
  %call33 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call6, i32 noundef 1024, i32 noundef 0, i32 noundef 1) #11
  %cmp = icmp ne i32 %call33, 0
  %conv = zext i1 %cmp to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call36 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv38) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %land.lhs.true
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call2) #11
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call43 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %12, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv45) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end42
  %call50 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call10) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end49
  %call54 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.104, i64 0, i64 0)) #11
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.103, i64 0, i64 0), i32 noundef %conv56) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end53
  %call60 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.106, i64 0, i64 0)) #11
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv62) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %call66 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %n, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.108, i64 0, i64 0)) #11
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv68) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %land.lhs.true65
  %13 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %14 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call73 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef %14) #11
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv75) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.end72
  %15 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %16 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %17 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call79 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %17) #11
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv81) #11
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %land.lhs.true78
  %18 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %19 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %20 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call85 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %20) #11
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv87) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %land.lhs.true84
  %call91 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call10) #11
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %if.end94

if.end94:                                         ; preds = %land.lhs.true90
  %call95 = call fastcc i32 @parse_bigBN(%struct.bignum_st** noundef nonnull %n, i8** noundef getelementptr inbounds ([17 x i8*], [17 x i8*]* @bn1strings, i64 0, i64 0)) #12
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.112, i64 0, i64 0), i32 noundef %conv97) #11
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.end94
  %call101 = call fastcc i32 @parse_bigBN(%struct.bignum_st** noundef nonnull %a, i8** noundef getelementptr inbounds ([17 x i8*], [17 x i8*]* @bn2strings, i64 0, i64 0)) #12
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv103) #11
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %if.end107

if.end107:                                        ; preds = %land.lhs.true100
  %21 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %21) #11
  %22 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %call108 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %22) #11
  store %struct.bignum_st* %call108, %struct.bignum_st** %b, align 8, !tbaa !5
  %23 = bitcast %struct.bignum_st* %call108 to i8*
  %call109 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0), i8* noundef %23) #11
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.end107
  %24 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %25 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call112 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %24, %struct.bignum_ctx* noundef %25) #11
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv114) #11
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %land.lhs.true111
  %26 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %27 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call118 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %26, %struct.bignum_st* noundef %26, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %27) #11
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv120) #11
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %28 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %29 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %30 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call124 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %29, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %30) #11
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv126) #11
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %land.lhs.true123
  %call130 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call10) #11
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %if.end133

if.end133:                                        ; preds = %land.lhs.true129
  %call134 = call fastcc i32 @parse_bigBN(%struct.bignum_st** noundef nonnull %a, i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_modexp_mont5.ahex, i64 0, i64 0)) #12
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.134, i64 0, i64 0), i32 noundef %conv136) #11
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.end133
  %call140 = call fastcc i32 @parse_bigBN(%struct.bignum_st** noundef nonnull %n, i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_modexp_mont5.nhex, i64 0, i64 0)) #12
  %cmp141 = icmp ne i32 %call140, 0
  %conv142 = zext i1 %cmp141 to i32
  %call143 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.135, i64 0, i64 0), i32 noundef %conv142) #11
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %err, label %if.end146

if.end146:                                        ; preds = %land.lhs.true139
  %31 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %31) #11
  %32 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %call147 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %32) #11
  store %struct.bignum_st* %call147, %struct.bignum_st** %b, align 8, !tbaa !5
  %33 = bitcast %struct.bignum_st* %call147 to i8*
  %call148 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i64 0, i64 0), i8* noundef %33) #11
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %if.end146
  %34 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %35 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call151 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %34, %struct.bignum_ctx* noundef %35) #11
  %cmp152 = icmp ne i32 %call151, 0
  %conv153 = zext i1 %cmp152 to i32
  %call154 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 566, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv153) #11
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %err, label %if.end157

if.end157:                                        ; preds = %land.lhs.true150
  %36 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %37 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call158 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %36, %struct.bignum_st* noundef %36, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %37) #11
  %cmp159 = icmp ne i32 %call158, 0
  %conv160 = zext i1 %cmp159 to i32
  %call161 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv160) #11
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %if.end157
  %38 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %39 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %40 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call164 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %38, %struct.bignum_st* noundef %39, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %40) #11
  %cmp165 = icmp ne i32 %call164, 0
  %conv166 = zext i1 %cmp165 to i32
  %call167 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv166) #11
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false163
  %call170 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 571, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call10) #11
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %if.end173

if.end173:                                        ; preds = %lor.lhs.false169
  %call174 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([193 x i8], [193 x i8]* @.str.137, i64 0, i64 0)) #11
  %cmp175 = icmp ne i32 %call174, 0
  %conv176 = zext i1 %cmp175 to i32
  %call177 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv176) #11
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.end173
  %call180 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %n, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.139, i64 0, i64 0)) #11
  %cmp181 = icmp ne i32 %call180, 0
  %conv182 = zext i1 %cmp181 to i32
  %call183 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([149 x i8], [149 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv182) #11
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %land.lhs.true185

land.lhs.true185:                                 ; preds = %land.lhs.true179
  %41 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %42 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call186 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %41, %struct.bignum_ctx* noundef %42) #11
  %cmp187 = icmp ne i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 582, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv188) #11
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %land.lhs.true185
  %43 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %44 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call192 = call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %43, %struct.bignum_st* noundef %43, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %44) #11
  %cmp193 = icmp ne i32 %call192, 0
  %conv194 = zext i1 %cmp193 to i32
  %call195 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.140, i64 0, i64 0), i32 noundef %conv194) #11
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %if.end198

if.end198:                                        ; preds = %land.lhs.true191
  %call199 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.142, i64 0, i64 0)) #11
  %cmp200 = icmp ne i32 %call199, 0
  %conv201 = zext i1 %cmp200 to i32
  %call202 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.141, i64 0, i64 0), i32 noundef %conv201) #11
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %err, label %land.lhs.true204

land.lhs.true204:                                 ; preds = %if.end198
  %call205 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.144, i64 0, i64 0)) #11
  %cmp206 = icmp ne i32 %call205, 0
  %conv207 = zext i1 %cmp206 to i32
  %call208 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.143, i64 0, i64 0), i32 noundef %conv207) #11
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %err, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %land.lhs.true204
  %call211 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %n, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.146, i64 0, i64 0)) #11
  %cmp212 = icmp ne i32 %call211, 0
  %conv213 = zext i1 %cmp212 to i32
  %call214 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 601, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.145, i64 0, i64 0), i32 noundef %conv213) #11
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %err, label %land.lhs.true216

land.lhs.true216:                                 ; preds = %land.lhs.true210
  %45 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %46 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call217 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %45, %struct.bignum_ctx* noundef %46) #11
  %cmp218 = icmp ne i32 %call217, 0
  %conv219 = zext i1 %cmp218 to i32
  %call220 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv219) #11
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %err, label %land.lhs.true222

land.lhs.true222:                                 ; preds = %land.lhs.true216
  %47 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %48 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %49 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %50 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call223 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %47, %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %49, %struct.bignum_ctx* noundef %50, %struct.bn_mont_ctx_st* noundef %call30) #11
  %cmp224 = icmp ne i32 %call223, 0
  %conv225 = zext i1 %cmp224 to i32
  %call226 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 603, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv225) #11
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err, label %land.lhs.true228

land.lhs.true228:                                 ; preds = %land.lhs.true222
  %51 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %52 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %53 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %54 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call229 = call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %51, %struct.bignum_st* noundef %52, %struct.bignum_st* noundef %53, %struct.bignum_ctx* noundef %54, %struct.bn_mont_ctx_st* noundef %call30) #11
  %cmp230 = icmp ne i32 %call229, 0
  %conv231 = zext i1 %cmp230 to i32
  %call232 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv231) #11
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %land.lhs.true234

land.lhs.true234:                                 ; preds = %land.lhs.true228
  %call235 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call10) #11
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %err, label %if.end238

if.end238:                                        ; preds = %land.lhs.true234
  %call239 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.142, i64 0, i64 0)) #11
  %cmp240 = icmp ne i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %call242 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.141, i64 0, i64 0), i32 noundef %conv241) #11
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %land.lhs.true244

land.lhs.true244:                                 ; preds = %if.end238
  %call245 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.150, i64 0, i64 0)) #11
  %cmp246 = icmp ne i32 %call245, 0
  %conv247 = zext i1 %cmp246 to i32
  %call248 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.149, i64 0, i64 0), i32 noundef %conv247) #11
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %land.lhs.true250

land.lhs.true250:                                 ; preds = %land.lhs.true244
  %call251 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %n, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.142, i64 0, i64 0)) #11
  %cmp252 = icmp ne i32 %call251, 0
  %conv253 = zext i1 %cmp252 to i32
  %call254 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 626, i8* noundef getelementptr inbounds ([283 x i8], [283 x i8]* @.str.151, i64 0, i64 0), i32 noundef %conv253) #11
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %err, label %land.lhs.true256

land.lhs.true256:                                 ; preds = %land.lhs.true250
  %55 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %56 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call257 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %55, %struct.bignum_ctx* noundef %56) #11
  %cmp258 = icmp ne i32 %call257, 0
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv259) #11
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %err, label %land.lhs.true262

land.lhs.true262:                                 ; preds = %land.lhs.true256
  %57 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %58 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %59 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  %60 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call263 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %57, %struct.bignum_st* noundef %58, %struct.bignum_st* noundef %59, %struct.bignum_ctx* noundef %60, %struct.bn_mont_ctx_st* noundef %call30) #11
  %cmp264 = icmp ne i32 %call263, 0
  %conv265 = zext i1 %cmp264 to i32
  %call266 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 628, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv265) #11
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %err, label %if.end269

if.end269:                                        ; preds = %land.lhs.true262
  call void @BN_zero_ex(%struct.bignum_st* noundef %call10) #11
  %call270 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call10) #11
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %err, label %if.end273

if.end273:                                        ; preds = %if.end269
  %call274 = call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call2, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp275 = icmp ne i32 %call274, 0
  %conv276 = zext i1 %cmp275 to i32
  %call277 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.152, i64 0, i64 0), i32 noundef %conv276) #11
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %err, label %if.end280

if.end280:                                        ; preds = %if.end273
  %61 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  call void @BN_zero_ex(%struct.bignum_st* noundef %61) #11
  %62 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %63 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call281 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %62, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %63, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp282 = icmp ne i32 %call281, 0
  %conv283 = zext i1 %cmp282 to i32
  %call284 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 638, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv283) #11
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %err, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %if.end280
  %call287 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call10) #11
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %err, label %if.end290

if.end290:                                        ; preds = %lor.lhs.false286
  %64 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %call291 = call i32 @BN_set_word(%struct.bignum_st* noundef %64, i64 noundef 1) #11
  %cmp292 = icmp ne i32 %call291, 0
  %conv293 = zext i1 %cmp292 to i32
  %call294 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i64 0, i64 0), i32 noundef %conv293) #11
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %err, label %land.lhs.true296

land.lhs.true296:                                 ; preds = %if.end290
  %65 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call297 = call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %65) #11
  %cmp298 = icmp ne i32 %call297, 0
  %conv299 = zext i1 %cmp298 to i32
  %call300 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 648, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv299) #11
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %err, label %if.end303

if.end303:                                        ; preds = %land.lhs.true296
  %66 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %67 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call304 = call i32 @BN_from_montgomery(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %66, %struct.bn_mont_ctx_st* noundef %call30, %struct.bignum_ctx* noundef %67) #11
  %cmp305 = icmp ne i32 %call304, 0
  %conv306 = zext i1 %cmp305 to i32
  %call307 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.155, i64 0, i64 0), i32 noundef %conv306) #11
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %err, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %if.end303
  %68 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call310 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %68, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp311 = icmp ne i32 %call310, 0
  %conv312 = zext i1 %cmp311 to i32
  %call313 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv312) #11
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %err, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %lor.lhs.false309
  %69 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %70 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call316 = call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %69, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %70) #11
  %cmp317 = icmp ne i32 %call316, 0
  %conv318 = zext i1 %cmp317 to i32
  %call319 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 652, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.157, i64 0, i64 0), i32 noundef %conv318) #11
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %err, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %lor.lhs.false315
  %71 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %call322 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %71, %struct.bignum_st* noundef %call10) #11
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %err, label %if.end325

if.end325:                                        ; preds = %lor.lhs.false321
  %call326 = call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call14, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp327 = icmp ne i32 %call326, 0
  %conv328 = zext i1 %cmp327 to i32
  %call329 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.158, i64 0, i64 0), i32 noundef %conv328) #11
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %err, label %land.lhs.true331

land.lhs.true331:                                 ; preds = %if.end325
  %72 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call332 = call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %72, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp333 = icmp ne i32 %call332, 0
  %conv334 = zext i1 %cmp333 to i32
  %call335 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 658, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv334) #11
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %err, label %land.lhs.true337

land.lhs.true337:                                 ; preds = %land.lhs.true331
  %73 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %74 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call338 = call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %73, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %74) #11
  %cmp339 = icmp ne i32 %call338, 0
  %conv340 = zext i1 %cmp339 to i32
  %call341 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.157, i64 0, i64 0), i32 noundef %conv340) #11
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %err, label %land.lhs.true343

land.lhs.true343:                                 ; preds = %land.lhs.true337
  %75 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %call344 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 660, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %75, %struct.bignum_st* noundef %call10) #11
  %tobool345.not = icmp ne i32 %call344, 0
  %spec.select = zext i1 %tobool345.not to i32
  br label %err

err:                                              ; preds = %land.lhs.true343, %if.end325, %land.lhs.true331, %land.lhs.true337, %if.end303, %lor.lhs.false309, %lor.lhs.false315, %lor.lhs.false321, %if.end290, %land.lhs.true296, %if.end280, %lor.lhs.false286, %if.end273, %if.end269, %if.end238, %land.lhs.true244, %land.lhs.true250, %land.lhs.true256, %land.lhs.true262, %if.end198, %land.lhs.true204, %land.lhs.true210, %land.lhs.true216, %land.lhs.true222, %land.lhs.true228, %land.lhs.true234, %if.end173, %land.lhs.true179, %land.lhs.true185, %land.lhs.true191, %if.end157, %lor.lhs.false163, %lor.lhs.false169, %if.end146, %land.lhs.true150, %if.end133, %land.lhs.true139, %if.end107, %land.lhs.true111, %land.lhs.true117, %land.lhs.true123, %land.lhs.true129, %if.end94, %land.lhs.true100, %if.end72, %land.lhs.true78, %land.lhs.true84, %land.lhs.true90, %if.end53, %land.lhs.true59, %land.lhs.true65, %if.end49, %if.end42, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29
  %p.0 = phi %struct.bignum_st* [ %call2, %land.lhs.true337 ], [ %call2, %land.lhs.true331 ], [ %call2, %if.end325 ], [ %call2, %lor.lhs.false321 ], [ %call2, %lor.lhs.false315 ], [ %call2, %lor.lhs.false309 ], [ %call2, %if.end303 ], [ %call2, %land.lhs.true296 ], [ %call2, %if.end290 ], [ %call2, %lor.lhs.false286 ], [ %call2, %if.end280 ], [ %call2, %if.end273 ], [ %call2, %if.end269 ], [ %call2, %land.lhs.true262 ], [ %call2, %land.lhs.true256 ], [ %call2, %land.lhs.true250 ], [ %call2, %land.lhs.true244 ], [ %call2, %if.end238 ], [ %call2, %land.lhs.true234 ], [ %call2, %land.lhs.true228 ], [ %call2, %land.lhs.true222 ], [ %call2, %land.lhs.true216 ], [ %call2, %land.lhs.true210 ], [ %call2, %land.lhs.true204 ], [ %call2, %if.end198 ], [ %call2, %land.lhs.true191 ], [ %call2, %land.lhs.true185 ], [ %call2, %land.lhs.true179 ], [ %call2, %if.end173 ], [ %call2, %lor.lhs.false169 ], [ %call2, %lor.lhs.false163 ], [ %call2, %if.end157 ], [ %call2, %land.lhs.true150 ], [ %call2, %if.end146 ], [ %call2, %land.lhs.true139 ], [ %call2, %if.end133 ], [ %call2, %land.lhs.true129 ], [ %call2, %land.lhs.true123 ], [ %call2, %land.lhs.true117 ], [ %call2, %land.lhs.true111 ], [ %call2, %if.end107 ], [ %call2, %land.lhs.true100 ], [ %call2, %if.end94 ], [ %call2, %land.lhs.true90 ], [ %call2, %land.lhs.true84 ], [ %call2, %land.lhs.true78 ], [ %call2, %if.end72 ], [ %call2, %land.lhs.true65 ], [ %call2, %land.lhs.true59 ], [ %call2, %if.end53 ], [ %call2, %if.end49 ], [ %call2, %if.end42 ], [ %call2, %land.lhs.true ], [ %call2, %if.end ], [ %call2, %lor.lhs.false29 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %land.lhs.true343 ]
  %m.0 = phi %struct.bignum_st* [ %call6, %land.lhs.true337 ], [ %call6, %land.lhs.true331 ], [ %call6, %if.end325 ], [ %call6, %lor.lhs.false321 ], [ %call6, %lor.lhs.false315 ], [ %call6, %lor.lhs.false309 ], [ %call6, %if.end303 ], [ %call6, %land.lhs.true296 ], [ %call6, %if.end290 ], [ %call6, %lor.lhs.false286 ], [ %call6, %if.end280 ], [ %call6, %if.end273 ], [ %call6, %if.end269 ], [ %call6, %land.lhs.true262 ], [ %call6, %land.lhs.true256 ], [ %call6, %land.lhs.true250 ], [ %call6, %land.lhs.true244 ], [ %call6, %if.end238 ], [ %call6, %land.lhs.true234 ], [ %call6, %land.lhs.true228 ], [ %call6, %land.lhs.true222 ], [ %call6, %land.lhs.true216 ], [ %call6, %land.lhs.true210 ], [ %call6, %land.lhs.true204 ], [ %call6, %if.end198 ], [ %call6, %land.lhs.true191 ], [ %call6, %land.lhs.true185 ], [ %call6, %land.lhs.true179 ], [ %call6, %if.end173 ], [ %call6, %lor.lhs.false169 ], [ %call6, %lor.lhs.false163 ], [ %call6, %if.end157 ], [ %call6, %land.lhs.true150 ], [ %call6, %if.end146 ], [ %call6, %land.lhs.true139 ], [ %call6, %if.end133 ], [ %call6, %land.lhs.true129 ], [ %call6, %land.lhs.true123 ], [ %call6, %land.lhs.true117 ], [ %call6, %land.lhs.true111 ], [ %call6, %if.end107 ], [ %call6, %land.lhs.true100 ], [ %call6, %if.end94 ], [ %call6, %land.lhs.true90 ], [ %call6, %land.lhs.true84 ], [ %call6, %land.lhs.true78 ], [ %call6, %if.end72 ], [ %call6, %land.lhs.true65 ], [ %call6, %land.lhs.true59 ], [ %call6, %if.end53 ], [ %call6, %if.end49 ], [ %call6, %if.end42 ], [ %call6, %land.lhs.true ], [ %call6, %if.end ], [ %call6, %lor.lhs.false29 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true343 ]
  %d.0 = phi %struct.bignum_st* [ %call10, %land.lhs.true337 ], [ %call10, %land.lhs.true331 ], [ %call10, %if.end325 ], [ %call10, %lor.lhs.false321 ], [ %call10, %lor.lhs.false315 ], [ %call10, %lor.lhs.false309 ], [ %call10, %if.end303 ], [ %call10, %land.lhs.true296 ], [ %call10, %if.end290 ], [ %call10, %lor.lhs.false286 ], [ %call10, %if.end280 ], [ %call10, %if.end273 ], [ %call10, %if.end269 ], [ %call10, %land.lhs.true262 ], [ %call10, %land.lhs.true256 ], [ %call10, %land.lhs.true250 ], [ %call10, %land.lhs.true244 ], [ %call10, %if.end238 ], [ %call10, %land.lhs.true234 ], [ %call10, %land.lhs.true228 ], [ %call10, %land.lhs.true222 ], [ %call10, %land.lhs.true216 ], [ %call10, %land.lhs.true210 ], [ %call10, %land.lhs.true204 ], [ %call10, %if.end198 ], [ %call10, %land.lhs.true191 ], [ %call10, %land.lhs.true185 ], [ %call10, %land.lhs.true179 ], [ %call10, %if.end173 ], [ %call10, %lor.lhs.false169 ], [ %call10, %lor.lhs.false163 ], [ %call10, %if.end157 ], [ %call10, %land.lhs.true150 ], [ %call10, %if.end146 ], [ %call10, %land.lhs.true139 ], [ %call10, %if.end133 ], [ %call10, %land.lhs.true129 ], [ %call10, %land.lhs.true123 ], [ %call10, %land.lhs.true117 ], [ %call10, %land.lhs.true111 ], [ %call10, %if.end107 ], [ %call10, %land.lhs.true100 ], [ %call10, %if.end94 ], [ %call10, %land.lhs.true90 ], [ %call10, %land.lhs.true84 ], [ %call10, %land.lhs.true78 ], [ %call10, %if.end72 ], [ %call10, %land.lhs.true65 ], [ %call10, %land.lhs.true59 ], [ %call10, %if.end53 ], [ %call10, %if.end49 ], [ %call10, %if.end42 ], [ %call10, %land.lhs.true ], [ %call10, %if.end ], [ %call10, %lor.lhs.false29 ], [ %call10, %lor.lhs.false25 ], [ %call10, %lor.lhs.false21 ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %land.lhs.true343 ]
  %e.0 = phi %struct.bignum_st* [ %call14, %land.lhs.true337 ], [ %call14, %land.lhs.true331 ], [ %call14, %if.end325 ], [ %call14, %lor.lhs.false321 ], [ %call14, %lor.lhs.false315 ], [ %call14, %lor.lhs.false309 ], [ %call14, %if.end303 ], [ %call14, %land.lhs.true296 ], [ %call14, %if.end290 ], [ %call14, %lor.lhs.false286 ], [ %call14, %if.end280 ], [ %call14, %if.end273 ], [ %call14, %if.end269 ], [ %call14, %land.lhs.true262 ], [ %call14, %land.lhs.true256 ], [ %call14, %land.lhs.true250 ], [ %call14, %land.lhs.true244 ], [ %call14, %if.end238 ], [ %call14, %land.lhs.true234 ], [ %call14, %land.lhs.true228 ], [ %call14, %land.lhs.true222 ], [ %call14, %land.lhs.true216 ], [ %call14, %land.lhs.true210 ], [ %call14, %land.lhs.true204 ], [ %call14, %if.end198 ], [ %call14, %land.lhs.true191 ], [ %call14, %land.lhs.true185 ], [ %call14, %land.lhs.true179 ], [ %call14, %if.end173 ], [ %call14, %lor.lhs.false169 ], [ %call14, %lor.lhs.false163 ], [ %call14, %if.end157 ], [ %call14, %land.lhs.true150 ], [ %call14, %if.end146 ], [ %call14, %land.lhs.true139 ], [ %call14, %if.end133 ], [ %call14, %land.lhs.true129 ], [ %call14, %land.lhs.true123 ], [ %call14, %land.lhs.true117 ], [ %call14, %land.lhs.true111 ], [ %call14, %if.end107 ], [ %call14, %land.lhs.true100 ], [ %call14, %if.end94 ], [ %call14, %land.lhs.true90 ], [ %call14, %land.lhs.true84 ], [ %call14, %land.lhs.true78 ], [ %call14, %if.end72 ], [ %call14, %land.lhs.true65 ], [ %call14, %land.lhs.true59 ], [ %call14, %if.end53 ], [ %call14, %if.end49 ], [ %call14, %if.end42 ], [ %call14, %land.lhs.true ], [ %call14, %if.end ], [ %call14, %lor.lhs.false29 ], [ %call14, %lor.lhs.false25 ], [ %call14, %lor.lhs.false21 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %land.lhs.true343 ]
  %c.0 = phi %struct.bignum_st* [ %call26, %land.lhs.true337 ], [ %call26, %land.lhs.true331 ], [ %call26, %if.end325 ], [ %call26, %lor.lhs.false321 ], [ %call26, %lor.lhs.false315 ], [ %call26, %lor.lhs.false309 ], [ %call26, %if.end303 ], [ %call26, %land.lhs.true296 ], [ %call26, %if.end290 ], [ %call26, %lor.lhs.false286 ], [ %call26, %if.end280 ], [ %call26, %if.end273 ], [ %call26, %if.end269 ], [ %call26, %land.lhs.true262 ], [ %call26, %land.lhs.true256 ], [ %call26, %land.lhs.true250 ], [ %call26, %land.lhs.true244 ], [ %call26, %if.end238 ], [ %call26, %land.lhs.true234 ], [ %call26, %land.lhs.true228 ], [ %call26, %land.lhs.true222 ], [ %call26, %land.lhs.true216 ], [ %call26, %land.lhs.true210 ], [ %call26, %land.lhs.true204 ], [ %call26, %if.end198 ], [ %call26, %land.lhs.true191 ], [ %call26, %land.lhs.true185 ], [ %call26, %land.lhs.true179 ], [ %call26, %if.end173 ], [ %call26, %lor.lhs.false169 ], [ %call26, %lor.lhs.false163 ], [ %call26, %if.end157 ], [ %call26, %land.lhs.true150 ], [ %call26, %if.end146 ], [ %call26, %land.lhs.true139 ], [ %call26, %if.end133 ], [ %call26, %land.lhs.true129 ], [ %call26, %land.lhs.true123 ], [ %call26, %land.lhs.true117 ], [ %call26, %land.lhs.true111 ], [ %call26, %if.end107 ], [ %call26, %land.lhs.true100 ], [ %call26, %if.end94 ], [ %call26, %land.lhs.true90 ], [ %call26, %land.lhs.true84 ], [ %call26, %land.lhs.true78 ], [ %call26, %if.end72 ], [ %call26, %land.lhs.true65 ], [ %call26, %land.lhs.true59 ], [ %call26, %if.end53 ], [ %call26, %if.end49 ], [ %call26, %if.end42 ], [ %call26, %land.lhs.true ], [ %call26, %if.end ], [ %call26, %lor.lhs.false29 ], [ %call26, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call26, %land.lhs.true343 ]
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call30, %land.lhs.true337 ], [ %call30, %land.lhs.true331 ], [ %call30, %if.end325 ], [ %call30, %lor.lhs.false321 ], [ %call30, %lor.lhs.false315 ], [ %call30, %lor.lhs.false309 ], [ %call30, %if.end303 ], [ %call30, %land.lhs.true296 ], [ %call30, %if.end290 ], [ %call30, %lor.lhs.false286 ], [ %call30, %if.end280 ], [ %call30, %if.end273 ], [ %call30, %if.end269 ], [ %call30, %land.lhs.true262 ], [ %call30, %land.lhs.true256 ], [ %call30, %land.lhs.true250 ], [ %call30, %land.lhs.true244 ], [ %call30, %if.end238 ], [ %call30, %land.lhs.true234 ], [ %call30, %land.lhs.true228 ], [ %call30, %land.lhs.true222 ], [ %call30, %land.lhs.true216 ], [ %call30, %land.lhs.true210 ], [ %call30, %land.lhs.true204 ], [ %call30, %if.end198 ], [ %call30, %land.lhs.true191 ], [ %call30, %land.lhs.true185 ], [ %call30, %land.lhs.true179 ], [ %call30, %if.end173 ], [ %call30, %lor.lhs.false169 ], [ %call30, %lor.lhs.false163 ], [ %call30, %if.end157 ], [ %call30, %land.lhs.true150 ], [ %call30, %if.end146 ], [ %call30, %land.lhs.true139 ], [ %call30, %if.end133 ], [ %call30, %land.lhs.true129 ], [ %call30, %land.lhs.true123 ], [ %call30, %land.lhs.true117 ], [ %call30, %land.lhs.true111 ], [ %call30, %if.end107 ], [ %call30, %land.lhs.true100 ], [ %call30, %if.end94 ], [ %call30, %land.lhs.true90 ], [ %call30, %land.lhs.true84 ], [ %call30, %land.lhs.true78 ], [ %call30, %if.end72 ], [ %call30, %land.lhs.true65 ], [ %call30, %land.lhs.true59 ], [ %call30, %if.end53 ], [ %call30, %if.end49 ], [ %call30, %if.end42 ], [ %call30, %land.lhs.true ], [ %call30, %if.end ], [ %call30, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call30, %land.lhs.true343 ]
  %st.0 = phi i32 [ 0, %land.lhs.true337 ], [ 0, %land.lhs.true331 ], [ 0, %if.end325 ], [ 0, %lor.lhs.false321 ], [ 0, %lor.lhs.false315 ], [ 0, %lor.lhs.false309 ], [ 0, %if.end303 ], [ 0, %land.lhs.true296 ], [ 0, %if.end290 ], [ 0, %lor.lhs.false286 ], [ 0, %if.end280 ], [ 0, %if.end273 ], [ 0, %if.end269 ], [ 0, %land.lhs.true262 ], [ 0, %land.lhs.true256 ], [ 0, %land.lhs.true250 ], [ 0, %land.lhs.true244 ], [ 0, %if.end238 ], [ 0, %land.lhs.true234 ], [ 0, %land.lhs.true228 ], [ 0, %land.lhs.true222 ], [ 0, %land.lhs.true216 ], [ 0, %land.lhs.true210 ], [ 0, %land.lhs.true204 ], [ 0, %if.end198 ], [ 0, %land.lhs.true191 ], [ 0, %land.lhs.true185 ], [ 0, %land.lhs.true179 ], [ 0, %if.end173 ], [ 0, %lor.lhs.false169 ], [ 0, %lor.lhs.false163 ], [ 0, %if.end157 ], [ 0, %land.lhs.true150 ], [ 0, %if.end146 ], [ 0, %land.lhs.true139 ], [ 0, %if.end133 ], [ 0, %land.lhs.true129 ], [ 0, %land.lhs.true123 ], [ 0, %land.lhs.true117 ], [ 0, %land.lhs.true111 ], [ 0, %if.end107 ], [ 0, %land.lhs.true100 ], [ 0, %if.end94 ], [ 0, %land.lhs.true90 ], [ 0, %land.lhs.true84 ], [ 0, %land.lhs.true78 ], [ 0, %if.end72 ], [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true59 ], [ 0, %if.end53 ], [ 0, %if.end49 ], [ 0, %if.end42 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %land.lhs.true343 ]
  call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.0) #11
  %76 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %76) #11
  call void @BN_free(%struct.bignum_st* noundef %p.0) #11
  call void @BN_free(%struct.bignum_st* noundef %m.0) #11
  call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  %77 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %77) #11
  %78 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %78) #11
  call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kronecker() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1078, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1079, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1080, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1081, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call13 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %call2, i32 noundef 512, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1094, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.166, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end
  %call18 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %call18) #11
  br label %for.body

for.cond:                                         ; preds = %if.end88
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !18

for.body:                                         ; preds = %if.end17, %for.cond
  %i.0128 = phi i32 [ 0, %if.end17 ], [ %inc, %for.cond ]
  %call21 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1099, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %for.body
  %call28 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %call28) #11
  %call29 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp30 = icmp ne %struct.bignum_st* %call29, null
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1104, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.167, i64 0, i64 0), i32 noundef %conv31) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end27
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call10, i32 noundef 0) #11
  %call36 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call10, i64 noundef 1) #11
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.168, i64 0, i64 0), i32 noundef %conv38) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end35
  %call43 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10) #11
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1109, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.169, i64 0, i64 0), i32 noundef %conv45) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %if.end42
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef 0) #11
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call50 = tail call i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %4) #11
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1114, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.170, i64 0, i64 0), i32 noundef %conv52) #11
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.end56

if.end56:                                         ; preds = %if.end49
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef 1) #11
  %call57 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %call6, i64 noundef 1) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else, label %if.end77

if.else:                                          ; preds = %if.end56
  %call60 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call6) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else63, label %if.end77

if.else63:                                        ; preds = %if.else
  %call64 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call6, i64 noundef 1) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1123, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %if.else63
  %call71 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #11
  %call72 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1125, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32 noundef %call71, i32 noundef 0) #11
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1126, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.173, i64 0, i64 0)) #11
  br label %err

if.end77:                                         ; preds = %if.end70, %if.else, %if.end56
  %legendre.0 = phi i32 [ 1, %if.end56 ], [ 0, %if.else ], [ -1, %if.end70 ]
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call78 = tail call i32 @BN_kronecker(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %5) #11
  %call79 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1132, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.174, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i64 0, i64 0), i32 noundef %call78, i32 noundef -1) #11
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %if.end82

if.end82:                                         ; preds = %if.end77
  %call83 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call) #11
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end88, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end82
  %call85 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #11
  %tobool86.not = icmp eq i32 %call85, 0
  %sub = sub nsw i32 0, %call78
  %spec.select = select i1 %tobool86.not, i32 %call78, i32 %sub
  br label %if.end88

if.end88:                                         ; preds = %land.lhs.true, %if.end82
  %kronecker.0 = phi i32 [ %call78, %if.end82 ], [ %spec.select, %land.lhs.true ]
  %call89 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1138, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.176, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i64 0, i64 0), i32 noundef %legendre.0, i32 noundef %kronecker.0) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end88, %if.end77, %if.else63, %if.end49, %if.end42, %if.end35, %if.end27, %for.body, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.then74
  %b.0 = phi %struct.bignum_st* [ %call2, %if.then74 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %for.body ], [ %call2, %if.end27 ], [ %call2, %if.end35 ], [ %call2, %if.end42 ], [ %call2, %if.end49 ], [ %call2, %if.else63 ], [ %call2, %if.end77 ], [ %call2, %if.end88 ], [ %call2, %for.cond ]
  %r.0 = phi %struct.bignum_st* [ %call6, %if.then74 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %for.body ], [ %call6, %if.end27 ], [ %call6, %if.end35 ], [ %call6, %if.end42 ], [ %call6, %if.end49 ], [ %call6, %if.else63 ], [ %call6, %if.end77 ], [ %call6, %if.end88 ], [ %call6, %for.cond ]
  %t.0 = phi %struct.bignum_st* [ %call10, %if.then74 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %for.body ], [ %call10, %if.end27 ], [ %call10, %if.end35 ], [ %call10, %if.end42 ], [ %call10, %if.end49 ], [ %call10, %if.else63 ], [ %call10, %if.end77 ], [ %call10, %if.end88 ], [ %call10, %for.cond ]
  %st.0 = phi i32 [ 0, %if.then74 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %if.end88 ], [ 0, %if.end77 ], [ 0, %if.else63 ], [ 0, %if.end49 ], [ 0, %if.end42 ], [ 0, %if.end35 ], [ 0, %if.end27 ], [ 0, %for.body ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %r.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %t.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2034, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2038, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.179, i64 0, i64 0), i32 noundef %conv) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 0, i32 noundef 1, i32 noundef 1) #11
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2039, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.180, i64 0, i64 0), i32 noundef %conv7) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2040, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2041, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call20 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2042, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.183, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 1, i32 noundef -1, i32 noundef 1) #11
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2043, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2044, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %call35 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 2, i32 noundef 1, i32 noundef 0) #11
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2045, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.185, i64 0, i64 0), i32 noundef %conv37) #11
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %call41 = tail call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2046, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), %struct.bignum_st* noundef %call, i64 noundef 3) #11
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select = zext i1 %tobool42.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false40, %if.end, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false34
  %st.0 = phi i32 [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false40 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %st.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @test_bn2padded() #4 {
entry:
  %0 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %cmp = icmp ne %struct.bignum_ctx* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dec2bn() #1 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #12
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1801, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.187, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call2 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1802, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), %struct.bignum_st* noundef %1, i64 noundef 0) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %2 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call5 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1803, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %2) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call8 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1804, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %3) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call11 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1805, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %4) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call14 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1806, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %5) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %6 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %6) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call16 = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0)) #12
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1811, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.189, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call16, i32 noundef 3) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %7 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call20 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1812, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0), %struct.bignum_st* noundef %7, i64 noundef 256) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %8 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call23 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1813, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %8) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call26 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1814, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %9) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call29 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1815, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %10) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %11 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call32 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1816, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %11) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false31
  %12 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %12) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call36 = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0)) #12
  %call37 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1821, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call36, i32 noundef 3) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end35
  %13 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call40 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1822, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i64 0, i64 0), %struct.bignum_st* noundef %13, i64 noundef 42) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %14 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call43 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1823, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %14) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %15 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call46 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1824, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %15) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %16 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call49 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1825, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %16) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %17 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call52 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1826, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %17) #11
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false51
  %18 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %18) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call56 = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0)) #12
  %call57 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1831, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.194, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call56, i32 noundef 1) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %19 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call60 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1832, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), %struct.bignum_st* noundef %19, i64 noundef 1) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %20 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call63 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1833, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %20) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %21 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call66 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1834, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %21) #11
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %22 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call69 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1835, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %22) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %23 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call72 = call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1836, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %23) #11
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false71
  %24 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call75 = call i32 @test_BN_odd(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1837, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %24) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %lor.lhs.false74
  %25 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %25) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call79 = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0)) #12
  %call80 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1842, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef %call79, i32 noundef 2) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end78
  %26 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call83 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1843, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %26) #11
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %27 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call86 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1844, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %27) #11
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %28 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call89 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1845, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %28) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %29 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call92 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1846, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %29) #11
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %if.end95

if.end95:                                         ; preds = %lor.lhs.false91
  %30 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %30) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call96 = call fastcc i32 @parsedecBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.199, i64 0, i64 0)) #12
  %call97 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1851, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef %call96, i32 noundef 2) #11
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end95
  %31 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call100 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1852, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i64 0, i64 0), %struct.bignum_st* noundef %31, i64 noundef 42) #11
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false99
  %32 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call103 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1853, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %32) #11
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false102
  %33 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call106 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1854, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %33) #11
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false105
  %34 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call109 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1855, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %34) #11
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false108
  %35 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call112 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1856, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %35) #11
  %tobool113.not = icmp ne i32 %call112, 0
  %spec.select = zext i1 %tobool113.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false111, %if.end95, %lor.lhs.false99, %lor.lhs.false102, %lor.lhs.false105, %lor.lhs.false108, %if.end78, %lor.lhs.false82, %lor.lhs.false85, %lor.lhs.false88, %lor.lhs.false91, %if.end55, %lor.lhs.false59, %lor.lhs.false62, %lor.lhs.false65, %lor.lhs.false68, %lor.lhs.false71, %lor.lhs.false74, %if.end35, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false45, %lor.lhs.false48, %lor.lhs.false51, %if.end, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false31, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13
  %st.0 = phi i32 [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false105 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false99 ], [ 0, %if.end95 ], [ 0, %lor.lhs.false91 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false82 ], [ 0, %if.end78 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false59 ], [ 0, %if.end55 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false39 ], [ 0, %if.end35 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false111 ]
  %36 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %36) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hex2bn() #1 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #12
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1870, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call2 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1871, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %1) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %2 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call5 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1872, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %2) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call8 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1873, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %3) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %4) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call10 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0)) #12
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1878, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.201, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call10, i32 noundef 3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call14 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1879, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i64 0, i64 0), %struct.bignum_st* noundef %5, i64 noundef 598) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %6 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call17 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1880, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %6) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %7 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call20 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1881, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %7) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %8 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call23 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1882, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %8) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call26 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1883, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %9) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false25
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %10) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call30 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0)) #12
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1888, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.203, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call30, i32 noundef 3) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end29
  %11 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call34 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1889, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i64 0, i64 0), %struct.bignum_st* noundef %11, i64 noundef 66) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %12 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call37 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1890, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %12) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %13 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call40 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1891, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %13) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %14 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call43 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1892, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %14) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %15 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call46 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1893, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %15) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false45
  %16 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %16) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call50 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i64 0, i64 0)) #12
  %call51 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1898, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef %call50, i32 noundef 2) #11
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end49
  %17 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call54 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1899, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.207, i64 0, i64 0), %struct.bignum_st* noundef %17, i64 noundef 203) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %18 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call57 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1900, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %18) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %19 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call60 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1901, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %19) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %20 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call63 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1902, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %20) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %21 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call66 = call i32 @test_BN_odd(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1903, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %21) #11
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %lor.lhs.false65
  %22 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %22) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call70 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0)) #12
  %call71 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1908, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.208, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef %call70, i32 noundef 2) #11
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.end69
  %23 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call74 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1909, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %23) #11
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %24 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call77 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1910, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %24) #11
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false76
  %25 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call80 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1911, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %25) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %26 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call83 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1912, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %26) #11
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %if.end86

if.end86:                                         ; preds = %lor.lhs.false82
  %27 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %27) #11
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call87 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.210, i64 0, i64 0)) #12
  %call88 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1917, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call87, i32 noundef 3) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end86
  %28 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call91 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1918, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i64 0, i64 0), %struct.bignum_st* noundef %28, i64 noundef 2748) #11
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %29 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call94 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1919, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %29) #11
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false93
  %30 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call97 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1920, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %30) #11
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false96
  %31 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call100 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1921, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %31) #11
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false99
  %32 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call103 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1922, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %32) #11
  %tobool104.not = icmp ne i32 %call103, 0
  %spec.select = zext i1 %tobool104.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false102, %if.end86, %lor.lhs.false90, %lor.lhs.false93, %lor.lhs.false96, %lor.lhs.false99, %if.end69, %lor.lhs.false73, %lor.lhs.false76, %lor.lhs.false79, %lor.lhs.false82, %if.end49, %lor.lhs.false53, %lor.lhs.false56, %lor.lhs.false59, %lor.lhs.false62, %lor.lhs.false65, %if.end29, %lor.lhs.false33, %lor.lhs.false36, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false45, %if.end, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7
  %st.0 = phi i32 [ 0, %lor.lhs.false99 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false93 ], [ 0, %lor.lhs.false90 ], [ 0, %if.end86 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false73 ], [ 0, %if.end69 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false59 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false53 ], [ 0, %if.end49 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false33 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false102 ]
  %33 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %33) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_asc2bn() #1 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call = tail call %struct.bignum_st* @BN_new() #11
  store %struct.bignum_st* %call, %struct.bignum_st** %bn, align 8, !tbaa !5
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1936, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #11
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1939, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.212, i64 0, i64 0), i32 noundef %conv) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call5 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1940, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %2) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call8 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1941, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %3) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false7
  %call12 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0)) #11
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1944, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv14) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end11
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call18 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1945, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0), %struct.bignum_st* noundef %4, i64 noundef 256) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call21 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1946, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %5) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %call25 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0)) #11
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1949, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv27) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end24
  %6 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call31 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1950, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i64 0, i64 0), %struct.bignum_st* noundef %6, i64 noundef 42) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %7 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call34 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1951, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %7) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false33
  %call38 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i64 0, i64 0)) #11
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1954, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.215, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end37
  %8 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call44 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1955, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i64 0, i64 0), %struct.bignum_st* noundef %8, i64 noundef 4660) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call47 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1956, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %9) #11
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false46
  %call51 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i64 0, i64 0)) #11
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1959, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.217, i64 0, i64 0), i32 noundef %conv53) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end50
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call57 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1960, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i64 0, i64 0), %struct.bignum_st* noundef %10, i64 noundef 4660) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %11 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call60 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1961, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %11) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %lor.lhs.false59
  %call64 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i64 0, i64 0)) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1964, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.219, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end63
  %12 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call70 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1965, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.221, i64 0, i64 0), %struct.bignum_st* noundef %12, i64 noundef 43981) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %13 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call73 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1966, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %13) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false72
  %call77 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0)) #11
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1969, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.222, i64 0, i64 0), i32 noundef %conv79) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end76
  %14 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call83 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1970, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %14) #11
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %15 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call86 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1971, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %15) #11
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false85
  %call90 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.224, i64 0, i64 0)) #11
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1974, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.223, i64 0, i64 0), i32 noundef %conv92) #11
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.end89
  %16 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call96 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1975, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i64 0, i64 0), %struct.bignum_st* noundef %16, i64 noundef 123) #11
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %17 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call99 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1976, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), %struct.bignum_st* noundef %17) #11
  %tobool100.not = icmp ne i32 %call99, 0
  %spec.select = zext i1 %tobool100.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false98, %if.end89, %lor.lhs.false95, %if.end76, %lor.lhs.false82, %lor.lhs.false85, %if.end63, %lor.lhs.false69, %lor.lhs.false72, %if.end50, %lor.lhs.false56, %lor.lhs.false59, %if.end37, %lor.lhs.false43, %lor.lhs.false46, %if.end24, %lor.lhs.false30, %lor.lhs.false33, %if.end11, %lor.lhs.false17, %lor.lhs.false20, %if.end, %lor.lhs.false, %lor.lhs.false7, %entry
  %st.0 = phi i32 [ 0, %lor.lhs.false95 ], [ 0, %if.end89 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false82 ], [ 0, %if.end76 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false69 ], [ 0, %if.end63 ], [ 0, %lor.lhs.false59 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end37 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false30 ], [ 0, %if.end24 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false17 ], [ 0, %if.end11 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false98 ]
  %18 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %18) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mpi(i32 noundef %i) #1 {
entry:
  %scratch = alloca [8 x i8], align 1
  %bn = alloca %struct.bignum_st*, align 8
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %scratch, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %idxprom = sext i32 %i to i64
  %1 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %call = tail call %struct.bignum_st* @BN_new() #11
  store %struct.bignum_st* %call, %struct.bignum_st** %bn, align 8, !tbaa !5
  %2 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2003, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i64 0, i64 0), i8* noundef %2) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %base10 = getelementptr inbounds [6 x %struct.mpitest_st], [6 x %struct.mpitest_st]* @kMPITests, i64 0, i64 %idxprom, i32 0
  %3 = load i8*, i8** %base10, align 8, !tbaa !19
  %call2 = call i32 @BN_asc2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef %3) #11
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2004, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.226, i64 0, i64 0), i32 noundef %conv) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call5 = call i32 @BN_bn2mpi(%struct.bignum_st* noundef %4, i8* noundef null) #11
  %conv6 = sext i32 %call5 to i64
  %call7 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2007, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i64 0, i64 0), i64 noundef %conv6, i64 noundef 8) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call11 = call i32 @BN_bn2mpi(%struct.bignum_st* noundef %5, i8* noundef nonnull %0) #11
  %conv12 = sext i32 %call11 to i64
  %call13 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2010, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i64 0, i64 0), i64 noundef %conv12, i64 noundef %conv6) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end10
  %mpi = getelementptr inbounds [6 x %struct.mpitest_st], [6 x %struct.mpitest_st]* @kMPITests, i64 0, i64 %idxprom, i32 1
  %6 = load i8*, i8** %mpi, align 8, !tbaa !22
  %mpi_len16 = getelementptr inbounds [6 x %struct.mpitest_st], [6 x %struct.mpitest_st]* @kMPITests, i64 0, i64 %idxprom, i32 2
  %7 = load i64, i64* %mpi_len16, align 8, !tbaa !23
  %call18 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2011, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.231, i64 0, i64 0), i8* noundef %6, i64 noundef %7, i8* noundef nonnull %0, i64 noundef %conv6) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false15
  %call24 = call %struct.bignum_st* @BN_mpi2bn(i8* noundef nonnull %0, i32 noundef %call5, %struct.bignum_st* noundef null) #11
  %8 = bitcast %struct.bignum_st* %call24 to i8*
  %call25 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2014, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.232, i64 0, i64 0), i8* noundef %8) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end21
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  %call29 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2017, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.233, i64 0, i64 0), %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %call24) #11
  %tobool30.not = icmp ne i32 %call29, 0
  call void @BN_free(%struct.bignum_st* noundef %call24) #11
  %. = zext i1 %tobool30.not to i32
  br label %err

err:                                              ; preds = %if.end28, %if.end21, %if.end10, %lor.lhs.false15, %if.end, %entry, %lor.lhs.false
  %st.0 = phi i32 [ 0, %if.end21 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %., %if.end28 ]
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %10) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_negzero() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2141, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2142, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2143, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2144, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call13 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2148, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef 1) #11
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call2) #11
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call18 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %4) #11
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2152, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.243, i64 0, i64 0), i32 noundef %conv20) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end17
  %call25 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2154, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end24
  %call28 = tail call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2155, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %for.body

for.body:                                         ; preds = %lor.lhs.false27, %if.end90
  %tobool43.not = phi i1 [ false, %if.end90 ], [ true, %lor.lhs.false27 ]
  %call34 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call34 to i8*
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2159, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.244, i64 0, i64 0), i8* noundef %5) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %for.body
  %call38 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2160, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.245, i64 0, i64 0), i8* noundef %6) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %lor.lhs.false37
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end42
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call34, i32 noundef 4) #11
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call38, i32 noundef 4) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42
  %call46 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call34, i64 noundef 1) #11
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2167, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.246, i64 0, i64 0), i32 noundef %conv48) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end45
  %call52 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call38, i64 noundef 2) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2168, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.247, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false51
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call34, i32 noundef 1) #11
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call59 = tail call i32 @BN_div(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call34, %struct.bignum_st* noundef %call38, %struct.bignum_ctx* noundef %7) #11
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2171, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.248, i64 0, i64 0), i32 noundef %conv61) #11
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end58
  %call65 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2172, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %call68 = tail call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %lor.lhs.false67
  %call72 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call38, i64 noundef 1) #11
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2177, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.249, i64 0, i64 0), i32 noundef %conv74) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.end71
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call78 = tail call i32 @BN_div(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call34, %struct.bignum_st* noundef %call38, %struct.bignum_ctx* noundef %8) #11
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2178, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.248, i64 0, i64 0), i32 noundef %conv80) #11
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false77
  %call84 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2179, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %call87 = tail call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2180, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false86
  tail call void @BN_free(%struct.bignum_st* noundef %call34) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call38) #11
  br i1 %tobool43.not, label %for.body, label %for.end, !llvm.loop !24

for.end:                                          ; preds = %if.end90
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call) #11
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef 1) #11
  %call91 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call) #11
  %tobool92.not = icmp eq i32 %call91, 0
  %spec.select = zext i1 %tobool92.not to i32
  br label %err

err:                                              ; preds = %if.end71, %lor.lhs.false77, %lor.lhs.false83, %lor.lhs.false86, %if.end58, %lor.lhs.false64, %lor.lhs.false67, %if.end45, %lor.lhs.false51, %for.body, %lor.lhs.false37, %for.end, %if.end24, %lor.lhs.false27, %if.end17, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false27 ], [ %call2, %if.end24 ], [ %call2, %if.end17 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %for.end ], [ %call2, %lor.lhs.false37 ], [ %call2, %for.body ], [ %call2, %lor.lhs.false51 ], [ %call2, %if.end45 ], [ %call2, %lor.lhs.false67 ], [ %call2, %lor.lhs.false64 ], [ %call2, %if.end58 ], [ %call2, %lor.lhs.false86 ], [ %call2, %lor.lhs.false83 ], [ %call2, %lor.lhs.false77 ], [ %call2, %if.end71 ]
  %c.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false27 ], [ %call6, %if.end24 ], [ %call6, %if.end17 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %for.end ], [ %call6, %lor.lhs.false37 ], [ %call6, %for.body ], [ %call6, %lor.lhs.false51 ], [ %call6, %if.end45 ], [ %call6, %lor.lhs.false67 ], [ %call6, %lor.lhs.false64 ], [ %call6, %if.end58 ], [ %call6, %lor.lhs.false86 ], [ %call6, %lor.lhs.false83 ], [ %call6, %lor.lhs.false77 ], [ %call6, %if.end71 ]
  %d.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false27 ], [ %call10, %if.end24 ], [ %call10, %if.end17 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %for.end ], [ %call10, %lor.lhs.false37 ], [ %call10, %for.body ], [ %call10, %lor.lhs.false51 ], [ %call10, %if.end45 ], [ %call10, %lor.lhs.false67 ], [ %call10, %lor.lhs.false64 ], [ %call10, %if.end58 ], [ %call10, %lor.lhs.false86 ], [ %call10, %lor.lhs.false83 ], [ %call10, %lor.lhs.false77 ], [ %call10, %if.end71 ]
  %numerator.1 = phi %struct.bignum_st* [ null, %lor.lhs.false27 ], [ null, %if.end24 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %for.end ], [ %call34, %lor.lhs.false37 ], [ %call34, %for.body ], [ %call34, %lor.lhs.false51 ], [ %call34, %if.end45 ], [ %call34, %lor.lhs.false67 ], [ %call34, %lor.lhs.false64 ], [ %call34, %if.end58 ], [ %call34, %lor.lhs.false86 ], [ %call34, %lor.lhs.false83 ], [ %call34, %lor.lhs.false77 ], [ %call34, %if.end71 ]
  %denominator.1 = phi %struct.bignum_st* [ null, %lor.lhs.false27 ], [ null, %if.end24 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %for.end ], [ %call38, %if.end71 ], [ %call38, %lor.lhs.false77 ], [ %call38, %lor.lhs.false83 ], [ %call38, %lor.lhs.false86 ], [ %call38, %if.end58 ], [ %call38, %lor.lhs.false64 ], [ %call38, %lor.lhs.false67 ], [ %call38, %if.end45 ], [ %call38, %lor.lhs.false51 ], [ null, %for.body ], [ %call38, %lor.lhs.false37 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false27 ], [ 0, %if.end24 ], [ 0, %if.end17 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %for.end ], [ 0, %lor.lhs.false37 ], [ 0, %for.body ], [ 0, %lor.lhs.false51 ], [ 0, %if.end45 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false64 ], [ 0, %if.end58 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false77 ], [ 0, %if.end71 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %numerator.1) #11
  tail call void @BN_free(%struct.bignum_st* noundef %denominator.1) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_badmod() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2210, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2211, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2212, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #11
  %3 = bitcast %struct.bn_mont_ctx_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2213, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call6) #11
  %call13 = tail call %struct.bignum_st* @BN_value_one() #11
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call14 = tail call i32 @BN_div(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %4) #11
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2217, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.251, i64 0, i64 0), i32 noundef %conv) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end
  tail call void @ERR_clear_error() #11
  %call19 = tail call %struct.bignum_st* @BN_value_one() #11
  %call20 = tail call %struct.bignum_st* @BN_value_one() #11
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call21 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %5) #11
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2221, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.252, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end18
  tail call void @ERR_clear_error() #11
  %call28 = tail call %struct.bignum_st* @BN_value_one() #11
  %call29 = tail call %struct.bignum_st* @BN_value_one() #11
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call30 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call28, %struct.bignum_st* noundef %call29, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %6) #11
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2225, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.253, i64 0, i64 0), i32 noundef %conv32) #11
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end27
  tail call void @ERR_clear_error() #11
  %call37 = tail call %struct.bignum_st* @BN_value_one() #11
  %call38 = tail call %struct.bignum_st* @BN_value_one() #11
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call39 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call38, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %7, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2230, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.254, i64 0, i64 0), i32 noundef %conv41) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end36
  tail call void @ERR_clear_error() #11
  %call46 = tail call %struct.bignum_st* @BN_value_one() #11
  %call47 = tail call %struct.bignum_st* @BN_value_one() #11
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call48 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call46, %struct.bignum_st* noundef %call47, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %8, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2235, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.255, i64 0, i64 0), i32 noundef %conv50) #11
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %if.end45
  tail call void @ERR_clear_error() #11
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call55 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %9) #11
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2239, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.256, i64 0, i64 0), i32 noundef %conv57) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end54
  tail call void @ERR_clear_error() #11
  %call62 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 16) #11
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2244, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.257, i64 0, i64 0), i32 noundef %conv64) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end68

if.end68:                                         ; preds = %if.end61
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call69 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef %call10, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %10) #11
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2247, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.258, i64 0, i64 0), i32 noundef %conv71) #11
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end68
  tail call void @ERR_clear_error() #11
  %call76 = tail call %struct.bignum_st* @BN_value_one() #11
  %call77 = tail call %struct.bignum_st* @BN_value_one() #11
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call78 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call76, %struct.bignum_st* noundef %call77, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %11, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2252, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.259, i64 0, i64 0), i32 noundef %conv80) #11
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end84

if.end84:                                         ; preds = %if.end75
  tail call void @ERR_clear_error() #11
  %call85 = tail call %struct.bignum_st* @BN_value_one() #11
  %call86 = tail call %struct.bignum_st* @BN_value_one() #11
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call87 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call85, %struct.bignum_st* noundef %call86, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %12, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2257, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.260, i64 0, i64 0), i32 noundef %conv89) #11
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %if.end84
  tail call void @ERR_clear_error() #11
  br label %err

err:                                              ; preds = %if.end84, %if.end75, %if.end68, %if.end61, %if.end54, %if.end45, %if.end36, %if.end27, %if.end18, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.end93
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end93 ], [ %call2, %if.end84 ], [ %call2, %if.end75 ], [ %call2, %if.end68 ], [ %call2, %if.end61 ], [ %call2, %if.end54 ], [ %call2, %if.end45 ], [ %call2, %if.end36 ], [ %call2, %if.end27 ], [ %call2, %if.end18 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %zero.0 = phi %struct.bignum_st* [ %call6, %if.end93 ], [ %call6, %if.end84 ], [ %call6, %if.end75 ], [ %call6, %if.end68 ], [ %call6, %if.end61 ], [ %call6, %if.end54 ], [ %call6, %if.end45 ], [ %call6, %if.end36 ], [ %call6, %if.end27 ], [ %call6, %if.end18 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call10, %if.end93 ], [ %call10, %if.end84 ], [ %call10, %if.end75 ], [ %call10, %if.end68 ], [ %call10, %if.end61 ], [ %call10, %if.end54 ], [ %call10, %if.end45 ], [ %call10, %if.end36 ], [ %call10, %if.end27 ], [ %call10, %if.end18 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %st.0 = phi i32 [ 1, %if.end93 ], [ 0, %if.end84 ], [ 0, %if.end75 ], [ 0, %if.end68 ], [ 0, %if.end61 ], [ 0, %if.end54 ], [ 0, %if.end45 ], [ 0, %if.end36 ], [ 0, %if.end27 ], [ 0, %if.end18 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %zero.0) #11
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_expmodzero() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2275, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2276, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2277, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call) #11
  %call9 = tail call %struct.bignum_st* @BN_value_one() #11
  %call10 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call9, %struct.bignum_ctx* noundef null) #11
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2281, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.261, i64 0, i64 0), i32 noundef %conv) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2282, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call %struct.bignum_st* @BN_value_one() #11
  %call18 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call17, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2284, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.263, i64 0, i64 0), i32 noundef %conv20) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %call24 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2285, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %call27 = tail call %struct.bignum_st* @BN_value_one() #11
  %call28 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call27, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2288, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.264, i64 0, i64 0), i32 noundef %conv30) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %call34 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2289, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = tail call %struct.bignum_st* @BN_value_one() #11
  %call38 = tail call i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef %call6, i64 noundef 42, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call37, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2291, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.265, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false36
  %call44 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2292, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool45.not = icmp ne i32 %call44, 0
  %spec.select = zext i1 %tobool45.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false43, %if.end, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false23, %lor.lhs.false26, %lor.lhs.false33, %lor.lhs.false36, %entry, %lor.lhs.false, %lor.lhs.false5
  %a.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false36 ], [ %call2, %lor.lhs.false33 ], [ %call2, %lor.lhs.false26 ], [ %call2, %lor.lhs.false23 ], [ %call2, %lor.lhs.false16 ], [ %call2, %lor.lhs.false13 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false43 ]
  %r.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false36 ], [ %call6, %lor.lhs.false33 ], [ %call6, %lor.lhs.false26 ], [ %call6, %lor.lhs.false23 ], [ %call6, %lor.lhs.false16 ], [ %call6, %lor.lhs.false13 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false43 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false43 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %a.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %r.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_expmodone() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %call1 = tail call %struct.bignum_st* @BN_new() #11
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %call3 = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2311, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.bignum_st* %call1 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2312, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), i8* noundef %1) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2313, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2314, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i64 0, i64 0), i8* noundef %2) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %3 = bitcast %struct.bignum_st* %call3 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2315, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.267, i64 0, i64 0), i8* noundef %3) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call1, i64 noundef 1) #11
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2316, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 0) #11
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2317, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.268, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call3, i64 noundef 1) #11
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2318, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.269, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false26
  %call34141 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null) #11
  %cmp35142 = icmp ne i32 %call34141, 0
  %conv36143 = zext i1 %cmp35142 to i32
  %call37144 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2323, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.270, i64 0, i64 0), i32 noundef %conv36143) #11
  %tobool38.not145 = icmp eq i32 %call37144, 0
  br i1 %tobool38.not145, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %for.body.preheader, %for.inc
  %cmp89146 = phi i1 [ true, %for.inc ], [ false, %for.body.preheader ]
  %call40 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2324, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2325, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.271, i64 0, i64 0), i32 noundef %conv45) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %call49 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2326, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2327, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.272, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %call58 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2328, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call61 = tail call i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef %call, i64 noundef 1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2329, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.273, i64 0, i64 0), i32 noundef %conv63) #11
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2330, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %call70 = tail call i32 @BN_mod_exp_simple(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null) #11
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2331, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.274, i64 0, i64 0), i32 noundef %conv72) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false69
  %call76 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2332, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %call79 = tail call i32 @BN_mod_exp_recp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null) #11
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2333, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.275, i64 0, i64 0), i32 noundef %conv81) #11
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %call85 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2334, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.262, i64 0, i64 0), %struct.bignum_st* noundef %call) #11
  %tobool86.not = icmp eq i32 %call85, 0
  %brmerge = or i1 %tobool86.not, %cmp89146
  br i1 %brmerge, label %err.loopexit.split.loop.exit179, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false84
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call3, i32 noundef 1) #11
  %call34 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef null) #11
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2323, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.270, i64 0, i64 0), i32 noundef %conv36) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

err.loopexit.split.loop.exit179:                  ; preds = %lor.lhs.false84
  %not.tobool86.not.le = xor i1 %tobool86.not, true
  %.mux.le = zext i1 %not.tobool86.not.le to i32
  br label %err

err:                                              ; preds = %err.loopexit.split.loop.exit179, %for.inc, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false48, %lor.lhs.false51, %lor.lhs.false57, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false69, %lor.lhs.false75, %lor.lhs.false78, %for.body.preheader, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false26
  %ret.0 = phi i32 [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %for.body.preheader ], [ %.mux.le, %err.loopexit.split.loop.exit179 ], [ 0, %for.inc ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false69 ], [ 0, %lor.lhs.false75 ], [ 0, %lor.lhs.false78 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call3) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_smallprime(i32 noundef %kBits) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2355, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp slt i32 %kBits, 2
  %call3 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %call, i32 noundef %kBits, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #11
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call5 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2360, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.276, i64 0, i64 0), i32 noundef %conv) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end19

if.else:                                          ; preds = %if.end
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2364, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.276, i64 0, i64 0), i32 noundef %conv) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call) #11
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2365, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.277, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i64 0, i64 0), i32 noundef %call14, i32 noundef %kBits) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false, %if.then2
  br label %err

err:                                              ; preds = %if.else, %lor.lhs.false, %if.then2, %entry, %if.end19
  %st.0 = phi i32 [ 1, %if.end19 ], [ 0, %if.then2 ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_smallsafeprime(i32 noundef %kBits) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2380, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp slt i32 %kBits, 6
  %cmp2 = icmp ne i32 %kBits, 3
  %or.cond = and i1 %cmp, %cmp2
  %call4 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %call, i32 noundef %kBits, i32 noundef 1, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #11
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2385, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.279, i64 0, i64 0), i32 noundef %conv) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end20

if.else:                                          ; preds = %if.end
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2389, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.279, i64 0, i64 0), i32 noundef %conv) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call15 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call) #11
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2390, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.277, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i64 0, i64 0), i32 noundef %call15, i32 noundef %kBits) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false, %if.then3
  br label %err

err:                                              ; preds = %if.else, %lor.lhs.false, %if.then3, %entry, %if.end20
  %st.0 = phi i32 [ 1, %if.end20 ], [ 0, %if.then3 ], [ 0, %lor.lhs.false ], [ 0, %if.else ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_swap() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call13 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.280, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call16 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call2, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.281, i64 0, i64 0), i32 noundef %conv18) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true
  %call22 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #11
  %4 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i64 0, i64 0), i8* noundef %4) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %5 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i64 0, i64 0), i8* noundef %5) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %land.lhs.true25
  %call31 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call) #11
  %div = sdiv i32 %call31, 64
  tail call void @BN_swap(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %call32 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.284, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end30
  %call35 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.284, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #12
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false34
  tail call void @BN_consttime_swap(i64 noundef 1, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, i32 noundef %div) #11
  %call40 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.285, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end38
  %call43 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.285, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false42
  tail call void @BN_consttime_swap(i64 noundef 0, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, i32 noundef %div) #11
  %call48 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #12
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end46
  %call51 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %lor.lhs.false50
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  tail call void @BN_swap(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %call55 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.287, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %call58 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.287, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #12
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call61 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call2, i32 noundef 4) #11
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.288, i64 0, i64 0), i32 noundef %conv63) #11
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv69) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false66
  tail call void @BN_consttime_swap(i64 noundef 1, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, i32 noundef %div) #11
  %call75 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #12
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.end73
  %call78 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %call81 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv83) #11
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false80
  %call87 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call2, i32 noundef 4) #11
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.288, i64 0, i64 0), i32 noundef %conv89) #11
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %lor.lhs.false86
  tail call void @BN_consttime_swap(i64 noundef 0, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, i32 noundef %div) #11
  %call95 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #12
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end93
  %call98 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %call101 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv103) #11
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %call107 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call2, i32 noundef 4) #11
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.288, i64 0, i64 0), i32 noundef %conv109) #11
  %tobool111.not = icmp ne i32 %call110, 0
  %spec.select = zext i1 %tobool111.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false106, %if.end93, %lor.lhs.false97, %lor.lhs.false100, %if.end73, %lor.lhs.false77, %lor.lhs.false80, %lor.lhs.false86, %if.end54, %lor.lhs.false57, %lor.lhs.false60, %lor.lhs.false66, %if.end46, %lor.lhs.false50, %if.end38, %lor.lhs.false42, %if.end30, %lor.lhs.false34, %if.end, %land.lhs.true, %land.lhs.true21, %land.lhs.true25, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false100 ], [ %call2, %lor.lhs.false97 ], [ %call2, %if.end93 ], [ %call2, %lor.lhs.false86 ], [ %call2, %lor.lhs.false80 ], [ %call2, %lor.lhs.false77 ], [ %call2, %if.end73 ], [ %call2, %lor.lhs.false66 ], [ %call2, %lor.lhs.false60 ], [ %call2, %lor.lhs.false57 ], [ %call2, %if.end54 ], [ %call2, %lor.lhs.false50 ], [ %call2, %if.end46 ], [ %call2, %lor.lhs.false42 ], [ %call2, %if.end38 ], [ %call2, %lor.lhs.false34 ], [ %call2, %if.end30 ], [ %call2, %land.lhs.true25 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false106 ]
  %c.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false100 ], [ %call6, %lor.lhs.false97 ], [ %call6, %if.end93 ], [ %call6, %lor.lhs.false86 ], [ %call6, %lor.lhs.false80 ], [ %call6, %lor.lhs.false77 ], [ %call6, %if.end73 ], [ %call6, %lor.lhs.false66 ], [ %call6, %lor.lhs.false60 ], [ %call6, %lor.lhs.false57 ], [ %call6, %if.end54 ], [ %call6, %lor.lhs.false50 ], [ %call6, %if.end46 ], [ %call6, %lor.lhs.false42 ], [ %call6, %if.end38 ], [ %call6, %lor.lhs.false34 ], [ %call6, %if.end30 ], [ %call6, %land.lhs.true25 ], [ %call6, %land.lhs.true21 ], [ %call6, %land.lhs.true ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false106 ]
  %d.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false100 ], [ %call10, %lor.lhs.false97 ], [ %call10, %if.end93 ], [ %call10, %lor.lhs.false86 ], [ %call10, %lor.lhs.false80 ], [ %call10, %lor.lhs.false77 ], [ %call10, %if.end73 ], [ %call10, %lor.lhs.false66 ], [ %call10, %lor.lhs.false60 ], [ %call10, %lor.lhs.false57 ], [ %call10, %if.end54 ], [ %call10, %lor.lhs.false50 ], [ %call10, %if.end46 ], [ %call10, %lor.lhs.false42 ], [ %call10, %if.end38 ], [ %call10, %lor.lhs.false34 ], [ %call10, %if.end30 ], [ %call10, %land.lhs.true25 ], [ %call10, %land.lhs.true21 ], [ %call10, %land.lhs.true ], [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false106 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false97 ], [ 0, %if.end93 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false77 ], [ 0, %if.end73 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false57 ], [ 0, %if.end54 ], [ 0, %lor.lhs.false50 ], [ 0, %if.end46 ], [ 0, %lor.lhs.false42 ], [ 0, %if.end38 ], [ 0, %lor.lhs.false34 ], [ 0, %if.end30 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false106 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctx_consttime_flag() #1 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #11
  %0 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2515, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.295, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_secure_new() #11
  %1 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2516, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.296, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false
  %call6 = tail call fastcc i32 @test_ctx_set_ct_flag(%struct.bignum_ctx* noundef %call) #12
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2521, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.297, i64 0, i64 0), i32 noundef %conv) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

for.cond:                                         ; preds = %lor.lhs.false10
  %call6.1 = tail call fastcc i32 @test_ctx_set_ct_flag(%struct.bignum_ctx* noundef %call2) #12
  %cmp7.1 = icmp ne i32 %call6.1, 0
  %conv.1 = zext i1 %cmp7.1 to i32
  %call8.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2521, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.297, i64 0, i64 0), i32 noundef %conv.1) #11
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %err, label %lor.lhs.false10.1

lor.lhs.false10.1:                                ; preds = %for.cond
  %call11.1 = tail call fastcc i32 @test_ctx_check_ct_flag(%struct.bignum_ctx* noundef %call2) #12
  %cmp12.1 = icmp ne i32 %call11.1, 0
  %conv13.1 = zext i1 %cmp12.1 to i32
  %call14.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2522, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i64 0, i64 0), i32 noundef %conv13.1) #11
  %tobool15.not.1 = icmp ne i32 %call14.1, 0
  %spec.select = zext i1 %tobool15.not.1 to i32
  br label %err

lor.lhs.false10:                                  ; preds = %for.body.preheader
  %call11 = tail call fastcc i32 @test_ctx_check_ct_flag(%struct.bignum_ctx* noundef %call) #12
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2522, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i64 0, i64 0), i32 noundef %conv13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %for.cond

err:                                              ; preds = %lor.lhs.false10.1, %lor.lhs.false10, %for.body.preheader, %for.cond, %entry, %lor.lhs.false
  %sctx.0 = phi %struct.bignum_ctx* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %for.cond ], [ %call2, %for.body.preheader ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false10.1 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %for.cond ], [ 0, %for.body.preheader ], [ 0, %lor.lhs.false10 ], [ %spec.select, %lor.lhs.false10.1 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #11
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %sctx.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_add() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 684, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 686, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %for.body

for.cond:                                         ; preds = %land.lhs.true47
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !25

for.body:                                         ; preds = %lor.lhs.false5, %for.cond
  %i.073 = phi i32 [ %inc, %for.cond ], [ 0, %lor.lhs.false5 ]
  %call9 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp10 = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp10 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 690, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.301, i64 0, i64 0), i32 noundef %conv) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call13 = tail call %struct.bignum_st* @BN_value_one() #11
  %call14 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call13) #11
  %3 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.302, i64 0, i64 0), i8* noundef %3) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %land.lhs.true
  %call19 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call, i32 noundef %call19) #11
  %call20 = tail call fastcc i32 @rand_neg() #12
  tail call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef %call20) #11
  %call21 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 695, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.303, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end18
  %call27 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.rhs, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %call30 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call6) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true29, %land.lhs.true26
  %call32 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %call34 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call6) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %land.lhs.true29
  %4 = phi i1 [ true, %land.lhs.true29 ], [ false, %lor.rhs ], [ %tobool35.not, %land.rhs ]
  %lor.ext = zext i1 %4 to i32
  %call38 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 698, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.304, i64 0, i64 0), i32 noundef %lor.ext) #11
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %lor.end
  %call42 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call6) #11
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.305, i64 0, i64 0), i32 noundef %conv44) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.end41
  %call48 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 702, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end41, %land.lhs.true47, %if.end18, %lor.end, %for.body, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %land.lhs.true ], [ %call2, %for.body ], [ %call2, %lor.end ], [ %call2, %if.end18 ], [ %call2, %land.lhs.true47 ], [ %call2, %if.end41 ], [ %call2, %for.cond ]
  %c.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true ], [ %call6, %for.body ], [ %call6, %lor.end ], [ %call6, %if.end18 ], [ %call6, %land.lhs.true47 ], [ %call6, %if.end41 ], [ %call6, %for.cond ]
  %st.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %if.end41 ], [ 0, %land.lhs.true47 ], [ 0, %if.end18 ], [ 0, %lor.end ], [ 0, %for.body ], [ 0, %land.lhs.true ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_mod() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 718, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 719, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 720, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %5) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false18
  %call23 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call23, 0
  %conv = zext i1 %cmp to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call27 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 727, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.cond43.1
  %i.099 = phi i32 [ %inc73, %for.cond43.1 ], [ 0, %land.lhs.true ]
  %call36 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv38) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %for.body46.preheader

for.body46.preheader:                             ; preds = %for.body
  %call48 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0), i32 noundef %conv50) #11
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %land.lhs.true53

for.cond43:                                       ; preds = %land.lhs.true67
  %call48.1 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #11
  %cmp49.1 = icmp ne i32 %call48.1, 0
  %conv50.1 = zext i1 %cmp49.1 to i32
  %call51.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0), i32 noundef %conv50.1) #11
  %tobool52.not.1 = icmp eq i32 %call51.1, 0
  br i1 %tobool52.not.1, label %err, label %land.lhs.true53.1

land.lhs.true53.1:                                ; preds = %for.cond43
  %call54.1 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11) #11
  %cmp55.1 = icmp ne i32 %call54.1, 0
  %conv56.1 = zext i1 %cmp55.1 to i32
  %call57.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.311, i64 0, i64 0), i32 noundef %conv56.1) #11
  %tobool58.not.1 = icmp eq i32 %call57.1, 0
  br i1 %tobool58.not.1, label %err, label %land.lhs.true59.1

land.lhs.true59.1:                                ; preds = %land.lhs.true53.1
  %call62.1 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call6) #11
  %cmp63.1 = icmp ne i32 %call62.1, 0
  %conv64.1 = zext i1 %cmp63.1 to i32
  %call65.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.312, i64 0, i64 0), i32 noundef %conv64.1) #11
  %tobool66.not.1 = icmp eq i32 %call65.1, 0
  br i1 %tobool66.not.1, label %err, label %land.lhs.true67.1

land.lhs.true67.1:                                ; preds = %land.lhs.true59.1
  %call68.1 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), %struct.bignum_st* noundef %call19) #11
  %tobool69.not.1 = icmp eq i32 %call68.1, 0
  br i1 %tobool69.not.1, label %err, label %for.cond43.1

for.cond43.1:                                     ; preds = %land.lhs.true67.1
  %inc73 = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc73, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !26

land.lhs.true53:                                  ; preds = %for.body46.preheader
  %call54 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11) #11
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 735, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.311, i64 0, i64 0), i32 noundef %conv56) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %call62 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call2) #11
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.312, i64 0, i64 0), i32 noundef %conv64) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true59
  %call68 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), %struct.bignum_st* noundef %call19) #11
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %for.cond43

err:                                              ; preds = %for.cond43.1, %for.body, %for.body46.preheader, %land.lhs.true53, %land.lhs.true59, %land.lhs.true67, %for.cond43, %land.lhs.true53.1, %land.lhs.true59.1, %land.lhs.true67.1, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %lor.lhs.false18 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true67.1 ], [ %call2, %land.lhs.true59.1 ], [ %call2, %land.lhs.true53.1 ], [ %call2, %for.cond43 ], [ %call2, %land.lhs.true67 ], [ %call2, %land.lhs.true59 ], [ %call2, %land.lhs.true53 ], [ %call2, %for.body46.preheader ], [ %call2, %for.body ], [ %call2, %for.cond43.1 ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false18 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %land.lhs.true67.1 ], [ %call6, %land.lhs.true59.1 ], [ %call6, %land.lhs.true53.1 ], [ %call6, %for.cond43 ], [ %call6, %land.lhs.true67 ], [ %call6, %land.lhs.true59 ], [ %call6, %land.lhs.true53 ], [ %call6, %for.body46.preheader ], [ %call6, %for.body ], [ %call6, %for.cond43.1 ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false18 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %land.lhs.true67.1 ], [ %call11, %land.lhs.true59.1 ], [ %call11, %land.lhs.true53.1 ], [ %call11, %for.cond43 ], [ %call11, %land.lhs.true67 ], [ %call11, %land.lhs.true59 ], [ %call11, %land.lhs.true53 ], [ %call11, %for.body46.preheader ], [ %call11, %for.body ], [ %call11, %for.cond43.1 ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %lor.lhs.false18 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %land.lhs.true67.1 ], [ %call15, %land.lhs.true59.1 ], [ %call15, %land.lhs.true53.1 ], [ %call15, %for.cond43 ], [ %call15, %land.lhs.true67 ], [ %call15, %land.lhs.true59 ], [ %call15, %land.lhs.true53 ], [ %call15, %for.body46.preheader ], [ %call15, %for.body ], [ %call15, %for.cond43.1 ]
  %e.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ %call19, %lor.lhs.false18 ], [ %call19, %if.end ], [ %call19, %land.lhs.true ], [ %call19, %land.lhs.true67.1 ], [ %call19, %land.lhs.true59.1 ], [ %call19, %land.lhs.true53.1 ], [ %call19, %for.cond43 ], [ %call19, %land.lhs.true67 ], [ %call19, %land.lhs.true59 ], [ %call19, %land.lhs.true53 ], [ %call19, %for.body46.preheader ], [ %call19, %for.body ], [ %call19, %for.cond43.1 ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false18 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %for.cond43.1 ], [ 0, %for.body ], [ 0, %for.body46.preheader ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true67 ], [ 0, %for.cond43 ], [ 0, %land.lhs.true53.1 ], [ 0, %land.lhs.true59.1 ], [ 0, %land.lhs.true67.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_mul() #1 {
entry:
  %b = alloca [2 x %struct.bignum_st*], align 16
  %0 = bitcast [2 x %struct.bignum_st*]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %arrayidx = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 0
  store %struct.bignum_st* %call2, %struct.bignum_st** %arrayidx, align 16, !tbaa !5
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %arrayidx7 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 1
  store %struct.bignum_st* %call6, %struct.bignum_st** %arrayidx7, align 8, !tbaa !5
  %3 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %3) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %4) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %5) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %6) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #11
  %7 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i64 0, i64 0), i8* noundef %7) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = tail call %struct.bignum_st* @BN_new() #11
  %8 = bitcast %struct.bignum_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.314, i64 0, i64 0), i8* noundef %8) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = tail call %struct.bignum_st* @BN_new() #11
  %9 = bitcast %struct.bignum_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.315, i64 0, i64 0), i8* noundef %9) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false30
  %call35 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call35, 0
  %conv = zext i1 %cmp to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call39 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv41) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.inc116
  %i.0160 = phi i32 [ %inc117, %for.inc116 ], [ 0, %land.lhs.true ]
  %call48 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv50) #11
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %for.body
  %call54 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call11, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.316, i64 0, i64 0), i32 noundef %conv56) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %call60 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call15, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.317, i64 0, i64 0), i32 noundef %conv62) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %for.body70

for.cond67:                                       ; preds = %land.lhs.true111
  br i1 %cmp68, label %for.body70, label %for.inc116, !llvm.loop !27

for.body70:                                       ; preds = %land.lhs.true59, %for.cond67
  %cmp68 = phi i1 [ false, %for.cond67 ], [ true, %land.lhs.true59 ]
  %indvars.iv = phi i64 [ 1, %for.cond67 ], [ 0, %land.lhs.true59 ]
  %arrayidx71 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 %indvars.iv
  %10 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx71, align 8, !tbaa !5
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call72 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef %11) #11
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.318, i64 0, i64 0), i32 noundef %conv74) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %for.body70
  %call78 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call15) #11
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.319, i64 0, i64 0), i32 noundef %conv80) #11
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true77
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call86 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef %12) #11
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.320, i64 0, i64 0), i32 noundef %conv88) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true83
  %13 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call94 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef %13) #11
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.321, i64 0, i64 0), i32 noundef %conv96) #11
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.lhs.true91
  %call100 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call27) #11
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.322, i64 0, i64 0), i32 noundef %conv102) #11
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %call106 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call31) #11
  %cmp107 = icmp ne i32 %call106, 0
  %conv108 = zext i1 %cmp107 to i32
  %call109 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.323, i64 0, i64 0), i32 noundef %conv108) #11
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %land.lhs.true105
  %call112 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 787, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %for.cond67

for.inc116:                                       ; preds = %for.cond67
  %inc117 = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc117, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !28

err:                                              ; preds = %for.inc116, %for.body, %land.lhs.true53, %land.lhs.true59, %for.body70, %land.lhs.true77, %land.lhs.true83, %land.lhs.true91, %land.lhs.true99, %land.lhs.true105, %land.lhs.true111, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false30
  %14 = phi %struct.bignum_st* [ %call6, %land.lhs.true ], [ %call6, %if.end ], [ %call6, %lor.lhs.false30 ], [ %call6, %lor.lhs.false26 ], [ %call6, %lor.lhs.false22 ], [ %call6, %lor.lhs.false18 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true111 ], [ %call6, %land.lhs.true105 ], [ %call6, %land.lhs.true99 ], [ %call6, %land.lhs.true91 ], [ %call6, %land.lhs.true83 ], [ %call6, %land.lhs.true77 ], [ %call6, %for.body70 ], [ %call6, %land.lhs.true59 ], [ %call6, %land.lhs.true53 ], [ %call6, %for.body ], [ %call6, %for.inc116 ]
  %c.0 = phi %struct.bignum_st* [ %call11, %land.lhs.true ], [ %call11, %if.end ], [ %call11, %lor.lhs.false30 ], [ %call11, %lor.lhs.false26 ], [ %call11, %lor.lhs.false22 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %land.lhs.true111 ], [ %call11, %land.lhs.true105 ], [ %call11, %land.lhs.true99 ], [ %call11, %land.lhs.true91 ], [ %call11, %land.lhs.true83 ], [ %call11, %land.lhs.true77 ], [ %call11, %for.body70 ], [ %call11, %land.lhs.true59 ], [ %call11, %land.lhs.true53 ], [ %call11, %for.body ], [ %call11, %for.inc116 ]
  %d.0 = phi %struct.bignum_st* [ %call15, %land.lhs.true ], [ %call15, %if.end ], [ %call15, %lor.lhs.false30 ], [ %call15, %lor.lhs.false26 ], [ %call15, %lor.lhs.false22 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call15, %land.lhs.true111 ], [ %call15, %land.lhs.true105 ], [ %call15, %land.lhs.true99 ], [ %call15, %land.lhs.true91 ], [ %call15, %land.lhs.true83 ], [ %call15, %land.lhs.true77 ], [ %call15, %for.body70 ], [ %call15, %land.lhs.true59 ], [ %call15, %land.lhs.true53 ], [ %call15, %for.body ], [ %call15, %for.inc116 ]
  %e.0 = phi %struct.bignum_st* [ %call19, %land.lhs.true ], [ %call19, %if.end ], [ %call19, %lor.lhs.false30 ], [ %call19, %lor.lhs.false26 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %land.lhs.true111 ], [ %call19, %land.lhs.true105 ], [ %call19, %land.lhs.true99 ], [ %call19, %land.lhs.true91 ], [ %call19, %land.lhs.true83 ], [ %call19, %land.lhs.true77 ], [ %call19, %for.body70 ], [ %call19, %land.lhs.true59 ], [ %call19, %land.lhs.true53 ], [ %call19, %for.body ], [ %call19, %for.inc116 ]
  %f.0 = phi %struct.bignum_st* [ %call23, %land.lhs.true ], [ %call23, %if.end ], [ %call23, %lor.lhs.false30 ], [ %call23, %lor.lhs.false26 ], [ %call23, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %land.lhs.true111 ], [ %call23, %land.lhs.true105 ], [ %call23, %land.lhs.true99 ], [ %call23, %land.lhs.true91 ], [ %call23, %land.lhs.true83 ], [ %call23, %land.lhs.true77 ], [ %call23, %for.body70 ], [ %call23, %land.lhs.true59 ], [ %call23, %land.lhs.true53 ], [ %call23, %for.body ], [ %call23, %for.inc116 ]
  %g.0 = phi %struct.bignum_st* [ %call27, %land.lhs.true ], [ %call27, %if.end ], [ %call27, %lor.lhs.false30 ], [ %call27, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call27, %land.lhs.true111 ], [ %call27, %land.lhs.true105 ], [ %call27, %land.lhs.true99 ], [ %call27, %land.lhs.true91 ], [ %call27, %land.lhs.true83 ], [ %call27, %land.lhs.true77 ], [ %call27, %for.body70 ], [ %call27, %land.lhs.true59 ], [ %call27, %land.lhs.true53 ], [ %call27, %for.body ], [ %call27, %for.inc116 ]
  %h.0 = phi %struct.bignum_st* [ %call31, %land.lhs.true ], [ %call31, %if.end ], [ %call31, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call31, %land.lhs.true111 ], [ %call31, %land.lhs.true105 ], [ %call31, %land.lhs.true99 ], [ %call31, %land.lhs.true91 ], [ %call31, %land.lhs.true83 ], [ %call31, %land.lhs.true77 ], [ %call31, %for.body70 ], [ %call31, %land.lhs.true59 ], [ %call31, %land.lhs.true53 ], [ %call31, %for.body ], [ %call31, %for.inc116 ]
  %st.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true111 ], [ 0, %land.lhs.true105 ], [ 0, %land.lhs.true99 ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true83 ], [ 0, %land.lhs.true77 ], [ 0, %for.body70 ], [ 1, %for.inc116 ], [ 0, %for.body ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true59 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  %arrayidx119 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 0
  %15 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx119, align 16, !tbaa !5
  tail call void @BN_free(%struct.bignum_st* noundef %15) #11
  tail call void @BN_free(%struct.bignum_st* noundef %14) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %f.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %g.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %h.0) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_sqr() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 811, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 813, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 815, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %call19 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call19, 0
  %conv = zext i1 %cmp to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 818, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call23 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 819, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.cond39.1
  %i.0103 = phi i32 [ %inc75, %for.cond39.1 ], [ 0, %land.lhs.true ]
  %call32 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 823, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call44 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %5) #11
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.325, i64 0, i64 0), i32 noundef %conv46) #11
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %land.lhs.true49

for.cond39:                                       ; preds = %land.lhs.true69
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call44.1 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %6) #11
  %cmp45.1 = icmp ne i32 %call44.1, 0
  %conv46.1 = zext i1 %cmp45.1 to i32
  %call47.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.325, i64 0, i64 0), i32 noundef %conv46.1) #11
  %tobool48.not.1 = icmp eq i32 %call47.1, 0
  br i1 %tobool48.not.1, label %err, label %land.lhs.true49.1

land.lhs.true49.1:                                ; preds = %for.cond39
  %call50.1 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call) #11
  %cmp51.1 = icmp ne %struct.bignum_st* %call50.1, null
  %conv52.1 = zext i1 %cmp51.1 to i32
  %call53.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 827, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i64 0, i64 0), i32 noundef %conv52.1) #11
  %tobool54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %tobool54.not.1, label %err, label %land.lhs.true55.1

land.lhs.true55.1:                                ; preds = %land.lhs.true49.1
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call58.1 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %7) #11
  %cmp59.1 = icmp ne i32 %call58.1, 0
  %conv60.1 = zext i1 %cmp59.1 to i32
  %call61.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 828, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.327, i64 0, i64 0), i32 noundef %conv60.1) #11
  %tobool62.not.1 = icmp eq i32 %call61.1, 0
  br i1 %tobool62.not.1, label %err, label %land.lhs.true63.1

land.lhs.true63.1:                                ; preds = %land.lhs.true55.1
  %call64.1 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15) #11
  %cmp65.1 = icmp ne i32 %call64.1, 0
  %conv66.1 = zext i1 %cmp65.1 to i32
  %call67.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 829, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.328, i64 0, i64 0), i32 noundef %conv66.1) #11
  %tobool68.not.1 = icmp eq i32 %call67.1, 0
  br i1 %tobool68.not.1, label %err, label %land.lhs.true69.1

land.lhs.true69.1:                                ; preds = %land.lhs.true63.1
  %call70.1 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call15) #11
  %tobool71.not.1 = icmp eq i32 %call70.1, 0
  br i1 %tobool71.not.1, label %err, label %for.cond39.1

for.cond39.1:                                     ; preds = %land.lhs.true69.1
  %inc75 = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc75, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !29

land.lhs.true49:                                  ; preds = %for.body42.preheader
  %call50 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call) #11
  %cmp51 = icmp ne %struct.bignum_st* %call50, null
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 827, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i64 0, i64 0), i32 noundef %conv52) #11
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true49
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call58 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %8) #11
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 828, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.327, i64 0, i64 0), i32 noundef %conv60) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true55
  %call64 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 829, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.328, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %land.lhs.true63
  %call70 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 831, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call15) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %for.cond39

err:                                              ; preds = %for.cond39.1, %for.body, %for.body42.preheader, %land.lhs.true49, %land.lhs.true55, %land.lhs.true63, %land.lhs.true69, %for.cond39, %land.lhs.true49.1, %land.lhs.true55.1, %land.lhs.true63.1, %land.lhs.true69.1, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true69.1 ], [ %call2, %land.lhs.true63.1 ], [ %call2, %land.lhs.true55.1 ], [ %call2, %land.lhs.true49.1 ], [ %call2, %for.cond39 ], [ %call2, %land.lhs.true69 ], [ %call2, %land.lhs.true63 ], [ %call2, %land.lhs.true55 ], [ %call2, %land.lhs.true49 ], [ %call2, %for.body42.preheader ], [ %call2, %for.body ], [ %call2, %for.cond39.1 ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %land.lhs.true69.1 ], [ %call6, %land.lhs.true63.1 ], [ %call6, %land.lhs.true55.1 ], [ %call6, %land.lhs.true49.1 ], [ %call6, %for.cond39 ], [ %call6, %land.lhs.true69 ], [ %call6, %land.lhs.true63 ], [ %call6, %land.lhs.true55 ], [ %call6, %land.lhs.true49 ], [ %call6, %for.body42.preheader ], [ %call6, %for.body ], [ %call6, %for.cond39.1 ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %land.lhs.true69.1 ], [ %call11, %land.lhs.true63.1 ], [ %call11, %land.lhs.true55.1 ], [ %call11, %land.lhs.true49.1 ], [ %call11, %for.cond39 ], [ %call11, %land.lhs.true69 ], [ %call11, %land.lhs.true63 ], [ %call11, %land.lhs.true55 ], [ %call11, %land.lhs.true49 ], [ %call11, %for.body42.preheader ], [ %call11, %for.body ], [ %call11, %for.cond39.1 ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %land.lhs.true69.1 ], [ %call15, %land.lhs.true63.1 ], [ %call15, %land.lhs.true55.1 ], [ %call15, %land.lhs.true49.1 ], [ %call15, %for.cond39 ], [ %call15, %land.lhs.true69 ], [ %call15, %land.lhs.true63 ], [ %call15, %land.lhs.true55 ], [ %call15, %land.lhs.true49 ], [ %call15, %for.body42.preheader ], [ %call15, %for.body ], [ %call15, %for.cond39.1 ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %for.cond39.1 ], [ 0, %for.body ], [ 0, %for.body42.preheader ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true55 ], [ 0, %land.lhs.true63 ], [ 0, %land.lhs.true69 ], [ 0, %for.cond39 ], [ 0, %land.lhs.true49.1 ], [ 0, %land.lhs.true55.1 ], [ 0, %land.lhs.true63.1 ], [ 0, %land.lhs.true69.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_modinv() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 850, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 852, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 854, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %call19 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call19, 0
  %conv = zext i1 %cmp to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 857, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call23 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.cond39.1
  %i.086 = phi i32 [ %inc63, %for.cond39.1 ], [ 0, %land.lhs.true ]
  %call32 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 862, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call44 = tail call i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %5) #11
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.329, i64 0, i64 0), i32 noundef %conv46) #11
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %land.lhs.true49

for.cond39:                                       ; preds = %land.lhs.true57
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call44.1 = tail call i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %6) #11
  %cmp45.1 = icmp ne i32 %call44.1, 0
  %conv46.1 = zext i1 %cmp45.1 to i32
  %call47.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.329, i64 0, i64 0), i32 noundef %conv46.1) #11
  %tobool48.not.1 = icmp eq i32 %call47.1, 0
  br i1 %tobool48.not.1, label %err, label %land.lhs.true49.1

land.lhs.true49.1:                                ; preds = %for.cond39
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call52.1 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %7) #11
  %cmp53.1 = icmp ne i32 %call52.1, 0
  %conv54.1 = zext i1 %cmp53.1 to i32
  %call55.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.330, i64 0, i64 0), i32 noundef %conv54.1) #11
  %tobool56.not.1 = icmp eq i32 %call55.1, 0
  br i1 %tobool56.not.1, label %err, label %land.lhs.true57.1

land.lhs.true57.1:                                ; preds = %land.lhs.true49.1
  %call58.1 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 868, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call15) #11
  %tobool59.not.1 = icmp eq i32 %call58.1, 0
  br i1 %tobool59.not.1, label %err, label %for.cond39.1

for.cond39.1:                                     ; preds = %land.lhs.true57.1
  %inc63 = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc63, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !30

land.lhs.true49:                                  ; preds = %for.body42.preheader
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call52 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %8) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.330, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true49
  %call58 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 868, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), %struct.bignum_st* noundef %call15) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %for.cond39

err:                                              ; preds = %for.cond39.1, %for.body, %for.body42.preheader, %land.lhs.true49, %land.lhs.true57, %for.cond39, %land.lhs.true49.1, %land.lhs.true57.1, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true57.1 ], [ %call2, %land.lhs.true49.1 ], [ %call2, %for.cond39 ], [ %call2, %land.lhs.true57 ], [ %call2, %land.lhs.true49 ], [ %call2, %for.body42.preheader ], [ %call2, %for.body ], [ %call2, %for.cond39.1 ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %land.lhs.true57.1 ], [ %call6, %land.lhs.true49.1 ], [ %call6, %for.cond39 ], [ %call6, %land.lhs.true57 ], [ %call6, %land.lhs.true49 ], [ %call6, %for.body42.preheader ], [ %call6, %for.body ], [ %call6, %for.cond39.1 ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %land.lhs.true57.1 ], [ %call11, %land.lhs.true49.1 ], [ %call11, %for.cond39 ], [ %call11, %land.lhs.true57 ], [ %call11, %land.lhs.true49 ], [ %call11, %for.body42.preheader ], [ %call11, %for.body ], [ %call11, %for.cond39.1 ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %land.lhs.true57.1 ], [ %call15, %land.lhs.true49.1 ], [ %call15, %for.cond39 ], [ %call15, %land.lhs.true57 ], [ %call15, %land.lhs.true49 ], [ %call15, %for.body42.preheader ], [ %call15, %for.body ], [ %call15, %for.cond39.1 ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %for.cond39.1 ], [ 0, %for.body ], [ 0, %for.body42.preheader ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true57 ], [ 0, %for.cond39 ], [ 0, %land.lhs.true49.1 ], [ 0, %land.lhs.true57.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_moddiv() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 888, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 889, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 890, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 891, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 893, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %5) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 894, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i64 0, i64 0), i8* noundef %6) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false22
  %call27 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call27, 0
  %conv = zext i1 %cmp to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 897, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call31 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.cond53.1
  %i.0116 = phi i32 [ %inc85, %for.cond53.1 ], [ 0, %land.lhs.true ]
  %call40 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 902, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv42) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %for.body
  %call46 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call11, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 903, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.331, i64 0, i64 0), i32 noundef %conv48) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %for.body56.preheader

for.body56.preheader:                             ; preds = %land.lhs.true45
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call58 = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %7) #11
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.332, i64 0, i64 0), i32 noundef %conv60) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %land.lhs.true63

for.cond53:                                       ; preds = %land.lhs.true79
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call58.1 = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %8) #11
  %cmp59.1 = icmp ne i32 %call58.1, 0
  %conv60.1 = zext i1 %cmp59.1 to i32
  %call61.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.332, i64 0, i64 0), i32 noundef %conv60.1) #11
  %tobool62.not.1 = icmp eq i32 %call61.1, 0
  br i1 %tobool62.not.1, label %err, label %land.lhs.true63.1

land.lhs.true63.1:                                ; preds = %for.cond53
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call66.1 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %9) #11
  %cmp67.1 = icmp ne i32 %call66.1, 0
  %conv68.1 = zext i1 %cmp67.1 to i32
  %call69.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.333, i64 0, i64 0), i32 noundef %conv68.1) #11
  %tobool70.not.1 = icmp eq i32 %call69.1, 0
  br i1 %tobool70.not.1, label %err, label %land.lhs.true71.1

land.lhs.true71.1:                                ; preds = %land.lhs.true63.1
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call74.1 = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %10) #11
  %cmp75.1 = icmp ne i32 %call74.1, 0
  %conv76.1 = zext i1 %cmp75.1 to i32
  %call77.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 908, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.334, i64 0, i64 0), i32 noundef %conv76.1) #11
  %tobool78.not.1 = icmp eq i32 %call77.1, 0
  br i1 %tobool78.not.1, label %err, label %land.lhs.true79.1

land.lhs.true79.1:                                ; preds = %land.lhs.true71.1
  %call80.1 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 910, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool81.not.1 = icmp eq i32 %call80.1, 0
  br i1 %tobool81.not.1, label %err, label %for.cond53.1

for.cond53.1:                                     ; preds = %land.lhs.true79.1
  %inc85 = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc85, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !31

land.lhs.true63:                                  ; preds = %for.body56.preheader
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call66 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %11) #11
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 907, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.333, i64 0, i64 0), i32 noundef %conv68) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %land.lhs.true63
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call74 = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %12) #11
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 908, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.334, i64 0, i64 0), i32 noundef %conv76) #11
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true71
  %call80 = tail call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 910, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %for.cond53

err:                                              ; preds = %for.cond53.1, %for.body, %land.lhs.true45, %for.body56.preheader, %land.lhs.true63, %land.lhs.true71, %land.lhs.true79, %for.cond53, %land.lhs.true63.1, %land.lhs.true71.1, %land.lhs.true79.1, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false22 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true79.1 ], [ %call2, %land.lhs.true71.1 ], [ %call2, %land.lhs.true63.1 ], [ %call2, %for.cond53 ], [ %call2, %land.lhs.true79 ], [ %call2, %land.lhs.true71 ], [ %call2, %land.lhs.true63 ], [ %call2, %for.body56.preheader ], [ %call2, %land.lhs.true45 ], [ %call2, %for.body ], [ %call2, %for.cond53.1 ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false18 ], [ %call6, %lor.lhs.false22 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %land.lhs.true79.1 ], [ %call6, %land.lhs.true71.1 ], [ %call6, %land.lhs.true63.1 ], [ %call6, %for.cond53 ], [ %call6, %land.lhs.true79 ], [ %call6, %land.lhs.true71 ], [ %call6, %land.lhs.true63 ], [ %call6, %for.body56.preheader ], [ %call6, %land.lhs.true45 ], [ %call6, %for.body ], [ %call6, %for.cond53.1 ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false22 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %land.lhs.true79.1 ], [ %call11, %land.lhs.true71.1 ], [ %call11, %land.lhs.true63.1 ], [ %call11, %for.cond53 ], [ %call11, %land.lhs.true79 ], [ %call11, %land.lhs.true71 ], [ %call11, %land.lhs.true63 ], [ %call11, %for.body56.preheader ], [ %call11, %land.lhs.true45 ], [ %call11, %for.body ], [ %call11, %for.cond53.1 ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false22 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %land.lhs.true79.1 ], [ %call15, %land.lhs.true71.1 ], [ %call15, %land.lhs.true63.1 ], [ %call15, %for.cond53 ], [ %call15, %land.lhs.true79 ], [ %call15, %land.lhs.true71 ], [ %call15, %land.lhs.true63 ], [ %call15, %for.body56.preheader ], [ %call15, %land.lhs.true45 ], [ %call15, %for.body ], [ %call15, %for.cond53.1 ]
  %e.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ %call19, %lor.lhs.false18 ], [ %call19, %lor.lhs.false22 ], [ %call19, %if.end ], [ %call19, %land.lhs.true ], [ %call19, %land.lhs.true79.1 ], [ %call19, %land.lhs.true71.1 ], [ %call19, %land.lhs.true63.1 ], [ %call19, %for.cond53 ], [ %call19, %land.lhs.true79 ], [ %call19, %land.lhs.true71 ], [ %call19, %land.lhs.true63 ], [ %call19, %for.body56.preheader ], [ %call19, %land.lhs.true45 ], [ %call19, %for.body ], [ %call19, %for.cond53.1 ]
  %f.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false18 ], [ %call23, %lor.lhs.false22 ], [ %call23, %if.end ], [ %call23, %land.lhs.true ], [ %call23, %land.lhs.true79.1 ], [ %call23, %land.lhs.true71.1 ], [ %call23, %land.lhs.true63.1 ], [ %call23, %for.cond53 ], [ %call23, %land.lhs.true79 ], [ %call23, %land.lhs.true71 ], [ %call23, %land.lhs.true63 ], [ %call23, %for.body56.preheader ], [ %call23, %land.lhs.true45 ], [ %call23, %for.body ], [ %call23, %for.cond53.1 ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %for.cond53.1 ], [ 0, %for.body ], [ 0, %land.lhs.true45 ], [ 0, %for.body56.preheader ], [ 0, %land.lhs.true63 ], [ 0, %land.lhs.true71 ], [ 0, %land.lhs.true79 ], [ 0, %for.cond53 ], [ 0, %land.lhs.true63.1 ], [ 0, %land.lhs.true71.1 ], [ 0, %land.lhs.true79.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %f.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_modexp() #1 {
entry:
  %b = alloca [2 x %struct.bignum_st*], align 16
  %0 = bitcast [2 x %struct.bignum_st*]* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 932, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %arrayidx = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 0
  store %struct.bignum_st* %call2, %struct.bignum_st** %arrayidx, align 16, !tbaa !5
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 933, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %arrayidx7 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 1
  store %struct.bignum_st* %call6, %struct.bignum_st** %arrayidx7, align 8, !tbaa !5
  %3 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 934, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %3) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 935, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %4) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 936, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %5) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 937, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %6) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #11
  %7 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 938, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i64 0, i64 0), i8* noundef %7) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false22
  %call27 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call27, 0
  %conv = zext i1 %cmp to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 941, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call31 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 942, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.inc110
  %i.0153 = phi i32 [ %inc111, %for.inc110 ], [ 0, %land.lhs.true ]
  %call40 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 946, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv42) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %for.body
  %call46 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call11, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.331, i64 0, i64 0), i32 noundef %conv48) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %call52 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call15, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 948, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.335, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %for.body62

for.cond59:                                       ; preds = %land.lhs.true105
  br i1 %cmp60, label %for.body62, label %for.inc110, !llvm.loop !32

for.body62:                                       ; preds = %land.lhs.true51, %for.cond59
  %cmp60 = phi i1 [ false, %for.cond59 ], [ true, %land.lhs.true51 ]
  %indvars.iv = phi i64 [ 1, %for.cond59 ], [ 0, %land.lhs.true51 ]
  %arrayidx63 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 %indvars.iv
  %8 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx63, align 8, !tbaa !5
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call64 = tail call i32 @BN_GF2m_mod_exp(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %9) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 951, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.336, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %for.body62
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call72 = tail call i32 @BN_GF2m_mod_exp(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %10) #11
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 952, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.337, i64 0, i64 0), i32 noundef %conv74) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %land.lhs.true69
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call80 = tail call i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %11) #11
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 953, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.338, i64 0, i64 0), i32 noundef %conv82) #11
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true77
  %call86 = tail call i32 @BN_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15) #11
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 954, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.339, i64 0, i64 0), i32 noundef %conv88) #11
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true85
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call94 = tail call i32 @BN_GF2m_mod_exp(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %12) #11
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 955, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.340, i64 0, i64 0), i32 noundef %conv96) #11
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.lhs.true91
  %call100 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call23) #11
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 956, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.341, i64 0, i64 0), i32 noundef %conv102) #11
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %call106 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %for.cond59

for.inc110:                                       ; preds = %for.cond59
  %inc111 = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc111, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !33

err:                                              ; preds = %for.inc110, %for.body, %land.lhs.true45, %land.lhs.true51, %for.body62, %land.lhs.true69, %land.lhs.true77, %land.lhs.true85, %land.lhs.true91, %land.lhs.true99, %land.lhs.true105, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22
  %13 = phi %struct.bignum_st* [ %call6, %land.lhs.true ], [ %call6, %if.end ], [ %call6, %lor.lhs.false22 ], [ %call6, %lor.lhs.false18 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %land.lhs.true105 ], [ %call6, %land.lhs.true99 ], [ %call6, %land.lhs.true91 ], [ %call6, %land.lhs.true85 ], [ %call6, %land.lhs.true77 ], [ %call6, %land.lhs.true69 ], [ %call6, %for.body62 ], [ %call6, %land.lhs.true51 ], [ %call6, %land.lhs.true45 ], [ %call6, %for.body ], [ %call6, %for.inc110 ]
  %c.0 = phi %struct.bignum_st* [ %call11, %land.lhs.true ], [ %call11, %if.end ], [ %call11, %lor.lhs.false22 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %land.lhs.true105 ], [ %call11, %land.lhs.true99 ], [ %call11, %land.lhs.true91 ], [ %call11, %land.lhs.true85 ], [ %call11, %land.lhs.true77 ], [ %call11, %land.lhs.true69 ], [ %call11, %for.body62 ], [ %call11, %land.lhs.true51 ], [ %call11, %land.lhs.true45 ], [ %call11, %for.body ], [ %call11, %for.inc110 ]
  %d.0 = phi %struct.bignum_st* [ %call15, %land.lhs.true ], [ %call15, %if.end ], [ %call15, %lor.lhs.false22 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call15, %land.lhs.true105 ], [ %call15, %land.lhs.true99 ], [ %call15, %land.lhs.true91 ], [ %call15, %land.lhs.true85 ], [ %call15, %land.lhs.true77 ], [ %call15, %land.lhs.true69 ], [ %call15, %for.body62 ], [ %call15, %land.lhs.true51 ], [ %call15, %land.lhs.true45 ], [ %call15, %for.body ], [ %call15, %for.inc110 ]
  %e.0 = phi %struct.bignum_st* [ %call19, %land.lhs.true ], [ %call19, %if.end ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %land.lhs.true105 ], [ %call19, %land.lhs.true99 ], [ %call19, %land.lhs.true91 ], [ %call19, %land.lhs.true85 ], [ %call19, %land.lhs.true77 ], [ %call19, %land.lhs.true69 ], [ %call19, %for.body62 ], [ %call19, %land.lhs.true51 ], [ %call19, %land.lhs.true45 ], [ %call19, %for.body ], [ %call19, %for.inc110 ]
  %f.0 = phi %struct.bignum_st* [ %call23, %land.lhs.true ], [ %call23, %if.end ], [ %call23, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %land.lhs.true105 ], [ %call23, %land.lhs.true99 ], [ %call23, %land.lhs.true91 ], [ %call23, %land.lhs.true85 ], [ %call23, %land.lhs.true77 ], [ %call23, %land.lhs.true69 ], [ %call23, %for.body62 ], [ %call23, %land.lhs.true51 ], [ %call23, %land.lhs.true45 ], [ %call23, %for.body ], [ %call23, %for.inc110 ]
  %st.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true105 ], [ 0, %land.lhs.true99 ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true85 ], [ 0, %land.lhs.true77 ], [ 0, %land.lhs.true69 ], [ 0, %for.body62 ], [ 1, %for.inc110 ], [ 0, %for.body ], [ 0, %land.lhs.true45 ], [ 0, %land.lhs.true51 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  %arrayidx113 = getelementptr inbounds [2 x %struct.bignum_st*], [2 x %struct.bignum_st*]* %b, i64 0, i64 0
  %14 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx113, align 16, !tbaa !5
  tail call void @BN_free(%struct.bignum_st* noundef %14) #11
  tail call void @BN_free(%struct.bignum_st* noundef %13) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %f.0) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_modsqrt() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 980, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 981, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 982, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 983, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 984, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 985, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %5) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 986, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i64 0, i64 0), i8* noundef %6) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false22
  %call27 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call27, 0
  %conv = zext i1 %cmp to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 989, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call31 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 990, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv33) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.cond47.1
  %i.0115 = phi i32 [ %inc85, %for.cond47.1 ], [ 0, %land.lhs.true ]
  %call40 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 994, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv42) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %for.body50.preheader

for.body50.preheader:                             ; preds = %for.body
  %call52 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %land.lhs.true57

for.cond47:                                       ; preds = %land.lhs.true79
  %call52.1 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #11
  %cmp53.1 = icmp ne i32 %call52.1, 0
  %conv54.1 = zext i1 %cmp53.1 to i32
  %call55.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.310, i64 0, i64 0), i32 noundef %conv54.1) #11
  %tobool56.not.1 = icmp eq i32 %call55.1, 0
  br i1 %tobool56.not.1, label %err, label %land.lhs.true57.1

land.lhs.true57.1:                                ; preds = %for.cond47
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call60.1 = tail call i32 @BN_GF2m_mod_sqrt(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %7) #11
  %cmp61.1 = icmp ne i32 %call60.1, 0
  %conv62.1 = zext i1 %cmp61.1 to i32
  %call63.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 999, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.342, i64 0, i64 0), i32 noundef %conv62.1) #11
  %tobool64.not.1 = icmp eq i32 %call63.1, 0
  br i1 %tobool64.not.1, label %err, label %land.lhs.true65.1

land.lhs.true65.1:                                ; preds = %land.lhs.true57.1
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call68.1 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %8) #11
  %cmp69.1 = icmp ne i32 %call68.1, 0
  %conv70.1 = zext i1 %cmp69.1 to i32
  %call71.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1000, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.343, i64 0, i64 0), i32 noundef %conv70.1) #11
  %tobool72.not.1 = icmp eq i32 %call71.1, 0
  br i1 %tobool72.not.1, label %err, label %land.lhs.true73.1

land.lhs.true73.1:                                ; preds = %land.lhs.true65.1
  %call74.1 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call19) #11
  %cmp75.1 = icmp ne i32 %call74.1, 0
  %conv76.1 = zext i1 %cmp75.1 to i32
  %call77.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1001, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.344, i64 0, i64 0), i32 noundef %conv76.1) #11
  %tobool78.not.1 = icmp eq i32 %call77.1, 0
  br i1 %tobool78.not.1, label %err, label %land.lhs.true79.1

land.lhs.true79.1:                                ; preds = %land.lhs.true73.1
  %call80.1 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1003, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool81.not.1 = icmp eq i32 %call80.1, 0
  br i1 %tobool81.not.1, label %err, label %for.cond47.1

for.cond47.1:                                     ; preds = %land.lhs.true79.1
  %inc85 = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc85, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !34

land.lhs.true57:                                  ; preds = %for.body50.preheader
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call60 = tail call i32 @BN_GF2m_mod_sqrt(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %9) #11
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 999, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.342, i64 0, i64 0), i32 noundef %conv62) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true57
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call68 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %10) #11
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1000, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.343, i64 0, i64 0), i32 noundef %conv70) #11
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true65
  %call74 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call19) #11
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1001, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.344, i64 0, i64 0), i32 noundef %conv76) #11
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true73
  %call80 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1003, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call23) #11
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %for.cond47

err:                                              ; preds = %for.cond47.1, %for.body, %for.body50.preheader, %land.lhs.true57, %land.lhs.true65, %land.lhs.true73, %land.lhs.true79, %for.cond47, %land.lhs.true57.1, %land.lhs.true65.1, %land.lhs.true73.1, %land.lhs.true79.1, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false22 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true79.1 ], [ %call2, %land.lhs.true73.1 ], [ %call2, %land.lhs.true65.1 ], [ %call2, %land.lhs.true57.1 ], [ %call2, %for.cond47 ], [ %call2, %land.lhs.true79 ], [ %call2, %land.lhs.true73 ], [ %call2, %land.lhs.true65 ], [ %call2, %land.lhs.true57 ], [ %call2, %for.body50.preheader ], [ %call2, %for.body ], [ %call2, %for.cond47.1 ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false18 ], [ %call6, %lor.lhs.false22 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %land.lhs.true79.1 ], [ %call6, %land.lhs.true73.1 ], [ %call6, %land.lhs.true65.1 ], [ %call6, %land.lhs.true57.1 ], [ %call6, %for.cond47 ], [ %call6, %land.lhs.true79 ], [ %call6, %land.lhs.true73 ], [ %call6, %land.lhs.true65 ], [ %call6, %land.lhs.true57 ], [ %call6, %for.body50.preheader ], [ %call6, %for.body ], [ %call6, %for.cond47.1 ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false22 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %land.lhs.true79.1 ], [ %call11, %land.lhs.true73.1 ], [ %call11, %land.lhs.true65.1 ], [ %call11, %land.lhs.true57.1 ], [ %call11, %for.cond47 ], [ %call11, %land.lhs.true79 ], [ %call11, %land.lhs.true73 ], [ %call11, %land.lhs.true65 ], [ %call11, %land.lhs.true57 ], [ %call11, %for.body50.preheader ], [ %call11, %for.body ], [ %call11, %for.cond47.1 ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false22 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %land.lhs.true79.1 ], [ %call15, %land.lhs.true73.1 ], [ %call15, %land.lhs.true65.1 ], [ %call15, %land.lhs.true57.1 ], [ %call15, %for.cond47 ], [ %call15, %land.lhs.true79 ], [ %call15, %land.lhs.true73 ], [ %call15, %land.lhs.true65 ], [ %call15, %land.lhs.true57 ], [ %call15, %for.body50.preheader ], [ %call15, %for.body ], [ %call15, %for.cond47.1 ]
  %e.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ %call19, %lor.lhs.false18 ], [ %call19, %lor.lhs.false22 ], [ %call19, %if.end ], [ %call19, %land.lhs.true ], [ %call19, %land.lhs.true79.1 ], [ %call19, %land.lhs.true73.1 ], [ %call19, %land.lhs.true65.1 ], [ %call19, %land.lhs.true57.1 ], [ %call19, %for.cond47 ], [ %call19, %land.lhs.true79 ], [ %call19, %land.lhs.true73 ], [ %call19, %land.lhs.true65 ], [ %call19, %land.lhs.true57 ], [ %call19, %for.body50.preheader ], [ %call19, %for.body ], [ %call19, %for.cond47.1 ]
  %f.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false18 ], [ %call23, %lor.lhs.false22 ], [ %call23, %if.end ], [ %call23, %land.lhs.true ], [ %call23, %land.lhs.true79.1 ], [ %call23, %land.lhs.true73.1 ], [ %call23, %land.lhs.true65.1 ], [ %call23, %land.lhs.true57.1 ], [ %call23, %for.cond47 ], [ %call23, %land.lhs.true79 ], [ %call23, %land.lhs.true73 ], [ %call23, %land.lhs.true65 ], [ %call23, %land.lhs.true57 ], [ %call23, %for.body50.preheader ], [ %call23, %for.body ], [ %call23, %for.cond47.1 ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %for.cond47.1 ], [ 0, %for.body ], [ 0, %for.body50.preheader ], [ 0, %land.lhs.true57 ], [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true73 ], [ 0, %land.lhs.true79 ], [ 0, %for.cond47 ], [ 0, %land.lhs.true57.1 ], [ 0, %land.lhs.true65.1 ], [ 0, %land.lhs.true73.1 ], [ 0, %land.lhs.true79.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %f.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gf2m_modsolvequad() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1025, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1027, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i64 0, i64 0), i8* noundef %2) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1028, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1029, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %4) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1030, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %5) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false18
  %call23 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @p0, i64 0, i64 0), %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call23, 0
  %conv = zext i1 %cmp to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1033, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i32 noundef %conv) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call27 = tail call i32 @BN_GF2m_arr2poly(i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @p1, i64 0, i64 0), %struct.bignum_st* noundef %call6) #11
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1034, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.309, i64 0, i64 0), i32 noundef %conv29) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %for.body

for.body:                                         ; preds = %land.lhs.true, %for.inc.1
  %s.0130 = phi i32 [ %s.2.1, %for.inc.1 ], [ 0, %land.lhs.true ]
  %i.0129 = phi i32 [ %inc86, %for.inc.1 ], [ 0, %land.lhs.true ]
  %call36 = tail call i32 @BN_bntest_rand(%struct.bignum_st* noundef %call, i32 noundef 512, i32 noundef 0, i32 noundef 0) #11
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1038, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv38) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %for.body46.preheader

for.body46.preheader:                             ; preds = %for.body
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call48 = tail call i32 @BN_GF2m_mod_solve_quad(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %6) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.inc, label %if.then50

if.then50:                                        ; preds = %for.body46.preheader
  %inc = add nsw i32 %s.0130, 1
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call53 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %7) #11
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1044, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.345, i64 0, i64 0), i32 noundef %conv55) #11
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.then50
  %call59 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15) #11
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1045, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.328, i64 0, i64 0), i32 noundef %conv61) #11
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %call67 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1046, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.346, i64 0, i64 0), i32 noundef %conv69) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %land.lhs.true64
  %call73 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15) #11
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1047, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.347, i64 0, i64 0), i32 noundef %conv75) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %call79 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1052, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), %struct.bignum_st* noundef %call19) #11
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body46.preheader, %land.lhs.true78
  %s.2 = phi i32 [ %inc, %land.lhs.true78 ], [ %s.0130, %for.body46.preheader ]
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call48.1 = tail call i32 @BN_GF2m_mod_solve_quad(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %8) #11
  %tobool49.not.1 = icmp eq i32 %call48.1, 0
  br i1 %tobool49.not.1, label %for.inc.1, label %if.then50.1

if.then50.1:                                      ; preds = %for.inc
  %inc.1 = add nsw i32 %s.2, 1
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call53.1 = tail call i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %9) #11
  %cmp54.1 = icmp ne i32 %call53.1, 0
  %conv55.1 = zext i1 %cmp54.1 to i32
  %call56.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1044, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.345, i64 0, i64 0), i32 noundef %conv55.1) #11
  %tobool57.not.1 = icmp eq i32 %call56.1, 0
  br i1 %tobool57.not.1, label %err, label %land.lhs.true58.1

land.lhs.true58.1:                                ; preds = %if.then50.1
  %call59.1 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15) #11
  %cmp60.1 = icmp ne i32 %call59.1, 0
  %conv61.1 = zext i1 %cmp60.1 to i32
  %call62.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1045, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.328, i64 0, i64 0), i32 noundef %conv61.1) #11
  %tobool63.not.1 = icmp eq i32 %call62.1, 0
  br i1 %tobool63.not.1, label %err, label %land.lhs.true64.1

land.lhs.true64.1:                                ; preds = %land.lhs.true58.1
  %call67.1 = tail call i32 @BN_GF2m_mod(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #11
  %cmp68.1 = icmp ne i32 %call67.1, 0
  %conv69.1 = zext i1 %cmp68.1 to i32
  %call70.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1046, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.346, i64 0, i64 0), i32 noundef %conv69.1) #11
  %tobool71.not.1 = icmp eq i32 %call70.1, 0
  br i1 %tobool71.not.1, label %err, label %land.lhs.true72.1

land.lhs.true72.1:                                ; preds = %land.lhs.true64.1
  %call73.1 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call15) #11
  %cmp74.1 = icmp ne i32 %call73.1, 0
  %conv75.1 = zext i1 %cmp74.1 to i32
  %call76.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1047, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.347, i64 0, i64 0), i32 noundef %conv75.1) #11
  %tobool77.not.1 = icmp eq i32 %call76.1, 0
  br i1 %tobool77.not.1, label %err, label %land.lhs.true78.1

land.lhs.true78.1:                                ; preds = %land.lhs.true72.1
  %call79.1 = tail call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1052, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), %struct.bignum_st* noundef %call19) #11
  %tobool80.not.1 = icmp eq i32 %call79.1, 0
  br i1 %tobool80.not.1, label %err, label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true78.1, %for.inc
  %s.2.1 = phi i32 [ %inc.1, %land.lhs.true78.1 ], [ %s.2, %for.inc ]
  %inc86 = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc86, 100
  br i1 %exitcond.not, label %for.end87, label %for.body, !llvm.loop !35

for.end87:                                        ; preds = %for.inc.1
  %call88 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1057, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.348, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32 noundef %s.2.1, i32 noundef 0) #11
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %err

if.then90:                                        ; preds = %for.end87
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1058, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.349, i64 0, i64 0), i32 noundef 100) #11
  br label %err

err:                                              ; preds = %for.body, %if.then50, %land.lhs.true58, %land.lhs.true64, %land.lhs.true72, %land.lhs.true78, %if.then50.1, %land.lhs.true58.1, %land.lhs.true64.1, %land.lhs.true72.1, %land.lhs.true78.1, %for.end87, %if.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %if.then90
  %b.sroa.0.0 = phi %struct.bignum_st* [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false14 ], [ %call2, %lor.lhs.false18 ], [ %call2, %if.end ], [ %call2, %land.lhs.true ], [ %call2, %if.then90 ], [ %call2, %for.end87 ], [ %call2, %land.lhs.true78.1 ], [ %call2, %land.lhs.true72.1 ], [ %call2, %land.lhs.true64.1 ], [ %call2, %land.lhs.true58.1 ], [ %call2, %if.then50.1 ], [ %call2, %land.lhs.true78 ], [ %call2, %land.lhs.true72 ], [ %call2, %land.lhs.true64 ], [ %call2, %land.lhs.true58 ], [ %call2, %if.then50 ], [ %call2, %for.body ]
  %b.sroa.6.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false10 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false18 ], [ %call6, %if.end ], [ %call6, %land.lhs.true ], [ %call6, %if.then90 ], [ %call6, %for.end87 ], [ %call6, %land.lhs.true78.1 ], [ %call6, %land.lhs.true72.1 ], [ %call6, %land.lhs.true64.1 ], [ %call6, %land.lhs.true58.1 ], [ %call6, %if.then50.1 ], [ %call6, %land.lhs.true78 ], [ %call6, %land.lhs.true72 ], [ %call6, %land.lhs.true64 ], [ %call6, %land.lhs.true58 ], [ %call6, %if.then50 ], [ %call6, %for.body ]
  %c.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call11, %lor.lhs.false10 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false18 ], [ %call11, %if.end ], [ %call11, %land.lhs.true ], [ %call11, %if.then90 ], [ %call11, %for.end87 ], [ %call11, %land.lhs.true78.1 ], [ %call11, %land.lhs.true72.1 ], [ %call11, %land.lhs.true64.1 ], [ %call11, %land.lhs.true58.1 ], [ %call11, %if.then50.1 ], [ %call11, %land.lhs.true78 ], [ %call11, %land.lhs.true72 ], [ %call11, %land.lhs.true64 ], [ %call11, %land.lhs.true58 ], [ %call11, %if.then50 ], [ %call11, %for.body ]
  %d.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ %call15, %lor.lhs.false14 ], [ %call15, %lor.lhs.false18 ], [ %call15, %if.end ], [ %call15, %land.lhs.true ], [ %call15, %if.then90 ], [ %call15, %for.end87 ], [ %call15, %land.lhs.true78.1 ], [ %call15, %land.lhs.true72.1 ], [ %call15, %land.lhs.true64.1 ], [ %call15, %land.lhs.true58.1 ], [ %call15, %if.then50.1 ], [ %call15, %land.lhs.true78 ], [ %call15, %land.lhs.true72 ], [ %call15, %land.lhs.true64 ], [ %call15, %land.lhs.true58 ], [ %call15, %if.then50 ], [ %call15, %for.body ]
  %e.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false14 ], [ %call19, %lor.lhs.false18 ], [ %call19, %if.end ], [ %call19, %land.lhs.true ], [ %call19, %if.then90 ], [ %call19, %for.end87 ], [ %call19, %land.lhs.true78.1 ], [ %call19, %land.lhs.true72.1 ], [ %call19, %land.lhs.true64.1 ], [ %call19, %land.lhs.true58.1 ], [ %call19, %if.then50.1 ], [ %call19, %land.lhs.true78 ], [ %call19, %land.lhs.true72 ], [ %call19, %land.lhs.true64 ], [ %call19, %land.lhs.true58 ], [ %call19, %if.then50 ], [ %call19, %for.body ]
  %st.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false18 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 0, %if.then90 ], [ 1, %for.end87 ], [ 0, %land.lhs.true78.1 ], [ 0, %land.lhs.true72.1 ], [ 0, %land.lhs.true64.1 ], [ 0, %land.lhs.true58.1 ], [ 0, %if.then50.1 ], [ 0, %land.lhs.true78 ], [ 0, %land.lhs.true72 ], [ 0, %land.lhs.true64 ], [ 0, %land.lhs.true58 ], [ 0, %if.then50 ], [ 0, %for.body ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.0.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.sroa.6.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %c.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_is_prime(i32 noundef %i) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2408, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @primes, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %conv = sext i32 %1 to i64
  %call2 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef %conv) #11
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2412, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.350, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

for.cond:                                         ; preds = %lor.lhs.false
  %call2.1 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef %conv) #11
  %cmp3.1 = icmp ne i32 %call2.1, 0
  %conv4.1 = zext i1 %cmp3.1 to i32
  %call5.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2412, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.350, i64 0, i64 0), i32 noundef %conv4.1) #11
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %err, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %for.cond
  %2 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call7.1 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %2, %struct.bn_gencb_st* noundef null) #11
  %call8.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2414, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.351, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call7.1, i32 noundef 1) #11
  %tobool9.not.1 = icmp ne i32 %call8.1, 0
  %spec.select = zext i1 %tobool9.not.1 to i32
  br label %err

lor.lhs.false:                                    ; preds = %for.cond.preheader
  %3 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call7 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %3, %struct.bn_gencb_st* noundef null) #11
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2414, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.351, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call7, i32 noundef 1) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %for.cond

err:                                              ; preds = %lor.lhs.false.1, %for.cond.preheader, %lor.lhs.false, %for.cond, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %for.cond.preheader ], [ 0, %for.cond ], [ %spec.select, %lor.lhs.false.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_not_prime(i32 noundef %i) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2432, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @not_primes, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %conv = sext i32 %1 to i64
  %call2 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef %conv) #11
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2436, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.352, i64 0, i64 0), i32 noundef %conv4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

for.cond:                                         ; preds = %lor.lhs.false
  %call2.1 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef %conv) #11
  %cmp3.1 = icmp ne i32 %call2.1, 0
  %conv4.1 = zext i1 %cmp3.1 to i32
  %call5.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2436, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.352, i64 0, i64 0), i32 noundef %conv4.1) #11
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %err, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %for.cond
  %2 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call7.1 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %2, %struct.bn_gencb_st* noundef null) #11
  %cmp8.1 = icmp ne i32 %call7.1, 0
  %conv9.1 = zext i1 %cmp8.1 to i32
  %call10.1 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2437, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.351, i64 0, i64 0), i32 noundef %conv9.1) #11
  %tobool11.not.1 = icmp ne i32 %call10.1, 0
  %spec.select = zext i1 %tobool11.not.1 to i32
  br label %err

lor.lhs.false:                                    ; preds = %for.cond.preheader
  %3 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call7 = tail call i32 @BN_check_prime(%struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %3, %struct.bn_gencb_st* noundef null) #11
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2437, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.351, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %for.cond

err:                                              ; preds = %lor.lhs.false.1, %for.cond.preheader, %lor.lhs.false, %for.cond, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %for.cond.preheader ], [ 0, %for.cond ], [ %spec.select, %lor.lhs.false.1 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gcd_prime() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2538, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #11
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2539, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2540, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.353, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %call9 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %call, i32 noundef 1024, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #11
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2543, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.354, i64 0, i64 0), i32 noundef %conv) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %for.body

for.cond:                                         ; preds = %lor.lhs.false27
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !37

for.body:                                         ; preds = %if.end, %for.cond
  %i.047 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call16 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %call2, i32 noundef 1024, i32 noundef 0, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #11
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2547, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.355, i64 0, i64 0), i32 noundef %conv18) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %for.body
  %3 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call22 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %3) #11
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2548, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.356, i64 0, i64 0), i32 noundef %conv24) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %call28 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call6) #11
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2549, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i64 0, i64 0), i32 noundef %conv30) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %for.body, %lor.lhs.false21, %lor.lhs.false27, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false27 ], [ %call2, %lor.lhs.false21 ], [ %call2, %for.body ], [ %call2, %for.cond ]
  %gcd.0 = phi %struct.bignum_st* [ %call6, %if.end ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false27 ], [ %call6, %lor.lhs.false21 ], [ %call6, %for.body ], [ %call6, %for.cond ]
  %st.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %for.body ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false27 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %gcd.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod_exp(i32 noundef %i) #1 {
entry:
  %base = alloca %struct.bignum_st*, align 8
  %exponent = alloca %struct.bignum_st*, align 8
  %modulo = alloca %struct.bignum_st*, align 8
  %idxprom = sext i32 %i to i64
  %0 = bitcast %struct.bignum_st** %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.bignum_st* null, %struct.bignum_st** %base, align 8, !tbaa !5
  %1 = bitcast %struct.bignum_st** %exponent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.bignum_st* null, %struct.bignum_st** %exponent, align 8, !tbaa !5
  %2 = bitcast %struct.bignum_st** %modulo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.bignum_st* null, %struct.bignum_st** %modulo, align 8, !tbaa !5
  %call = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2779, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.358, i64 0, i64 0), i8* noundef %3) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %base2 = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 0
  %4 = load i8*, i8** %base2, align 16, !tbaa !38
  %call3 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %base, i8* noundef %4) #11
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2780, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.359, i64 0, i64 0), i32 noundef %conv) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %exp = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %exp, align 8, !tbaa !40
  %call7 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %exponent, i8* noundef %5) #11
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2781, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.360, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %mod = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 2
  %6 = load i8*, i8** %mod, align 16, !tbaa !41
  %call13 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %modulo, i8* noundef %6) #11
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2782, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.361, i64 0, i64 0), i32 noundef %conv15) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %7 = load %struct.bignum_st*, %struct.bignum_st** %base, align 8, !tbaa !5
  %8 = load %struct.bignum_st*, %struct.bignum_st** %exponent, align 8, !tbaa !5
  %9 = load %struct.bignum_st*, %struct.bignum_st** %modulo, align 8, !tbaa !5
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call18 = call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef %10) #11
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2785, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.362, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call18, i32 noundef 1) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end
  %call23 = call i8* @BN_bn2dec(%struct.bignum_st* noundef %call) #11
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2788, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.363, i64 0, i64 0), i8* noundef %call23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i64 @strlen(i8* noundef %call23) #14
  %res29 = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 3
  %11 = load i8*, i8** %res29, align 8, !tbaa !42
  %call31 = call i64 @strlen(i8* noundef %11) #14
  %call32 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2791, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.348, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.364, i64 0, i64 0), i8* noundef %call23, i64 noundef %call28, i8* noundef %11, i64 noundef %call31) #11
  %tobool33.not = icmp ne i32 %call32, 0
  %spec.select = zext i1 %tobool33.not to i32
  br label %err

err:                                              ; preds = %if.end27, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12
  %res.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.end ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end27 ]
  %s.0 = phi i8* [ %call23, %if.end22 ], [ null, %if.end ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %if.end27 ]
  call void @CRYPTO_free(i8* noundef %s.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2797) #11
  call void @BN_free(%struct.bignum_st* noundef %call) #11
  %12 = load %struct.bignum_st*, %struct.bignum_st** %base, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %12) #11
  %13 = load %struct.bignum_st*, %struct.bignum_st** %exponent, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %13) #11
  %14 = load %struct.bignum_st*, %struct.bignum_st** %modulo, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %14) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mod_exp_consttime(i32 noundef %i) #1 {
entry:
  %base = alloca %struct.bignum_st*, align 8
  %exponent = alloca %struct.bignum_st*, align 8
  %modulo = alloca %struct.bignum_st*, align 8
  %idxprom = sext i32 %i to i64
  %0 = bitcast %struct.bignum_st** %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.bignum_st* null, %struct.bignum_st** %base, align 8, !tbaa !5
  %1 = bitcast %struct.bignum_st** %exponent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.bignum_st* null, %struct.bignum_st** %exponent, align 8, !tbaa !5
  %2 = bitcast %struct.bignum_st** %modulo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.bignum_st* null, %struct.bignum_st** %modulo, align 8, !tbaa !5
  %call = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2813, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.358, i64 0, i64 0), i8* noundef %3) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %base2 = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 0
  %4 = load i8*, i8** %base2, align 16, !tbaa !38
  %call3 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %base, i8* noundef %4) #11
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2814, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.359, i64 0, i64 0), i32 noundef %conv) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %exp = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %exp, align 8, !tbaa !40
  %call7 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %exponent, i8* noundef %5) #11
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2815, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.360, i64 0, i64 0), i32 noundef %conv9) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %mod = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 2
  %6 = load i8*, i8** %mod, align 16, !tbaa !41
  %call13 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %modulo, i8* noundef %6) #11
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2816, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.361, i64 0, i64 0), i32 noundef %conv15) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %7 = load %struct.bignum_st*, %struct.bignum_st** %base, align 8, !tbaa !5
  call void @BN_set_flags(%struct.bignum_st* noundef %7, i32 noundef 4) #11
  %8 = load %struct.bignum_st*, %struct.bignum_st** %exponent, align 8, !tbaa !5
  call void @BN_set_flags(%struct.bignum_st* noundef %8, i32 noundef 4) #11
  %9 = load %struct.bignum_st*, %struct.bignum_st** %modulo, align 8, !tbaa !5
  call void @BN_set_flags(%struct.bignum_st* noundef %9, i32 noundef 4) #11
  %10 = load %struct.bignum_st*, %struct.bignum_st** %base, align 8, !tbaa !5
  %11 = load %struct.bignum_st*, %struct.bignum_st** %exponent, align 8, !tbaa !5
  %12 = load %struct.bignum_st*, %struct.bignum_st** %modulo, align 8, !tbaa !5
  %13 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call18 = call i32 @BN_mod_exp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef %13) #11
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2823, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.362, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call18, i32 noundef 1) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end
  %call23 = call i8* @BN_bn2dec(%struct.bignum_st* noundef %call) #11
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2826, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.363, i64 0, i64 0), i8* noundef %call23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i64 @strlen(i8* noundef %call23) #14
  %res29 = getelementptr inbounds [16 x %struct.mod_exp_test_st], [16 x %struct.mod_exp_test_st]* @ModExpTests, i64 0, i64 %idxprom, i32 3
  %14 = load i8*, i8** %res29, align 8, !tbaa !42
  %call31 = call i64 @strlen(i8* noundef %14) #14
  %call32 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2829, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.348, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.364, i64 0, i64 0), i8* noundef %call23, i64 noundef %call28, i8* noundef %14, i64 noundef %call31) #11
  %tobool33.not = icmp ne i32 %call32, 0
  %spec.select = zext i1 %tobool33.not to i32
  br label %err

err:                                              ; preds = %if.end27, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12
  %res.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.end ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end27 ]
  %s.0 = phi i8* [ %call23, %if.end22 ], [ null, %if.end ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %if.end27 ]
  call void @CRYPTO_free(i8* noundef %s.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2835) #11
  call void @BN_free(%struct.bignum_st* noundef %call) #11
  %15 = load %struct.bignum_st*, %struct.bignum_st** %base, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %15) #11
  %16 = load %struct.bignum_st*, %struct.bignum_st** %exponent, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %16) #11
  %17 = load %struct.bignum_st*, %struct.bignum_st** %modulo, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %17) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand_range() #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.09 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %n_success.08 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %call = tail call fastcc i32 @test_rand_range_single(i64 noundef %i.09) #12
  %add = add nsw i32 %call, %n_success.08
  %inc = add nuw nsw i64 %i.09, 1
  %exitcond.not = icmp eq i64 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !43

for.end:                                          ; preds = %for.body
  %call1 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2129, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.393, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.394, i64 0, i64 0), i32 noundef %add, i32 noundef 29) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.end
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.395, i64 0, i64 0)) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_file_tests(i32 noundef %i) #1 {
entry:
  %conv = sext i32 %i to i64
  %call = tail call i8* @test_get_argument(i64 noundef %conv) #11
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 6544, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2882) #11
  %0 = bitcast i8* %call1 to %struct.stanza_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2882, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.405, i64 0, i64 0), i8* noundef %call1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @test_start_file(%struct.stanza_st* noundef %0, i8* noundef %call) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %fp = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %fp to %struct.bio_st**
  %2 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !44
  %call740 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 2, i64 noundef 0, i8* noundef null) #11
  %conv841 = trunc i64 %call740 to i32
  %tobool9.not42 = icmp eq i32 %conv841, 0
  br i1 %tobool9.not42, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %numpairs = getelementptr inbounds i8, i8* %call1, i64 36
  %3 = bitcast i8* %numpairs to i32*
  %errors = getelementptr inbounds i8, i8* %call1, i64 24
  %4 = bitcast i8* %errors to i32*
  %numtests = getelementptr inbounds i8, i8* %call1, i64 28
  %5 = bitcast i8* %numtests to i32*
  br label %land.rhs

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2885) #11
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond.backedge
  %call10 = tail call i32 @test_readstanza(%struct.stanza_st* noundef nonnull %0) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %6 = load i32, i32* %3, align 4, !tbaa !46
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %while.cond.backedge, label %if.end14

if.end14:                                         ; preds = %while.body
  %call15 = tail call fastcc i32 @file_test_run(%struct.stanza_st* noundef nonnull %0) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %7 = load i32, i32* %4, align 8, !tbaa !47
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %4, align 8, !tbaa !47
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %8 = load i32, i32* %5, align 4, !tbaa !48
  %inc19 = add nsw i32 %8, 1
  store i32 %inc19, i32* %5, align 4, !tbaa !48
  tail call void @test_clearstanza(%struct.stanza_st* noundef nonnull %0) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end18, %while.body
  %9 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !44
  %call7 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %9, i32 noundef 2, i64 noundef 0, i8* noundef null) #11
  %conv8 = trunc i64 %call7 to i32
  %tobool9.not = icmp eq i32 %conv8, 0
  br i1 %tobool9.not, label %land.rhs, label %while.end, !llvm.loop !49

while.end:                                        ; preds = %land.rhs, %while.cond.backedge, %while.cond.preheader
  %call20 = tail call i32 @test_end_file(%struct.stanza_st* noundef nonnull %0) #11
  %errors21 = getelementptr inbounds i8, i8* %call1, i64 24
  %10 = bitcast i8* %errors21 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !47
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2900) #11
  %cmp22 = icmp eq i32 %11, 0
  %conv23 = zext i1 %cmp22 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %if.then5
  %retval.0 = phi i32 [ %conv23, %while.end ], [ 0, %if.then5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %0) #11
  ret void
}

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_bntest_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @rand_neg() unnamed_addr #5 {
entry:
  %0 = load i32, i32* @rand_neg.neg, align 4, !tbaa !36
  %inc = add i32 %0, 1
  store i32 %inc, i32* @rand_neg.neg, align 4, !tbaa !36
  %rem = and i32 %0, 7
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @rand_neg.sign, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !36
  ret i32 %1
}

declare dso_local i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_eq_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bn_recp_ctx_st* @BN_RECP_CTX_new() local_unnamed_addr #3

declare dso_local i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_RECP_CTX_set(%struct.bn_recp_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_div_recp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_recp_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local void @BN_RECP_CTX_free(%struct.bn_recp_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @set_signed_bn(i32 noundef %value) unnamed_addr #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #11
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.abs.i32(i32 %value, i1 true)
  %conv = zext i32 %0 to i64
  %call2 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call, i64 noundef %conv) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %value.lobit = lshr i32 %value, 31
  tail call void @BN_set_negative(%struct.bignum_st* noundef nonnull %call, i32 noundef %value.lobit) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.bignum_st* [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

declare dso_local i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #3

declare dso_local void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_eq_one(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_bigBN(%struct.bignum_st** noundef %out, i8** noundef %bn_strings) unnamed_addr #1 {
entry:
  %call = tail call i8* @glue_strings(i8** noundef %bn_strings, i64* noundef null) #11
  %call1 = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef %out, i8* noundef %call) #11
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 81) #11
  ret i32 %call1
}

declare dso_local %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_from_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp_simple(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @glue_strings(i8** noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_generate_prime_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp_recp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_kronecker(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parsedecBN(%struct.bignum_st** noundef %out, i8* noundef %in) unnamed_addr #1 {
entry:
  store %struct.bignum_st* null, %struct.bignum_st** %out, align 8, !tbaa !5
  %call = tail call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %out, i8* noundef %in) #11
  ret i32 %call
}

declare dso_local i32 @test_BN_le_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_ge_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_even(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_gt_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_ne_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_abs_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_lt_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_BN_odd(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_dec2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parseBN(%struct.bignum_st** noundef %out, i8* noundef %in) unnamed_addr #1 {
entry:
  store %struct.bignum_st* null, %struct.bignum_st** %out, align 8, !tbaa !5
  %call = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %out, i8* noundef %in) #11
  ret i32 %call
}

declare dso_local i32 @BN_asc2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_bn2mpi(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_mpi2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_mod_exp_mont_word(%struct.bignum_st* noundef, i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_swap(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @equalBN(i8* noundef %op, %struct.bignum_st* noundef %expected, %struct.bignum_st* noundef %actual) unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_cmp(%struct.bignum_st* noundef %expected, %struct.bignum_st* noundef %actual) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.292, i64 0, i64 0), i8* noundef %op) #11
  %call1 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.293, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.294, i64 0, i64 0), %struct.bignum_st* noundef %expected, %struct.bignum_st* noundef %actual) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local void @BN_consttime_swap(i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.bignum_ctx* @BN_CTX_secure_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ctx_set_ct_flag(%struct.bignum_ctx* noundef %c) unnamed_addr #1 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %c) #11
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.014 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %c) #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2455, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %for.body
  %rem = and i64 %i.014, 1
  %cmp2.not = icmp eq i64 %rem, 0
  br i1 %cmp2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3
  %inc = add nuw nsw i64 %i.014, 1
  %exitcond.not = icmp eq i64 %inc, 15
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !50

err:                                              ; preds = %for.inc, %for.body
  %st.0 = phi i32 [ 0, %for.body ], [ 1, %for.inc ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %c) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_ctx_check_ct_flag(%struct.bignum_ctx* noundef %c) unnamed_addr #1 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %c) #11
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i64 %i.016, 1
  %exitcond.not = icmp eq i64 %inc, 30
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !51

for.body:                                         ; preds = %entry, %for.cond
  %i.016 = phi i64 [ 0, %entry ], [ %inc, %for.cond ]
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %c) #11
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2475, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.299, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %call, i32 noundef 4) #11
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2477, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.300, i64 0, i64 0), i32 noundef %conv) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %for.cond

err:                                              ; preds = %for.cond, %if.end, %for.body
  %st.0 = phi i32 [ 0, %if.end ], [ 0, %for.body ], [ 1, %for.cond ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %c) #11
  ret i32 %st.0
}

declare dso_local void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local i32 @BN_GF2m_arr2poly(i32* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_sqrt(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_GF2m_mod_solve_quad(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i8* @BN_bn2dec(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_rand_range_single(i64 noundef %n) unnamed_addr #1 {
entry:
  %range1 = getelementptr inbounds [37 x %struct.anon.0], [37 x %struct.anon.0]* @rand_range_cases, i64 0, i64 %n, i32 0
  %0 = load i32, i32* %range1, align 16, !tbaa !52
  %iterations3 = getelementptr inbounds [37 x %struct.anon.0], [37 x %struct.anon.0]* @rand_range_cases, i64 0, i64 %n, i32 1
  %1 = load i32, i32* %iterations3, align 4, !tbaa !55
  %critical5 = getelementptr inbounds [37 x %struct.anon.0], [37 x %struct.anon.0]* @rand_range_cases, i64 0, i64 %n, i32 2
  %2 = load double, double* %critical5, align 8, !tbaa !56
  %conv = uitofp i32 %1 to double
  %conv6 = uitofp i32 %0 to double
  %div = fdiv double %conv, %conv6
  %conv7 = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv7, 3
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2089) #11
  %3 = bitcast i8* %call to i64*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2089, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.396, i64 0, i64 0), i8* noundef %call) #11
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call9 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2090, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.397, i64 0, i64 0), i8* noundef %4) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2091, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.398, i64 0, i64 0), i8* noundef %5) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call18 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call9, i64 noundef %conv7) #11
  %cmp = icmp ne i32 %call18, 0
  %conv19 = zext i1 %cmp to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2092, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.399, i64 0, i64 0), i32 noundef %conv19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false16
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %for.body

for.body41.preheader:                             ; preds = %if.end35
  %umax100 = call i32 @llvm.umax.i32(i32 %0, i32 1)
  %wide.trip.count = zext i32 %umax100 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %for.end48.unr-lcssa, label %for.body41.preheader.new

for.body41.preheader.new:                         ; preds = %for.body41.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %for.body41

for.body:                                         ; preds = %for.body.preheader, %if.end35
  %i.095 = phi i32 [ %inc37, %if.end35 ], [ 0, %for.body.preheader ]
  %call24 = tail call i32 @BN_rand_range(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call9) #11
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2095, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.400, i64 0, i64 0), i32 noundef %conv26) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %for.body
  %call30 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %call13) #11
  %conv31 = trunc i64 %call30 to i32
  %call32 = tail call i32 @test_uint_lt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2096, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.401, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.402, i64 0, i64 0), i32 noundef %conv31, i32 noundef %0) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false29
  %idxprom = and i64 %call30, 4294967295
  %arrayidx36 = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %8 = load i64, i64* %arrayidx36, align 8, !tbaa !57
  %inc = add i64 %8, 1
  store i64 %inc, i64* %arrayidx36, align 8, !tbaa !57
  %inc37 = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc37, %umax
  br i1 %exitcond.not, label %for.body41.preheader, label %for.body, !llvm.loop !58

for.body41:                                       ; preds = %for.body41, %for.body41.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body41.preheader.new ], [ %indvars.iv.next.3, %for.body41 ]
  %sum.098 = phi double [ 0.000000e+00, %for.body41.preheader.new ], [ %16, %for.body41 ]
  %niter = phi i64 [ 0, %for.body41.preheader.new ], [ %niter.next.3, %for.body41 ]
  %arrayidx43 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv
  %9 = load i64, i64* %arrayidx43, align 8, !tbaa !57
  %conv44 = uitofp i64 %9 to double
  %sub = fsub double %conv44, %div
  %10 = tail call double @llvm.fmuladd.f64(double %sub, double %sub, double %sum.098)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx43.1 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next
  %11 = load i64, i64* %arrayidx43.1, align 8, !tbaa !57
  %conv44.1 = uitofp i64 %11 to double
  %sub.1 = fsub double %conv44.1, %div
  %12 = tail call double @llvm.fmuladd.f64(double %sub.1, double %sub.1, double %10)
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx43.2 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next.1
  %13 = load i64, i64* %arrayidx43.2, align 8, !tbaa !57
  %conv44.2 = uitofp i64 %13 to double
  %sub.2 = fsub double %conv44.2, %div
  %14 = tail call double @llvm.fmuladd.f64(double %sub.2, double %sub.2, double %12)
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx43.3 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next.2
  %15 = load i64, i64* %arrayidx43.3, align 8, !tbaa !57
  %conv44.3 = uitofp i64 %15 to double
  %sub.3 = fsub double %conv44.3, %div
  %16 = tail call double @llvm.fmuladd.f64(double %sub.3, double %sub.3, double %14)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end48.unr-lcssa, label %for.body41, !llvm.loop !59

for.end48.unr-lcssa:                              ; preds = %for.body41, %for.body41.preheader
  %.lcssa.ph = phi double [ undef, %for.body41.preheader ], [ %16, %for.body41 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body41.preheader ], [ %indvars.iv.next.3, %for.body41 ]
  %sum.098.unr = phi double [ 0.000000e+00, %for.body41.preheader ], [ %16, %for.body41 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end48, label %for.body41.epil

for.body41.epil:                                  ; preds = %for.end48.unr-lcssa, %for.body41.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body41.epil ], [ %indvars.iv.unr, %for.end48.unr-lcssa ]
  %sum.098.epil = phi double [ %18, %for.body41.epil ], [ %sum.098.unr, %for.end48.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body41.epil ], [ 0, %for.end48.unr-lcssa ]
  %arrayidx43.epil = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.epil
  %17 = load i64, i64* %arrayidx43.epil, align 8, !tbaa !57
  %conv44.epil = uitofp i64 %17 to double
  %sub.epil = fsub double %conv44.epil, %div
  %18 = tail call double @llvm.fmuladd.f64(double %sub.epil, double %sub.epil, double %sum.098.epil)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end48, label %for.body41.epil, !llvm.loop !60

for.end48:                                        ; preds = %for.body41.epil, %for.end48.unr-lcssa
  %.lcssa = phi double [ %.lcssa.ph, %for.end48.unr-lcssa ], [ %18, %for.body41.epil ]
  %div49 = fdiv double %.lcssa, %div
  %cmp50 = fcmp ogt double %div49, %2
  br i1 %cmp50, label %if.then52, label %err

if.then52:                                        ; preds = %for.end48
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2108, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.403, i64 0, i64 0), double noundef %div49, double noundef %2) #11
  %add = add i64 %n, 1
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.404, i64 0, i64 0), i64 noundef %add, i32 noundef %0, i32 noundef %1) #11
  br label %err

err:                                              ; preds = %for.body, %lor.lhs.false29, %for.end48, %entry, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false16, %if.then52
  %val.0 = phi %struct.bignum_st* [ %call13, %if.then52 ], [ %call13, %lor.lhs.false16 ], [ %call13, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call13, %for.end48 ], [ %call13, %lor.lhs.false29 ], [ %call13, %for.body ]
  %rng.0 = phi %struct.bignum_st* [ %call9, %if.then52 ], [ %call9, %lor.lhs.false16 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false ], [ null, %entry ], [ %call9, %for.end48 ], [ %call9, %lor.lhs.false29 ], [ %call9, %for.body ]
  %res.0 = phi i32 [ 0, %if.then52 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.end48 ], [ 0, %lor.lhs.false29 ], [ 0, %for.body ]
  tail call void @BN_free(%struct.bignum_st* noundef %rng.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %val.0) #11
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2118) #11
  ret i32 %res.0
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_rand_range(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_uint_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BN_get_word(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #8

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_start_file(%struct.stanza_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_readstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @file_test_run(%struct.stanza_st* noundef %s) unnamed_addr #1 {
entry:
  %call = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.406, i64 0, i64 0)) #12
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %tp.020.lcssa = phi %struct.filetest_st* [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 0), %entry ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 2), %for.inc.1 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 3), %for.inc.2 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 4), %for.inc.3 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 5), %for.inc.4 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 6), %for.inc.5 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 7), %for.inc.6 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 8), %for.inc.7 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 9), %for.inc.8 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 10), %for.inc.9 ], [ getelementptr inbounds ([12 x %struct.filetest_st], [12 x %struct.filetest_st]* @file_test_run.filetests, i64 0, i64 11), %for.inc.10 ]
  %func = getelementptr inbounds %struct.filetest_st, %struct.filetest_st* %tp.020.lcssa, i64 0, i32 1
  %0 = load i32 (%struct.stanza_st*)*, i32 (%struct.stanza_st*)** %func, align 8, !tbaa !62
  %call2 = tail call i32 %0(%struct.stanza_st* noundef %s) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %name.le = getelementptr inbounds %struct.filetest_st, %struct.filetest_st* %tp.020.lcssa, i64 0, i32 0
  %test_file = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 0
  %1 = load i8*, i8** %test_file, align 8, !tbaa !64
  %start = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 3
  %2 = load i32, i32* %start, align 4, !tbaa !65
  %3 = load i8*, i8** %name.le, align 8, !tbaa !66
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2866, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.418, i64 0, i64 0), i8* noundef %1, i32 noundef %2, i8* noundef %3) #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0)) #12
  %cmp1.not.1 = icmp eq i8* %call.1, null
  br i1 %cmp1.not.1, label %for.inc.1, label %if.then

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.408, i64 0, i64 0)) #12
  %cmp1.not.2 = icmp eq i8* %call.2, null
  br i1 %cmp1.not.2, label %for.inc.2, label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i64 0, i64 0)) #12
  %cmp1.not.3 = icmp eq i8* %call.3, null
  br i1 %cmp1.not.3, label %for.inc.3, label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i64 0, i64 0)) #12
  %cmp1.not.4 = icmp eq i8* %call.4, null
  br i1 %cmp1.not.4, label %for.inc.4, label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.411, i64 0, i64 0)) #12
  %cmp1.not.5 = icmp eq i8* %call.5, null
  br i1 %cmp1.not.5, label %for.inc.5, label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.412, i64 0, i64 0)) #12
  %cmp1.not.6 = icmp eq i8* %call.6, null
  br i1 %cmp1.not.6, label %for.inc.6, label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.413, i64 0, i64 0)) #12
  %cmp1.not.7 = icmp eq i8* %call.7, null
  br i1 %cmp1.not.7, label %for.inc.7, label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i64 0, i64 0)) #12
  %cmp1.not.8 = icmp eq i8* %call.8, null
  br i1 %cmp1.not.8, label %for.inc.8, label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.415, i64 0, i64 0)) #12
  %cmp1.not.9 = icmp eq i8* %call.9, null
  br i1 %cmp1.not.9, label %for.inc.9, label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i64 0, i64 0)) #12
  %cmp1.not.10 = icmp eq i8* %call.10, null
  br i1 %cmp1.not.10, label %for.inc.10, label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.417, i64 0, i64 0)) #12
  %cmp1.not.11 = icmp eq i8* %call.11, null
  br i1 %cmp1.not.11, label %for.inc.11, label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %test_file6 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 0
  %4 = load i8*, i8** %test_file6, align 8, !tbaa !64
  %start7 = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 3
  %5 = load i32, i32* %start7, align 4, !tbaa !65
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 2872, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.419, i64 0, i64 0), i8* noundef %4, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.inc.11, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %for.inc.11 ], [ 1, %if.then ]
  ret i32 %retval.0
}

declare dso_local void @test_clearstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_end_file(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_sum(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1157, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.423, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1158, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.422, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.406, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1159, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.424, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1160, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call13 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1163, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.426, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %call17 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.427, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call20 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #11
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1165, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.428, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.429, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #11
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1167, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.430, i64 0, i64 0), i32 noundef %conv31) #11
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.431, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false34
  %call39 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp40 = icmp ne %struct.bignum_st* %call39, null
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1176, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv41) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end38
  %call45 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1177, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.433, i64 0, i64 0), i32 noundef %conv47) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %call51 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.434, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %call54 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp55 = icmp ne %struct.bignum_st* %call54, null
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1179, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.435, i64 0, i64 0), i32 noundef %conv56) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false53
  %call60 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #11
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1180, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.436, i64 0, i64 0), i32 noundef %conv62) #11
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %call66 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.437, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %call69 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #11
  %cmp70 = icmp ne %struct.bignum_st* %call69, null
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1182, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i64 0, i64 0), i32 noundef %conv71) #11
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %call75 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1183, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.439, i64 0, i64 0), i32 noundef %conv77) #11
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false74
  %call81 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.440, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %call84 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp85 = icmp ne %struct.bignum_st* %call84, null
  %conv86 = zext i1 %cmp85 to i32
  %call87 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1185, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv86) #11
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  %call90 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #11
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1186, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.441, i64 0, i64 0), i32 noundef %conv92) #11
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false89
  %call96 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.442, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %call99 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #11
  %cmp100 = icmp ne %struct.bignum_st* %call99, null
  %conv101 = zext i1 %cmp100 to i32
  %call102 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1188, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i64 0, i64 0), i32 noundef %conv101) #11
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false98
  %call105 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1189, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.443, i64 0, i64 0), i32 noundef %conv107) #11
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false104
  %call111 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.444, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %call114 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp115 = icmp ne %struct.bignum_st* %call114, null
  %conv116 = zext i1 %cmp115 to i32
  %call117 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1191, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.435, i64 0, i64 0), i32 noundef %conv116) #11
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false113
  %call120 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #11
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1192, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.441, i64 0, i64 0), i32 noundef %conv122) #11
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %call126 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.445, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %if.end129

if.end129:                                        ; preds = %lor.lhs.false125
  %call130 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call) #11
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true, label %if.end258

land.lhs.true:                                    ; preds = %if.end129
  %call132 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #11
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %land.lhs.true134, label %if.end258

land.lhs.true134:                                 ; preds = %land.lhs.true
  %call135 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp136 = icmp sgt i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end258

if.then138:                                       ; preds = %land.lhs.true134
  %call139 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #11
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1203, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.446, i64 0, i64 0), i32 noundef %conv141) #11
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %if.then138
  %call145 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.447, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %call148 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #11
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1205, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.448, i64 0, i64 0), i32 noundef %conv150) #11
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false147
  %call154 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.449, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %err, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false153
  %call157 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #11
  %cmp158 = icmp ne i32 %call157, 0
  %conv159 = zext i1 %cmp158 to i32
  %call160 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1207, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.450, i64 0, i64 0), i32 noundef %conv159) #11
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false156
  %call163 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.451, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %err, label %if.end166

if.end166:                                        ; preds = %lor.lhs.false162
  %call167 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp168 = icmp ne %struct.bignum_st* %call167, null
  %conv169 = zext i1 %cmp168 to i32
  %call170 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1216, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv169) #11
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %if.end166
  %call173 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp174 = icmp ne i32 %call173, 0
  %conv175 = zext i1 %cmp174 to i32
  %call176 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1217, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.452, i64 0, i64 0), i32 noundef %conv175) #11
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false172
  %call179 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.453, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false178
  %call182 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp183 = icmp ne %struct.bignum_st* %call182, null
  %conv184 = zext i1 %cmp183 to i32
  %call185 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1219, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.435, i64 0, i64 0), i32 noundef %conv184) #11
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false181
  %call188 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #11
  %cmp189 = icmp ne i32 %call188, 0
  %conv190 = zext i1 %cmp189 to i32
  %call191 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1220, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.454, i64 0, i64 0), i32 noundef %conv190) #11
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false187
  %call194 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.455, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %err, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false193
  %call197 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #11
  %cmp198 = icmp ne %struct.bignum_st* %call197, null
  %conv199 = zext i1 %cmp198 to i32
  %call200 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1222, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i64 0, i64 0), i32 noundef %conv199) #11
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false196
  %call203 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp204 = icmp ne i32 %call203, 0
  %conv205 = zext i1 %cmp204 to i32
  %call206 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.456, i64 0, i64 0), i32 noundef %conv205) #11
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false202
  %call209 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.457, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %lor.lhs.false208
  %call212 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp213 = icmp ne %struct.bignum_st* %call212, null
  %conv214 = zext i1 %cmp213 to i32
  %call215 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1225, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv214) #11
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %err, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false211
  %call218 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #11
  %cmp219 = icmp ne i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %call221 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1226, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.458, i64 0, i64 0), i32 noundef %conv220) #11
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %err, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false217
  %call224 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.459, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false223
  %call227 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #11
  %cmp228 = icmp ne %struct.bignum_st* %call227, null
  %conv229 = zext i1 %cmp228 to i32
  %call230 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1228, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i64 0, i64 0), i32 noundef %conv229) #11
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %err, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %lor.lhs.false226
  %call233 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp234 = icmp ne i32 %call233, 0
  %conv235 = zext i1 %cmp234 to i32
  %call236 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1229, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.460, i64 0, i64 0), i32 noundef %conv235) #11
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false232
  %call239 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.461, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %err, label %lor.lhs.false241

lor.lhs.false241:                                 ; preds = %lor.lhs.false238
  %call242 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp243 = icmp ne %struct.bignum_st* %call242, null
  %conv244 = zext i1 %cmp243 to i32
  %call245 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1231, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.435, i64 0, i64 0), i32 noundef %conv244) #11
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %err, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %lor.lhs.false241
  %call248 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #11
  %cmp249 = icmp ne i32 %call248, 0
  %conv250 = zext i1 %cmp249 to i32
  %call251 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1232, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.458, i64 0, i64 0), i32 noundef %conv250) #11
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %err, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false247
  %call254 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.462, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %err, label %if.end258

if.end258:                                        ; preds = %lor.lhs.false253, %land.lhs.true134, %land.lhs.true, %if.end129
  %call259 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %call2) #11
  %call260 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #11
  %tobool261 = icmp eq i32 %call260, 0
  %cmp263 = icmp ne i64 %call259, -1
  %or.cond = select i1 %tobool261, i1 %cmp263, i1 false
  br i1 %or.cond, label %if.then265, label %if.end297

if.then265:                                       ; preds = %if.end258
  %call266 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp267 = icmp ne %struct.bignum_st* %call266, null
  %conv268 = zext i1 %cmp267 to i32
  %call269 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1242, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv268) #11
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %err, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %if.then265
  %call272 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call10, i64 noundef %call259) #11
  %cmp273 = icmp ne i32 %call272, 0
  %conv274 = zext i1 %cmp273 to i32
  %call275 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1243, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.463, i64 0, i64 0), i32 noundef %conv274) #11
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %err, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false271
  %call278 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.464, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %err, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %lor.lhs.false277
  %call281 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #11
  %cmp282 = icmp ne %struct.bignum_st* %call281, null
  %conv283 = zext i1 %cmp282 to i32
  %call284 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1245, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.438, i64 0, i64 0), i32 noundef %conv283) #11
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %err, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false280
  %call287 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call10, i64 noundef %call259) #11
  %cmp288 = icmp ne i32 %call287, 0
  %conv289 = zext i1 %cmp288 to i32
  %call290 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1246, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.465, i64 0, i64 0), i32 noundef %conv289) #11
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %err, label %lor.lhs.false292

lor.lhs.false292:                                 ; preds = %lor.lhs.false286
  %call293 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.466, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %err, label %if.end297

if.end297:                                        ; preds = %lor.lhs.false292, %if.end258
  br label %err

err:                                              ; preds = %if.then265, %lor.lhs.false271, %lor.lhs.false277, %lor.lhs.false280, %lor.lhs.false286, %lor.lhs.false292, %if.end166, %lor.lhs.false172, %lor.lhs.false178, %lor.lhs.false181, %lor.lhs.false187, %lor.lhs.false193, %lor.lhs.false196, %lor.lhs.false202, %lor.lhs.false208, %lor.lhs.false211, %lor.lhs.false217, %lor.lhs.false223, %lor.lhs.false226, %lor.lhs.false232, %lor.lhs.false238, %lor.lhs.false241, %lor.lhs.false247, %lor.lhs.false253, %if.then138, %lor.lhs.false144, %lor.lhs.false147, %lor.lhs.false153, %lor.lhs.false156, %lor.lhs.false162, %if.end38, %lor.lhs.false44, %lor.lhs.false50, %lor.lhs.false53, %lor.lhs.false59, %lor.lhs.false65, %lor.lhs.false68, %lor.lhs.false74, %lor.lhs.false80, %lor.lhs.false83, %lor.lhs.false89, %lor.lhs.false95, %lor.lhs.false98, %lor.lhs.false104, %lor.lhs.false110, %lor.lhs.false113, %lor.lhs.false119, %lor.lhs.false125, %if.end, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false34, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.end297
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end297 ], [ %call2, %lor.lhs.false292 ], [ %call2, %lor.lhs.false286 ], [ %call2, %lor.lhs.false280 ], [ %call2, %lor.lhs.false277 ], [ %call2, %lor.lhs.false271 ], [ %call2, %if.then265 ], [ %call2, %lor.lhs.false253 ], [ %call2, %lor.lhs.false247 ], [ %call2, %lor.lhs.false241 ], [ %call2, %lor.lhs.false238 ], [ %call2, %lor.lhs.false232 ], [ %call2, %lor.lhs.false226 ], [ %call2, %lor.lhs.false223 ], [ %call2, %lor.lhs.false217 ], [ %call2, %lor.lhs.false211 ], [ %call2, %lor.lhs.false208 ], [ %call2, %lor.lhs.false202 ], [ %call2, %lor.lhs.false196 ], [ %call2, %lor.lhs.false193 ], [ %call2, %lor.lhs.false187 ], [ %call2, %lor.lhs.false181 ], [ %call2, %lor.lhs.false178 ], [ %call2, %lor.lhs.false172 ], [ %call2, %if.end166 ], [ %call2, %lor.lhs.false162 ], [ %call2, %lor.lhs.false156 ], [ %call2, %lor.lhs.false153 ], [ %call2, %lor.lhs.false147 ], [ %call2, %lor.lhs.false144 ], [ %call2, %if.then138 ], [ %call2, %lor.lhs.false125 ], [ %call2, %lor.lhs.false119 ], [ %call2, %lor.lhs.false113 ], [ %call2, %lor.lhs.false110 ], [ %call2, %lor.lhs.false104 ], [ %call2, %lor.lhs.false98 ], [ %call2, %lor.lhs.false95 ], [ %call2, %lor.lhs.false89 ], [ %call2, %lor.lhs.false83 ], [ %call2, %lor.lhs.false80 ], [ %call2, %lor.lhs.false74 ], [ %call2, %lor.lhs.false68 ], [ %call2, %lor.lhs.false65 ], [ %call2, %lor.lhs.false59 ], [ %call2, %lor.lhs.false53 ], [ %call2, %lor.lhs.false50 ], [ %call2, %lor.lhs.false44 ], [ %call2, %if.end38 ], [ %call2, %lor.lhs.false34 ], [ %call2, %lor.lhs.false28 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false19 ], [ %call2, %lor.lhs.false16 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %sum.0 = phi %struct.bignum_st* [ %call6, %if.end297 ], [ %call6, %lor.lhs.false292 ], [ %call6, %lor.lhs.false286 ], [ %call6, %lor.lhs.false280 ], [ %call6, %lor.lhs.false277 ], [ %call6, %lor.lhs.false271 ], [ %call6, %if.then265 ], [ %call6, %lor.lhs.false253 ], [ %call6, %lor.lhs.false247 ], [ %call6, %lor.lhs.false241 ], [ %call6, %lor.lhs.false238 ], [ %call6, %lor.lhs.false232 ], [ %call6, %lor.lhs.false226 ], [ %call6, %lor.lhs.false223 ], [ %call6, %lor.lhs.false217 ], [ %call6, %lor.lhs.false211 ], [ %call6, %lor.lhs.false208 ], [ %call6, %lor.lhs.false202 ], [ %call6, %lor.lhs.false196 ], [ %call6, %lor.lhs.false193 ], [ %call6, %lor.lhs.false187 ], [ %call6, %lor.lhs.false181 ], [ %call6, %lor.lhs.false178 ], [ %call6, %lor.lhs.false172 ], [ %call6, %if.end166 ], [ %call6, %lor.lhs.false162 ], [ %call6, %lor.lhs.false156 ], [ %call6, %lor.lhs.false153 ], [ %call6, %lor.lhs.false147 ], [ %call6, %lor.lhs.false144 ], [ %call6, %if.then138 ], [ %call6, %lor.lhs.false125 ], [ %call6, %lor.lhs.false119 ], [ %call6, %lor.lhs.false113 ], [ %call6, %lor.lhs.false110 ], [ %call6, %lor.lhs.false104 ], [ %call6, %lor.lhs.false98 ], [ %call6, %lor.lhs.false95 ], [ %call6, %lor.lhs.false89 ], [ %call6, %lor.lhs.false83 ], [ %call6, %lor.lhs.false80 ], [ %call6, %lor.lhs.false74 ], [ %call6, %lor.lhs.false68 ], [ %call6, %lor.lhs.false65 ], [ %call6, %lor.lhs.false59 ], [ %call6, %lor.lhs.false53 ], [ %call6, %lor.lhs.false50 ], [ %call6, %lor.lhs.false44 ], [ %call6, %if.end38 ], [ %call6, %lor.lhs.false34 ], [ %call6, %lor.lhs.false28 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false19 ], [ %call6, %lor.lhs.false16 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %if.end297 ], [ %call10, %lor.lhs.false292 ], [ %call10, %lor.lhs.false286 ], [ %call10, %lor.lhs.false280 ], [ %call10, %lor.lhs.false277 ], [ %call10, %lor.lhs.false271 ], [ %call10, %if.then265 ], [ %call10, %lor.lhs.false253 ], [ %call10, %lor.lhs.false247 ], [ %call10, %lor.lhs.false241 ], [ %call10, %lor.lhs.false238 ], [ %call10, %lor.lhs.false232 ], [ %call10, %lor.lhs.false226 ], [ %call10, %lor.lhs.false223 ], [ %call10, %lor.lhs.false217 ], [ %call10, %lor.lhs.false211 ], [ %call10, %lor.lhs.false208 ], [ %call10, %lor.lhs.false202 ], [ %call10, %lor.lhs.false196 ], [ %call10, %lor.lhs.false193 ], [ %call10, %lor.lhs.false187 ], [ %call10, %lor.lhs.false181 ], [ %call10, %lor.lhs.false178 ], [ %call10, %lor.lhs.false172 ], [ %call10, %if.end166 ], [ %call10, %lor.lhs.false162 ], [ %call10, %lor.lhs.false156 ], [ %call10, %lor.lhs.false153 ], [ %call10, %lor.lhs.false147 ], [ %call10, %lor.lhs.false144 ], [ %call10, %if.then138 ], [ %call10, %lor.lhs.false125 ], [ %call10, %lor.lhs.false119 ], [ %call10, %lor.lhs.false113 ], [ %call10, %lor.lhs.false110 ], [ %call10, %lor.lhs.false104 ], [ %call10, %lor.lhs.false98 ], [ %call10, %lor.lhs.false95 ], [ %call10, %lor.lhs.false89 ], [ %call10, %lor.lhs.false83 ], [ %call10, %lor.lhs.false80 ], [ %call10, %lor.lhs.false74 ], [ %call10, %lor.lhs.false68 ], [ %call10, %lor.lhs.false65 ], [ %call10, %lor.lhs.false59 ], [ %call10, %lor.lhs.false53 ], [ %call10, %lor.lhs.false50 ], [ %call10, %lor.lhs.false44 ], [ %call10, %if.end38 ], [ %call10, %lor.lhs.false34 ], [ %call10, %lor.lhs.false28 ], [ %call10, %lor.lhs.false25 ], [ %call10, %lor.lhs.false19 ], [ %call10, %lor.lhs.false16 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %st.0 = phi i32 [ 1, %if.end297 ], [ 0, %lor.lhs.false292 ], [ 0, %lor.lhs.false286 ], [ 0, %lor.lhs.false280 ], [ 0, %lor.lhs.false277 ], [ 0, %lor.lhs.false271 ], [ 0, %if.then265 ], [ 0, %lor.lhs.false253 ], [ 0, %lor.lhs.false247 ], [ 0, %lor.lhs.false241 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false232 ], [ 0, %lor.lhs.false226 ], [ 0, %lor.lhs.false223 ], [ 0, %lor.lhs.false217 ], [ 0, %lor.lhs.false211 ], [ 0, %lor.lhs.false208 ], [ 0, %lor.lhs.false202 ], [ 0, %lor.lhs.false196 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false187 ], [ 0, %lor.lhs.false181 ], [ 0, %lor.lhs.false178 ], [ 0, %lor.lhs.false172 ], [ 0, %if.end166 ], [ 0, %lor.lhs.false162 ], [ 0, %lor.lhs.false156 ], [ 0, %lor.lhs.false153 ], [ 0, %lor.lhs.false147 ], [ 0, %lor.lhs.false144 ], [ 0, %if.then138 ], [ 0, %lor.lhs.false125 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false113 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false95 ], [ 0, %lor.lhs.false89 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false59 ], [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false44 ], [ 0, %if.end38 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false16 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %sum.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_lshift1(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1266, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1267, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.469, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1269, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1270, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.470, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1271, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.471, i64 0, i64 0), i8* noundef %5) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call6) #11
  %call21 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 2) #11
  %cmp = icmp ne i32 %call21, 0
  %conv = zext i1 %cmp to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1276, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end
  %call25 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call) #11
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1277, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.473, i64 0, i64 0), i32 noundef %conv27) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call31 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.474, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call34 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %6) #11
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1279, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.475, i64 0, i64 0), i32 noundef %conv36) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %call40 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.476, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call43 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %7) #11
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1281, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.477, i64 0, i64 0), i32 noundef %conv45) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %call49 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.478, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.479, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call18) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %call55 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call) #11
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1284, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.480, i64 0, i64 0), i32 noundef %conv57) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %call61 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.481, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %call64 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1286, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.482, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false63
  %call70 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.483, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %call73 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1288, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.482, i64 0, i64 0), i32 noundef %conv75) #11
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false72
  %call79 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.483, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %if.end82

if.end82:                                         ; preds = %lor.lhs.false78
  %call83 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef %call2, i32 noundef 0) #11
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1293, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.484, i64 0, i64 0), i32 noundef %conv85) #11
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end82
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call89 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %8) #11
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1294, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.485, i64 0, i64 0), i32 noundef %conv91) #11
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false88
  %call95 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.486, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %call98 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call2) #11
  %cmp99 = icmp ne i32 %call98, 0
  %conv100 = zext i1 %cmp99 to i32
  %call101 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1296, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.482, i64 0, i64 0), i32 noundef %conv100) #11
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false97
  %call104 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.487, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool105.not = icmp ne i32 %call104, 0
  %spec.select = zext i1 %tobool105.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false103, %if.end82, %lor.lhs.false88, %lor.lhs.false94, %lor.lhs.false97, %if.end, %lor.lhs.false24, %lor.lhs.false30, %lor.lhs.false33, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false48, %lor.lhs.false51, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false63, %lor.lhs.false69, %lor.lhs.false72, %lor.lhs.false78, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17
  %lshift1.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false97 ], [ %call2, %lor.lhs.false94 ], [ %call2, %lor.lhs.false88 ], [ %call2, %if.end82 ], [ %call2, %lor.lhs.false78 ], [ %call2, %lor.lhs.false72 ], [ %call2, %lor.lhs.false69 ], [ %call2, %lor.lhs.false63 ], [ %call2, %lor.lhs.false60 ], [ %call2, %lor.lhs.false54 ], [ %call2, %lor.lhs.false51 ], [ %call2, %lor.lhs.false48 ], [ %call2, %lor.lhs.false42 ], [ %call2, %lor.lhs.false39 ], [ %call2, %lor.lhs.false33 ], [ %call2, %lor.lhs.false30 ], [ %call2, %lor.lhs.false24 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false103 ]
  %zero.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false97 ], [ %call6, %lor.lhs.false94 ], [ %call6, %lor.lhs.false88 ], [ %call6, %if.end82 ], [ %call6, %lor.lhs.false78 ], [ %call6, %lor.lhs.false72 ], [ %call6, %lor.lhs.false69 ], [ %call6, %lor.lhs.false63 ], [ %call6, %lor.lhs.false60 ], [ %call6, %lor.lhs.false54 ], [ %call6, %lor.lhs.false51 ], [ %call6, %lor.lhs.false48 ], [ %call6, %lor.lhs.false42 ], [ %call6, %lor.lhs.false39 ], [ %call6, %lor.lhs.false33 ], [ %call6, %lor.lhs.false30 ], [ %call6, %lor.lhs.false24 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false103 ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false97 ], [ %call10, %lor.lhs.false94 ], [ %call10, %lor.lhs.false88 ], [ %call10, %if.end82 ], [ %call10, %lor.lhs.false78 ], [ %call10, %lor.lhs.false72 ], [ %call10, %lor.lhs.false69 ], [ %call10, %lor.lhs.false63 ], [ %call10, %lor.lhs.false60 ], [ %call10, %lor.lhs.false54 ], [ %call10, %lor.lhs.false51 ], [ %call10, %lor.lhs.false48 ], [ %call10, %lor.lhs.false42 ], [ %call10, %lor.lhs.false39 ], [ %call10, %lor.lhs.false33 ], [ %call10, %lor.lhs.false30 ], [ %call10, %lor.lhs.false24 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false103 ]
  %two.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false97 ], [ %call14, %lor.lhs.false94 ], [ %call14, %lor.lhs.false88 ], [ %call14, %if.end82 ], [ %call14, %lor.lhs.false78 ], [ %call14, %lor.lhs.false72 ], [ %call14, %lor.lhs.false69 ], [ %call14, %lor.lhs.false63 ], [ %call14, %lor.lhs.false60 ], [ %call14, %lor.lhs.false54 ], [ %call14, %lor.lhs.false51 ], [ %call14, %lor.lhs.false48 ], [ %call14, %lor.lhs.false42 ], [ %call14, %lor.lhs.false39 ], [ %call14, %lor.lhs.false33 ], [ %call14, %lor.lhs.false30 ], [ %call14, %lor.lhs.false24 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %lor.lhs.false103 ]
  %remainder.0 = phi %struct.bignum_st* [ %call18, %lor.lhs.false97 ], [ %call18, %lor.lhs.false94 ], [ %call18, %lor.lhs.false88 ], [ %call18, %if.end82 ], [ %call18, %lor.lhs.false78 ], [ %call18, %lor.lhs.false72 ], [ %call18, %lor.lhs.false69 ], [ %call18, %lor.lhs.false63 ], [ %call18, %lor.lhs.false60 ], [ %call18, %lor.lhs.false54 ], [ %call18, %lor.lhs.false51 ], [ %call18, %lor.lhs.false48 ], [ %call18, %lor.lhs.false42 ], [ %call18, %lor.lhs.false39 ], [ %call18, %lor.lhs.false33 ], [ %call18, %lor.lhs.false30 ], [ %call18, %lor.lhs.false24 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %lor.lhs.false103 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false88 ], [ 0, %if.end82 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false69 ], [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false24 ], [ 0, %if.end ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false103 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %lshift1.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %zero.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %two.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %remainder.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_lshift(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %n, align 4, !tbaa !36
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1317, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.408, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1318, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.488, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1319, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call fastcc i32 @getint(%struct.stanza_st* noundef %s, i32* noundef nonnull %n) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %4 = load i32, i32* %n, align 4, !tbaa !36
  %call12 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, i32 noundef %4) #11
  %cmp = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1323, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.490, i64 0, i64 0), i32 noundef %conv) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %call16 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.491, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, i32 noundef %4) #11
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1325, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.492, i64 0, i64 0), i32 noundef %conv21) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.493, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #12
  %tobool26.not = icmp ne i32 %call25, 0
  %spec.select = zext i1 %tobool26.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false24, %if.end, %lor.lhs.false15, %lor.lhs.false18, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %lshift.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false15 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false24 ]
  %ret.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false18 ], [ %call6, %lor.lhs.false15 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false24 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false24 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %lshift.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_rshift(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %n = alloca i32, align 4
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %n, align 4, !tbaa !36
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.497, i64 0, i64 0), i8* noundef %2) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1344, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call fastcc i32 @getint(%struct.stanza_st* noundef %s, i32* noundef nonnull %n) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %4 = load i32, i32* %n, align 4, !tbaa !36
  %call12 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, i32 noundef %4) #11
  %cmp = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1348, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.498, i64 0, i64 0), i32 noundef %conv) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %call16 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.493, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false15
  %cmp20 = icmp eq i32 %4, 1
  br i1 %cmp20, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.end19
  %call23 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #11
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1354, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.499, i64 0, i64 0), i32 noundef %conv25) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.then22
  %call29 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.500, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28, %if.end19
  br label %err

err:                                              ; preds = %if.then22, %lor.lhs.false28, %if.end, %lor.lhs.false15, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %if.end33
  %rshift.0 = phi %struct.bignum_st* [ %call2, %if.end33 ], [ %call2, %lor.lhs.false28 ], [ %call2, %if.then22 ], [ %call2, %lor.lhs.false15 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi %struct.bignum_st* [ %call6, %if.end33 ], [ %call6, %lor.lhs.false28 ], [ %call6, %if.then22 ], [ %call6, %lor.lhs.false15 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %st.0 = phi i32 [ 1, %if.end33 ], [ 0, %lor.lhs.false28 ], [ 0, %if.then22 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %rshift.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_square(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1373, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1374, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.501, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #11
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1375, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1376, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1377, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.471, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call6) #11
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call17 = tail call i32 @BN_sqr(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %5) #11
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1381, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.502, i64 0, i64 0), i32 noundef %conv) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.503, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call24 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %6) #11
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1383, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.504, i64 0, i64 0), i32 noundef %conv26) #11
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %call30 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.505, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call33 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %7) #11
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.507, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.508, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14) #12
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select = zext i1 %tobool43.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false41, %if.end, %lor.lhs.false20, %lor.lhs.false23, %lor.lhs.false29, %lor.lhs.false32, %lor.lhs.false38, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %square.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false38 ], [ %call2, %lor.lhs.false32 ], [ %call2, %lor.lhs.false29 ], [ %call2, %lor.lhs.false23 ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false41 ]
  %zero.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false38 ], [ %call6, %lor.lhs.false32 ], [ %call6, %lor.lhs.false29 ], [ %call6, %lor.lhs.false23 ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false41 ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false38 ], [ %call10, %lor.lhs.false32 ], [ %call10, %lor.lhs.false29 ], [ %call10, %lor.lhs.false23 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false41 ]
  %remainder.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false38 ], [ %call14, %lor.lhs.false32 ], [ %call14, %lor.lhs.false29 ], [ %call14, %lor.lhs.false23 ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %lor.lhs.false41 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false41 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %square.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %zero.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %remainder.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef null) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_product(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1433, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.423, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1434, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.422, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.411, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1435, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.509, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1436, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1437, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.471, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1438, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.250, i64 0, i64 0), i8* noundef %5) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call18) #11
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call21 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %6) #11
  %cmp = icmp ne i32 %call21, 0
  %conv = zext i1 %cmp to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1443, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.510, i64 0, i64 0), i32 noundef %conv) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end
  %call25 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.511, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call28 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %7) #11
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1445, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.512, i64 0, i64 0), i32 noundef %conv30) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false27
  %call34 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.513, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #12
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.514, i64 0, i64 0), %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call14) #12
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call40 = tail call i32 @BN_div(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %8) #11
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1448, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.515, i64 0, i64 0), i32 noundef %conv42) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.516, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call10) #12
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %call49 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.517, i64 0, i64 0), %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call14) #12
  %tobool50.not = icmp ne i32 %call49, 0
  %spec.select = zext i1 %tobool50.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false48, %if.end, %lor.lhs.false24, %lor.lhs.false27, %lor.lhs.false33, %lor.lhs.false36, %lor.lhs.false39, %lor.lhs.false45, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17
  %b.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false45 ], [ %call2, %lor.lhs.false39 ], [ %call2, %lor.lhs.false36 ], [ %call2, %lor.lhs.false33 ], [ %call2, %lor.lhs.false27 ], [ %call2, %lor.lhs.false24 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false48 ]
  %product.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false45 ], [ %call6, %lor.lhs.false39 ], [ %call6, %lor.lhs.false36 ], [ %call6, %lor.lhs.false33 ], [ %call6, %lor.lhs.false27 ], [ %call6, %lor.lhs.false24 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false48 ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false45 ], [ %call10, %lor.lhs.false39 ], [ %call10, %lor.lhs.false36 ], [ %call10, %lor.lhs.false33 ], [ %call10, %lor.lhs.false27 ], [ %call10, %lor.lhs.false24 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false48 ]
  %remainder.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false45 ], [ %call14, %lor.lhs.false39 ], [ %call14, %lor.lhs.false36 ], [ %call14, %lor.lhs.false33 ], [ %call14, %lor.lhs.false27 ], [ %call14, %lor.lhs.false24 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %lor.lhs.false48 ]
  %zero.0 = phi %struct.bignum_st* [ %call18, %lor.lhs.false45 ], [ %call18, %lor.lhs.false39 ], [ %call18, %lor.lhs.false36 ], [ %call18, %lor.lhs.false33 ], [ %call18, %lor.lhs.false27 ], [ %call18, %lor.lhs.false24 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %lor.lhs.false48 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false24 ], [ 0, %if.end ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false48 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %product.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %remainder.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %zero.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_quotient(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1471, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.423, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1472, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.422, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.412, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1473, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.518, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.520, i64 0, i64 0)) #12
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1474, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.519, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1475, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #11
  %5 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1476, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.521, i64 0, i64 0), i8* noundef %5) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.bignum_st* @BN_new() #11
  %6 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1477, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.522, i64 0, i64 0), i8* noundef %6) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false21
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call25 = tail call i32 @BN_div(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %7) #11
  %cmp = icmp ne i32 %call25, 0
  %conv = zext i1 %cmp to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1480, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.523, i64 0, i64 0), i32 noundef %conv) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end
  %call29 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.524, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %call32 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.525, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call18) #12
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call35 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %8) #11
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1483, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.526, i64 0, i64 0), i32 noundef %conv37) #11
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %call41 = tail call i32 @BN_add(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call10) #11
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1484, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.527, i64 0, i64 0), i32 noundef %conv43) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.528, i64 0, i64 0), %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false46
  %call51 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %call2) #11
  %call52 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #11
  %tobool53 = icmp eq i32 %call52, 0
  %cmp54 = icmp ne i64 %call51, -1
  %or.cond = select i1 %tobool53, i1 %cmp54, i1 false
  br i1 %or.cond, label %if.then56, label %if.end77

if.then56:                                        ; preds = %if.end50
  %call57 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %call10) #11
  %call58 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call) #11
  %9 = bitcast %struct.bignum_st* %call58 to i8*
  %call59 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1497, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.432, i64 0, i64 0), i8* noundef %9) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %if.then56
  %call63 = tail call i64 @BN_div_word(%struct.bignum_st* noundef %call14, i64 noundef %call51) #11
  %cmp64.not = icmp eq i64 %call63, %call57
  br i1 %cmp64.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1506, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.529, i64 0, i64 0)) #11
  br label %err

if.end67:                                         ; preds = %if.end62
  %call68 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.530, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end67
  %call72 = tail call i64 @BN_mod_word(%struct.bignum_st* noundef %call, i64 noundef %call51) #11
  %cmp73.not = icmp eq i64 %call72, %call57
  br i1 %cmp73.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end71
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1520, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.529, i64 0, i64 0)) #11
  br label %err

if.end77:                                         ; preds = %if.end71, %if.end50
  %call78 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call2) #11
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end106

if.then80:                                        ; preds = %if.end77
  %call81 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call10) #11
  %cmp82 = icmp ne %struct.bignum_st* %call81, null
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1528, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.531, i64 0, i64 0), i32 noundef %conv83) #11
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.then80
  %call87 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call22) #11
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %lor.lhs.false95, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %lor.lhs.false86
  %call90 = tail call i32 @BN_add(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call2) #11
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1530, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.532, i64 0, i64 0), i32 noundef %conv92) #11
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %land.lhs.true89, %lor.lhs.false86
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call96 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %10) #11
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1531, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.533, i64 0, i64 0), i32 noundef %conv98) #11
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false95
  %call102 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.534, i64 0, i64 0), %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call14) #12
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %if.end106

if.end106:                                        ; preds = %lor.lhs.false101, %if.end77
  br label %err

err:                                              ; preds = %if.end67, %if.then56, %if.then75, %if.then66, %if.then80, %land.lhs.true89, %lor.lhs.false95, %lor.lhs.false101, %if.end, %lor.lhs.false28, %lor.lhs.false31, %lor.lhs.false34, %lor.lhs.false40, %lor.lhs.false46, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %if.end106
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end106 ], [ %call2, %lor.lhs.false101 ], [ %call2, %lor.lhs.false95 ], [ %call2, %land.lhs.true89 ], [ %call2, %if.then80 ], [ %call2, %lor.lhs.false46 ], [ %call2, %lor.lhs.false40 ], [ %call2, %lor.lhs.false34 ], [ %call2, %lor.lhs.false31 ], [ %call2, %lor.lhs.false28 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.then66 ], [ %call2, %if.then75 ], [ %call2, %if.then56 ], [ %call2, %if.end67 ]
  %quotient.0 = phi %struct.bignum_st* [ %call6, %if.end106 ], [ %call6, %lor.lhs.false101 ], [ %call6, %lor.lhs.false95 ], [ %call6, %land.lhs.true89 ], [ %call6, %if.then80 ], [ %call6, %lor.lhs.false46 ], [ %call6, %lor.lhs.false40 ], [ %call6, %lor.lhs.false34 ], [ %call6, %lor.lhs.false31 ], [ %call6, %lor.lhs.false28 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %if.then66 ], [ %call6, %if.then75 ], [ %call6, %if.then56 ], [ %call6, %if.end67 ]
  %remainder.0 = phi %struct.bignum_st* [ %call10, %if.end106 ], [ %call10, %lor.lhs.false101 ], [ %call10, %lor.lhs.false95 ], [ %call10, %land.lhs.true89 ], [ %call10, %if.then80 ], [ %call10, %lor.lhs.false46 ], [ %call10, %lor.lhs.false40 ], [ %call10, %lor.lhs.false34 ], [ %call10, %lor.lhs.false31 ], [ %call10, %lor.lhs.false28 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false21 ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %if.then66 ], [ %call10, %if.then75 ], [ %call10, %if.then56 ], [ %call10, %if.end67 ]
  %ret.0 = phi %struct.bignum_st* [ %call14, %if.end106 ], [ %call14, %lor.lhs.false101 ], [ %call14, %lor.lhs.false95 ], [ %call14, %land.lhs.true89 ], [ %call14, %if.then80 ], [ %call14, %lor.lhs.false46 ], [ %call14, %lor.lhs.false40 ], [ %call14, %lor.lhs.false34 ], [ %call14, %lor.lhs.false31 ], [ %call14, %lor.lhs.false28 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false21 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %if.then66 ], [ %call14, %if.then75 ], [ %call14, %if.then56 ], [ %call14, %if.end67 ]
  %ret2.0 = phi %struct.bignum_st* [ %call18, %if.end106 ], [ %call18, %lor.lhs.false101 ], [ %call18, %lor.lhs.false95 ], [ %call18, %land.lhs.true89 ], [ %call18, %if.then80 ], [ %call18, %lor.lhs.false46 ], [ %call18, %lor.lhs.false40 ], [ %call18, %lor.lhs.false34 ], [ %call18, %lor.lhs.false31 ], [ %call18, %lor.lhs.false28 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %if.then66 ], [ %call18, %if.then75 ], [ %call18, %if.then56 ], [ %call18, %if.end67 ]
  %nnmod.0 = phi %struct.bignum_st* [ %call22, %if.end106 ], [ %call22, %lor.lhs.false101 ], [ %call22, %lor.lhs.false95 ], [ %call22, %land.lhs.true89 ], [ %call22, %if.then80 ], [ %call22, %lor.lhs.false46 ], [ %call22, %lor.lhs.false40 ], [ %call22, %lor.lhs.false34 ], [ %call22, %lor.lhs.false31 ], [ %call22, %lor.lhs.false28 ], [ %call22, %if.end ], [ %call22, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call22, %if.then66 ], [ %call22, %if.then75 ], [ %call22, %if.then56 ], [ %call22, %if.end67 ]
  %st.0 = phi i32 [ 1, %if.end106 ], [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false95 ], [ 0, %land.lhs.true89 ], [ 0, %if.then80 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false28 ], [ 0, %if.end ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then66 ], [ 0, %if.then75 ], [ 0, %if.then56 ], [ 0, %if.end67 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %quotient.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %remainder.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret2.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %nnmod.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_modmul(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1553, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.423, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1554, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.422, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.536, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1555, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.535, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.413, i64 0, i64 0)) #12
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1556, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.537, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1557, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call17 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %5) #11
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1560, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.538, i64 0, i64 0), i32 noundef %conv) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.539, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %call25 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call6) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end92, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call28 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #11
  %call29 = tail call %struct.bignum_st* @BN_new() #11
  %call30 = tail call %struct.bignum_st* @BN_new() #11
  %cmp31 = icmp eq %struct.bn_mont_ctx_st* %call28, null
  %cmp34 = icmp eq %struct.bignum_st* %call29, null
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp34
  %cmp37 = icmp eq %struct.bignum_st* %call30, null
  %or.cond99 = select i1 %or.cond, i1 true, i1 %cmp37
  br i1 %or.cond99, label %if.end85, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.then27
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call40 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call28, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %6) #11
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1571, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv42) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end85, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %7 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call46 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call29, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %7) #11
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1572, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.540, i64 0, i64 0), i32 noundef %conv48) #11
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end85, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call52 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call30, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %8) #11
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1573, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.541, i64 0, i64 0), i32 noundef %conv54) #11
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end85, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call58 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef nonnull %call29, %struct.bignum_st* noundef nonnull %call29, %struct.bn_mont_ctx_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %9) #11
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1574, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.542, i64 0, i64 0), i32 noundef %conv60) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end85, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false57
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call64 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef nonnull %call30, %struct.bignum_st* noundef nonnull %call30, %struct.bn_mont_ctx_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %10) #11
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1575, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.543, i64 0, i64 0), i32 noundef %conv66) #11
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end85, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false63
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call70 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call29, %struct.bignum_st* noundef nonnull %call30, %struct.bn_mont_ctx_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %11) #11
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1577, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.544, i64 0, i64 0), i32 noundef %conv72) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end85, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false69
  %12 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call76 = tail call i32 @BN_from_montgomery(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call14, %struct.bn_mont_ctx_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %12) #11
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1578, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.545, i64 0, i64 0), i32 noundef %conv78) #11
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false75
  %call82 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.546, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #12
  %tobool83.not = icmp eq i32 %call82, 0
  %not.tobool83.not = xor i1 %tobool83.not, true
  %spec.select146 = zext i1 %not.tobool83.not to i32
  br label %if.end85

if.end85:                                         ; preds = %lor.lhs.false81, %if.then27, %lor.lhs.false39, %lor.lhs.false45, %lor.lhs.false51, %lor.lhs.false57, %lor.lhs.false63, %lor.lhs.false69, %lor.lhs.false75
  %cmp86 = phi i1 [ true, %lor.lhs.false75 ], [ true, %lor.lhs.false69 ], [ true, %lor.lhs.false63 ], [ true, %lor.lhs.false57 ], [ true, %lor.lhs.false51 ], [ true, %lor.lhs.false45 ], [ true, %lor.lhs.false39 ], [ true, %if.then27 ], [ %tobool83.not, %lor.lhs.false81 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false75 ], [ 0, %lor.lhs.false69 ], [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false39 ], [ 0, %if.then27 ], [ %spec.select146, %lor.lhs.false81 ]
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %call28) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call29) #11
  tail call void @BN_free(%struct.bignum_st* noundef %call30) #11
  br i1 %cmp86, label %err, label %if.end92

if.end92:                                         ; preds = %if.end85, %if.end24
  br label %err

err:                                              ; preds = %if.end85, %if.end, %lor.lhs.false20, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %if.end92
  %m.0 = phi %struct.bignum_st* [ %call6, %if.end85 ], [ %call6, %if.end92 ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %mod_mul.0 = phi %struct.bignum_st* [ %call10, %if.end85 ], [ %call10, %if.end92 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi %struct.bignum_st* [ %call14, %if.end85 ], [ %call14, %if.end92 ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %st.1 = phi i32 [ %st.0, %if.end85 ], [ 1, %if.end92 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end85 ], [ %call2, %if.end92 ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %m.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %mod_mul.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  ret i32 %st.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_modexp(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %c = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !5
  %2 = bitcast %struct.bignum_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store %struct.bignum_st* null, %struct.bignum_st** %c, align 8, !tbaa !5
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  store %struct.bignum_st* %call, %struct.bignum_st** %a, align 8, !tbaa !5
  %3 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1606, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %3) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.548, i64 0, i64 0)) #12
  %4 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1607, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.547, i64 0, i64 0), i8* noundef %4) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.536, i64 0, i64 0)) #12
  %5 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1608, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.535, i64 0, i64 0), i8* noundef %5) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i64 0, i64 0)) #12
  %6 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1609, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.549, i64 0, i64 0), i8* noundef %6) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %7 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1610, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %7) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #11
  %8 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1611, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i64 0, i64 0), i8* noundef %8) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false17
  %9 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call21 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %9) #11
  %cmp = icmp ne i32 %call21, 0
  %conv = zext i1 %cmp to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1614, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.550, i64 0, i64 0), i32 noundef %conv) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end
  %call25 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.551, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false24
  %call29 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call6) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end51, label %if.then31

if.then31:                                        ; preds = %if.end28
  %10 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call32 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %10, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1619, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.552, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then31
  %call38 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.553, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #12
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %11 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call41 = tail call i32 @BN_mod_exp_mont_consttime(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %11, %struct.bn_mont_ctx_st* noundef null) #11
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1622, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.554, i64 0, i64 0), i32 noundef %conv43) #11
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.555, i64 0, i64 0), %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #12
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false46, %if.end28
  %call52 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.556, i64 0, i64 0)) #11
  %call53 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.557, i64 0, i64 0)) #11
  %call54 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %c, i8* noundef getelementptr inbounds ([379 x i8], [379 x i8]* @.str.558, i64 0, i64 0)) #11
  %12 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %13 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  %14 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !5
  %15 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call55 = call i32 @BN_mod_exp(%struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_ctx* noundef %15) #11
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1637, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.559, i64 0, i64 0), i32 noundef %conv57) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end51
  %16 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  %17 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call61 = call i32 @BN_mul(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef %17) #11
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1638, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.560, i64 0, i64 0), i32 noundef %conv63) #11
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1639, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %call2) #11
  %tobool68.not = icmp ne i32 %call67, 0
  %spec.select = zext i1 %tobool68.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false66, %if.end51, %lor.lhs.false60, %if.then31, %lor.lhs.false37, %lor.lhs.false40, %lor.lhs.false46, %if.end, %lor.lhs.false24, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17
  %e.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false60 ], [ %call2, %if.end51 ], [ %call2, %lor.lhs.false46 ], [ %call2, %lor.lhs.false40 ], [ %call2, %lor.lhs.false37 ], [ %call2, %if.then31 ], [ %call2, %lor.lhs.false24 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false66 ]
  %m.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false60 ], [ %call6, %if.end51 ], [ %call6, %lor.lhs.false46 ], [ %call6, %lor.lhs.false40 ], [ %call6, %lor.lhs.false37 ], [ %call6, %if.then31 ], [ %call6, %lor.lhs.false24 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false66 ]
  %mod_exp.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false60 ], [ %call10, %if.end51 ], [ %call10, %lor.lhs.false46 ], [ %call10, %lor.lhs.false40 ], [ %call10, %lor.lhs.false37 ], [ %call10, %if.then31 ], [ %call10, %lor.lhs.false24 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false66 ]
  %ret.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false60 ], [ %call14, %if.end51 ], [ %call14, %lor.lhs.false46 ], [ %call14, %lor.lhs.false40 ], [ %call14, %lor.lhs.false37 ], [ %call14, %if.then31 ], [ %call14, %lor.lhs.false24 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %lor.lhs.false66 ]
  %d.0 = phi %struct.bignum_st* [ %call18, %lor.lhs.false60 ], [ %call18, %if.end51 ], [ %call18, %lor.lhs.false46 ], [ %call18, %lor.lhs.false40 ], [ %call18, %lor.lhs.false37 ], [ %call18, %if.then31 ], [ %call18, %lor.lhs.false24 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call18, %lor.lhs.false66 ]
  %st.0 = phi i32 [ 0, %lor.lhs.false60 ], [ 0, %if.end51 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false37 ], [ 0, %if.then31 ], [ 0, %lor.lhs.false24 ], [ 0, %if.end ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false66 ]
  %18 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %18) #11
  %19 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %19) #11
  %20 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %20) #11
  call void @BN_free(%struct.bignum_st* noundef %d.0) #11
  call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  call void @BN_free(%struct.bignum_st* noundef %m.0) #11
  call void @BN_free(%struct.bignum_st* noundef %mod_exp.0) #11
  call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_exp(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1660, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.548, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1661, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.547, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.415, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1662, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.561, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1663, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call13 = tail call i32 @BN_exp(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %4) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1666, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.562, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %call17 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.563, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool18.not = icmp ne i32 %call17, 0
  %spec.select = zext i1 %tobool18.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false16, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %e.0 = phi %struct.bignum_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false16 ]
  %exp.0 = phi %struct.bignum_st* [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false16 ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false16 ]
  %st.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false16 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %exp.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_modsqrt(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1684, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.565, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1685, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.564, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1686, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.566, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1687, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #11
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1688, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.521, i64 0, i64 0), i8* noundef %4) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %5 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call17 = tail call %struct.bignum_st* @BN_mod_sqrt(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %5) #11
  %cmp = icmp ne %struct.bignum_st* %call17, null
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1692, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.567, i64 0, i64 0), i32 noundef %conv) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call10) #11
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1693, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.568, i64 0, i64 0), i32 noundef %conv23) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false20
  %call28 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call6) #11
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %call31 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.569, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %land.lhs.true, %if.end27
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end, %lor.lhs.false20, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %if.end34
  %p.0 = phi %struct.bignum_st* [ %call2, %if.end34 ], [ %call2, %land.lhs.true ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %mod_sqrt.0 = phi %struct.bignum_st* [ %call6, %if.end34 ], [ %call6, %land.lhs.true ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %if.end34 ], [ %call10, %land.lhs.true ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret2.0 = phi %struct.bignum_st* [ %call14, %if.end34 ], [ %call14, %land.lhs.true ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %st.0 = phi i32 [ 1, %if.end34 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %mod_sqrt.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret2.0) #11
  ret i32 %st.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_gcd(%struct.stanza_st* nocapture noundef readonly %s) #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.421, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1716, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.420, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.423, i64 0, i64 0)) #12
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1717, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.422, i64 0, i64 0), i8* noundef %1) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.417, i64 0, i64 0)) #12
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1718, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.570, i64 0, i64 0), i8* noundef %2) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #11
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1719, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i64 0, i64 0), i8* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @ctx, align 8, !tbaa !5
  %call13 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %4) #11
  %cmp = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1722, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.571, i64 0, i64 0), i32 noundef %conv) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %call17 = tail call fastcc i32 @equalBN(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.572, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #12
  %tobool18.not = icmp ne i32 %call17, 0
  %spec.select = zext i1 %tobool18.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false16, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %b.0 = phi %struct.bignum_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false16 ]
  %gcd.0 = phi %struct.bignum_st* [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false16 ]
  %ret.0 = phi %struct.bignum_st* [ %call10, %if.end ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false16 ]
  %st.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false16 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  tail call void @BN_free(%struct.bignum_st* noundef %b.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %gcd.0) #11
  tail call void @BN_free(%struct.bignum_st* noundef %ret.0) #11
  ret i32 %st.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i8* @findattr(%struct.stanza_st* nocapture noundef readonly %s, i8* noundef readonly %key) unnamed_addr #9 {
entry:
  %numpairs = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 7
  %0 = load i32, i32* %numpairs, align 4, !tbaa !46
  %cmp11 = icmp sgt i32 %0, 0
  br i1 %cmp11, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 8, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %dec13.in = phi i32 [ %dec13, %for.inc ], [ %0, %for.body.preheader ]
  %pp.012 = phi %struct.pair_st* [ %incdec.ptr, %for.inc ], [ %arraydecay, %for.body.preheader ]
  %key1 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.012, i64 0, i32 0
  %1 = load i8*, i8** %key1, align 8, !tbaa !67
  %call = tail call i32 @strcasecmp(i8* noundef %1, i8* noundef %key) #14
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.012, i64 0, i32 1
  %2 = load i8*, i8** %value, align 8, !tbaa !69
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %dec13 = add nsw i32 %dec13.in, -1
  %incdec.ptr = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.012, i64 1
  %cmp = icmp sgt i32 %dec13.in, 1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !70

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %2, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @getBN(%struct.stanza_st* nocapture noundef readonly %s, i8* noundef %attribute) unnamed_addr #1 {
entry:
  %ret = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.bignum_st* null, %struct.bignum_st** %ret, align 8, !tbaa !5
  %call = tail call fastcc i8* @findattr(%struct.stanza_st* noundef %s, i8* noundef %attribute) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %test_file = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 0
  %1 = load i8*, i8** %test_file, align 8, !tbaa !64
  %start = getelementptr inbounds %struct.stanza_st, %struct.stanza_st* %s, i64 0, i32 3
  %2 = load i32, i32* %start, align 4, !tbaa !65
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.467, i64 0, i64 0), i8* noundef %1, i32 noundef %2, i8* noundef %attribute) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @parseBN(%struct.bignum_st** noundef nonnull %ret, i8* noundef nonnull %call) #12
  %call2 = call i64 @strlen(i8* noundef nonnull %call) #14
  %conv = trunc i64 %call2 to i32
  %cmp3.not = icmp eq i32 %call1, %conv
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.468, i64 0, i64 0), i8* noundef nonnull %call) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = load %struct.bignum_st*, %struct.bignum_st** %ret, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then5 ], [ %3, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.bignum_st* %retval.0
}

declare dso_local i32 @BN_uadd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_usub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @getint(%struct.stanza_st* nocapture noundef readonly %s, i32* nocapture noundef writeonly %out) unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.bignum_st* @getBN(%struct.stanza_st* noundef %s, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.489, i64 0, i64 0)) #12
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.494, i64 0, i64 0), i8* noundef %0) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %call) #11
  %call3 = tail call i32 @test_ulong_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.495, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.496, i64 0, i64 0), i64 noundef %call2, i64 noundef 2147483647) #11
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %out, align 4, !tbaa !36
  br label %err

err:                                              ; preds = %entry, %lor.lhs.false, %if.end
  %st.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #11
  ret i32 %st.0
}

declare dso_local i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ulong_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i64 @BN_div_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i64 @BN_mod_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_to_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_mod_sqrt(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !13, i64 4}
!15 = !{!12, !13, i64 8}
!16 = !{!12, !13, i64 12}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = !{!20, !6, i64 0}
!20 = !{!"mpitest_st", !6, i64 0, !6, i64 8, !21, i64 16}
!21 = !{!"long", !7, i64 0}
!22 = !{!20, !6, i64 8}
!23 = !{!20, !21, i64 16}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = !{!13, !13, i64 0}
!37 = distinct !{!37, !4}
!38 = !{!39, !6, i64 0}
!39 = !{!"mod_exp_test_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!40 = !{!39, !6, i64 8}
!41 = !{!39, !6, i64 16}
!42 = !{!39, !6, i64 24}
!43 = distinct !{!43, !4}
!44 = !{!45, !6, i64 8}
!45 = !{!"stanza_st", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !7, i64 40, !6, i64 2440, !7, i64 2448}
!46 = !{!45, !13, i64 36}
!47 = !{!45, !13, i64 24}
!48 = !{!45, !13, i64 28}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = !{!53, !13, i64 0}
!53 = !{!"", !13, i64 0, !13, i64 4, !54, i64 8}
!54 = !{!"double", !7, i64 0}
!55 = !{!53, !13, i64 4}
!56 = !{!53, !54, i64 8}
!57 = !{!21, !21, i64 0}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !6, i64 8}
!63 = !{!"filetest_st", !6, i64 0, !6, i64 8}
!64 = !{!45, !6, i64 0}
!65 = !{!45, !13, i64 20}
!66 = !{!63, !6, i64 0}
!67 = !{!68, !6, i64 0}
!68 = !{!"pair_st", !6, i64 0, !6, i64 8}
!69 = !{!68, !6, i64 8}
!70 = distinct !{!70, !4}
