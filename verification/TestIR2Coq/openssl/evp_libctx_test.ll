; ModuleID = 'test/evp_libctx_test.c'
source_filename = "test/evp_libctx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.bignum_st = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.dsa_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.dh_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque

@test_get_options.test_options = internal constant [11 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"The configuration file to use for the libctx\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"The provider to load (The default value is 'default')\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@nullprov = internal global %struct.ossl_provider_st* null, align 8
@libprov = internal global %struct.ossl_provider_st* null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"test_dsa_param_keygen\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"test_dh_safeprime_param_keygen\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"dhx_cert_load\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"test/evp_libctx_test.c\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"cipher_names = sk_OPENSSL_STRING_new(name_cmp)\00", align 1
@cipher_names = internal unnamed_addr global %struct.stack_st_OPENSSL_STRING* null, align 8
@.str.24 = private unnamed_addr constant [19 x i8] c"test_cipher_reinit\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"test_cipher_reinit_partialupdate\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"kem_rsa_gen_recover\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"kem_rsa_params\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"kem_invalid_keytype\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"test_cipher_tdes_randkey\00", align 1
@test_dsa_param_keygen.bn = internal unnamed_addr constant [3 x %struct.bignum_st*] [%struct.bignum_st* @ossl_bignum_dh2048_256_p, %struct.bignum_st* @ossl_bignum_dh2048_256_q, %struct.bignum_st* @ossl_bignum_dh2048_256_g], align 16
@ossl_bignum_dh2048_256_p = external dso_local constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_q = external dso_local constant %struct.bignum_st, align 1
@ossl_bignum_dh2048_256_g = external dso_local constant %struct.bignum_st, align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Testing with (p, q, g) = (%s, %s, %s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"pkey_parm = EVP_PKEY_new()\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"dsa = DSA_new()\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"p = BN_dup(bn[pind])\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"q = BN_dup(bn[qind])\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"g = BN_dup(bn[gind])\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"DSA_set0_pqg(dsa, p, q, g)\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_assign_DSA(pkey_parm, dsa)\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"gen_ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pkey_parm, NULL)\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_keygen_init(gen_ctx)\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_keygen(gen_ctx, &pkey)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"dup_pk = EVP_PKEY_dup(pkey)\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_eq(pkey, dup_pk)\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@__const.getname.name = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)], align 16
@.str.49 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@test_dh_safeprime_param_keygen.bn = internal unnamed_addr constant [3 x %struct.bignum_st*] [%struct.bignum_st* @ossl_bignum_ffdhe2048_p, %struct.bignum_st* @ossl_bignum_ffdhe2048_q, %struct.bignum_st* @ossl_bignum_const_2], align 16
@ossl_bignum_ffdhe2048_p = external dso_local constant %struct.bignum_st, align 1
@ossl_bignum_ffdhe2048_q = external dso_local constant %struct.bignum_st, align 1
@ossl_bignum_const_2 = external dso_local constant %struct.bignum_st, align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"Testing with (p, q, g) = (%s, %s, %s)\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"dh = DH_new()\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"DH_set0_pqg(dh, p, q, g)\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_assign_DH(pkey_parm, dh)\00", align 1
@dhx_cert_load.dhx_cert = internal constant [1027 x i8] c"0\82\03\FF0\82\02\E7\A0\03\02\01\02\02\09\00\DB\F5M\22\A0zg\A60\0D\06\09*\86H\86\F7\0D\01\01\05\05\000D1\0B0\09\06\03U\04\06\13\02UK1\160\14\06\03U\04\0A\0C\0DOpenSSL Group1\1D0\1B\06\03U\04\03\0C\14Test S/MIME RSA Root0\1E\17\0D130802144929Z\17\0D230611144929Z0D1\0B0\09\06\03U\04\06\13\02UK1\160\14\06\03U\04\0A\0C\0DOpenSSL Group1\1D0\1B\06\03U\04\03\0C\14Test S/MIME EE DH #10\82\01\B60\82\01+\06\07*\86H\CE>\02\010\82\01\1E\02\81\81\00\D4\0CJ\0C\04rq\19\DFY\19\C5\AFD\7F\CA\8E+\F0\09\F5\D3%\B1s\16U\89\DF\FD\07\AF\19\D3\7F\D0\07\A2\FE?Z\F1\01\C6\F8+\EFNm\038B\A17\D4\14\B4\00J\B1\86Z\83\CE\B9\08\0E\C1\99'G\8D\0B\85\A8\82\ED\CC\0D\B9\B02~\DF\E8\E4\F6\F6\EC\B3\EEz\114e\97\FC\1A\B0\95K\19\B9\A6\1C\D9\012\F75|-]\FE\C1\85pI\F8\CC\99\D0\BE\F1Zx\C8\03\02\81\80i\00\FDf\F2\FC\15\8B\09\B8\DCM\EA\AAyU\F9\DFF\A6/\CA-\8FY*\ADD\A3\C6\18/\95\B6\16 \E3\D3\D1\8F\03\CEq|\EF:\C7D9\0E\E2\1F\D8\D3\89+\E7Q\DC\12HL\18M\99\12\06\E4\17\02\03\8C$\05\8E\A6\85\F2i\1B\E1j\DC\E2\04:\01\9Dd\BE\FEE\F9D\18q\BD->zor}\1A\80BW\AE\18o\91\D6a\03\8A\1C\89s\C7VA\03\D3\F8\EDe\E2\85\02\15\00\89\94\AB\10gEA\ADc\C6q@\8Dk\9E\19[\A4\C7\F5\03\81\84\00\02\81\80/[\DEr\026k\00^$\7F\14,\18RB\97K\DBn\15P<E>%\F3\B7\C5n\E5R\E7\C4\FB\F4\A5\F09\12\7F\BCT\1C\93\B9^\EE\E9\14\B0\DF\FE\FC6\E4\F2\AF\FB\13\C8\DF\18\94\1D@\B9q\DDL\9C\A7\03R\02\B5\EDq\80>#\DA(\E5\AB\E7o\F2\0A\0E\00[}\C6K\D7\C7\B2\C3\BAb\7Fp(\A0\9Dq\13p\D1\9F2/>\D2\CD\1B\A4\C6r\A0t]q\EF\03Cn\A3`0^0\0C\06\03U\1D\13\01\01\FF\04\020\000\0E\06\03U\1D\0F\01\01\FF\04\04\03\02\05\E00\1D\06\03U\1D\0E\04\16\04\14\0BZM_}%\C7\F2\9D\C1\AA\B7c\82/\FA\8F2\E7\C00\1F\06\03U\1D#\04\180\16\80\14\DF~^\88\05$3\08\DD\22\81\02\97\CC\9A\B7\B13'00\0D\06\09*\86H\86\F7\0D\01\01\05\05\00\03\82\01\01\00Z\F2c\EF\D3\16\D7\F5\AA\DD\12\006\00!\A2{\08\D6;\9Fb\ACS\1F\EDL\D1\154eq\EE\96\07\A6\EF\B2\DE\D8\BB5n,\E2\D1&\EF~\94\E2\88Q\A4l\AA'*\D3\B6\C2\F7\EA\C3\0B\A9\B5(7\A2c\08\E4\88\C0\1B\16\1B\CA\FD\8A\072)\A7S\B5-0\E4\F5\16\C3\E3\C2L0]5\80\1C\A2\DB\E3KQ\0DL`_\B9F\AC\A8F\A72\A7\9Cv\F8\E9\B5\19\E2\0C\E1\0F\C6F\E28\A7\87rml\BC\88/\9D-\E5\D0}\1E\C7]\F8~\B4\0B\A6\F9l\E3|\B2pnu\9B\1Ec\E1M\B2\81\D3U8\94\1Az\FA\BF\01\18p-5\D3\E3\10z\9A\A7\8F\F3\BDVU^\D8\BDN\16v\D0HL\F9QT\DF-\B0\C9\AA^B8P\BF\0F\C0\D9\84DKB$\EC\14\A3\DE\11\DFX\7F\C2M\B2\D5BxnR>\AD\C3_\04\C4\E61\AA\81\06\8B\13K<\0Ej\B1", align 16
@.str.54 = private unnamed_addr constant [50 x i8] c"bio = BIO_new_mem_buf(dhx_cert, sizeof(dhx_cert))\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"cert = X509_new_ex(libctx, NULL)\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"d2i_X509_bio(bio, &cert)\00", align 1
@__const.test_cipher_reinit.in = private unnamed_addr constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@__const.test_cipher_reinit.key = private constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\03\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@__const.test_cipher_reinit.iv = private constant [16 x i8] c"\0F\0E\0D\0C\0B\0A\09\08\07\06\05\04\03\02\01\00", align 16
@.str.57 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Fetching %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"cipher = EVP_CIPHER_fetch(libctx, name, NULL)\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"RC4\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"RC4-40\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"RC4-HMAC-MD5\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"DES3-WRAP\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"EVP_EncryptInit_ex(ctx, cipher, NULL, key, iv)\00", align 1
@.str.65 = private unnamed_addr constant [56 x i8] c"EVP_EncryptUpdate(ctx, out1, &out1_len, in, sizeof(in))\00", align 1
@.str.66 = private unnamed_addr constant [45 x i8] c"EVP_EncryptInit_ex(ctx, NULL, NULL, key, iv)\00", align 1
@.str.67 = private unnamed_addr constant [56 x i8] c"EVP_EncryptUpdate(ctx, out2, &out2_len, in, sizeof(in))\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"ccm ? 0 : 1\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"EVP_EncryptInit_ex(ctx, NULL, NULL, NULL, iv)\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"EVP_EncryptUpdate(ctx, out3, &out3_len, in, sizeof(in))\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"ccm || siv ? 0 : 1\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"out1\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"out2\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"out3\00", align 1
@test_cipher_reinit_partialupdate.in = internal constant [32 x i8] c"\08\09\0A\0B\0C\0D\0E\0F\BA\BE\BA\BE\00\00\BA\BE\01\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@.str.75 = private unnamed_addr constant [52 x i8] c"EVP_EncryptUpdate(ctx, out1, &out1_len, in, in_len)\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"EVP_EncryptUpdate(ctx, out2, &out2_len, in, in_len)\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"EVP_EncryptUpdate(ctx, out3, &out3_len, in, in_len)\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"rsa_keygen(bits, &pub, &priv)\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"sctx = EVP_PKEY_CTX_new_from_pkey(libctx, pub, NULL)\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_encapsulate_init(sctx, NULL)\00", align 1
@.str.81 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_kem_op(sctx, \22RSASVE\22)\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"RSASVE\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"dctx = EVP_PKEY_CTX_dup(sctx)\00", align 1
@.str.84 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_encapsulate(dctx, NULL, &ctlen, NULL, &secretlen)\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"ctlen\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"secretlen\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"bits / 8\00", align 1
@.str.88 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_encapsulate(dctx, ct, &ctlen, secret, &secretlen)\00", align 1
@.str.89 = private unnamed_addr constant [54 x i8] c"rctx = EVP_PKEY_CTX_new_from_pkey(libctx, priv, NULL)\00", align 1
@.str.90 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_decapsulate_init(rctx, NULL)\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_kem_op(rctx, \22RSASVE\22)\00", align 1
@.str.92 = private unnamed_addr constant [56 x i8] c"EVP_PKEY_decapsulate(rctx, NULL, &unwraplen, ct, ctlen)\00", align 1
@.str.93 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_decapsulate(rctx, unwrap, &unwraplen, ct, ctlen)\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"unwrap\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.96 = private unnamed_addr constant [53 x i8] c"*priv = EVP_PKEY_Q_keygen(libctx, NULL, \22RSA\22, bits)\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.98 = private unnamed_addr constant [95 x i8] c"ectx = OSSL_ENCODER_CTX_new_for_pkey(*priv, EVP_PKEY_PUBLIC_KEY, \22DER\22, \22type-specific\22, NULL)\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"OSSL_ENCODER_to_data(ectx, &pub_der, &len)\00", align 1
@.str.102 = private unnamed_addr constant [43 x i8] c"d2i_PublicKey(EVP_PKEY_RSA, pub, &pp, len)\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"rsa_keygen(2048, &pub, &priv)\00", align 1
@.str.104 = private unnamed_addr constant [55 x i8] c"pubctx = EVP_PKEY_CTX_new_from_pkey(libctx, pub, NULL)\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"privctx = EVP_PKEY_CTX_new_from_pkey(libctx, priv, NULL)\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"EVP_PKEY_CTX_set_kem_op(pubctx, \22RSASVE\22)\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_encapsulate_init(NULL, NULL)\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_encapsulate(NULL, NULL, NULL, NULL, NULL)\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_decapsulate_init(NULL, NULL)\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"EVP_PKEY_decapsulate(NULL, NULL, NULL, NULL, 0)\00", align 1
@.str.112 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_encapsulate(pubctx, NULL, NULL, NULL, NULL)\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_decapsulate(privctx, NULL, NULL, NULL, 0)\00", align 1
@.str.115 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_decapsulate_init(pubctx, NULL)\00", align 1
@.str.116 = private unnamed_addr constant [65 x i8] c"EVP_PKEY_decapsulate(pubctx, secret, &secretlen, ct, sizeof(ct))\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"secret[0]\00", align 1
@.str.118 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_encapsulate_init(pubctx, NULL)\00", align 1
@.str.119 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, secret, &secretlen)\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_CTX_set_kem_op(pubctx, \22RSA\22)\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_CTX_set_kem_op(pubctx, NULL)\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_kem_op(NULL, \22RSASVE\22)\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_CTX_set_kem_op(NULL, NULL)\00", align 1
@.str.124 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, secret, NULL)\00", align 1
@.str.125 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_encapsulate(pubctx, NULL, &ctlen, NULL, NULL)\00", align 1
@.str.126 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_encapsulate(pubctx, NULL, NULL, NULL, &secretlen)\00", align 1
@.str.127 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_encapsulate(pubctx, ct, NULL, secret, &secretlen)\00", align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_encapsulate(pubctx, NULL, &ctlen, NULL, &secretlen)\00", align 1
@.str.129 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_encapsulate(pubctx, ct, &ctlen, NULL, NULL)\00", align 1
@.str.130 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_encapsulate(pubctx, ct, NULL, secret, NULL)\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"EVP_PKEY_decapsulate_init(privctx, NULL)\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"EVP_PKEY_CTX_set_kem_op(privctx, \22RSASVE\22)\00", align 1
@.str.133 = private unnamed_addr constant [60 x i8] c"EVP_PKEY_decapsulate(privctx, secret, NULL, ct, sizeof(ct))\00", align 1
@.str.134 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_decapsulate(privctx, NULL, &secretlen, ct, sizeof(ct))\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.136 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_decapsulate(privctx, NULL, NULL, ct, sizeof(ct))\00", align 1
@.str.137 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_decapsulate(privctx, secret, &secretlen, NULL, 0)\00", align 1
@.str.138 = private unnamed_addr constant [68 x i8] c"EVP_PKEY_decapsulate(privctx, secret, &secretlen, NULL, sizeof(ct))\00", align 1
@.str.139 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_decapsulate(privctx, secret, &secretlen, ct, 0)\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"key = gen_dh_key()\00", align 1
@.str.141 = private unnamed_addr constant [53 x i8] c"sctx = EVP_PKEY_CTX_new_from_pkey(libctx, key, NULL)\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"ffdhe2048\00", align 1
@.str.144 = private unnamed_addr constant [54 x i8] c"gctx = EVP_PKEY_CTX_new_from_name(libctx, \22DH\22, NULL)\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_keygen_init(gctx)\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_CTX_set_params(gctx, params)\00", align 1
@.str.148 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_keygen(gctx, &pkey)\00", align 1
@.str.149 = private unnamed_addr constant [59 x i8] c"aes_cipher = EVP_CIPHER_fetch(libctx, \22AES-256-CBC\22, NULL)\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.151 = private unnamed_addr constant [53 x i8] c"EVP_CIPHER_get_flags(aes_cipher) & EVP_CIPH_RAND_KEY\00", align 1
@.str.152 = private unnamed_addr constant [61 x i8] c"tdes_cipher = EVP_CIPHER_fetch(libctx, \22DES-EDE3-CBC\22, NULL)\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"DES-EDE3-CBC\00", align 1
@.str.154 = private unnamed_addr constant [54 x i8] c"EVP_CIPHER_get_flags(tdes_cipher) & EVP_CIPH_RAND_KEY\00", align 1
@.str.155 = private unnamed_addr constant [57 x i8] c"EVP_CipherInit_ex(ctx, tdes_cipher, NULL, NULL, NULL, 1)\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"EVP_CIPHER_CTX_rand_key(ctx, key)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([11 x %struct.options_st], [11 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %prov_name.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %entry ], [ %prov_name.0.be, %while.cond.backedge ]
  %config_file.0 = phi i8* [ null, %entry ], [ %config_file.0.be, %while.cond.backedge ]
  %call = tail call i32 @opt_next() #8
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb2, %sw.bb
  %prov_name.0.be = phi i8* [ %prov_name.0, %sw.bb2 ], [ %call1, %sw.bb ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ]
  %config_file.0.be = phi i8* [ %call3, %sw.bb2 ], [ %config_file.0, %sw.bb ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call1 = tail call i8* @opt_arg() #8
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  %call3 = tail call i8* @opt_arg() #8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call6 = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @nullprov, i8* noundef %config_file.0, %struct.ossl_provider_st** noundef nonnull @libprov, i8* noundef %prov_name.0) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_dsa_param_keygen, i32 noundef 27, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 (i32)* noundef nonnull @test_dh_safeprime_param_keygen, i32 noundef 27, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @dhx_cert_load) #8
  %call8 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @name_cmp to i32 (i8*, i8*)*)) #8
  store %struct.stack_st* %call8, %struct.stack_st** bitcast (%struct.stack_st_OPENSSL_STRING** @cipher_names to %struct.stack_st**), align 8, !tbaa !5
  %0 = bitcast %struct.stack_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i8* noundef %0) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %2 = load i8*, i8** bitcast (%struct.stack_st_OPENSSL_STRING** @cipher_names to i8**), align 8, !tbaa !5
  tail call void @EVP_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %1, void (%struct.evp_cipher_st*, i8*)* noundef nonnull @collect_cipher_names, i8* noundef %2) #8
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @cipher_names, align 8, !tbaa !5
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %3) #9
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 (i32)* noundef nonnull @test_cipher_reinit, i32 noundef %call14, i32 noundef 1) #8
  %4 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @cipher_names, align 8, !tbaa !5
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %4) #9
  %call16 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 (i32)* noundef nonnull @test_cipher_reinit_partialupdate, i32 noundef %call16, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @kem_rsa_gen_recover) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @kem_rsa_params) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @kem_invalid_keytype) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_cipher_tdes_randkey) #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end, %while.end, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %while.end ], [ 0, %if.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dsa_param_keygen(i32 noundef %tstid) #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %div = sdiv i32 %tstid, 9
  %div1 = sdiv i32 %tstid, 3
  %rem = srem i32 %div1, 3
  %rem2 = srem i32 %tstid, 3
  %tstid.off = add i32 %tstid, 8
  %1 = icmp ult i32 %tstid.off, 17
  %cmp3 = icmp eq i32 %rem, 1
  %or.cond = and i1 %1, %cmp3
  %cmp4 = icmp eq i32 %rem2, 2
  %spec.select = and i1 %cmp4, %or.cond
  %land.ext = zext i1 %spec.select to i32
  %call = tail call fastcc i8* @getname(i32 noundef %div) #9
  %call5 = tail call fastcc i8* @getname(i32 noundef %rem) #9
  %call6 = tail call fastcc i8* @getname(i32 noundef %rem2) #9
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call, i8* noundef %call5, i8* noundef %call6) #8
  %call7 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %2 = bitcast %struct.evp_pkey_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call9 = tail call %struct.dsa_st* @DSA_new() #8
  %3 = bitcast %struct.dsa_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dsa_param_keygen.bn, i64 0, i64 %idxprom
  %4 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !5
  %call13 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %4) #8
  %5 = bitcast %struct.bignum_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* noundef %5) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %idxprom17 = sext i32 %rem to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dsa_param_keygen.bn, i64 0, i64 %idxprom17
  %6 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !5
  %call19 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %6) #8
  %7 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8* noundef %7) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %idxprom23 = sext i32 %rem2 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dsa_param_keygen.bn, i64 0, i64 %idxprom23
  %8 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx24, align 8, !tbaa !5
  %call25 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %8) #8
  %9 = bitcast %struct.bignum_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* noundef %9) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = tail call i32 @DSA_set0_pqg(%struct.dsa_st* noundef %call9, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call25) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv = zext i1 %cmp30 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false28
  %call33 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call7, i32 noundef 116, i8* noundef %3) #8
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv35) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call40 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %10, %struct.evp_pkey_st* noundef %call7, i8* noundef null) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call40 to i8*
  %call41 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0), i8* noundef %11) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end39
  %call44 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call40) #8
  %call45 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call44, i32 noundef 0) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call40, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %call49 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call48, i32 noundef %land.ext) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false47
  br i1 %spec.select, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end52
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call55 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %12) #8
  %13 = bitcast %struct.evp_pkey_st* %call55 to i8*
  %call56 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %13) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then54
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call59 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %14, %struct.evp_pkey_st* noundef %call55) #8
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call59, i32 noundef 1) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false58, %if.end52
  %dup_pk.0 = phi %struct.evp_pkey_st* [ %call55, %lor.lhs.false58 ], [ null, %if.end52 ]
  br label %err

err:                                              ; preds = %if.then54, %lor.lhs.false58, %if.end39, %lor.lhs.false43, %lor.lhs.false47, %if.end, %entry, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false22, %lor.lhs.false28, %if.end64
  %dup_pk.1 = phi %struct.evp_pkey_st* [ %dup_pk.0, %if.end64 ], [ %call55, %lor.lhs.false58 ], [ %call55, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %dsa.0 = phi %struct.dsa_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ %call9, %if.end ], [ %call9, %lor.lhs.false28 ], [ %call9, %lor.lhs.false22 ], [ %call9, %lor.lhs.false16 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false ], [ null, %entry ]
  %gen_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call40, %if.end64 ], [ %call40, %lor.lhs.false58 ], [ %call40, %if.then54 ], [ %call40, %lor.lhs.false47 ], [ %call40, %lor.lhs.false43 ], [ %call40, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi i32 [ 1, %if.end64 ], [ 0, %lor.lhs.false58 ], [ 0, %if.then54 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end39 ], [ 0, %if.end ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call13, %lor.lhs.false28 ], [ %call13, %lor.lhs.false22 ], [ %call13, %lor.lhs.false16 ], [ %call13, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %q.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %g.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call25, %lor.lhs.false28 ], [ %call25, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dup_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %gen_ctx.0) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call7) #8
  call void @DSA_free(%struct.dsa_st* noundef %dsa.0) #8
  call void @BN_free(%struct.bignum_st* noundef %g.0) #8
  call void @BN_free(%struct.bignum_st* noundef %q.0) #8
  call void @BN_free(%struct.bignum_st* noundef %p.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dh_safeprime_param_keygen(i32 noundef %tstid) #1 {
entry:
  %call = tail call fastcc i32 @do_dh_param_keygen(i32 noundef %tstid) #9
  ret i32 %call
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @dhx_cert_load() #1 {
entry:
  %cert = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !5
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([1027 x i8], [1027 x i8]* @dhx_cert_load.dhx_cert, i64 0, i64 0), i32 noundef 1027) #8
  %1 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call2 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef null) #8
  store %struct.x509_st* %call2, %struct.x509_st** %cert, align 8, !tbaa !5
  %3 = bitcast %struct.x509_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i8* noundef %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef %call, %struct.x509_st** noundef nonnull %cert) #8
  %4 = bitcast %struct.x509_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i8* noundef %4) #8
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  %.pre = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !5
  br label %err

err:                                              ; preds = %lor.lhs.false5, %entry, %lor.lhs.false
  %5 = phi %struct.x509_st* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %.pre, %lor.lhs.false5 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @X509_free(%struct.x509_st* noundef %5) #8
  %call9 = call i32 @BIO_free(%struct.bio_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @name_cmp(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) #4 {
entry:
  %0 = load i8*, i8** %a, align 8, !tbaa !5
  %1 = load i8*, i8** %b, align 8, !tbaa !5
  %call = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef %1) #11
  ret i32 %call
}

declare dso_local void @EVP_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_cipher_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_cipher_names(%struct.evp_cipher_st* noundef %cipher, i8* noundef %cipher_names_list) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %cipher) #8
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 492) #8
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8* %cipher_names_list to %struct.stack_st_OPENSSL_STRING*
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #9
  %call4 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call2, i8* noundef nonnull %call1) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 494) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cipher_reinit(i32 noundef %test_id) #1 {
entry:
  %out1_len = alloca i32, align 4
  %out2_len = alloca i32, align 4
  %out3_len = alloca i32, align 4
  %out1 = alloca [256 x i8], align 16
  %out2 = alloca [256 x i8], align 16
  %out3 = alloca [256 x i8], align 16
  %in = alloca [16 x i8], align 16
  %key = alloca [64 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %0 = bitcast i32* %out1_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %out1_len, align 4, !tbaa !9
  %1 = bitcast i32* %out2_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %out2_len, align 4, !tbaa !9
  %2 = bitcast i32* %out3_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 0, i32* %out3_len, align 4, !tbaa !9
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %out1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %out2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #10
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %out3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #10
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %6, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_cipher_reinit.in, i64 0, i64 0), i64 16, i1 false)
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %7, i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @__const.test_cipher_reinit.key, i64 0, i64 0), i64 64, i1 false)
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %8, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_cipher_reinit.iv, i64 0, i64 0), i64 16, i1 false)
  %9 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @cipher_names, align 8, !tbaa !5
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %9) #9
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %test_id) #8
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %10 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* noundef %10) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call1) #8
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef %call1, i8* noundef null) #8
  %12 = bitcast %struct.evp_cipher_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i64 0, i64 0), i8* noundef %12) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp = icmp eq i32 %call9, 7
  %call10 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp11 = icmp eq i32 %call10, 65540
  %call13 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %if.end8
  %call15 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %call17 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0)) #8
  %tobool18 = icmp ne i32 %call17, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end8
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end8 ], [ %tobool18, %lor.rhs ]
  %call19 = tail call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %call4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0)) #8
  %call21 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call4, %struct.engine_st* noundef null, i8* noundef nonnull %7, i8* noundef nonnull %8) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.end
  %call29 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %3, i32* noundef nonnull %out1_len, i8* noundef nonnull %6, i32 noundef 16) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv31) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false26
  %call37 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef nonnull %7, i8* noundef nonnull %8) #8
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false34
  %call45 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %4, i32* noundef nonnull %out2_len, i8* noundef nonnull %6, i32 noundef 16) #8
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %call47 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef %call45, i32 noundef %cond) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false42
  br i1 %13, label %if.end70, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %call52 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %8) #8
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv54) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %land.lhs.true
  %call60 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %5, i32* noundef nonnull %out3_len, i8* noundef nonnull %6, i32 noundef 16) #8
  %14 = select i1 %cmp, i1 true, i1 %cmp11
  %not. = xor i1 %14, true
  %cond66 = zext i1 %not. to i32
  %call67 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0), i32 noundef %call60, i32 noundef %cond66) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %lor.lhs.false57, %lor.lhs.false49
  br i1 %cmp, label %if.end118, label %if.then73

if.then73:                                        ; preds = %if.end70
  %tobool74.not = icmp eq i32 %call19, 0
  %15 = load i32, i32* %out1_len, align 4, !tbaa !9
  %conv99 = sext i32 %15 to i64
  %16 = load i32, i32* %out2_len, align 4, !tbaa !9
  %conv101 = sext i32 %16 to i64
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.then73
  %call80 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv99, i8* noundef nonnull %4, i64 noundef %conv101) #8
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.then75
  %17 = load i32, i32* %out1_len, align 4, !tbaa !9
  %conv84 = sext i32 %17 to i64
  %18 = load i32, i32* %out3_len, align 4, !tbaa !9
  %conv86 = sext i32 %18 to i64
  %call87 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv84, i8* noundef nonnull %5, i64 noundef %conv86) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false82
  %19 = load i32, i32* %out2_len, align 4, !tbaa !9
  %conv91 = sext i32 %19 to i64
  %20 = load i32, i32* %out3_len, align 4, !tbaa !9
  %conv93 = sext i32 %20 to i64
  %call94 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %conv91, i8* noundef nonnull %5, i64 noundef %conv93) #8
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %if.end118

if.else:                                          ; preds = %if.then73
  %call102 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv99, i8* noundef nonnull %4, i64 noundef %conv101) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.else
  %or.cond = select i1 %cmp11, i1 true, i1 %13
  br i1 %or.cond, label %if.end118, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %lor.lhs.false104
  %21 = load i32, i32* %out1_len, align 4, !tbaa !9
  %conv110 = sext i32 %21 to i64
  %22 = load i32, i32* %out3_len, align 4, !tbaa !9
  %conv112 = sext i32 %22 to i64
  %call113 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv110, i8* noundef nonnull %5, i64 noundef %conv112) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %if.end118

if.end118:                                        ; preds = %lor.lhs.false89, %land.lhs.true108, %lor.lhs.false104, %if.end70
  br label %err

err:                                              ; preds = %if.else, %land.lhs.true108, %if.then75, %lor.lhs.false82, %lor.lhs.false89, %lor.end, %lor.lhs.false26, %lor.lhs.false34, %lor.lhs.false42, %land.lhs.true, %lor.lhs.false57, %if.end, %entry, %if.end118
  %cipher.0 = phi %struct.evp_cipher_st* [ %call4, %if.end118 ], [ %call4, %lor.lhs.false89 ], [ %call4, %lor.lhs.false82 ], [ %call4, %if.then75 ], [ %call4, %land.lhs.true108 ], [ %call4, %if.else ], [ %call4, %lor.lhs.false57 ], [ %call4, %land.lhs.true ], [ %call4, %lor.lhs.false42 ], [ %call4, %lor.lhs.false34 ], [ %call4, %lor.lhs.false26 ], [ %call4, %lor.end ], [ %call4, %if.end ], [ null, %entry ]
  %ret.0 = phi i32 [ 1, %if.end118 ], [ 0, %lor.lhs.false89 ], [ 0, %lor.lhs.false82 ], [ 0, %if.then75 ], [ 0, %land.lhs.true108 ], [ 0, %if.else ], [ 0, %lor.lhs.false57 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.end ], [ 0, %if.end ], [ 0, %entry ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cipher_reinit_partialupdate(i32 noundef %test_id) #1 {
entry:
  %out1_len = alloca i32, align 4
  %out2_len = alloca i32, align 4
  %out3_len = alloca i32, align 4
  %out1 = alloca [256 x i8], align 16
  %out2 = alloca [256 x i8], align 16
  %out3 = alloca [256 x i8], align 16
  %0 = bitcast i32* %out1_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %out1_len, align 4, !tbaa !9
  %1 = bitcast i32* %out2_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %out2_len, align 4, !tbaa !9
  %2 = bitcast i32* %out3_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  store i32 0, i32* %out3_len, align 4, !tbaa !9
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %out1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %out2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #10
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %out3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #10
  %6 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @cipher_names, align 8, !tbaa !5
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %6) #9
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %test_id) #8
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %7 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* noundef %7) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call1) #8
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef %call1, i8* noundef null) #8
  %9 = bitcast %struct.evp_cipher_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i64 0, i64 0), i8* noundef %9) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef %call4) #8
  %div = sdiv i32 %call9, 2
  %call10 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call4) #8
  %and = and i64 %call10, 4210688
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.end8
  %call11 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp12 = icmp eq i32 %call11, 7
  br i1 %cmp12, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp15 = icmp eq i32 %call14, 65537
  br i1 %cmp15, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp18 = icmp eq i32 %call17, 65538
  br i1 %cmp18, label %err, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false16
  %call21 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call4, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__const.test_cipher_reinit.key, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_cipher_reinit.iv, i64 0, i64 0)) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv = zext i1 %cmp22 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end20
  %call26 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %3, i32* noundef nonnull %out1_len, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_cipher_reinit_partialupdate.in, i64 0, i64 0), i32 noundef %div) #8
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv28) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__const.test_cipher_reinit.key, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_cipher_reinit.iv, i64 0, i64 0)) #8
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call39 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %4, i32* noundef nonnull %out2_len, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_cipher_reinit_partialupdate.in, i64 0, i64 0), i32 noundef %div) #8
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv41) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false37
  %10 = load i32, i32* %out1_len, align 4, !tbaa !9
  %conv47 = sext i32 %10 to i64
  %11 = load i32, i32* %out2_len, align 4, !tbaa !9
  %conv49 = sext i32 %11 to i64
  %call50 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv47, i8* noundef nonnull %4, i64 noundef %conv49) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end45
  %call54 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call4) #8
  %cmp55.not = icmp eq i32 %call54, 65540
  br i1 %cmp55.not, label %if.end80, label %if.then57

if.then57:                                        ; preds = %if.end53
  %call58 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_cipher_reinit.iv, i64 0, i64 0)) #8
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv60) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.then57
  %call65 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %5, i32* noundef nonnull %out3_len, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_cipher_reinit_partialupdate.in, i64 0, i64 0), i32 noundef %div) #8
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv67) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %lor.lhs.false63
  %12 = load i32, i32* %out1_len, align 4, !tbaa !9
  %conv73 = sext i32 %12 to i64
  %13 = load i32, i32* %out3_len, align 4, !tbaa !9
  %conv75 = sext i32 %13 to i64
  %call76 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %conv73, i8* noundef nonnull %5, i64 noundef %conv75) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.end71, %if.end53
  br label %err

err:                                              ; preds = %if.end8, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false16, %if.end71, %if.then57, %lor.lhs.false63, %if.end45, %if.end20, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37, %if.end, %entry, %if.end80
  %cipher.0 = phi %struct.evp_cipher_st* [ %call4, %if.end80 ], [ %call4, %if.end71 ], [ %call4, %lor.lhs.false63 ], [ %call4, %if.then57 ], [ %call4, %if.end45 ], [ %call4, %lor.lhs.false37 ], [ %call4, %lor.lhs.false31 ], [ %call4, %lor.lhs.false25 ], [ %call4, %if.end20 ], [ %call4, %if.end ], [ null, %entry ], [ %call4, %lor.lhs.false16 ], [ %call4, %lor.lhs.false13 ], [ %call4, %lor.lhs.false ], [ %call4, %if.end8 ]
  %ret.0 = phi i32 [ 1, %if.end80 ], [ 0, %if.end71 ], [ 0, %lor.lhs.false63 ], [ 0, %if.then57 ], [ 0, %if.end45 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %if.end20 ], [ 0, %if.end ], [ 0, %entry ], [ 1, %lor.lhs.false16 ], [ 1, %lor.lhs.false13 ], [ 1, %lor.lhs.false ], [ 1, %if.end8 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2) #8
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kem_rsa_gen_recover() #1 {
entry:
  %pub = alloca %struct.evp_pkey_st*, align 8
  %priv = alloca %struct.evp_pkey_st*, align 8
  %secret = alloca [256 x i8], align 16
  %ct = alloca [256 x i8], align 16
  %unwrap = alloca [256 x i8], align 16
  %ctlen = alloca i64, align 8
  %unwraplen = alloca i64, align 8
  %secretlen = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  %1 = bitcast %struct.evp_pkey_st** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %ct, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %unwrap, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = bitcast i64* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  store i64 0, i64* %ctlen, align 8, !tbaa !11
  %6 = bitcast i64* %unwraplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  store i64 0, i64* %unwraplen, align 8, !tbaa !11
  %7 = bitcast i64* %secretlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  store i64 0, i64* %secretlen, align 8, !tbaa !11
  %call = call fastcc i32 @rsa_keygen(%struct.evp_pkey_st** noundef nonnull %pub, %struct.evp_pkey_st** noundef nonnull %priv) #9
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 535, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  %call2 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %8, %struct.evp_pkey_st* noundef %9, i8* noundef null) #8
  %10 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i64 0, i64 0), i8* noundef %10) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef %call2, %struct.ossl_param_st* noundef null) #8
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call10, i32 noundef 1) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %call2) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call14 to i8*
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 539, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i64 0, i64 0), i8* noundef %11) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call14, i8* noundef null, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef nonnull %secretlen) #8
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 541, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call18, i32 noundef 1) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %12 = load i64, i64* %ctlen, align 8, !tbaa !11
  %conv22 = trunc i64 %12 to i32
  %13 = load i64, i64* %secretlen, align 8, !tbaa !11
  %conv23 = trunc i64 %13 to i32
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 542, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv22, i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.end, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %14 = load i64, i64* %ctlen, align 8, !tbaa !11
  %conv27 = trunc i64 %14 to i32
  %call28 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 543, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv27, i32 noundef 256) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %call32 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call14, i8* noundef nonnull %3, i64* noundef nonnull %ctlen, i8* noundef nonnull %2, i64* noundef nonnull %secretlen) #8
  %call33 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call32, i32 noundef 1) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.end, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %15 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %call36 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %15, %struct.evp_pkey_st* noundef %16, i8* noundef null) #8
  %17 = bitcast %struct.evp_pkey_ctx_st* %call36 to i8*
  %call37 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.89, i64 0, i64 0), i8* noundef %17) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.end, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %call40 = call i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef %call36, %struct.ossl_param_st* noundef null) #8
  %call41 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 547, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call40, i32 noundef 1) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.end, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %call44 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call45 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call44, i32 noundef 1) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.end, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %18 = load i64, i64* %ctlen, align 8, !tbaa !11
  %call49 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call36, i8* noundef null, i64* noundef nonnull %unwraplen, i8* noundef nonnull %3, i64 noundef %18) #8
  %call50 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call49, i32 noundef 1) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.end, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %19 = load i64, i64* %ctlen, align 8, !tbaa !11
  %call55 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call36, i8* noundef nonnull %4, i64* noundef nonnull %unwraplen, i8* noundef nonnull %3, i64 noundef %19) #8
  %call56 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call55, i32 noundef 1) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true52
  %20 = load i64, i64* %unwraplen, align 8, !tbaa !11
  %21 = load i64, i64* %secretlen, align 8, !tbaa !11
  %call60 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %20, i8* noundef nonnull %2, i64 noundef %21) #8
  %tobool61 = icmp ne i32 %call60, 0
  %phi.cast = zext i1 %tobool61 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true52, %land.lhs.true47, %land.lhs.true43, %land.lhs.true39, %land.lhs.true35, %land.lhs.true30, %land.lhs.true26, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %sctx.0 = phi %struct.evp_pkey_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true52 ], [ %call2, %land.lhs.true47 ], [ %call2, %land.lhs.true43 ], [ %call2, %land.lhs.true39 ], [ %call2, %land.lhs.true35 ], [ %call2, %land.lhs.true30 ], [ %call2, %land.lhs.true26 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %rctx.0 = phi %struct.evp_pkey_ctx_st* [ %call36, %land.rhs ], [ %call36, %land.lhs.true52 ], [ %call36, %land.lhs.true47 ], [ %call36, %land.lhs.true43 ], [ %call36, %land.lhs.true39 ], [ %call36, %land.lhs.true35 ], [ null, %land.lhs.true30 ], [ null, %land.lhs.true26 ], [ null, %land.lhs.true21 ], [ null, %land.lhs.true17 ], [ null, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %dctx.0 = phi %struct.evp_pkey_ctx_st* [ %call14, %land.rhs ], [ %call14, %land.lhs.true52 ], [ %call14, %land.lhs.true47 ], [ %call14, %land.lhs.true43 ], [ %call14, %land.lhs.true39 ], [ %call14, %land.lhs.true35 ], [ %call14, %land.lhs.true30 ], [ %call14, %land.lhs.true26 ], [ %call14, %land.lhs.true21 ], [ %call14, %land.lhs.true17 ], [ %call14, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %22 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true35 ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true26 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %23) #8
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %24) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %rctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %dctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %sctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kem_rsa_params() #1 {
entry:
  %pub = alloca %struct.evp_pkey_st*, align 8
  %priv = alloca %struct.evp_pkey_st*, align 8
  %secret = alloca [256 x i8], align 16
  %ct = alloca [256 x i8], align 16
  %ctlen = alloca i64, align 8
  %secretlen = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  %1 = bitcast %struct.evp_pkey_st** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false)
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %ct, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %4 = bitcast i64* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  store i64 0, i64* %ctlen, align 8, !tbaa !11
  %5 = bitcast i64* %secretlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  store i64 0, i64* %secretlen, align 8, !tbaa !11
  %call = call fastcc i32 @rsa_keygen(%struct.evp_pkey_st** noundef nonnull %pub, %struct.evp_pkey_st** noundef nonnull %priv) #9
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  %call2 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %6, %struct.evp_pkey_st* noundef %7, i8* noundef null) #8
  %8 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 600, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i64 0, i64 0), i8* noundef %8) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %call6 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %9, %struct.evp_pkey_st* noundef %10, i8* noundef null) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 601, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.105, i64 0, i64 0), i8* noundef %11) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 603, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i32 noundef %call10, i32 noundef -2) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = call i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef null, %struct.ossl_param_st* noundef null) #8
  %call15 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef null, i8* noundef null, i64* noundef null, i8* noundef null, i64* noundef null) #8
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = call i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef null, %struct.ossl_param_st* noundef null) #8
  %call23 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef null, i8* noundef null, i64* noundef null, i8* noundef null, i64 noundef 0) #8
  %call27 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 608, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call26, i32 noundef 0) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %call30 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef null, i8* noundef null, i64* noundef null) #8
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i32 noundef %call30, i32 noundef -1) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %call34 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef null, i64* noundef null, i8* noundef null, i64 noundef 0) #8
  %call35 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call34, i32 noundef 0) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %call38 = call i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef %call2, %struct.ossl_param_st* noundef null) #8
  %call39 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call38, i32 noundef 1) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %call42 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call43 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 614, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call42, i32 noundef 1) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.end, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %call47 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %2, i64* noundef nonnull %secretlen, i8* noundef nonnull %3, i64 noundef 256) #8
  %call48 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call47, i32 noundef 0) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.end, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %12 = load i8, i8* %2, align 16, !tbaa !13
  %call51 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8 noundef zeroext %12, i8 noundef zeroext 0) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.end, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %call54 = call i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef %call2, %struct.ossl_param_st* noundef null) #8
  %call55 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 619, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call54, i32 noundef 1) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.end, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %call60 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %3, i64* noundef nonnull %ctlen, i8* noundef nonnull %2, i64* noundef nonnull %secretlen) #8
  %call61 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 620, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i32 noundef %call60, i32 noundef -2) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.end, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true57
  %call64 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #8
  %call65 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 622, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call64, i32 noundef 0) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.end, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %call68 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null) #8
  %call69 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 623, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call68, i32 noundef 0) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.end, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %call72 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call73 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call72, i32 noundef 0) #8
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.end, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %call76 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef null, i8* noundef null) #8
  %call77 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call76, i32 noundef 0) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.end, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %call80 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call81 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call80, i32 noundef 1) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.end, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %call86 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %3, i64* noundef nonnull %ctlen, i8* noundef nonnull %2, i64* noundef null) #8
  %call87 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 628, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call86, i32 noundef 1) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.end, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %land.lhs.true83
  %call90 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef null) #8
  %call91 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 629, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call90, i32 noundef 1) #8
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.end, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %land.lhs.true89
  %call94 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef null, i8* noundef null, i64* noundef nonnull %secretlen) #8
  %call95 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call94, i32 noundef 1) #8
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.end, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true93
  %call100 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %3, i64* noundef null, i8* noundef nonnull %2, i64* noundef nonnull %secretlen) #8
  %call101 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call100, i32 noundef 1) #8
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.end, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %land.lhs.true97
  %call104 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef null, i8* noundef null, i64* noundef null) #8
  %call105 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call104, i32 noundef 0) #8
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.end, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %call108 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef null) #8
  %call109 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call108, i32 noundef 1) #8
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.end, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %land.lhs.true107
  %call112 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef null, i8* noundef null, i64* noundef nonnull %secretlen) #8
  %call113 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 636, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call112, i32 noundef 1) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.end, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true111
  %call116 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef nonnull %secretlen) #8
  %call117 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 637, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call116, i32 noundef 1) #8
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.end, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %land.lhs.true115
  %call121 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %3, i64* noundef nonnull %ctlen, i8* noundef null, i64* noundef null) #8
  %call122 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call121, i32 noundef 0) #8
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.end, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %call127 = call i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef nonnull %3, i64* noundef null, i8* noundef nonnull %2, i64* noundef null) #8
  %call128 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 641, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call127, i32 noundef 1) #8
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.end, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %land.lhs.true124
  %call131 = call i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef %call6, %struct.ossl_param_st* noundef null) #8
  %call132 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call131, i32 noundef 1) #8
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %land.end, label %land.lhs.true134

land.lhs.true134:                                 ; preds = %land.lhs.true130
  %call135 = call i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #8
  %call136 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 644, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call135, i32 noundef 1) #8
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.end, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %land.lhs.true134
  %call141 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef nonnull %2, i64* noundef null, i8* noundef nonnull %3, i64 noundef 256) #8
  %call142 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 645, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call141, i32 noundef 1) #8
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %land.end, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %land.lhs.true138
  %call146 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef null, i64* noundef nonnull %secretlen, i8* noundef nonnull %3, i64 noundef 256) #8
  %call147 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 646, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call146, i32 noundef 1) #8
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %land.end, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %land.lhs.true144
  %13 = load i64, i64* %secretlen, align 8, !tbaa !11
  %conv150 = trunc i64 %13 to i32
  %call151 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %conv150, i32 noundef 256) #8
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %land.end, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %land.lhs.true149
  %call155 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef null, i64* noundef null, i8* noundef nonnull %3, i64 noundef 256) #8
  %call156 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call155, i32 noundef 0) #8
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.end, label %land.lhs.true158

land.lhs.true158:                                 ; preds = %land.lhs.true153
  %call160 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef nonnull %2, i64* noundef nonnull %secretlen, i8* noundef null, i64 noundef 0) #8
  %call161 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call160, i32 noundef 0) #8
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.end, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %land.lhs.true158
  %call165 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef nonnull %2, i64* noundef nonnull %secretlen, i8* noundef null, i64 noundef 256) #8
  %call166 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call165, i32 noundef 0) #8
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true163
  %call170 = call i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef %call6, i8* noundef nonnull %2, i64* noundef nonnull %secretlen, i8* noundef nonnull %3, i64 noundef 0) #8
  %call171 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 652, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.139, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call170, i32 noundef 0) #8
  %tobool172 = icmp ne i32 %call171, 0
  %phi.cast = zext i1 %tobool172 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true163, %land.lhs.true158, %land.lhs.true153, %land.lhs.true149, %land.lhs.true144, %land.lhs.true138, %land.lhs.true134, %land.lhs.true130, %land.lhs.true124, %land.lhs.true119, %land.lhs.true115, %land.lhs.true111, %land.lhs.true107, %land.lhs.true103, %land.lhs.true97, %land.lhs.true93, %land.lhs.true89, %land.lhs.true83, %land.lhs.true79, %land.lhs.true75, %land.lhs.true71, %land.lhs.true67, %land.lhs.true63, %land.lhs.true57, %land.lhs.true53, %land.lhs.true50, %land.lhs.true45, %land.lhs.true41, %land.lhs.true37, %land.lhs.true33, %land.lhs.true29, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %pubctx.0 = phi %struct.evp_pkey_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true163 ], [ %call2, %land.lhs.true158 ], [ %call2, %land.lhs.true153 ], [ %call2, %land.lhs.true149 ], [ %call2, %land.lhs.true144 ], [ %call2, %land.lhs.true138 ], [ %call2, %land.lhs.true134 ], [ %call2, %land.lhs.true130 ], [ %call2, %land.lhs.true124 ], [ %call2, %land.lhs.true119 ], [ %call2, %land.lhs.true115 ], [ %call2, %land.lhs.true111 ], [ %call2, %land.lhs.true107 ], [ %call2, %land.lhs.true103 ], [ %call2, %land.lhs.true97 ], [ %call2, %land.lhs.true93 ], [ %call2, %land.lhs.true89 ], [ %call2, %land.lhs.true83 ], [ %call2, %land.lhs.true79 ], [ %call2, %land.lhs.true75 ], [ %call2, %land.lhs.true71 ], [ %call2, %land.lhs.true67 ], [ %call2, %land.lhs.true63 ], [ %call2, %land.lhs.true57 ], [ %call2, %land.lhs.true53 ], [ %call2, %land.lhs.true50 ], [ %call2, %land.lhs.true45 ], [ %call2, %land.lhs.true41 ], [ %call2, %land.lhs.true37 ], [ %call2, %land.lhs.true33 ], [ %call2, %land.lhs.true29 ], [ %call2, %land.lhs.true25 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %privctx.0 = phi %struct.evp_pkey_ctx_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true163 ], [ %call6, %land.lhs.true158 ], [ %call6, %land.lhs.true153 ], [ %call6, %land.lhs.true149 ], [ %call6, %land.lhs.true144 ], [ %call6, %land.lhs.true138 ], [ %call6, %land.lhs.true134 ], [ %call6, %land.lhs.true130 ], [ %call6, %land.lhs.true124 ], [ %call6, %land.lhs.true119 ], [ %call6, %land.lhs.true115 ], [ %call6, %land.lhs.true111 ], [ %call6, %land.lhs.true107 ], [ %call6, %land.lhs.true103 ], [ %call6, %land.lhs.true97 ], [ %call6, %land.lhs.true93 ], [ %call6, %land.lhs.true89 ], [ %call6, %land.lhs.true83 ], [ %call6, %land.lhs.true79 ], [ %call6, %land.lhs.true75 ], [ %call6, %land.lhs.true71 ], [ %call6, %land.lhs.true67 ], [ %call6, %land.lhs.true63 ], [ %call6, %land.lhs.true57 ], [ %call6, %land.lhs.true53 ], [ %call6, %land.lhs.true50 ], [ %call6, %land.lhs.true45 ], [ %call6, %land.lhs.true41 ], [ %call6, %land.lhs.true37 ], [ %call6, %land.lhs.true33 ], [ %call6, %land.lhs.true29 ], [ %call6, %land.lhs.true25 ], [ %call6, %land.lhs.true21 ], [ %call6, %land.lhs.true17 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %14 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true163 ], [ 0, %land.lhs.true158 ], [ 0, %land.lhs.true153 ], [ 0, %land.lhs.true149 ], [ 0, %land.lhs.true144 ], [ 0, %land.lhs.true138 ], [ 0, %land.lhs.true134 ], [ 0, %land.lhs.true130 ], [ 0, %land.lhs.true124 ], [ 0, %land.lhs.true119 ], [ 0, %land.lhs.true115 ], [ 0, %land.lhs.true111 ], [ 0, %land.lhs.true107 ], [ 0, %land.lhs.true103 ], [ 0, %land.lhs.true97 ], [ 0, %land.lhs.true93 ], [ 0, %land.lhs.true89 ], [ 0, %land.lhs.true83 ], [ 0, %land.lhs.true79 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true71 ], [ 0, %land.lhs.true67 ], [ 0, %land.lhs.true63 ], [ 0, %land.lhs.true57 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true50 ], [ 0, %land.lhs.true45 ], [ 0, %land.lhs.true41 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pub, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %16) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pubctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %privctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kem_invalid_keytype() #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @gen_dh_key() #9
  %0 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %1, %struct.evp_pkey_st* noundef %call, i8* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.141, i64 0, i64 0), i8* noundef %2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %done, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef %call2, %struct.ossl_param_st* noundef null) #8
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i32 noundef %call7, i32 noundef -2) #8
  %tobool9.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool9.not to i32
  br label %done

done:                                             ; preds = %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end6 ]
  %sctx.0 = phi %struct.evp_pkey_ctx_st* [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end6 ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %sctx.0) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cipher_tdes_randkey() #1 {
entry:
  %key = alloca [24 x i8], align 16
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_cipher_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.149, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call) #8
  %3 = trunc i64 %call2 to i32
  %conv = and i32 %3, 512
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 575, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call6 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i64 0, i64 0), i8* noundef null) #8
  %5 = bitcast %struct.evp_cipher_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 576, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.152, i64 0, i64 0), i8* noundef %5) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call6) #8
  %6 = trunc i64 %call10 to i32
  %conv12 = and i32 %6, 512
  %call13 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.154, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv12, i32 noundef 0) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true9
  %call16 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %7 = bitcast %struct.evp_cipher_ctx_st* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8* noundef %7) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %call20 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call16, %struct.evp_cipher_st* noundef %call6, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 1) #8
  %cmp = icmp ne i32 %call20, 0
  %conv21 = zext i1 %cmp to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.155, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true19
  %call24 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %call16, i8* noundef nonnull %0) #8
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv26) #8
  %tobool28 = icmp ne i32 %call27, 0
  %phi.cast = zext i1 %tobool28 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true19, %land.lhs.true15, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call16, %land.rhs ], [ %call16, %land.lhs.true19 ], [ %call16, %land.lhs.true15 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %tdes_cipher.0 = phi %struct.evp_cipher_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true19 ], [ %call6, %land.lhs.true15 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %8 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %tdes_cipher.0) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** @cipher_names, align 8, !tbaa !5
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef nonnull @string_free) #8
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @libprov, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #8
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %2) #8
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %call3 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %3) #8
  ret void
}

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @string_free(i8* noundef %m) #1 {
entry:
  tail call void @CRYPTO_free(i8* noundef %m, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 758) #8
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @getname(i32 noundef %id) unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %id, 3
  br i1 %0, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %idxprom4 = zext i32 %id to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @__const.getname.name, i64 0, i64 %idxprom4
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare dso_local %struct.dsa_st* @DSA_new() local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @DSA_set0_pqg(%struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_dh_param_keygen(i32 noundef %tstid) unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %div = sdiv i32 %tstid, 9
  %div1 = sdiv i32 %tstid, 3
  %rem = srem i32 %div1, 3
  %rem2 = srem i32 %tstid, 3
  %tstid.off = add i32 %tstid, 8
  %1 = icmp ult i32 %tstid.off, 17
  %cmp3 = icmp eq i32 %rem, 1
  %or.cond = and i1 %1, %cmp3
  %cmp4 = icmp eq i32 %rem2, 2
  %spec.select = and i1 %cmp4, %or.cond
  %land.ext = zext i1 %spec.select to i32
  %call = tail call fastcc i8* @getname(i32 noundef %div) #9
  %call5 = tail call fastcc i8* @getname(i32 noundef %rem) #9
  %call6 = tail call fastcc i8* @getname(i32 noundef %rem2) #9
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i64 0, i64 0), i8* noundef %call, i8* noundef %call5, i8* noundef %call6) #8
  %call7 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %2 = bitcast %struct.evp_pkey_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call9 = tail call %struct.dh_st* @DH_new() #8
  %3 = bitcast %struct.dh_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef %3) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dh_safeprime_param_keygen.bn, i64 0, i64 %idxprom
  %4 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !5
  %call13 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %4) #8
  %5 = bitcast %struct.bignum_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* noundef %5) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %idxprom17 = sext i32 %rem to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dh_safeprime_param_keygen.bn, i64 0, i64 %idxprom17
  %6 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !5
  %call19 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %6) #8
  %7 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8* noundef %7) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %idxprom23 = sext i32 %rem2 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* @test_dh_safeprime_param_keygen.bn, i64 0, i64 %idxprom23
  %8 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx24, align 8, !tbaa !5
  %call25 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %8) #8
  %9 = bitcast %struct.bignum_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* noundef %9) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = tail call i32 @DH_set0_pqg(%struct.dh_st* noundef %call9, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call25) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv = zext i1 %cmp30 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false28
  %call33 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call7, i32 noundef 28, i8* noundef %3) #8
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv35) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call40 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %10, %struct.evp_pkey_st* noundef %call7, i8* noundef null) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call40 to i8*
  %call41 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0), i8* noundef %11) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end39
  %call44 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call40) #8
  %call45 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call44, i32 noundef 0) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call40, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %call49 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call48, i32 noundef %land.ext) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false47
  br i1 %spec.select, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end52
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call55 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %12) #8
  %13 = bitcast %struct.evp_pkey_st* %call55 to i8*
  %call56 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* noundef %13) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.then54
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call59 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %14, %struct.evp_pkey_st* noundef %call55) #8
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef %call59, i32 noundef 1) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false58, %if.end52
  %dup_pk.0 = phi %struct.evp_pkey_st* [ %call55, %lor.lhs.false58 ], [ null, %if.end52 ]
  br label %err

err:                                              ; preds = %if.then54, %lor.lhs.false58, %if.end39, %lor.lhs.false43, %lor.lhs.false47, %if.end, %entry, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false22, %lor.lhs.false28, %if.end64
  %dup_pk.1 = phi %struct.evp_pkey_st* [ %dup_pk.0, %if.end64 ], [ %call55, %lor.lhs.false58 ], [ %call55, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %dh.0 = phi %struct.dh_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ %call9, %if.end ], [ %call9, %lor.lhs.false28 ], [ %call9, %lor.lhs.false22 ], [ %call9, %lor.lhs.false16 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false ], [ null, %entry ]
  %gen_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call40, %if.end64 ], [ %call40, %lor.lhs.false58 ], [ %call40, %if.then54 ], [ %call40, %lor.lhs.false47 ], [ %call40, %lor.lhs.false43 ], [ %call40, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi i32 [ 1, %if.end64 ], [ 0, %lor.lhs.false58 ], [ 0, %if.then54 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end39 ], [ 0, %if.end ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call13, %lor.lhs.false28 ], [ %call13, %lor.lhs.false22 ], [ %call13, %lor.lhs.false16 ], [ %call13, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %q.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %g.0 = phi %struct.bignum_st* [ null, %if.end64 ], [ null, %lor.lhs.false58 ], [ null, %if.then54 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %if.end ], [ %call25, %lor.lhs.false28 ], [ %call25, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %dup_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %gen_ctx.0) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call7) #8
  call void @DH_free(%struct.dh_st* noundef %dh.0) #8
  call void @BN_free(%struct.bignum_st* noundef %g.0) #8
  call void @BN_free(%struct.bignum_st* noundef %q.0) #8
  call void @BN_free(%struct.bignum_st* noundef %p.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local %struct.dh_st* @DH_new() local_unnamed_addr #3

declare dso_local i32 @DH_set0_pqg(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef, %struct.x509_st** noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rsa_keygen(%struct.evp_pkey_st** noundef %pub, %struct.evp_pkey_st** nocapture noundef %priv) unnamed_addr #1 {
entry:
  %pub_der = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %len = alloca i64, align 8
  %0 = bitcast i8** %pub_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i8* null, i8** %pub_der, align 8, !tbaa !5
  %1 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i8* null, i8** %pp, align 8, !tbaa !5
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  store i64 0, i64* %len, align 8, !tbaa !11
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_st* (%struct.ossl_lib_ctx_st*, i8*, i8*, ...) @EVP_PKEY_Q_keygen(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0), i32 noundef 2048) #8
  store %struct.evp_pkey_st* %call, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %4 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 505, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.96, i64 0, i64 0), i8* noundef %4) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %priv, align 8, !tbaa !5
  %call2 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %5, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0), i8* noundef null) #8
  %6 = bitcast %struct.ossl_encoder_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.98, i64 0, i64 0), i8* noundef %6) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef %call2, i8** noundef nonnull %pub_der, i64* noundef nonnull %len) #8
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %7 = load i8*, i8** %pub_der, align 8, !tbaa !5
  store i8* %7, i8** %pp, align 8, !tbaa !5
  %8 = load i64, i64* %len, align 8, !tbaa !11
  %call9 = call %struct.evp_pkey_st* @d2i_PublicKey(i32 noundef 6, %struct.evp_pkey_st** noundef %pub, i8** noundef nonnull %pp, i64 noundef %8) #8
  %9 = bitcast %struct.evp_pkey_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.102, i64 0, i64 0), i8* noundef %9) #8
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false5
  %ret.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end ]
  %ectx.0 = phi %struct.ossl_encoder_ctx_st* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.end ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.0) #8
  %10 = load i8*, i8** %pub_der, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 519) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_kem_op(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_Q_keygen(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @d2i_PublicKey(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @gen_dh_key() unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #10
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params23 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i64 0, i64 0), i64 noundef 0) #8
  %arrayidx1 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #10
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2) #8
  %3 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #10
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !5
  %call = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* noundef null) #8
  %5 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 671, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.144, i64 0, i64 0), i8* noundef %5) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 672, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 673, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv10) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv16) #8
  br label %err

err:                                              ; preds = %lor.lhs.false13, %entry, %lor.lhs.false, %lor.lhs.false7
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.evp_pkey_st* %6
}

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{i64 0, i64 8, !5, i64 8, i64 4, !9, i64 16, i64 8, !5, i64 24, i64 8, !11, i64 32, i64 8, !11}
