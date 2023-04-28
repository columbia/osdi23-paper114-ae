; ModuleID = 'test/dhtest.c'
source_filename = "test/dhtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.rfc5114_td = type { %struct.dh_st* ()*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.dh_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [8 x i8] c"dh_test\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dh_computekey_range_test\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rfc5114_test\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rfc7919_test\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dh_test_prime_groups\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dh_get_nid\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"dh_load_pkcs3_namedgroup_privlen_test\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"test/dhtest.c\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"dh = DH_new()\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"q = BN_new()\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"g = BN_new()\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"priv_key = BN_new()\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"BN_set_word(p, 4079L)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"BN_set_word(q, 2039L)\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"BN_set_word(g, 3L)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"DH_set0_pqg(dh, p, q, g)\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"i & DH_CHECK_P_NOT_PRIME\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"i & DH_CHECK_P_NOT_SAFE_PRIME\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"i & DH_UNABLE_TO_CHECK_GENERATOR\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"i & DH_NOT_SUITABLE_GENERATOR\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"i & DH_CHECK_Q_NOT_PRIME\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"i & DH_CHECK_INVALID_Q_VALUE\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"i & DH_CHECK_INVALID_J_VALUE\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"i & DH_MODULUS_TOO_SMALL\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"i & DH_MODULUS_TOO_LARGE\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"q2\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"g2\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"DH_get0_p(dh)\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"DH_get0_q(dh)\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"DH_get0_g(dh)\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"BN_set_word(priv_key, 1234L)\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"DH_set0_key(dh, NULL, priv_key)\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"pub_key2\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"priv_key2\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"priv_key\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"DH_get0_pub_key(dh)\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"DH_get0_priv_key(dh)\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"DH_generate_key(dh)\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"_cb = BN_GENCB_new()\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"a = DH_new()\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"DH_generate_parameters_ex(a, 512, DH_GENERATOR_5, _cb)\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"b = DH_new()\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"bp = BN_dup(ap)\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"bg = BN_dup(ag)\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"DH_set0_pqg(b, bp, NULL, bg)\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"c = DHparams_dup(b)\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"cpriv_key = BN_dup(bpriv_key)\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"DH_set0_key(c, NULL, cpriv_key)\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"abuf = OPENSSL_malloc(alen)\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"(aout = DH_compute_key(abuf, bpub_key, a)) != -1\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"bbuf = OPENSSL_malloc(blen)\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"(bout = DH_compute_key(bbuf, apub_key, b)) != -1\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"cbuf = OPENSSL_malloc(clen)\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"(cout = DH_compute_key(cbuf, apub_key, c)) != -1\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"aout >= 20\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"abuf\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"bbuf\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"cbuf\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"p = BN_dup(&ossl_bignum_ffdhe2048_p)\00", align 1
@ossl_bignum_ffdhe2048_p = external dso_local constant %struct.bignum_st, align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"q = BN_dup(&ossl_bignum_ffdhe2048_q)\00", align 1
@ossl_bignum_ffdhe2048_q = external dso_local constant %struct.bignum_st, align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"g = BN_dup(&ossl_bignum_const_2)\00", align 1
@ossl_bignum_const_2 = external dso_local constant %struct.bignum_st, align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"sz = DH_size(dh)\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"buf = OPENSSL_malloc(sz)\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"pub = BN_new()\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"priv = BN_new()\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"BN_set_word(priv, 1)\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"DH_set0_key(dh, NULL, priv)\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"BN_set_word(pub, 1)\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"ossl_dh_compute_key(buf, pub, dh)\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"BN_copy(pub, DH_get0_p(dh))\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"BN_sub_word(pub, 1)\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@rfctd = internal unnamed_addr constant [3 x %struct.rfc5114_td] [%struct.rfc5114_td { %struct.dh_st* ()* @DH_get_1024_160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @dhtest_1024_160_xA, i32 0, i32 0), i64 20, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dhtest_1024_160_yA, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @dhtest_1024_160_xB, i32 0, i32 0), i64 20, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dhtest_1024_160_yB, i32 0, i32 0), i64 128, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @dhtest_1024_160_Z, i32 0, i32 0), i64 128 }, %struct.rfc5114_td { %struct.dh_st* ()* @DH_get_2048_224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @dhtest_2048_224_xA, i32 0, i32 0), i64 28, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_224_yA, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @dhtest_2048_224_xB, i32 0, i32 0), i64 28, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_224_yB, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_224_Z, i32 0, i32 0), i64 256 }, %struct.rfc5114_td { %struct.dh_st* ()* @DH_get_2048_256, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dhtest_2048_256_xA, i32 0, i32 0), i64 32, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_256_yA, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dhtest_2048_256_xB, i32 0, i32 0), i64 32, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_256_yB, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dhtest_2048_256_Z, i32 0, i32 0), i64 256 }], align 16
@.str.80 = private unnamed_addr constant [22 x i8] c"dhA = td->get_param()\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"dhB = td->get_param()\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"priv_key = BN_bin2bn(td->xA, td->xA_len, NULL)\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"pub_key = BN_bin2bn(td->yA, td->yA_len, NULL)\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"DH_set0_key(dhA, pub_key, priv_key)\00", align 1
@.str.85 = private unnamed_addr constant [47 x i8] c"priv_key = BN_bin2bn(td->xB, td->xB_len, NULL)\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"pub_key = BN_bin2bn(td->yB, td->yB_len, NULL)\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"DH_set0_key(dhB, pub_key, priv_key)\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"szA = DH_size(dhA)\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"szB = DH_size(dhB)\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"td->Z_len\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"(size_t)szA\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"(size_t)szB\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"Z1 = OPENSSL_malloc((size_t)szA)\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"Z2 = OPENSSL_malloc((size_t)szB)\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"DH_compute_key(Z1, pub_key_tmp, dhA)\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"DH_compute_key(Z2, pub_key_tmp, dhB)\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"Z1\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"td->Z\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"Z2\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"Initialisation error RFC5114 set %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"Test failed RFC5114 set %d\0A\00", align 1
@dhtest_1024_160_xA = internal constant [20 x i8] c"\B9\A3\B3\AE\8F\EF\C1\A2\93\04\96Pp\86\F8E]H\94>", align 16
@dhtest_1024_160_yA = internal constant [128 x i8] c"*\85;=\92\19u\01\B9\01[-\EB>\D8O^\02\1D\CC>R\F1\09\D3'=+u!(\1C\BA\BE\0Ev\FFW'\FA\8A\CC\E2iV\BA\9A\1F\CA&\F2\02(\D8i?\EB\10\84\1D\84\A76\00T\EC\E5\A7\F5\B7\A6\1A\D3\DF\B3\C6\0D.C\10m\87'\DA7\DF\9C\CE\95\B4xu]\06\BC\EA\8F\9DE\96_u\A5\F3\D1\DF7\01\16_\C9\E5\0CBy\CE\B0\7F\98\95@\AE\96\D5\D8\8E\D7v", align 16
@dhtest_1024_160_xB = internal constant [20 x i8] c"\93\92\C9\F9\EBjzj\90\22\F7\D8>r#\C6\83[\BD\DA", align 16
@dhtest_1024_160_yB = internal constant [128 x i8] c"qzl\B0S7\1F\F4\A3\B92\94\1C\1EVc\F8a\A1\D6\AD4\AEfWm\FB\98\F6\C6\CB\F9\DD\D5\A5lx3\F6\BC\FD\FF\09U\82\AD\86\8ED\0E\8D\09\FDv\9E<\EC\CD\C3\D3\B1\E4\CF\A0Wwl\AA\F9s\9Bj\9F\EE\8Et\11\F8\D6\DA\C0\9DjN\DBF\CC+]R\03\09\0E\AEa&1\1ES\FD,\14\B5t\E6\A3\10\9A=\A1\BEA\BD\CE\AA\18o\\\E0g\16\A2\B6\A0{<3\FE", align 16
@dhtest_1024_160_Z = internal constant [128 x i8] c"\\\80OEM0\D9\C4\DF\85'\1F\93R\8C\91\DFkH\AB_\80\B3\B5\9C\AA\C1\B2\8F\8A\CB\A9\CD>9\F3\CBaE%\D9R\1D.dLS\B8\07\B8\10\F3@\06/%}}o\BF\E8\D5\E8\F0r\E9\B6\E9\AF\DA\94\13\EA\FB.\8B\06\99\B1\FBZ\0C\AC\ED\DE\AE\AD~\9C\FB\B3j\E2\B4 \83[\D8:\19\FB\0B^\96\BF\8F\A4\D0\9E4U%\16~\CD\91UAoF\F4\08\ED1\B6<nm", align 16
@dhtest_2048_224_xA = internal constant [28 x i8] c"\22\E6&\01\DB\FF\D0g\08\A6\80\F7G\F3a\F7m\8FOr\1A\05H\E4\83)K\0C", align 16
@dhtest_2048_224_yA = internal constant [256 x i8] c"\1B:cE\1B\D8\86\E6\99\E6{IN(\8B\D7\F8\E0\D3p\BA\DD\A7\A0\EF\D2\FD\E7\D8\F6aE\CC\9F(\04\19\97^\B8\08\87|\8AL\0C\8E\0B\D4\8DJT\01\EB\1E\87v\BF\EE\E14\C081\AC'<\D9\D65\AB\0C\E0\06\A4*\88~?R\FB\87f\B6P\F3\80x\BC\8E\E8X\0C\EF\E2C\96\8C\FCO\8D\C3\DB\08ET\17\1DA\BF.\86\1B{\B4\D6\9D\D0\E0\1E\A3\87\CB\AA\\\A6r\AF\CB\E8\BD\B9\D6-L\E1_\17\DD6\F9\1E\D1\EE\DDe\CAJ\06E\\\B9L\D4\0AR\EC6\0E\84\B3\C9&\E2,C\80\A3\BF0\9DV\84\97h\B7\F5,\FD\F6U\FD\05:~\F7\06\97\9E~X\06\B1}\FA\E5:\D2\A5\BCV\8E\BBR\9Aza\D6\8D%o\8F\C9|\07J\86\1D\82~.\BC\8Ca4U1\15\B7\0Eq\03\92\0A\A1m\85\E5+\CB\AB\8Dxjh\17\8F\A8\FF|/\\qd\8Do", align 16
@dhtest_2048_224_xB = internal constant [28 x i8] c"O\F3\BC\96\C7\FCjmq\D3\B3c\80\0A|\DF\EFo\C4\1BD\17\EA\155;u\90", align 16
@dhtest_2048_224_yB = internal constant [256 x i8] c"M\CE\E9\92\A9v*\13\F2\F88D\AD=w\EE\0E1\C9q\8B=\B6\C2\03]9a\18,>\0B\A2G\ECA\82\D7`\CDH\D9\95\99\97\06\22\A1\88\1B\BA-\C8\22\93\9Cx\C3\91,fa\FAT8\B2\07f\22+u\E2L.:\D0\C7(r6\12\95%\EE\15\B5\DDy\98\AA\04\C4\A9il\AC\D7\17 \83\A9z\81fN\AD,G\9EDNL\06T\CC\19\E2\8Dw\03\CE\E8\DA\CDa&\F5\D6e\ECR\C6rU\DB\92\01K\03~\B6!\A2\AC\8E6]\E0q\FF\C1@\0A\CF\07z\12\91=\D8\DE\89G47\AB{\A3Ft<\1B!]\D9\C1!d\A7\E4\051\18\D1\99\BE\C8\EFo\C5a\17\0C\84\C8}\10\EE\9AgJ\1F\A8\FF\E1;\DF\BA\1DD\DEH\94mh\DC\0C\DDwv5\A7\AB[\FB\1EK\B7\B8V\F9h'sL\18A8\E9\15\D9\C3\00.\BC\E51 Tj~ \02\14+l", align 16
@dhtest_2048_224_Z = internal constant [256 x i8] c"4\D9\BD\DC\1BB\17l1?\EA\03L!\03M\07Jc\13\BBN\CD\B3p?\FFBEg\A4k\DFuS\0E\DE\0A\9D\A5\22\9D\E7\D7g2(l\BC\0F\91\DAL<\85/\C0\99\C6yS\1D\94\C7\8A\B0=\9D\EC\B0\A4\E4\CA\8B+\B4Y\1C@!\CF\8C\E3\A2\0AT\1D3\99@\17\D0 \0A\E2\C9Qn/\F5\14Wy&\9E\86+\0F\B4t\A2\D5m\C3\1E\D5i\A7p\0BLJ\B1k\22\A4U\13S\1E\F5#\D7\12\12\07{Z\16\9B\DE\FF\ADz\D9`\82\84\C7y[mZQ\83\B8pf\DE\17\D8\D6q\C9\EB\D8\EC\89TME\EC\06\15\93\D4B\C6*\B9\CE;\1C\B9\94:\1D#\A5\EA;\CF!\A0\14q\E6~\00>\7F\8Ai\C7(\BEI\0B/\C8\8C\FE\B9-\B6\A2\15\E5\D0<\17\C4d\C9\AC\1AF\E2\03\E1?\95)\95\FB\03\C6\9D<\C4\7F\CBQ\0Bi\98\FF\D3\AAm\E7<\F9\F68i", align 16
@dhtest_2048_256_xA = internal constant [32 x i8] c"\08\818,\DB\87f\0Cm\C1>aI8\D5\B9\C8\B2\F2HX\1C\C5\E3\1B5EC\97\FC\E5\0E", align 16
@dhtest_2048_256_yA = internal constant [256 x i8] c".\93\80\C82:\F9uE\BCIA\DE\B0\EC7B\C6/\E0\EC\E8$\A6\AB\DB\E6lY\BE\E0$)\11\BF\B9g#\\\EB\A3Z\E1>N\C7R\BEc\0B\92\DCK\DE(G\A9\C6,\B8\15'EB\1F\B7\EB`\A6<\0F\E9\15\9F\CC\E7&\CE|\D8R=tPf~\F8@\E4\91\91!\EB_\01\C8\C9\B0\D3\D6H\A9;\FBuh\9E\82D\AC\13J\F5Dq\1C\E7\9A\02\DC\C3B&hG\80\DD\DC\B4\98YA\06\C3\7F[\C7\98VHz\F5\AB\02*.^B\F0\98\97\C1\A8Z\11\EA\02\12\AF\04\D9\B4\CE\BC\93|<\1A>\15\A8\A04.3v\15\C8N\7F\E3\B8\B9\B8\7F\B1\E7:\15\AF\12\A3\0Dtn\06\DF\C3O)\0Dy|\E5\1A\A1:\A7\85\BFfX\AF\F5\E4\B0\93\00<\BE\AFf[<.\11::N\90Ri4\1D\C0q\14&h_N\F3~\86\8A\81&\FF?\22y\B5|\A6~)", align 16
@dhtest_2048_256_xB = internal constant [32 x i8] c"}b\A7\E3\EF6\DEa{\13\D1\AF\B8,x\0D\83\A2;\D4\EEg\05dQ!\F3q\F5F\A5=", align 16
@dhtest_2048_256_yB = internal constant [256 x i8] c"W_\03Q\BD+\1B\81tH\BD\F8zl6,\1E(\9D9\03\A3\0B\982\C5t\1F\A2P6>z\CB\C7\F7\7F=\AC\BC\1F\13\1A\DD\8E\036~\FF\8F\BB\B3\E1\C5xD$\80\9B%\AF\E4\D2&*\1Ao\D2\FA\B6A\05\CA0\A6t\E0\7Fx\09\85 \88c/\C0I#7\91\ADN\DD\08:\97\8B\88>\E6\18\BC^\0D\D0GA_-\95\E6\83\CF\14\82k_\BE\10\D3\CEA\C6\C1 \C7\8A\B2\00\08\C6\98\BF\7F\0B\CA\B9\D7\F4\07\BE\D0\F4:\FB)p\F5\7F\8D\12\049c\E6m\DD2\0DY\9A\D9\93l\8FD\13|\08\B1\80\EC^\98\\\EB\E1\86\F3\D5Ig~\80`s1\EE\17\AF3\80\A7%\B0x#\17\D7\DDC\F5\9Dz\F9V\8A\9B\B6:\84\D3e\F9\22D\ED\12\09\88!\93\02\F4)$\C7\CA\90\B8\9D$\F7\1B\0A\B6\97\82=}\EB\1A\FF[\0E\8EJE\D4\9F\7FSu~\19\13", align 16
@dhtest_2048_256_Z = internal constant [256 x i8] c"\86\C7\0B\F8\D0\BB\81\BB\01\07\8A\17!\9C\B7\D2r\03\DB*\19\C8w\F1\D1\F1\9F\D7\D7~\F2%F\A6\8F\00Z\D5-\C8ES\B7\8F\C6\030\BEQ\EA|\06r\CA\C1Q^K5\C0G\B9\A5Q\B8\8F9\DC&\DA\14\A0\9E\F7Gt\D4|v-\D1w\F9\ED[\C2\F1\1ER\C8y\BD\95\09\85\04\CD\9E\EC\D8\A8\F9\B3\EF\BD\1F\00\8A\C5\850\97\D9\D1\83\7F+\18\F7|\D7\BE\01\AF\80\A7\C7\B5\EA<\A5L\C0-\0C\11o\EE?\95\BB\879\93\85\87]~\86t~gnr\898\AC\BF\F7\09\8E\05\BEM\CF\B2@R\B8:\EF\FB\14x?\02\9A\DB\DE\7FS\FA\E9 \84\22@\90\E0\07\CE\E9MK\F2\BA\CE\9F\FDKW\D2\AF|rM\0C\AA\19\BF\05\01\F6\F1{J\A1\0FB^>\A7`\80\B4\B9\D6\B3\CE\FE\A1\15\B2\CE\B8x\9B\B8\A3\B0\EA\87\FE\BEc\B6\C8\F8F\ECm\B0\C2l]|", align 16
@.str.103 = private unnamed_addr constant [33 x i8] c"a = DH_new_by_nid(NID_ffdhe2048)\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"b = DH_new_by_nid(NID_ffdhe2048)\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"alen\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"blen\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"dh = DH_new_by_nid(prime_groups[index])\00", align 1
@prime_groups = internal unnamed_addr constant [9 x i32] [i32 1126, i32 1127, i32 1128, i32 1129, i32 1130, i32 1213, i32 1214, i32 1215, i32 1216], align 16
@.str.108 = private unnamed_addr constant [15 x i8] c"DH_get_nid(dh)\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"prime_groups[index]\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"(int)DH_get_length(dh)\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"dh1\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"dh2\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"pcpy = BN_dup(p)\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"gcpy = BN_dup(g)\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"DH_set0_pqg(dh2, pcpy, NULL, gcpy)\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"DH_get0_q(dh2)\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"DH_get_nid(dh2)\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"NID_ffdhe2048\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"gcpy = BN_dup(BN_value_one())\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"DH_set0_pqg(dh2, NULL, NULL, gcpy)\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"NID_undef\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"qcpy = BN_dup(q)\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"BN_add_word(qcpy, 2)\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"DH_set0_pqg(dh2, pcpy, qcpy, gcpy)\00", align 1
@dh_pub_der = internal constant [556 x i8] c"0\82\02(0\82\01\1B\06\09*\86H\86\F7\0D\01\03\010\82\01\0C\02\82\01\01\00\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AC\AAh\FF\FF\FF\FF\FF\FF\FF\FF\02\01\02\02\02\04\00\03\82\01\05\00\02\82\01\00\08\87\8A_O;\EF\E1w\13;\D7Xv\C9\EB~-\CC~\ED\C5\EE\F9-U\B0\E27\8CQ\87j\8E\0D\B2\08\EDO\88\9Bc\19zg\A1a\D8\17\A0,\DB\C2\FA\B3O\E7\CB\16\F2\E7\D0,\F8\CC\97\D3\E7\AE\C2q\D8+\12\83\E9ZE\FEf\\\A2\B6\CE/\04\05\E7\A7\BC\E5c\1A\93=M\F4w\DD*\C9Q{\F5T\A2\AB&\EE\16\D3\83\92\85@g\A3\A91\16dEZ*\9D\A8\1A\84/YWk\BBQ(\BD\91`\D9\8FTj\A0k\B2\F6xy\D2:\8F\A6$~\E9nf0\ED\BFUq\9C\89\81\F0\A7\E7\05\87Q\C1\FF\E5\CF\1F\19\E4\EB|\1C\1AX\D5\22=1\22\C7\8B`\F5\E8\95s\E0 \E2O\03\9E\894\91^\DAO`\FF\C9OZ7\1E\B0\ED&L\A4\C6&\C9\CC\AB\D2\1A:\82h\03I\8F\B0\B9\C8H\9D\C7\DF\8B\1C\BF\DA\89xo\D3b\AD5\B9\D3\9B\D0%e", align 16
@.str.126 = private unnamed_addr constant [63 x i8] c"pkey = d2i_PUBKEY_ex(NULL, &p, sizeof(dh_pub_der), NULL, NULL)\00", align 1
@.str.127 = private unnamed_addr constant [68 x i8] c"EVP_PKEY_get_int_param(pkey, OSSL_PKEY_PARAM_DH_PRIV_LEN, &privlen)\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"priv_len\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"privlen\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"1024\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @dh_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @dh_computekey_range_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @rfc5114_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @rfc7919_test) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @dh_test_prime_groups, i32 noundef 9, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @dh_get_nid) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @dh_load_pkcs3_namedgroup_privlen_test) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_test() #0 {
entry:
  %p2 = alloca %struct.bignum_st*, align 8
  %q2 = alloca %struct.bignum_st*, align 8
  %g2 = alloca %struct.bignum_st*, align 8
  %pub_key2 = alloca %struct.bignum_st*, align 8
  %priv_key2 = alloca %struct.bignum_st*, align 8
  %ap = alloca %struct.bignum_st*, align 8
  %ag = alloca %struct.bignum_st*, align 8
  %apub_key = alloca %struct.bignum_st*, align 8
  %bpub_key = alloca %struct.bignum_st*, align 8
  %bpriv_key = alloca %struct.bignum_st*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.bignum_st** %p2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.bignum_st** %q2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.bignum_st** %g2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast %struct.bignum_st** %pub_key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast %struct.bignum_st** %priv_key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast %struct.bignum_st** %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %ap, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %ag to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  store %struct.bignum_st* null, %struct.bignum_st** %ag, align 8, !tbaa !3
  %7 = bitcast %struct.bignum_st** %apub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5
  store %struct.bignum_st* null, %struct.bignum_st** %apub_key, align 8, !tbaa !3
  %8 = bitcast %struct.bignum_st** %bpub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  store %struct.bignum_st* null, %struct.bignum_st** %bpub_key, align 8, !tbaa !3
  %9 = bitcast %struct.bignum_st** %bpriv_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5
  store %struct.bignum_st* null, %struct.bignum_st** %bpriv_key, align 8, !tbaa !3
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  %call = tail call %struct.dh_st* @DH_new() #4
  %11 = bitcast %struct.dh_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err1, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %12 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef %12) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err1, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  %13 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* noundef %13) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err1, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #4
  %14 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef %14) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err1, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #4
  %15 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* noundef %15) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err1, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 4079) #4
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err1, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 2039) #4
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv23) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err1, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call10, i64 noundef 3) #4
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv29) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err1, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false26
  %call33 = tail call i32 @DH_set0_pqg(%struct.dh_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err1, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false32
  %call40 = call i32 @DH_check(%struct.dh_st* noundef %call, i32* noundef nonnull %i) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err2, label %if.end43

if.end43:                                         ; preds = %if.end39
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %xor = xor i32 %16, 128
  store i32 %xor, i32* %i, align 4, !tbaa !7
  %and = and i32 %16, 1
  %call46 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 noundef %and) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err2, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end43
  %17 = load i32, i32* %i, align 4, !tbaa !7
  %and49 = lshr i32 %17, 1
  %and49.lobit = and i32 %and49, 1
  %call52 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 noundef %and49.lobit) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err2, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %18 = load i32, i32* %i, align 4, !tbaa !7
  %and55 = lshr i32 %18, 2
  %and55.lobit = and i32 %and55, 1
  %call58 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 noundef %and55.lobit) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err2, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %19 = load i32, i32* %i, align 4, !tbaa !7
  %and61 = lshr i32 %19, 3
  %and61.lobit = and i32 %and61, 1
  %call64 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 noundef %and61.lobit) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err2, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %and67 = lshr i32 %20, 4
  %and67.lobit = and i32 %and67, 1
  %call70 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef %and67.lobit) #4
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err2, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %and73 = lshr i32 %21, 5
  %and73.lobit = and i32 %and73, 1
  %call76 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 noundef %and73.lobit) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err2, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false72
  %22 = load i32, i32* %i, align 4, !tbaa !7
  %and79 = lshr i32 %22, 6
  %and79.lobit = and i32 %and79, 1
  %call82 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 noundef %and79.lobit) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err2, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %23 = load i32, i32* %i, align 4, !tbaa !7
  %and85 = lshr i32 %23, 7
  %and85.lobit = and i32 %and85, 1
  %call88 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 noundef %and85.lobit) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err2, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false84
  %24 = load i32, i32* %i, align 4, !tbaa !7
  %and91 = lshr i32 %24, 8
  %and91.lobit = and i32 %and91, 1
  %call94 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 noundef %and91.lobit) #4
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err2, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false90
  %25 = load i32, i32* %i, align 4, !tbaa !7
  %cmp97 = icmp ne i32 %25, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv98) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err2, label %if.end102

if.end102:                                        ; preds = %lor.lhs.false96
  call void @DH_get0_pqg(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %p2, %struct.bignum_st** noundef nonnull %q2, %struct.bignum_st** noundef nonnull %g2) #4
  %26 = bitcast %struct.bignum_st** %p2 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !3
  %call103 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* noundef %27, i8* noundef %12) #4
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err2, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end102
  %28 = bitcast %struct.bignum_st** %q2 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !3
  %call106 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* noundef %29, i8* noundef %13) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err2, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false105
  %30 = bitcast %struct.bignum_st** %g2 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !3
  %call109 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* noundef %31, i8* noundef %14) #4
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err2, label %if.end112

if.end112:                                        ; preds = %lor.lhs.false108
  %call113 = call %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef %call) #4
  %32 = bitcast %struct.bignum_st* %call113 to i8*
  %33 = load i8*, i8** %26, align 8, !tbaa !3
  %call114 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* noundef %32, i8* noundef %33) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err2, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %if.end112
  %call117 = call %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef %call) #4
  %34 = bitcast %struct.bignum_st* %call117 to i8*
  %35 = load i8*, i8** %28, align 8, !tbaa !3
  %call118 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* noundef %34, i8* noundef %35) #4
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err2, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %lor.lhs.false116
  %call121 = call %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef %call) #4
  %36 = bitcast %struct.bignum_st* %call121 to i8*
  %37 = load i8*, i8** %30, align 8, !tbaa !3
  %call122 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %36, i8* noundef %37) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err2, label %if.end125

if.end125:                                        ; preds = %lor.lhs.false120
  %call126 = call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 1234) #4
  %cmp127 = icmp ne i32 %call126, 0
  %conv128 = zext i1 %cmp127 to i32
  %call129 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv128) #4
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err2, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.end125
  %call132 = call i32 @DH_set0_key(%struct.dh_st* noundef %call, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call14) #4
  %cmp133 = icmp ne i32 %call132, 0
  %conv134 = zext i1 %cmp133 to i32
  %call135 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv134) #4
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err2, label %if.end138

if.end138:                                        ; preds = %lor.lhs.false131
  call void @DH_get0_key(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %pub_key2, %struct.bignum_st** noundef nonnull %priv_key2) #4
  %38 = bitcast %struct.bignum_st** %pub_key2 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !3
  %call139 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef %39, i8* noundef null) #4
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %success, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.end138
  %40 = bitcast %struct.bignum_st** %priv_key2 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !3
  %call142 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* noundef %41, i8* noundef %15) #4
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %success, label %if.end145

if.end145:                                        ; preds = %lor.lhs.false141
  %call146 = call %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef %call) #4
  %42 = bitcast %struct.bignum_st* %call146 to i8*
  %43 = load i8*, i8** %38, align 8, !tbaa !3
  %call147 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* noundef %42, i8* noundef %43) #4
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %success, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %if.end145
  %call150 = call %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef %call) #4
  %44 = bitcast %struct.bignum_st* %call150 to i8*
  %45 = load i8*, i8** %40, align 8, !tbaa !3
  %call151 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* noundef %44, i8* noundef %45) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %success, label %if.end154

if.end154:                                        ; preds = %lor.lhs.false149
  %call155 = call i32 @DH_generate_key(%struct.dh_st* noundef %call) #4
  %cmp156 = icmp ne i32 %call155, 0
  %conv157 = zext i1 %cmp156 to i32
  %call158 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv157) #4
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %success, label %if.end161

if.end161:                                        ; preds = %if.end154
  call void @ERR_clear_error() #4
  %call162 = call %struct.bn_gencb_st* @BN_GENCB_new() #4
  %46 = bitcast %struct.bn_gencb_st* %call162 to i8*
  %call163 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* noundef %46) #4
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %success, label %if.end166

if.end166:                                        ; preds = %if.end161
  call void @BN_GENCB_set(%struct.bn_gencb_st* noundef %call162, i32 (i32, i32, %struct.bn_gencb_st*)* noundef nonnull @cb, i8* noundef null) #4
  %call167 = call %struct.dh_st* @DH_new() #4
  %47 = bitcast %struct.dh_st* %call167 to i8*
  %call168 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8* noundef %47) #4
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %success, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %if.end166
  %call171 = call i32 @DH_generate_parameters_ex(%struct.dh_st* noundef %call167, i32 noundef 512, i32 noundef 5, %struct.bn_gencb_st* noundef %call162) #4
  %cmp172 = icmp ne i32 %call171, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv173) #4
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %success, label %if.end177

if.end177:                                        ; preds = %lor.lhs.false170
  %call178 = call i32 @DH_check(%struct.dh_st* noundef %call167, i32* noundef nonnull %i) #4
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %success, label %if.end181

if.end181:                                        ; preds = %if.end177
  %48 = load i32, i32* %i, align 4, !tbaa !7
  %and182 = and i32 %48, 1
  %call185 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 noundef %and182) #4
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %success, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.end181
  %49 = load i32, i32* %i, align 4, !tbaa !7
  %and188 = lshr i32 %49, 1
  %and188.lobit = and i32 %and188, 1
  %call191 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 noundef %and188.lobit) #4
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %success, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false187
  %50 = load i32, i32* %i, align 4, !tbaa !7
  %and194 = lshr i32 %50, 2
  %and194.lobit = and i32 %and194, 1
  %call197 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 noundef %and194.lobit) #4
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %success, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false193
  %51 = load i32, i32* %i, align 4, !tbaa !7
  %and200 = lshr i32 %51, 3
  %and200.lobit = and i32 %and200, 1
  %call203 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 noundef %and200.lobit) #4
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %success, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %lor.lhs.false199
  %52 = load i32, i32* %i, align 4, !tbaa !7
  %and206 = lshr i32 %52, 4
  %and206.lobit = and i32 %and206, 1
  %call209 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 noundef %and206.lobit) #4
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %success, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %lor.lhs.false205
  %53 = load i32, i32* %i, align 4, !tbaa !7
  %and212 = lshr i32 %53, 5
  %and212.lobit = and i32 %and212, 1
  %call215 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 noundef %and212.lobit) #4
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %success, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false211
  %54 = load i32, i32* %i, align 4, !tbaa !7
  %and218 = lshr i32 %54, 6
  %and218.lobit = and i32 %and218, 1
  %call221 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 noundef %and218.lobit) #4
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %success, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false217
  %55 = load i32, i32* %i, align 4, !tbaa !7
  %and224 = lshr i32 %55, 7
  %and224.lobit = and i32 %and224, 1
  %call227 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 noundef %and224.lobit) #4
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %success, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false223
  %56 = load i32, i32* %i, align 4, !tbaa !7
  %and230 = lshr i32 %56, 8
  %and230.lobit = and i32 %and230, 1
  %call233 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 noundef %and230.lobit) #4
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %success, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false229
  %57 = load i32, i32* %i, align 4, !tbaa !7
  %cmp236 = icmp ne i32 %57, 0
  %conv237 = zext i1 %cmp236 to i32
  %call238 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv237) #4
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %success, label %if.end241

if.end241:                                        ; preds = %lor.lhs.false235
  call void @DH_get0_pqg(%struct.dh_st* noundef %call167, %struct.bignum_st** noundef nonnull %ap, %struct.bignum_st** noundef null, %struct.bignum_st** noundef nonnull %ag) #4
  %call242 = call %struct.dh_st* @DH_new() #4
  %58 = bitcast %struct.dh_st* %call242 to i8*
  %call243 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* noundef %58) #4
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %success, label %if.end246

if.end246:                                        ; preds = %if.end241
  %59 = load %struct.bignum_st*, %struct.bignum_st** %ap, align 8, !tbaa !3
  %call247 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %59) #4
  %60 = bitcast %struct.bignum_st* %call247 to i8*
  %call248 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* noundef %60) #4
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %success, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %if.end246
  %61 = load %struct.bignum_st*, %struct.bignum_st** %ag, align 8, !tbaa !3
  %call251 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %61) #4
  %62 = bitcast %struct.bignum_st* %call251 to i8*
  %call252 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %62) #4
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %success, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %lor.lhs.false250
  %call255 = call i32 @DH_set0_pqg(%struct.dh_st* noundef %call242, %struct.bignum_st* noundef %call247, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call251) #4
  %cmp256 = icmp ne i32 %call255, 0
  %conv257 = zext i1 %cmp256 to i32
  %call258 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv257) #4
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %success, label %if.end261

if.end261:                                        ; preds = %lor.lhs.false254
  %call262 = call i32 @DH_generate_key(%struct.dh_st* noundef %call167) #4
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %success, label %if.end265

if.end265:                                        ; preds = %if.end261
  call void @DH_get0_key(%struct.dh_st* noundef %call167, %struct.bignum_st** noundef nonnull %apub_key, %struct.bignum_st** noundef null) #4
  %call266 = call i32 @DH_generate_key(%struct.dh_st* noundef %call242) #4
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %success, label %if.end269

if.end269:                                        ; preds = %if.end265
  call void @DH_get0_key(%struct.dh_st* noundef %call242, %struct.bignum_st** noundef nonnull %bpub_key, %struct.bignum_st** noundef nonnull %bpriv_key) #4
  %call270 = call %struct.dh_st* @DHparams_dup(%struct.dh_st* noundef %call242) #4
  %63 = bitcast %struct.dh_st* %call270 to i8*
  %call271 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i8* noundef %63) #4
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %success, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %if.end269
  %64 = load %struct.bignum_st*, %struct.bignum_st** %bpriv_key, align 8, !tbaa !3
  %call274 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %64) #4
  %65 = bitcast %struct.bignum_st* %call274 to i8*
  %call275 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i64 0, i64 0), i8* noundef %65) #4
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %success, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false273
  %call278 = call i32 @DH_set0_key(%struct.dh_st* noundef %call270, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call274) #4
  %cmp279 = icmp ne i32 %call278, 0
  %conv280 = zext i1 %cmp279 to i32
  %call281 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv280) #4
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %success, label %if.end284

if.end284:                                        ; preds = %lor.lhs.false277
  %call285 = call i32 @DH_size(%struct.dh_st* noundef %call167) #4
  %conv286 = sext i32 %call285 to i64
  %call287 = call i8* @CRYPTO_malloc(i64 noundef %conv286, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 187) #4
  %call288 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call287) #4
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %success, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %if.end284
  %66 = load %struct.bignum_st*, %struct.bignum_st** %bpub_key, align 8, !tbaa !3
  %call291 = call i32 @DH_compute_key(i8* noundef %call287, %struct.bignum_st* noundef %66, %struct.dh_st* noundef %call167) #4
  %cmp292 = icmp ne i32 %call291, -1
  %conv293 = zext i1 %cmp292 to i32
  %call296 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv293) #4
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %success, label %if.end299

if.end299:                                        ; preds = %lor.lhs.false290
  %call300 = call i32 @DH_size(%struct.dh_st* noundef %call242) #4
  %conv301 = sext i32 %call300 to i64
  %call302 = call i8* @CRYPTO_malloc(i64 noundef %conv301, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 192) #4
  %call303 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i64 0, i64 0), i8* noundef %call302) #4
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %success, label %lor.lhs.false305

lor.lhs.false305:                                 ; preds = %if.end299
  %67 = load %struct.bignum_st*, %struct.bignum_st** %apub_key, align 8, !tbaa !3
  %call306 = call i32 @DH_compute_key(i8* noundef %call302, %struct.bignum_st* noundef %67, %struct.dh_st* noundef %call242) #4
  %cmp307 = icmp ne i32 %call306, -1
  %conv308 = zext i1 %cmp307 to i32
  %call311 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv308) #4
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %success, label %if.end314

if.end314:                                        ; preds = %lor.lhs.false305
  %call315 = call i32 @DH_size(%struct.dh_st* noundef %call270) #4
  %conv316 = sext i32 %call315 to i64
  %call317 = call i8* @CRYPTO_malloc(i64 noundef %conv316, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 197) #4
  %call318 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i64 0, i64 0), i8* noundef %call317) #4
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %success, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %if.end314
  %68 = load %struct.bignum_st*, %struct.bignum_st** %apub_key, align 8, !tbaa !3
  %call321 = call i32 @DH_compute_key(i8* noundef %call317, %struct.bignum_st* noundef %68, %struct.dh_st* noundef %call270) #4
  %cmp322 = icmp ne i32 %call321, -1
  %conv323 = zext i1 %cmp322 to i32
  %call326 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv323) #4
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %success, label %if.end329

if.end329:                                        ; preds = %lor.lhs.false320
  %cmp330 = icmp sgt i32 %call291, 19
  %conv331 = zext i1 %cmp330 to i32
  %call334 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv331) #4
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %success, label %lor.lhs.false336

lor.lhs.false336:                                 ; preds = %if.end329
  %conv337 = sext i32 %call291 to i64
  %conv338 = sext i32 %call306 to i64
  %call339 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %call287, i64 noundef %conv337, i8* noundef %call302, i64 noundef %conv338) #4
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %success, label %lor.lhs.false341

lor.lhs.false341:                                 ; preds = %lor.lhs.false336
  %conv343 = sext i32 %call321 to i64
  %call344 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i8* noundef %call287, i64 noundef %conv337, i8* noundef %call317, i64 noundef %conv343) #4
  %tobool345.not = icmp ne i32 %call344, 0
  %spec.select = zext i1 %tobool345.not to i32
  br label %success

err1:                                             ; preds = %if.end, %lor.lhs.false20, %lor.lhs.false26, %lor.lhs.false32, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %priv_key.0 = phi %struct.bignum_st* [ %call14, %lor.lhs.false32 ], [ %call14, %lor.lhs.false26 ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %g.0 = phi %struct.bignum_st* [ %call10, %lor.lhs.false32 ], [ %call10, %lor.lhs.false26 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %q.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false32 ], [ %call6, %lor.lhs.false26 ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %p.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false32 ], [ %call2, %lor.lhs.false26 ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %q.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %g.0) #4
  br label %err2

err2:                                             ; preds = %if.end125, %lor.lhs.false131, %if.end112, %lor.lhs.false116, %lor.lhs.false120, %if.end102, %lor.lhs.false105, %lor.lhs.false108, %if.end43, %lor.lhs.false48, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false78, %lor.lhs.false84, %lor.lhs.false90, %lor.lhs.false96, %if.end39, %err1
  %priv_key.1 = phi %struct.bignum_st* [ %call14, %lor.lhs.false131 ], [ %call14, %if.end125 ], [ %call14, %lor.lhs.false120 ], [ %call14, %lor.lhs.false116 ], [ %call14, %if.end112 ], [ %call14, %lor.lhs.false108 ], [ %call14, %lor.lhs.false105 ], [ %call14, %if.end102 ], [ %call14, %lor.lhs.false96 ], [ %call14, %lor.lhs.false90 ], [ %call14, %lor.lhs.false84 ], [ %call14, %lor.lhs.false78 ], [ %call14, %lor.lhs.false72 ], [ %call14, %lor.lhs.false66 ], [ %call14, %lor.lhs.false60 ], [ %call14, %lor.lhs.false54 ], [ %call14, %lor.lhs.false48 ], [ %call14, %if.end43 ], [ %call14, %if.end39 ], [ %priv_key.0, %err1 ]
  call void @BN_free(%struct.bignum_st* noundef %priv_key.1) #4
  br label %success

success:                                          ; preds = %lor.lhs.false341, %err2, %lor.lhs.false141, %if.end138, %lor.lhs.false149, %if.end145, %if.end154, %if.end161, %lor.lhs.false170, %if.end166, %if.end177, %lor.lhs.false235, %lor.lhs.false229, %lor.lhs.false223, %lor.lhs.false217, %lor.lhs.false211, %lor.lhs.false205, %lor.lhs.false199, %lor.lhs.false193, %lor.lhs.false187, %if.end181, %if.end241, %lor.lhs.false254, %lor.lhs.false250, %if.end246, %if.end261, %if.end265, %lor.lhs.false277, %lor.lhs.false273, %if.end269, %lor.lhs.false290, %if.end284, %lor.lhs.false305, %if.end299, %lor.lhs.false320, %if.end314, %lor.lhs.false336, %if.end329
  %a.0 = phi %struct.dh_st* [ %call167, %lor.lhs.false336 ], [ %call167, %if.end329 ], [ %call167, %lor.lhs.false320 ], [ %call167, %if.end314 ], [ %call167, %lor.lhs.false305 ], [ %call167, %if.end299 ], [ %call167, %lor.lhs.false290 ], [ %call167, %if.end284 ], [ %call167, %lor.lhs.false277 ], [ %call167, %lor.lhs.false273 ], [ %call167, %if.end269 ], [ %call167, %if.end265 ], [ %call167, %if.end261 ], [ %call167, %lor.lhs.false254 ], [ %call167, %lor.lhs.false250 ], [ %call167, %if.end246 ], [ %call167, %if.end241 ], [ %call167, %lor.lhs.false235 ], [ %call167, %lor.lhs.false229 ], [ %call167, %lor.lhs.false223 ], [ %call167, %lor.lhs.false217 ], [ %call167, %lor.lhs.false211 ], [ %call167, %lor.lhs.false205 ], [ %call167, %lor.lhs.false199 ], [ %call167, %lor.lhs.false193 ], [ %call167, %lor.lhs.false187 ], [ %call167, %if.end181 ], [ %call167, %if.end177 ], [ %call167, %lor.lhs.false170 ], [ %call167, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call167, %lor.lhs.false341 ]
  %b.0 = phi %struct.dh_st* [ %call242, %lor.lhs.false336 ], [ %call242, %if.end329 ], [ %call242, %lor.lhs.false320 ], [ %call242, %if.end314 ], [ %call242, %lor.lhs.false305 ], [ %call242, %if.end299 ], [ %call242, %lor.lhs.false290 ], [ %call242, %if.end284 ], [ %call242, %lor.lhs.false277 ], [ %call242, %lor.lhs.false273 ], [ %call242, %if.end269 ], [ %call242, %if.end265 ], [ %call242, %if.end261 ], [ %call242, %lor.lhs.false254 ], [ %call242, %lor.lhs.false250 ], [ %call242, %if.end246 ], [ %call242, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call242, %lor.lhs.false341 ]
  %c.0 = phi %struct.dh_st* [ %call270, %lor.lhs.false336 ], [ %call270, %if.end329 ], [ %call270, %lor.lhs.false320 ], [ %call270, %if.end314 ], [ %call270, %lor.lhs.false305 ], [ %call270, %if.end299 ], [ %call270, %lor.lhs.false290 ], [ %call270, %if.end284 ], [ %call270, %lor.lhs.false277 ], [ %call270, %lor.lhs.false273 ], [ %call270, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call270, %lor.lhs.false341 ]
  %bp.0 = phi %struct.bignum_st* [ null, %lor.lhs.false336 ], [ null, %if.end329 ], [ null, %lor.lhs.false320 ], [ null, %if.end314 ], [ null, %lor.lhs.false305 ], [ null, %if.end299 ], [ null, %lor.lhs.false290 ], [ null, %if.end284 ], [ null, %lor.lhs.false277 ], [ null, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ %call247, %lor.lhs.false254 ], [ %call247, %lor.lhs.false250 ], [ %call247, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ null, %lor.lhs.false341 ]
  %bg.0 = phi %struct.bignum_st* [ null, %lor.lhs.false336 ], [ null, %if.end329 ], [ null, %lor.lhs.false320 ], [ null, %if.end314 ], [ null, %lor.lhs.false305 ], [ null, %if.end299 ], [ null, %lor.lhs.false290 ], [ null, %if.end284 ], [ null, %lor.lhs.false277 ], [ null, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ %call251, %lor.lhs.false254 ], [ %call251, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ null, %lor.lhs.false341 ]
  %cpriv_key.0 = phi %struct.bignum_st* [ null, %lor.lhs.false336 ], [ null, %if.end329 ], [ null, %lor.lhs.false320 ], [ null, %if.end314 ], [ null, %lor.lhs.false305 ], [ null, %if.end299 ], [ null, %lor.lhs.false290 ], [ null, %if.end284 ], [ %call274, %lor.lhs.false277 ], [ %call274, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ null, %lor.lhs.false341 ]
  %abuf.0 = phi i8* [ %call287, %lor.lhs.false336 ], [ %call287, %if.end329 ], [ %call287, %lor.lhs.false320 ], [ %call287, %if.end314 ], [ %call287, %lor.lhs.false305 ], [ %call287, %if.end299 ], [ %call287, %lor.lhs.false290 ], [ %call287, %if.end284 ], [ null, %lor.lhs.false277 ], [ null, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call287, %lor.lhs.false341 ]
  %bbuf.0 = phi i8* [ %call302, %lor.lhs.false336 ], [ %call302, %if.end329 ], [ %call302, %lor.lhs.false320 ], [ %call302, %if.end314 ], [ %call302, %lor.lhs.false305 ], [ %call302, %if.end299 ], [ null, %lor.lhs.false290 ], [ null, %if.end284 ], [ null, %lor.lhs.false277 ], [ null, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call302, %lor.lhs.false341 ]
  %cbuf.0 = phi i8* [ %call317, %lor.lhs.false336 ], [ %call317, %if.end329 ], [ %call317, %lor.lhs.false320 ], [ %call317, %if.end314 ], [ null, %lor.lhs.false305 ], [ null, %if.end299 ], [ null, %lor.lhs.false290 ], [ null, %if.end284 ], [ null, %lor.lhs.false277 ], [ null, %lor.lhs.false273 ], [ null, %if.end269 ], [ null, %if.end265 ], [ null, %if.end261 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false250 ], [ null, %if.end246 ], [ null, %if.end241 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false211 ], [ null, %lor.lhs.false205 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %if.end177 ], [ null, %lor.lhs.false170 ], [ null, %if.end166 ], [ null, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call317, %lor.lhs.false341 ]
  %_cb.0 = phi %struct.bn_gencb_st* [ %call162, %lor.lhs.false336 ], [ %call162, %if.end329 ], [ %call162, %lor.lhs.false320 ], [ %call162, %if.end314 ], [ %call162, %lor.lhs.false305 ], [ %call162, %if.end299 ], [ %call162, %lor.lhs.false290 ], [ %call162, %if.end284 ], [ %call162, %lor.lhs.false277 ], [ %call162, %lor.lhs.false273 ], [ %call162, %if.end269 ], [ %call162, %if.end265 ], [ %call162, %if.end261 ], [ %call162, %lor.lhs.false254 ], [ %call162, %lor.lhs.false250 ], [ %call162, %if.end246 ], [ %call162, %if.end241 ], [ %call162, %lor.lhs.false235 ], [ %call162, %lor.lhs.false229 ], [ %call162, %lor.lhs.false223 ], [ %call162, %lor.lhs.false217 ], [ %call162, %lor.lhs.false211 ], [ %call162, %lor.lhs.false205 ], [ %call162, %lor.lhs.false199 ], [ %call162, %lor.lhs.false193 ], [ %call162, %lor.lhs.false187 ], [ %call162, %if.end181 ], [ %call162, %if.end177 ], [ %call162, %lor.lhs.false170 ], [ %call162, %if.end166 ], [ %call162, %if.end161 ], [ null, %if.end154 ], [ null, %lor.lhs.false149 ], [ null, %if.end145 ], [ null, %lor.lhs.false141 ], [ null, %if.end138 ], [ null, %err2 ], [ %call162, %lor.lhs.false341 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false336 ], [ 0, %if.end329 ], [ 0, %lor.lhs.false320 ], [ 0, %if.end314 ], [ 0, %lor.lhs.false305 ], [ 0, %if.end299 ], [ 0, %lor.lhs.false290 ], [ 0, %if.end284 ], [ 0, %lor.lhs.false277 ], [ 0, %lor.lhs.false273 ], [ 0, %if.end269 ], [ 0, %if.end265 ], [ 0, %if.end261 ], [ 0, %lor.lhs.false254 ], [ 0, %lor.lhs.false250 ], [ 0, %if.end246 ], [ 0, %if.end241 ], [ 0, %lor.lhs.false235 ], [ 0, %lor.lhs.false229 ], [ 0, %lor.lhs.false223 ], [ 0, %lor.lhs.false217 ], [ 0, %lor.lhs.false211 ], [ 0, %lor.lhs.false205 ], [ 0, %lor.lhs.false199 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false187 ], [ 0, %if.end181 ], [ 0, %if.end177 ], [ 0, %lor.lhs.false170 ], [ 0, %if.end166 ], [ 0, %if.end161 ], [ 0, %if.end154 ], [ 0, %lor.lhs.false149 ], [ 0, %if.end145 ], [ 0, %lor.lhs.false141 ], [ 0, %if.end138 ], [ 0, %err2 ], [ %spec.select, %lor.lhs.false341 ]
  call void @CRYPTO_free(i8* noundef %abuf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 219) #4
  call void @CRYPTO_free(i8* noundef %bbuf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 220) #4
  call void @CRYPTO_free(i8* noundef %cbuf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 221) #4
  call void @DH_free(%struct.dh_st* noundef %b.0) #4
  call void @DH_free(%struct.dh_st* noundef %a.0) #4
  call void @DH_free(%struct.dh_st* noundef %c.0) #4
  call void @BN_free(%struct.bignum_st* noundef %bp.0) #4
  call void @BN_free(%struct.bignum_st* noundef %bg.0) #4
  call void @BN_free(%struct.bignum_st* noundef %cpriv_key.0) #4
  call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %_cb.0) #4
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_computekey_range_test() #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_ffdhe2048_p) #4
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_ffdhe2048_q) #4
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i64 0, i64 0), i8* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull @ossl_bignum_const_2) #4
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.dh_st* @DH_new() #4
  %3 = bitcast %struct.dh_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call i32 @DH_set0_pqg(%struct.dh_st* noundef %call10, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6) #4
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call i32 @DH_size(%struct.dh_st* noundef %call10) #4
  %call18 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %conv21 = sext i32 %call17 to i64
  %call22 = tail call i8* @CRYPTO_malloc(i64 noundef %conv21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 255) #4
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8* noundef %call22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %call26 = tail call %struct.bignum_st* @BN_new() #4
  %4 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef %4) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call %struct.bignum_st* @BN_new() #4
  %5 = bitcast %struct.bignum_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0), i8* noundef %5) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false29
  %call35 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call30, i64 noundef 1) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv37) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end34
  %call41 = tail call i32 @DH_set0_key(%struct.dh_st* noundef %call10, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call30) #4
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv43) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %lor.lhs.false40
  %call48 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call26, i64 noundef 1) #4
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %if.end47
  %call55 = tail call i32 @ossl_dh_compute_key(i8* noundef %call22, %struct.bignum_st* noundef %call26, %struct.dh_st* noundef %call10) #4
  %call56 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call55, i32 noundef 0) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end54
  %call60 = tail call %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef %call10) #4
  %call61 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %call60) #4
  %6 = bitcast %struct.bignum_st* %call61 to i8*
  %call62 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8* noundef %6) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end59
  %call65 = tail call i32 @ossl_dh_compute_key(i8* noundef %call22, %struct.bignum_st* noundef %call26, %struct.dh_st* noundef %call10) #4
  %call66 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call65, i32 noundef 0) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %lor.lhs.false64
  %call70 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call26, i64 noundef 1) #4
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv72) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end69
  %call76 = tail call i32 @ossl_dh_compute_key(i8* noundef %call22, %struct.bignum_st* noundef %call26, %struct.dh_st* noundef %call10) #4
  %call77 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call76, i32 noundef 0) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false75
  %call81 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call26, i64 noundef 1) #4
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv83) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end80
  %call87 = tail call i32 @ossl_dh_compute_key(i8* noundef %call22, %struct.bignum_st* noundef %call26, %struct.dh_st* noundef %call10) #4
  %call88 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i32 noundef %call87, i32 noundef %call17) #4
  %tobool89.not = icmp ne i32 %call88, 0
  %spec.select = zext i1 %tobool89.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false86, %if.end80, %if.end69, %lor.lhs.false75, %if.end59, %lor.lhs.false64, %if.end54, %if.end47, %if.end34, %lor.lhs.false40, %if.end, %lor.lhs.false20, %lor.lhs.false25, %lor.lhs.false29, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %ret.0 = phi i32 [ 0, %if.end80 ], [ 0, %lor.lhs.false75 ], [ 0, %if.end69 ], [ 0, %lor.lhs.false64 ], [ 0, %if.end59 ], [ 0, %if.end54 ], [ 0, %if.end47 ], [ 0, %lor.lhs.false40 ], [ 0, %if.end34 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false86 ]
  %dh.0 = phi %struct.dh_st* [ %call10, %if.end80 ], [ %call10, %lor.lhs.false75 ], [ %call10, %if.end69 ], [ %call10, %lor.lhs.false64 ], [ %call10, %if.end59 ], [ %call10, %if.end54 ], [ %call10, %if.end47 ], [ %call10, %lor.lhs.false40 ], [ %call10, %if.end34 ], [ %call10, %lor.lhs.false29 ], [ %call10, %lor.lhs.false25 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %lor.lhs.false86 ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end80 ], [ null, %lor.lhs.false75 ], [ null, %if.end69 ], [ null, %lor.lhs.false64 ], [ null, %if.end59 ], [ null, %if.end54 ], [ null, %if.end47 ], [ null, %lor.lhs.false40 ], [ null, %if.end34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ %call, %lor.lhs.false13 ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ null, %lor.lhs.false86 ]
  %q.0 = phi %struct.bignum_st* [ null, %if.end80 ], [ null, %lor.lhs.false75 ], [ null, %if.end69 ], [ null, %lor.lhs.false64 ], [ null, %if.end59 ], [ null, %if.end54 ], [ null, %if.end47 ], [ null, %lor.lhs.false40 ], [ null, %if.end34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false86 ]
  %g.0 = phi %struct.bignum_st* [ null, %if.end80 ], [ null, %lor.lhs.false75 ], [ null, %if.end69 ], [ null, %lor.lhs.false64 ], [ null, %if.end59 ], [ null, %if.end54 ], [ null, %if.end47 ], [ null, %lor.lhs.false40 ], [ null, %if.end34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false86 ]
  %pub.0 = phi %struct.bignum_st* [ %call26, %if.end80 ], [ %call26, %lor.lhs.false75 ], [ %call26, %if.end69 ], [ %call26, %lor.lhs.false64 ], [ %call26, %if.end59 ], [ %call26, %if.end54 ], [ %call26, %if.end47 ], [ %call26, %lor.lhs.false40 ], [ %call26, %if.end34 ], [ %call26, %lor.lhs.false29 ], [ %call26, %lor.lhs.false25 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call26, %lor.lhs.false86 ]
  %priv.0 = phi %struct.bignum_st* [ null, %if.end80 ], [ null, %lor.lhs.false75 ], [ null, %if.end69 ], [ null, %lor.lhs.false64 ], [ null, %if.end59 ], [ null, %if.end54 ], [ null, %if.end47 ], [ %call30, %lor.lhs.false40 ], [ %call30, %if.end34 ], [ %call30, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false86 ]
  %buf.0 = phi i8* [ %call22, %if.end80 ], [ %call22, %lor.lhs.false75 ], [ %call22, %if.end69 ], [ %call22, %lor.lhs.false64 ], [ %call22, %if.end59 ], [ %call22, %if.end54 ], [ %call22, %if.end47 ], [ %call22, %lor.lhs.false40 ], [ %call22, %if.end34 ], [ %call22, %lor.lhs.false29 ], [ %call22, %lor.lhs.false25 ], [ %call22, %lor.lhs.false20 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call22, %lor.lhs.false86 ]
  tail call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 287) #4
  tail call void @BN_free(%struct.bignum_st* noundef %priv.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %pub.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %g.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %q.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #4
  tail call void @DH_free(%struct.dh_st* noundef %dh.0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rfc5114_test() #0 {
entry:
  %pub_key_tmp = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %pub_key_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  br label %for.body

for.body:                                         ; preds = %entry, %if.end89
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end89 ]
  %get_param = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 0
  %1 = load %struct.dh_st* ()*, %struct.dh_st* ()** %get_param, align 8, !tbaa !9
  %call = call %struct.dh_st* %1() #4
  %2 = bitcast %struct.dh_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %bad_err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call3 = call %struct.dh_st* %1() #4
  %3 = bitcast %struct.dh_st* %call3 to i8*
  %call4 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %bad_err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %xA = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 1
  %4 = load i8*, i8** %xA, align 8, !tbaa !12
  %xA_len = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 2
  %5 = load i64, i64* %xA_len, align 8, !tbaa !13
  %conv = trunc i64 %5 to i32
  %call6 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %4, i32 noundef %conv, %struct.bignum_st* noundef null) #4
  %6 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i8* noundef %6) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %bad_err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %yA = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 3
  %7 = load i8*, i8** %yA, align 8, !tbaa !14
  %yA_len = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 4
  %8 = load i64, i64* %yA_len, align 8, !tbaa !15
  %conv10 = trunc i64 %8 to i32
  %call11 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %7, i32 noundef %conv10, %struct.bignum_st* noundef null) #4
  %9 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.83, i64 0, i64 0), i8* noundef %9) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %bad_err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %call15 = call i32 @DH_set0_key(%struct.dh_st* noundef %call, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call6) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 575, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %bad_err, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false14
  %xB = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 5
  %10 = load i8*, i8** %xB, align 8, !tbaa !16
  %xB_len = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 6
  %11 = load i64, i64* %xB_len, align 8, !tbaa !17
  %conv22 = trunc i64 %11 to i32
  %call23 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %10, i32 noundef %conv22, %struct.bignum_st* noundef null) #4
  %12 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.85, i64 0, i64 0), i8* noundef %12) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %bad_err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end21
  %yB = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 7
  %13 = load i8*, i8** %yB, align 8, !tbaa !18
  %yB_len = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 8
  %14 = load i64, i64* %yB_len, align 8, !tbaa !19
  %conv27 = trunc i64 %14 to i32
  %call28 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %13, i32 noundef %conv27, %struct.bignum_st* noundef null) #4
  %15 = bitcast %struct.bignum_st* %call28 to i8*
  %call29 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0), i8* noundef %15) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %bad_err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false26
  %call32 = call i32 @DH_set0_key(%struct.dh_st* noundef %call3, %struct.bignum_st* noundef %call28, %struct.bignum_st* noundef %call23) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %bad_err, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false31
  %call39 = call i32 @DH_size(%struct.dh_st* noundef %call) #4
  %call40 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call39, i32 noundef 0) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end38
  %call43 = call i32 @DH_size(%struct.dh_st* noundef %call3) #4
  %call44 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call43, i32 noundef 0) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %Z_len = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 10
  %16 = load i64, i64* %Z_len, align 8, !tbaa !20
  %conv47 = sext i32 %call39 to i64
  %call48 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i64 noundef %16, i64 noundef %conv47) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %conv52 = sext i32 %call43 to i64
  %call53 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i64 0, i64 0), i64 noundef %16, i64 noundef %conv52) #4
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %if.end56

if.end56:                                         ; preds = %lor.lhs.false50
  %call58 = call i8* @CRYPTO_malloc(i64 noundef %conv47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 590) #4
  %call59 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i64 0, i64 0), i8* noundef %call58) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %bad_err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end56
  %call63 = call i8* @CRYPTO_malloc(i64 noundef %conv52, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 591) #4
  %call64 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.94, i64 0, i64 0), i8* noundef %call63) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %bad_err, label %if.end67

if.end67:                                         ; preds = %lor.lhs.false61
  call void @DH_get0_key(%struct.dh_st* noundef %call3, %struct.bignum_st** noundef nonnull %pub_key_tmp, %struct.bignum_st** noundef null) #4
  %17 = load %struct.bignum_st*, %struct.bignum_st** %pub_key_tmp, align 8, !tbaa !3
  %call68 = call i32 @DH_compute_key(i8* noundef %call58, %struct.bignum_st* noundef %17, %struct.dh_st* noundef %call) #4
  %call69 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i32 noundef %call68, i32 noundef -1) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %bad_err, label %if.end72

if.end72:                                         ; preds = %if.end67
  call void @DH_get0_key(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %pub_key_tmp, %struct.bignum_st** noundef null) #4
  %18 = load %struct.bignum_st*, %struct.bignum_st** %pub_key_tmp, align 8, !tbaa !3
  %call73 = call i32 @DH_compute_key(i8* noundef %call63, %struct.bignum_st* noundef %18, %struct.dh_st* noundef %call3) #4
  %call74 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i32 noundef %call73, i32 noundef -1) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %bad_err, label %if.end77

if.end77:                                         ; preds = %if.end72
  %Z = getelementptr inbounds [3 x %struct.rfc5114_td], [3 x %struct.rfc5114_td]* @rfctd, i64 0, i64 %indvars.iv, i32 9
  %19 = load i8*, i8** %Z, align 8, !tbaa !21
  %call80 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* noundef %call58, i64 noundef %16, i8* noundef %19, i64 noundef %16) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end77
  %call86 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* noundef %call63, i64 noundef %16, i8* noundef %19, i64 noundef %16) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false82
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @DH_free(%struct.dh_st* noundef %call3) #4
  call void @CRYPTO_free(i8* noundef %call58, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 613) #4
  call void @CRYPTO_free(i8* noundef %call63, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 615) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !22

bad_err:                                          ; preds = %if.end72, %if.end67, %if.end56, %lor.lhs.false61, %if.end21, %lor.lhs.false26, %lor.lhs.false31, %if.end, %lor.lhs.false9, %lor.lhs.false14, %for.body, %lor.lhs.false
  %dhB.1 = phi %struct.dh_st* [ %call3, %if.end72 ], [ %call3, %if.end67 ], [ %call3, %lor.lhs.false61 ], [ %call3, %if.end56 ], [ %call3, %lor.lhs.false31 ], [ %call3, %lor.lhs.false26 ], [ %call3, %if.end21 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false9 ], [ %call3, %if.end ], [ %call3, %lor.lhs.false ], [ null, %for.body ]
  %Z1.1 = phi i8* [ %call58, %if.end72 ], [ %call58, %if.end67 ], [ %call58, %lor.lhs.false61 ], [ %call58, %if.end56 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false26 ], [ null, %if.end21 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %for.body ]
  %Z2.1 = phi i8* [ %call63, %if.end72 ], [ %call63, %if.end67 ], [ %call63, %lor.lhs.false61 ], [ null, %if.end56 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false26 ], [ null, %if.end21 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %for.body ]
  %priv_key.1 = phi %struct.bignum_st* [ null, %if.end72 ], [ null, %if.end67 ], [ null, %lor.lhs.false61 ], [ null, %if.end56 ], [ %call23, %lor.lhs.false31 ], [ %call23, %lor.lhs.false26 ], [ %call23, %if.end21 ], [ %call6, %lor.lhs.false14 ], [ %call6, %lor.lhs.false9 ], [ %call6, %if.end ], [ null, %lor.lhs.false ], [ null, %for.body ]
  %pub_key.1 = phi %struct.bignum_st* [ null, %if.end72 ], [ null, %if.end67 ], [ null, %lor.lhs.false61 ], [ null, %if.end56 ], [ %call28, %lor.lhs.false31 ], [ %call28, %lor.lhs.false26 ], [ %call11, %if.end21 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %for.body ]
  %20 = trunc i64 %indvars.iv to i32
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @DH_free(%struct.dh_st* noundef %dhB.1) #4
  call void @BN_free(%struct.bignum_st* noundef %pub_key.1) #4
  call void @BN_free(%struct.bignum_st* noundef %priv_key.1) #4
  call void @CRYPTO_free(i8* noundef %Z1.1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 625) #4
  call void @CRYPTO_free(i8* noundef %Z2.1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 626) #4
  %add = add nuw nsw i32 %20, 1
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0), i32 noundef %add) #4
  br label %cleanup

err:                                              ; preds = %if.end77, %lor.lhs.false82, %if.end38, %lor.lhs.false42, %lor.lhs.false46, %lor.lhs.false50
  %Z1.2 = phi i8* [ %call58, %lor.lhs.false82 ], [ %call58, %if.end77 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %if.end38 ]
  %Z2.2 = phi i8* [ %call63, %lor.lhs.false82 ], [ %call63, %if.end77 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %if.end38 ]
  %21 = trunc i64 %indvars.iv to i32
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @DH_free(%struct.dh_st* noundef %call3) #4
  call void @CRYPTO_free(i8* noundef %Z1.2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 633) #4
  call void @CRYPTO_free(i8* noundef %Z2.2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 634) #4
  %add90 = add nuw nsw i32 %21, 1
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.102, i64 0, i64 0), i32 noundef %add90) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %err, %bad_err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %bad_err ], [ 1, %if.end89 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rfc7919_test() #0 {
entry:
  %apub_key = alloca %struct.bignum_st*, align 8
  %bpub_key = alloca %struct.bignum_st*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.bignum_st** %apub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %apub_key, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %bpub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %bpub_key, align 8, !tbaa !3
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %call = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #4
  %3 = bitcast %struct.dh_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 648, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @DH_check(%struct.dh_st* noundef %call, i32* noundef nonnull %i) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !7
  %and = and i32 %4, 1
  %call6 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 noundef %and) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load i32, i32* %i, align 4, !tbaa !7
  %and8 = lshr i32 %5, 1
  %and8.lobit = and i32 %and8, 1
  %call11 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 noundef %and8.lobit) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %and14 = lshr i32 %6, 2
  %and14.lobit = and i32 %and14, 1
  %call17 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 noundef %and14.lobit) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %7 = load i32, i32* %i, align 4, !tbaa !7
  %and20 = lshr i32 %7, 3
  %and20.lobit = and i32 %and20, 1
  %call23 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 656, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 noundef %and20.lobit) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %cmp26 = icmp ne i32 %8, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv27) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false25
  %call32 = call i32 @DH_generate_key(%struct.dh_st* noundef %call) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  call void @DH_get0_key(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %apub_key, %struct.bignum_st** noundef null) #4
  %call36 = call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #4
  %9 = bitcast %struct.dh_st* %call36 to i8*
  %call37 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i64 0, i64 0), i8* noundef %9) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call41 = call i32 @DH_generate_key(%struct.dh_st* noundef %call36) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end40
  call void @DH_get0_key(%struct.dh_st* noundef %call36, %struct.bignum_st** noundef nonnull %bpub_key, %struct.bignum_st** noundef null) #4
  %call45 = call i32 @DH_size(%struct.dh_st* noundef %call) #4
  %call46 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 673, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call45, i32 noundef 0) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %conv49 = sext i32 %call45 to i64
  %call50 = call i8* @CRYPTO_malloc(i64 noundef %conv49, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 673) #4
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 673, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bpub_key, align 8, !tbaa !3
  %call54 = call i32 @DH_compute_key(i8* noundef %call50, %struct.bignum_st* noundef %10, %struct.dh_st* noundef %call) #4
  %cmp55 = icmp ne i32 %call54, -1
  %conv56 = zext i1 %cmp55 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv56) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false53
  %call63 = call i32 @DH_size(%struct.dh_st* noundef %call36) #4
  %call64 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call63, i32 noundef 0) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end62
  %conv67 = sext i32 %call63 to i64
  %call68 = call i8* @CRYPTO_malloc(i64 noundef %conv67, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 678) #4
  %call69 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i64 0, i64 0), i8* noundef %call68) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false66
  %11 = load %struct.bignum_st*, %struct.bignum_st** %apub_key, align 8, !tbaa !3
  %call72 = call i32 @DH_compute_key(i8* noundef %call68, %struct.bignum_st* noundef %11, %struct.dh_st* noundef %call36) #4
  %cmp73 = icmp ne i32 %call72, -1
  %conv74 = zext i1 %cmp73 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv74) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false71
  %cmp81 = icmp sgt i32 %call54, 19
  %conv82 = zext i1 %cmp81 to i32
  %call85 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 682, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv82) #4
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.end80
  %conv88 = sext i32 %call54 to i64
  %conv89 = sext i32 %call72 to i64
  %call90 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 683, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %call50, i64 noundef %conv88, i8* noundef %call68, i64 noundef %conv89) #4
  %tobool91.not = icmp ne i32 %call90, 0
  %spec.select = zext i1 %tobool91.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false87, %if.end80, %if.end62, %lor.lhs.false66, %lor.lhs.false71, %if.end44, %lor.lhs.false48, %lor.lhs.false53, %if.end40, %if.end35, %if.end31, %if.end5, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %if.end, %entry
  %bbuf.0 = phi i8* [ %call68, %if.end80 ], [ %call68, %lor.lhs.false71 ], [ %call68, %lor.lhs.false66 ], [ null, %if.end62 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %if.end44 ], [ null, %if.end40 ], [ null, %if.end35 ], [ null, %if.end31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false ], [ null, %if.end5 ], [ null, %if.end ], [ null, %entry ], [ %call68, %lor.lhs.false87 ]
  %abuf.0 = phi i8* [ %call50, %if.end80 ], [ %call50, %lor.lhs.false71 ], [ %call50, %lor.lhs.false66 ], [ %call50, %if.end62 ], [ %call50, %lor.lhs.false53 ], [ %call50, %lor.lhs.false48 ], [ null, %if.end44 ], [ null, %if.end40 ], [ null, %if.end35 ], [ null, %if.end31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false ], [ null, %if.end5 ], [ null, %if.end ], [ null, %entry ], [ %call50, %lor.lhs.false87 ]
  %b.0 = phi %struct.dh_st* [ %call36, %if.end80 ], [ %call36, %lor.lhs.false71 ], [ %call36, %lor.lhs.false66 ], [ %call36, %if.end62 ], [ %call36, %lor.lhs.false53 ], [ %call36, %lor.lhs.false48 ], [ %call36, %if.end44 ], [ %call36, %if.end40 ], [ %call36, %if.end35 ], [ null, %if.end31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false ], [ null, %if.end5 ], [ null, %if.end ], [ null, %entry ], [ %call36, %lor.lhs.false87 ]
  %ret.0 = phi i32 [ 0, %if.end80 ], [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false66 ], [ 0, %if.end62 ], [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false48 ], [ 0, %if.end44 ], [ 0, %if.end40 ], [ 0, %if.end35 ], [ 0, %if.end31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false87 ]
  call void @CRYPTO_free(i8* noundef %abuf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 689) #4
  call void @CRYPTO_free(i8* noundef %bbuf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 690) #4
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @DH_free(%struct.dh_st* noundef %b.0) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_test_prime_groups(i32 noundef %index) #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %idxprom = sext i32 %index to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @prime_groups, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef %3) #4
  %4 = bitcast %struct.dh_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 714, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.107, i64 0, i64 0), i8* noundef %4) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  call void @DH_get0_pqg(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #4
  %5 = bitcast %struct.bignum_st** %p to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* noundef %6) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = bitcast %struct.bignum_st** %q to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call4 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* noundef %8) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %9 = bitcast %struct.bignum_st** %g to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !3
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 717, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* noundef %10) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false6
  %call11 = call i32 @DH_get_nid(%struct.dh_st* noundef %call) #4
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 720, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i64 0, i64 0), i32 noundef %call11, i32 noundef %3) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end10
  %call18 = call i64 @DH_get_length(%struct.dh_st* noundef %call) #4
  %conv = trunc i64 %call18 to i32
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %err

err:                                              ; preds = %if.end17, %if.end10, %if.end, %lor.lhs.false, %lor.lhs.false6, %entry
  %ok.0 = phi i32 [ 0, %if.end10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end17 ]
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_get_nid() #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %2 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %call = tail call %struct.dh_st* @DH_new_by_nid(i32 noundef 1126) #4
  %call1 = tail call %struct.dh_st* @DH_new() #4
  %3 = bitcast %struct.dh_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = bitcast %struct.dh_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0), i8* noundef %4) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @DH_get0_pqg(%struct.dh_st* noundef %call, %struct.bignum_st** noundef nonnull %p, %struct.bignum_st** noundef nonnull %q, %struct.bignum_st** noundef nonnull %g) #4
  %5 = bitcast %struct.bignum_st** %p to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* noundef %6) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %7 = bitcast %struct.bignum_st** %q to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 748, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* noundef %8) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %9 = bitcast %struct.bignum_st** %g to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !3
  %call11 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* noundef %10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %11 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call14 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %11) #4
  %12 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i64 0, i64 0), i8* noundef %12) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %13 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  %call18 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %13) #4
  %14 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i64 0, i64 0), i8* noundef %14) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false17
  %call23 = call i32 @DH_set0_pqg(%struct.dh_st* noundef %call1, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call18) #4
  %cmp = icmp ne i32 %call23, 0
  %conv = zext i1 %cmp to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef %call1) #4
  %15 = bitcast %struct.bignum_st* %call28 to i8*
  %call29 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i64 0, i64 0), i8* noundef %15) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @DH_get_nid(%struct.dh_st* noundef %call1) #4
  %call34 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i64 0, i64 0), i32 noundef %call33, i32 noundef 1126) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end32
  %call38 = call %struct.bignum_st* @BN_value_one() #4
  %call39 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call38) #4
  %16 = bitcast %struct.bignum_st* %call39 to i8*
  %call40 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.119, i64 0, i64 0), i8* noundef %16) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @DH_set0_pqg(%struct.dh_st* noundef %call1, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call39) #4
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 768, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.end43
  %call51 = call i32 @DH_get_nid(%struct.dh_st* noundef %call1) #4
  %call52 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i64 0, i64 0), i32 noundef %call51, i32 noundef 0) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end50
  %17 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call56 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %17) #4
  %18 = bitcast %struct.bignum_st* %call56 to i8*
  %call57 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i64 0, i64 0), i8* noundef %18) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %19 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  %call60 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %19) #4
  %20 = bitcast %struct.bignum_st* %call60 to i8*
  %call61 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i8* noundef %20) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %21 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  %call64 = call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %21) #4
  %22 = bitcast %struct.bignum_st* %call64 to i8*
  %call65 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i64 0, i64 0), i8* noundef %22) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %call68 = call i32 @BN_add_word(%struct.bignum_st* noundef %call60, i64 noundef 2) #4
  %call69 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0), i32 noundef %call68, i32 noundef 1) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %call72 = call i32 @DH_set0_pqg(%struct.dh_st* noundef %call1, %struct.bignum_st* noundef %call56, %struct.bignum_st* noundef %call60, %struct.bignum_st* noundef %call64) #4
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i64 0, i64 0), i32 noundef %conv74) #4
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %lor.lhs.false71
  %call79 = call i32 @DH_get_nid(%struct.dh_st* noundef %call1) #4
  %call80 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i64 0, i64 0), i32 noundef %call79, i32 noundef 0) #4
  %tobool81.not = icmp ne i32 %call80, 0
  %spec.select = zext i1 %tobool81.not to i32
  br label %err

err:                                              ; preds = %if.end78, %if.end55, %lor.lhs.false59, %lor.lhs.false63, %lor.lhs.false67, %lor.lhs.false71, %if.end50, %if.end43, %if.end37, %if.end32, %if.end27, %if.end22, %if.end, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false17, %entry, %lor.lhs.false
  %gcpy.0 = phi %struct.bignum_st* [ %call64, %lor.lhs.false71 ], [ %call64, %lor.lhs.false67 ], [ %call64, %lor.lhs.false63 ], [ null, %lor.lhs.false59 ], [ null, %if.end55 ], [ null, %if.end50 ], [ %call39, %if.end43 ], [ %call39, %if.end37 ], [ null, %if.end32 ], [ null, %if.end27 ], [ %call18, %if.end22 ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false7 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end78 ]
  %qcpy.0 = phi %struct.bignum_st* [ %call60, %lor.lhs.false71 ], [ %call60, %lor.lhs.false67 ], [ %call60, %lor.lhs.false63 ], [ %call60, %lor.lhs.false59 ], [ null, %if.end55 ], [ null, %if.end50 ], [ null, %if.end43 ], [ null, %if.end37 ], [ null, %if.end32 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false7 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end78 ]
  %pcpy.0 = phi %struct.bignum_st* [ %call56, %lor.lhs.false71 ], [ %call56, %lor.lhs.false67 ], [ %call56, %lor.lhs.false63 ], [ %call56, %lor.lhs.false59 ], [ %call56, %if.end55 ], [ null, %if.end50 ], [ null, %if.end43 ], [ null, %if.end37 ], [ null, %if.end32 ], [ null, %if.end27 ], [ %call14, %if.end22 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false7 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end78 ]
  %ok.0 = phi i32 [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false59 ], [ 0, %if.end55 ], [ 0, %if.end50 ], [ 0, %if.end43 ], [ 0, %if.end37 ], [ 0, %if.end32 ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false7 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end78 ]
  call void @BN_free(%struct.bignum_st* noundef %pcpy.0) #4
  call void @BN_free(%struct.bignum_st* noundef %qcpy.0) #4
  call void @BN_free(%struct.bignum_st* noundef %gcpy.0) #4
  call void @DH_free(%struct.dh_st* noundef %call1) #4
  call void @DH_free(%struct.dh_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dh_load_pkcs3_namedgroup_privlen_test() #0 {
entry:
  %privlen = alloca i32, align 4
  %p = alloca i8*, align 8
  %0 = bitcast i32* %privlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %privlen, align 4, !tbaa !7
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* getelementptr inbounds ([556 x i8], [556 x i8]* @dh_pub_der, i64 0, i64 0), i8** %p, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef 556, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 856, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.126, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i64 0, i64 0), i32* noundef nonnull %privlen) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.127, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* %privlen, align 4, !tbaa !7
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i32 noundef %3, i32 noundef 1024) #4
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.dh_st* @DH_new() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @DH_set0_pqg(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @DH_check(%struct.dh_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DH_get0_pqg(%struct.dh_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i32 @DH_set0_key(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @DH_get0_key(%struct.dh_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i32 @DH_generate_key(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #1

declare dso_local void @BN_GENCB_set(%struct.bn_gencb_st* noundef, i32 (i32, i32, %struct.bn_gencb_st*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @cb(i32 noundef %p, i32 noundef %n, %struct.bn_gencb_st* nocapture noundef readnone %arg) #3 {
entry:
  ret i32 1
}

declare dso_local i32 @DH_generate_parameters_ex(%struct.dh_st* noundef, i32 noundef, i32 noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dh_st* @DHparams_dup(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i32 @DH_size(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DH_compute_key(i8* noundef, %struct.bignum_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_dh_compute_key(i8* noundef, %struct.bignum_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.dh_st* @DH_get_1024_160() #1

declare dso_local %struct.dh_st* @DH_get_2048_224() #1

declare dso_local %struct.dh_st* @DH_get_2048_256() #1

declare dso_local %struct.dh_st* @DH_new_by_nid(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DH_get_nid(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i64 @DH_get_length(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !4, i64 0}
!10 = !{!"", !4, i64 0, !4, i64 8, !11, i64 16, !4, i64 24, !11, i64 32, !4, i64 40, !11, i64 48, !4, i64 56, !11, i64 64, !4, i64 72, !11, i64 80}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !4, i64 8}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !4, i64 24}
!15 = !{!10, !11, i64 32}
!16 = !{!10, !4, i64 40}
!17 = !{!10, !11, i64 48}
!18 = !{!10, !4, i64 56}
!19 = !{!10, !11, i64 64}
!20 = !{!10, !11, i64 80}
!21 = !{!10, !4, i64 72}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
