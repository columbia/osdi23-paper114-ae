; ModuleID = 'test/ectest.c'
source_filename = "test/ectest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EC_builtin_curve = type { i32, i8* }
%struct.c2_curve_test = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.nistp_test_params = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ec_group_st = type opaque
%struct.ec_parameters_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bignum_st = type opaque
%struct.ec_point_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.ec_key_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque

@crv_len = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"test/ectest.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"curves = OPENSSL_malloc(sizeof(*curves) * crv_len)\00", align 1
@curves = internal unnamed_addr global %struct.EC_builtin_curve* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"EC_get_builtin_curves(curves, crv_len)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"parameter_test\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cofactor_range_test\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"cardinality_test\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"prime_field_tests\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"hybrid_point_encoding_test\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"char2_field_tests\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"char2_curve_test\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"nistp_single_test\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"internal_curve_test\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"internal_curve_test_method\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"group_field_test\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"check_named_curve_test\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"check_named_curve_lookup_test\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"check_ec_key_field_public_range_test\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"check_named_curve_from_ecparameters\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"ec_point_hex2point_test\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"custom_generator_test\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"custom_params_test\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"group = EC_GROUP_new_by_curve_name(NID_secp384r1)\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"ecparameters = EC_GROUP_get_ecparameters(group, NULL)\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"group2 = EC_GROUP_new_from_ecparameters(ecparameters)\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"EC_GROUP_cmp(group, group2, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"group = EC_GROUP_new_by_curve_name(NID_secp521r1)\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"(len = i2d_ECPKParameters(group, &buf)) >= 0\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"p521_named\00", align 1
@p521_named = internal constant [7 x i8] c"\06\05+\81\04\00#", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"p521_explicit\00", align 1
@p521_explicit = internal constant [455 x i8] c"0\82\01\C3\02\01\010M\06\07*\86H\CE=\01\01\02B\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF0\81\9F\04B\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC\04B\00Q\95>\B9a\8E\1C\9A\1F\92\9A!\A0\B6\85@\EE\A2\DAr[\99\B3\15\F3\B8\B4\89\91\8E\F1\09\E1V\199Q\EC~\93{\16R\C0\BD;\B1\BF\075s\DF\88=,4\F1\EFE\1F\D4kP?\00\03\15\00\D0\9E\88\00)\1C\B8S\96\CCg\1792\84\AA\A0\DAd\BA\04\81\85\04\00\C6\85\8E\06\B7\04\04\E9\CD\9E>\CBf#\95\B4B\9Cd\819\05?\B5!\F8(\AF`kM=\BA\A1K^w\EF\E7Y(\FE\1D\C1'\A2\FF\A8\DE3H\B3\C1\85jB\9B\F9~~1\C2\E5\BDf\01\189)jx\9A;\C0\04\\\8A_\B4,}\1B\D9\98\F5DIW\9BDh\17\AF\BD\17'>f,\97\EEr\99^\F4&@\C5P\B9\01?\AD\07a5<p\86\A2r\C2@\88\BE\94v\9F\D1fP\02B\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FAQ\86\87\83\BF/\96k\7F\CC\01H\F7\09\A5\D0;\B5\C9\B8\89\9CG\AE\BBo\B7\1E\918d\09\02\01\01", align 16
@params_cf_fail = internal constant [208 x i8] c"0\81\CD\02\01\010,\06\07*\86H\CE=\01\01\02!\00\C8\95'7\E8\E1\FD\CC\F9n\0C\A6!\C1}k\9DDB\EAsN\04\B6\ACbP\D03\C2\EA\130D\04 \C8\95'7\E8\E1\FD\CC\F9n\0C\A6!\C1}k\9DDB\EAsN\04\B6\ACbP\D03\C2\EA\10\04 \BF\A6\A8\05\1D\09\ACp9\BBM\B2\90\8A\15A\14\1D\11\86\9F\13\A2c\1A\DA\95\22M\02\15\0A\04A\04\AF\16q\F9\C4\C8Y\1D\A3o\E7\C3W\A1\FA\9FI|\11'\05\A0\7F\FF\F9\E0\E7\92\DD\9C$\8E\C7\B9Rq?\BC\7Fj\9F5p\E1'\D55\8A\13\FA\A83>\D4s\1C\14X\9E\C7\0A\87e\8D\02\11\04Zu\C0\C1r(\EB\D9\B1i\A1\0E4\A2!\01", align 16
@params_cf_pass = internal constant [208 x i8] c"0\81\CD\02\01\010,\06\07*\86H\CE=\01\01\02!\00\E5\00\1F\C5\CAq\9D\8E\F7\07KH7\F93-q\BFy\E7\DC\91\C2\FF\B6{\C3\93D\88\E6\910D\04 \E5\00\1F\C5\CAq\9D\8E\F7\07KH7\F93-q\BFy\E7\DC\91\C2\FF\B6{\C3\93D\88\E6\8E\04 \18\8CYW\C4\BC\85W\C3f\9F\89\D5\92\0D~B'\07d\AA&\ED\89\C4\09\05M\C7#G\DA\04A\04\1BkA\0B\F9\FBw\FDP\B7>#\A3\EC\9A;\091k\FA\F6\CE\1F\FF\EBW\93$p\F3\F4\BA~\FA\86n\19\89\E3UmZ\E9\C0=\BC\FB\AF\AD\D4~\A6\E5\FA\1AX\07\9E\8F\0D;\F78\CA\02\11\0C8\D9j\9F\89+\88w.\C2\E3\96\14\A8/O", align 16
@.str.31 = private unnamed_addr constant [62 x i8] c"group = d2i_ECPKParameters(NULL, &b1, sizeof(params_cf_fail))\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"EC_GROUP_get0_cofactor(group)\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"group = d2i_ECPKParameters(&group, &b2, sizeof(params_cf_pass))\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"BN_hex2bn(&cf, \2212bc94785251297abfafddf1565100da\22)\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"12bc94785251297abfafddf1565100da\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"cf\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Curve %s cardinality test\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"ctx = BN_CTX_new()\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"g1 = EC_GROUP_new_by_curve_name(nid)\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"g2_cf = BN_CTX_get(ctx)\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"EC_GROUP_get_curve(g1, g1_p, g1_a, g1_b, ctx)\00", align 1
@.str.42 = private unnamed_addr constant [82 x i8] c"EC_POINT_get_affine_coordinates(g1, EC_GROUP_get0_generator(g1), g1_x, g1_y, ctx)\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"BN_copy(g1_order, EC_GROUP_get0_order(g1))\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"EC_GROUP_get_cofactor(g1, g1_cf, ctx)\00", align 1
@.str.45 = private unnamed_addr constant [114 x i8] c"g2 = (is_binary) ? EC_GROUP_new_curve_GF2m(g1_p, g1_a, g1_b, ctx) : EC_GROUP_new_curve_GFp(g1_p, g1_a, g1_b, ctx)\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"g2_gen = EC_POINT_new(g2)\00", align 1
@.str.47 = private unnamed_addr constant [61 x i8] c"EC_POINT_set_affine_coordinates(g2, g2_gen, g1_x, g1_y, ctx)\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"EC_GROUP_set_generator(g2, g2_gen, g1_order, NULL)\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"EC_GROUP_get_cofactor(g2, g2_cf, ctx)\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"g1_cf\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"g2_cf\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"BN_set_word(g2_cf, 0)\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"EC_GROUP_set_generator(g2, g2_gen, g1_order, g2_cf)\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"BN_sub(g2_cf, g2_cf, BN_value_one())\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"EC_GROUP_set_generator(g2, g2_gen, NULL, NULL)\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"BN_set_word(g1_order, 0)\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"BN_lshift(g1_order, g1_p, 2)\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"a = BN_new()\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"b = BN_new()\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"BN_hex2bn(&p, \2217\22)\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"17\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&a, \221\22)\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&b, \221\22)\00", align 1
@.str.66 = private unnamed_addr constant [45 x i8] c"group = EC_GROUP_new_curve_GFp(p, a, b, ctx)\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"EC_GROUP_get_curve(group, p, a, b, ctx)\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"Curve defined by Weierstrass equation\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"     y^2 = x^3 + a*x + b (mod p)\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"P = EC_POINT_new(group)\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"Q = EC_POINT_new(group)\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"R = EC_POINT_new(group)\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"EC_POINT_set_to_infinity(group, P)\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"EC_POINT_is_at_infinity(group, P)\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"EC_POINT_oct2point(group, Q, buf, 1, ctx)\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"EC_POINT_add(group, P, P, Q, ctx)\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"x = BN_new()\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"y = BN_new()\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"z = BN_new()\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"yplusone = BN_new()\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&x, \22D\22)\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.86 = private unnamed_addr constant [57 x i8] c"EC_POINT_set_compressed_coordinates(group, Q, x, 1, ctx)\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"EC_POINT_is_on_curve(group, Q, ctx)\00", align 1
@.str.88 = private unnamed_addr constant [53 x i8] c"EC_POINT_get_affine_coordinates(group, Q, x, y, ctx)\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"Point is not on curve\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"A cyclic subgroup:\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"k--\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"     point at infinity\00", align 1
@.str.95 = private unnamed_addr constant [53 x i8] c"EC_POINT_get_affine_coordinates(group, P, x, y, ctx)\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"EC_POINT_copy(R, P)\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"EC_POINT_add(group, P, Q, R, ctx)\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"EC_POINT_oct2point(group, P, buf, len, ctx)\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, P, Q, ctx)\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"Generator as octet string, compressed form:\00", align 1
@.str.102 = private unnamed_addr constant [46 x i8] c"Generator as octet string, uncompressed form:\00", align 1
@.str.103 = private unnamed_addr constant [40 x i8] c"Generator as octet string, hybrid form:\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"EC_POINT_invert(group, P, ctx)\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, P, R, ctx)\00", align 1
@.str.106 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&p, \22FFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF\22)\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"BN_check_prime(p, ctx, NULL)\00", align 1
@.str.109 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&a, \22FFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC\22)\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC\00", align 1
@.str.111 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&b, \221C97BEFC\22 \2254BD7A8B65ACF89F81D4D4ADC565FA45\22)\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"EC_GROUP_set_curve(group, p, a, b, ctx)\00", align 1
@.str.114 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&x, \224A96B568\22 \228EF573284664698968C38BB913CBFC82\22)\00", align 1
@.str.115 = private unnamed_addr constant [41 x i8] c"4A96B5688EF573284664698968C38BB913CBFC82\00", align 1
@.str.116 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&y, \2223a62855\22 \223168947d59dcc912042351377ac5fb32\22)\00", align 1
@.str.117 = private unnamed_addr constant [41 x i8] c"23a628553168947d59dcc912042351377ac5fb32\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"BN_add(yplusone, y, BN_value_one())\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"EC_POINT_set_affine_coordinates(group, P, x, yplusone, ctx)\00", align 1
@.str.120 = private unnamed_addr constant [53 x i8] c"EC_POINT_set_affine_coordinates(group, P, x, y, ctx)\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"EC_POINT_is_on_curve(group, P, ctx)\00", align 1
@.str.122 = private unnamed_addr constant [63 x i8] c"BN_hex2bn(&z, \220100000000\22 \22000000000001F4C8F927AED3CA752257\22)\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"0100000000000000000001F4C8F927AED3CA752257\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"EC_GROUP_set_generator(group, P, z, BN_value_one())\00", align 1
@.str.125 = private unnamed_addr constant [34 x i8] c"SEC2 curve secp160r1 -- Generator\00", align 1
@.str.126 = private unnamed_addr constant [61 x i8] c"BN_hex2bn(&z, \2223a62855\22 \223168947d59dcc912042351377ac5fb32\22)\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.128 = private unnamed_addr constant [27 x i8] c"EC_GROUP_get_degree(group)\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"160\00", align 1
@.str.130 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&p, \22FFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF\22)\00", align 1
@.str.131 = private unnamed_addr constant [49 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF\00", align 1
@.str.132 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&a, \22FFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC\22)\00", align 1
@.str.133 = private unnamed_addr constant [49 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC\00", align 1
@.str.134 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&b, \2264210519E59C80E7\22 \220FA7E9AB72243049FEB8DEECC146B9B1\22)\00", align 1
@.str.135 = private unnamed_addr constant [49 x i8] c"64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1\00", align 1
@.str.136 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&x, \22188DA80EB03090F6\22 \227CBF20EB43A18800F4FF0AFD82FF1012\22)\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF1012\00", align 1
@.str.138 = private unnamed_addr constant [57 x i8] c"EC_POINT_set_compressed_coordinates(group, P, x, 1, ctx)\00", align 1
@.str.139 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&z, \22FFFFFFFFFFFFFFFF\22 \22FFFFFFFF99DEF836146BC9B1B4D22831\22)\00", align 1
@.str.140 = private unnamed_addr constant [49 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"NIST curve P-192 -- Generator\00", align 1
@.str.142 = private unnamed_addr constant [69 x i8] c"BN_hex2bn(&z, \2207192B95FFC8DA78\22 \22631011ED6B24CDD573F977A11E794811\22)\00", align 1
@.str.143 = private unnamed_addr constant [49 x i8] c"07192B95FFC8DA78631011ED6B24CDD573F977A11E794811\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"192\00", align 1
@.str.145 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&p, \22FFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFF000000000000000000000001\22)\00", align 1
@.str.146 = private unnamed_addr constant [57 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001\00", align 1
@.str.147 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&a, \22FFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE\22)\00", align 1
@.str.148 = private unnamed_addr constant [57 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE\00", align 1
@.str.149 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&b, \22B4050A850C04B3ABF5413256\22 \225044B0B7D7BFD8BA270B39432355FFB4\22)\00", align 1
@.str.150 = private unnamed_addr constant [57 x i8] c"B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4\00", align 1
@.str.151 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&x, \22B70E0CBD6BB4BF7F321390B9\22 \224A03C1D356C21122343280D6115C1D21\22)\00", align 1
@.str.152 = private unnamed_addr constant [57 x i8] c"B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21\00", align 1
@.str.153 = private unnamed_addr constant [57 x i8] c"EC_POINT_set_compressed_coordinates(group, P, x, 0, ctx)\00", align 1
@.str.154 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&z, \22FFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFF16A2E0B8F03E13DD29455C5C2A3D\22)\00", align 1
@.str.155 = private unnamed_addr constant [57 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"NIST curve P-224 -- Generator\00", align 1
@.str.157 = private unnamed_addr constant [77 x i8] c"BN_hex2bn(&z, \22BD376388B5F723FB4C22DFE6\22 \22CD4375A05A07476444D5819985007E34\22)\00", align 1
@.str.158 = private unnamed_addr constant [57 x i8] c"BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"224\00", align 1
@.str.160 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&p, \22FFFFFFFF000000010000000000000000\22 \2200000000FFFFFFFFFFFFFFFFFFFFFFFF\22)\00", align 1
@.str.161 = private unnamed_addr constant [65 x i8] c"FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.162 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&a, \22FFFFFFFF000000010000000000000000\22 \2200000000FFFFFFFFFFFFFFFFFFFFFFFC\22)\00", align 1
@.str.163 = private unnamed_addr constant [65 x i8] c"FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC\00", align 1
@.str.164 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&b, \225AC635D8AA3A93E7B3EBBD55769886BC\22 \22651D06B0CC53B0F63BCE3C3E27D2604B\22)\00", align 1
@.str.165 = private unnamed_addr constant [65 x i8] c"5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B\00", align 1
@.str.166 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&x, \226B17D1F2E12C4247F8BCE6E563A440F2\22 \2277037D812DEB33A0F4A13945D898C296\22)\00", align 1
@.str.167 = private unnamed_addr constant [65 x i8] c"6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296\00", align 1
@.str.168 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&z, \22FFFFFFFF00000000FFFFFFFFFFFFFFFF\22 \22BCE6FAADA7179E84F3B9CAC2FC632551\22)\00", align 1
@.str.169 = private unnamed_addr constant [65 x i8] c"FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"NIST curve P-256 -- Generator\00", align 1
@.str.171 = private unnamed_addr constant [85 x i8] c"BN_hex2bn(&z, \224FE342E2FE1A7F9B8EE7EB4A7C0F9E16\22 \222BCE33576B315ECECBB6406837BF51F5\22)\00", align 1
@.str.172 = private unnamed_addr constant [65 x i8] c"4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.174 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&p, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE\22 \22FFFFFFFF0000000000000000FFFFFFFF\22)\00", align 1
@.str.175 = private unnamed_addr constant [97 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF\00", align 1
@.str.176 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&a, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE\22 \22FFFFFFFF0000000000000000FFFFFFFC\22)\00", align 1
@.str.177 = private unnamed_addr constant [97 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC\00", align 1
@.str.178 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&b, \22B3312FA7E23EE7E4988E056BE3F82D19\22 \22181D9C6EFE8141120314088F5013875A\22 \22C656398D8A2ED19D2A85C8EDD3EC2AEF\22)\00", align 1
@.str.179 = private unnamed_addr constant [97 x i8] c"B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF\00", align 1
@.str.180 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&x, \22AA87CA22BE8B05378EB1C71EF320AD74\22 \226E1D3B628BA79B9859F741E082542A38\22 \225502F25DBF55296C3A545E3872760AB7\22)\00", align 1
@.str.181 = private unnamed_addr constant [97 x i8] c"AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7\00", align 1
@.str.182 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&z, \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFC7634D81F4372DDF\22 \22581A0DB248B0A77AECEC196ACCC52973\22)\00", align 1
@.str.183 = private unnamed_addr constant [97 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973\00", align 1
@.str.184 = private unnamed_addr constant [30 x i8] c"NIST curve P-384 -- Generator\00", align 1
@.str.185 = private unnamed_addr constant [120 x i8] c"BN_hex2bn(&z, \223617DE4A96262C6F5D9E98BF9292DC29\22 \22F8F41DBD289A147CE9DA3113B5F0B8C0\22 \220A60B1CE1D7E819D7A431D7C90EA0E5F\22)\00", align 1
@.str.186 = private unnamed_addr constant [97 x i8] c"3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"384\00", align 1
@.str.188 = private unnamed_addr constant [161 x i8] c"BN_hex2bn(&p, \221FF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22)\00", align 1
@.str.189 = private unnamed_addr constant [132 x i8] c"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.190 = private unnamed_addr constant [161 x i8] c"BN_hex2bn(&a, \221FF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC\22)\00", align 1
@.str.191 = private unnamed_addr constant [132 x i8] c"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC\00", align 1
@.str.192 = private unnamed_addr constant [161 x i8] c"BN_hex2bn(&b, \22051\22 \22953EB9618E1C9A1F929A21A0B68540EE\22 \22A2DA725B99B315F3B8B489918EF109E1\22 \2256193951EC7E937B1652C0BD3BB1BF07\22 \223573DF883D2C34F1EF451FD46B503F00\22)\00", align 1
@.str.193 = private unnamed_addr constant [132 x i8] c"051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00\00", align 1
@.str.194 = private unnamed_addr constant [160 x i8] c"BN_hex2bn(&x, \22C6\22 \22858E06B70404E9CD9E3ECB662395B442\22 \229C648139053FB521F828AF606B4D3DBA\22 \22A14B5E77EFE75928FE1DC127A2FFA8DE\22 \223348B3C1856A429BF97E7E31C2E5BD66\22)\00", align 1
@.str.195 = private unnamed_addr constant [131 x i8] c"C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66\00", align 1
@.str.196 = private unnamed_addr constant [161 x i8] c"BN_hex2bn(&z, \221FF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\22 \22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA\22 \2251868783BF2F966B7FCC0148F709A5D0\22 \223BB5C9B8899C47AEBB6FB71E91386409\22)\00", align 1
@.str.197 = private unnamed_addr constant [132 x i8] c"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409\00", align 1
@.str.198 = private unnamed_addr constant [30 x i8] c"NIST curve P-521 -- Generator\00", align 1
@.str.199 = private unnamed_addr constant [161 x i8] c"BN_hex2bn(&z, \22118\22 \2239296A789A3BC0045C8A5FB42C7D1BD9\22 \2298F54449579B446817AFBD17273E662C\22 \2297EE72995EF42640C550B9013FAD0761\22 \22353C7086A272C24088BE94769FD16650\22)\00", align 1
@.str.200 = private unnamed_addr constant [132 x i8] c"11839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"521\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"EC_POINT_copy(Q, P)\00", align 1
@.str.203 = private unnamed_addr constant [34 x i8] c"EC_POINT_is_at_infinity(group, Q)\00", align 1
@.str.204 = private unnamed_addr constant [31 x i8] c"EC_POINT_dbl(group, P, P, ctx)\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"EC_POINT_invert(group, Q, ctx)\00", align 1
@.str.206 = private unnamed_addr constant [34 x i8] c"EC_POINT_add(group, R, P, Q, ctx)\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"EC_POINT_add(group, R, R, Q, ctx)\00", align 1
@.str.208 = private unnamed_addr constant [34 x i8] c"EC_POINT_is_at_infinity(group, R)\00", align 1
@.str.209 = private unnamed_addr constant [28 x i8] c"combined multiplication ...\00", align 1
@.str.210 = private unnamed_addr constant [34 x i8] c"EC_GROUP_get_order(group, z, ctx)\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"BN_add(y, z, BN_value_one())\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"BN_rshift1(y, y)\00", align 1
@.str.213 = private unnamed_addr constant [55 x i8] c"EC_POINTs_mul(group, P, NULL, 2, points, scalars, ctx)\00", align 1
@.str.214 = private unnamed_addr constant [52 x i8] c"EC_POINTs_mul(group, R, z, 2, points, scalars, ctx)\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, R, Q, ctx)\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"BN_rand(y, BN_num_bits(y), 0, 0)\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"BN_add(z, z, y)\00", align 1
@.str.218 = private unnamed_addr constant [37 x i8] c"BN_rand(x, BN_num_bits(y) - 1, 0, 0)\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"BN_add(z, x, y)\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"scalar3 = BN_new()\00", align 1
@.str.221 = private unnamed_addr constant [55 x i8] c"EC_POINTs_mul(group, P, NULL, 4, points, scalars, ctx)\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"n1 = BN_new()\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"n2 = BN_new()\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"order = BN_new()\00", align 1
@.str.226 = private unnamed_addr constant [35 x i8] c"G = EC_GROUP_get0_generator(group)\00", align 1
@.str.227 = private unnamed_addr constant [24 x i8] c"S = EC_POINT_new(group)\00", align 1
@.str.228 = private unnamed_addr constant [38 x i8] c"EC_GROUP_get_order(group, order, ctx)\00", align 1
@.str.229 = private unnamed_addr constant [47 x i8] c"EC_POINT_mul(group, Q, order, NULL, NULL, ctx)\00", align 1
@.str.230 = private unnamed_addr constant [37 x i8] c"EC_GROUP_precompute_mult(group, ctx)\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"EC_POINT_copy(P, G)\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"BN_one(n1)\00", align 1
@.str.233 = private unnamed_addr constant [44 x i8] c"EC_POINT_mul(group, Q, n1, NULL, NULL, ctx)\00", align 1
@.str.234 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, Q, P, ctx)\00", align 1
@.str.235 = private unnamed_addr constant [22 x i8] c"BN_sub(n1, order, n1)\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"BN_set_word(n1, i)\00", align 1
@.str.237 = private unnamed_addr constant [44 x i8] c"EC_POINT_mul(group, P, n1, NULL, NULL, ctx)\00", align 1
@.str.238 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, P, G, ctx)\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"BN_sub(n1, n1, order)\00", align 1
@.str.240 = private unnamed_addr constant [41 x i8] c"EC_POINT_mul(group, Q, NULL, P, n1, ctx)\00", align 1
@.str.241 = private unnamed_addr constant [34 x i8] c"BN_add(n2, order, BN_value_one())\00", align 1
@.str.242 = private unnamed_addr constant [41 x i8] c"EC_POINT_mul(group, Q, NULL, P, n2, ctx)\00", align 1
@.str.243 = private unnamed_addr constant [24 x i8] c"BN_mul(n2, n1, n2, ctx)\00", align 1
@.str.244 = private unnamed_addr constant [34 x i8] c"EC_POINT_add(group, Q, Q, P, ctx)\00", align 1
@.str.245 = private unnamed_addr constant [55 x i8] c"EC_POINTs_mul(group, R, NULL, 2, points, scalars, ctx)\00", align 1
@.str.246 = private unnamed_addr constant [39 x i8] c"EC_POINT_dbl(group, S, points[0], ctx)\00", align 1
@.str.247 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(group, R, S, ctx)\00", align 1
@.str.248 = private unnamed_addr constant [55 x i8] c"EC_POINTs_mul(group, P, NULL, 6, points, scalars, ctx)\00", align 1
@.str.249 = private unnamed_addr constant [24 x i8] c"allowing precomputation\00", align 1
@.str.250 = private unnamed_addr constant [23 x i8] c"without precomputation\00", align 1
@.str.251 = private unnamed_addr constant [19 x i8] c"BN_dec2bn(&x, \220\22)\00", align 1
@.str.252 = private unnamed_addr constant [19 x i8] c"BN_dec2bn(&y, \221\22)\00", align 1
@.str.253 = private unnamed_addr constant [50 x i8] c"group = EC_GROUP_new_by_curve_name(NID_sect571k1)\00", align 1
@.str.254 = private unnamed_addr constant [28 x i8] c"point = EC_POINT_new(group)\00", align 1
@.str.255 = private unnamed_addr constant [58 x i8] c"EC_POINT_set_affine_coordinates(group, point, x, y, NULL)\00", align 1
@.str.256 = private unnamed_addr constant [81 x i8] c"(len = EC_POINT_point2oct(group, point, POINT_CONVERSION_HYBRID, NULL, 0, NULL))\00", align 1
@.str.257 = private unnamed_addr constant [26 x i8] c"buf = OPENSSL_malloc(len)\00", align 1
@.str.258 = private unnamed_addr constant [74 x i8] c"EC_POINT_point2oct(group, point, POINT_CONVERSION_HYBRID, buf, len, NULL)\00", align 1
@.str.259 = private unnamed_addr constant [49 x i8] c"EC_POINT_oct2point(group, point, buf, len, NULL)\00", align 1
@.str.260 = private unnamed_addr constant [20 x i8] c"BN_hex2bn(&p, \2213\22)\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.262 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&a, \223\22)\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.264 = private unnamed_addr constant [46 x i8] c"group = EC_GROUP_new_curve_GF2m(p, a, b, ctx)\00", align 1
@.str.265 = private unnamed_addr constant [41 x i8] c"     y^2 + x*y = x^3 + a*x^2 + b (mod p)\00", align 1
@.str.266 = private unnamed_addr constant [15 x i8] c"cof = BN_new()\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&x, \226\22)\00", align 1
@.str.268 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.269 = private unnamed_addr constant [19 x i8] c"BN_hex2bn(&y, \228\22)\00", align 1
@.str.270 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.271 = private unnamed_addr constant [53 x i8] c"EC_POINT_set_affine_coordinates(group, Q, x, y, ctx)\00", align 1
@.str.272 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@char2_curve_tests = internal unnamed_addr constant [10 x %struct.c2_curve_test] [%struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.287, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 163 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.293, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 163 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.298, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.300, i32 0, i32 0), i32 233 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.305, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 233 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.310, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.300, i32 0, i32 0), i32 283 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.316, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 283 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.321, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.300, i32 0, i32 0), i32 409 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.327, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 409 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.332, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.300, i32 0, i32 0), i32 571 }, %struct.c2_curve_test { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.338, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.289, i32 0, i32 0), i32 571 }], align 16
@.str.273 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&p, test->p)\00", align 1
@.str.274 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&a, test->a)\00", align 1
@.str.275 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&b, test->b)\00", align 1
@.str.276 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&x, test->x)\00", align 1
@.str.277 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&y, test->y)\00", align 1
@.str.278 = private unnamed_addr constant [27 x i8] c"BN_hex2bn(&z, test->order)\00", align 1
@.str.279 = private unnamed_addr constant [27 x i8] c"BN_hex2bn(&cof, test->cof)\00", align 1
@.str.280 = private unnamed_addr constant [41 x i8] c"EC_GROUP_set_generator(group, P, z, cof)\00", align 1
@.str.281 = private unnamed_addr constant [17 x i8] c"%s -- Generator:\00", align 1
@.str.282 = private unnamed_addr constant [13 x i8] c"test->degree\00", align 1
@.str.283 = private unnamed_addr constant [55 x i8] c"EC_POINTs_mul(group, P, NULL, 3, points, scalars, ctx)\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"NIST curve K-163\00", align 1
@.str.285 = private unnamed_addr constant [43 x i8] c"0800000000000000000000000000000000000000C9\00", align 1
@.str.286 = private unnamed_addr constant [43 x i8] c"02FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE8\00", align 1
@.str.287 = private unnamed_addr constant [43 x i8] c"0289070FB05D38FF58321F2E800536D538CCDAA3D9\00", align 1
@.str.288 = private unnamed_addr constant [43 x i8] c"04000000000000000000020108A2E0CC0D99F8A5EF\00", align 1
@.str.289 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.290 = private unnamed_addr constant [17 x i8] c"NIST curve B-163\00", align 1
@.str.291 = private unnamed_addr constant [43 x i8] c"020A601907B8C953CA1481EB10512F78744A3205FD\00", align 1
@.str.292 = private unnamed_addr constant [43 x i8] c"03F0EBA16286A2D57EA0991168D4994637E8343E36\00", align 1
@.str.293 = private unnamed_addr constant [43 x i8] c"00D51FBC6C71A0094FA2CDD545B11C5C0C797324F1\00", align 1
@.str.294 = private unnamed_addr constant [43 x i8] c"040000000000000000000292FE77E70C12A4234C33\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"NIST curve K-233\00", align 1
@.str.296 = private unnamed_addr constant [61 x i8] c"020000000000000000000000000000000000000004000000000000000001\00", align 1
@.str.297 = private unnamed_addr constant [61 x i8] c"017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD6126\00", align 1
@.str.298 = private unnamed_addr constant [61 x i8] c"01DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3\00", align 1
@.str.299 = private unnamed_addr constant [61 x i8] c"008000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF\00", align 1
@.str.300 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.301 = private unnamed_addr constant [17 x i8] c"NIST curve B-233\00", align 1
@.str.302 = private unnamed_addr constant [61 x i8] c"000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.303 = private unnamed_addr constant [61 x i8] c"0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD\00", align 1
@.str.304 = private unnamed_addr constant [61 x i8] c"00FAC9DFCBAC8313BB2139F1BB755FEF65BC391F8B36F8F8EB7371FD558B\00", align 1
@.str.305 = private unnamed_addr constant [61 x i8] c"01006A08A41903350678E58528BEBF8A0BEFF867A7CA36716F7E01F81052\00", align 1
@.str.306 = private unnamed_addr constant [61 x i8] c"01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7\00", align 1
@.str.307 = private unnamed_addr constant [17 x i8] c"NIST curve K-283\00", align 1
@.str.308 = private unnamed_addr constant [73 x i8] c"0800000000000000000000000000000000000000000000000000000000000000000010A1\00", align 1
@.str.309 = private unnamed_addr constant [73 x i8] c"0503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC2458492836\00", align 1
@.str.310 = private unnamed_addr constant [73 x i8] c"01CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259\00", align 1
@.str.311 = private unnamed_addr constant [73 x i8] c"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"NIST curve B-283\00", align 1
@.str.313 = private unnamed_addr constant [73 x i8] c"000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.314 = private unnamed_addr constant [73 x i8] c"027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5\00", align 1
@.str.315 = private unnamed_addr constant [73 x i8] c"05F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B12053\00", align 1
@.str.316 = private unnamed_addr constant [73 x i8] c"03676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4\00", align 1
@.str.317 = private unnamed_addr constant [73 x i8] c"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307\00", align 1
@.str.318 = private unnamed_addr constant [17 x i8] c"NIST curve K-409\00", align 1
@.str.319 = private unnamed_addr constant [105 x i8] c"02000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000001\00", align 1
@.str.320 = private unnamed_addr constant [105 x i8] c"0060F05F658F49C1AD3AB1890F7184210EFD0987E307C84C27ACCFB8F9F67CC2C460189EB5AAAA62EE222EB1B35540CFE9023746\00", align 1
@.str.321 = private unnamed_addr constant [105 x i8] c"01E369050B7C4E42ACBA1DACBF04299C3460782F918EA427E6325165E9EA10E3DA5F6C42E9C55215AA9CA27A5863EC48D8E0286B\00", align 1
@.str.322 = private unnamed_addr constant [105 x i8] c"007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF\00", align 1
@.str.323 = private unnamed_addr constant [17 x i8] c"NIST curve B-409\00", align 1
@.str.324 = private unnamed_addr constant [105 x i8] c"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.325 = private unnamed_addr constant [105 x i8] c"0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F\00", align 1
@.str.326 = private unnamed_addr constant [105 x i8] c"015D4860D088DDB3496B0C6064756260441CDE4AF1771D4DB01FFE5B34E59703DC255A868A1180515603AEAB60794E54BB7996A7\00", align 1
@.str.327 = private unnamed_addr constant [105 x i8] c"0061B1CFAB6BE5F32BBFA78324ED106A7636B9C5A7BD198D0158AA4F5488D08F38514F1FDF4B4F40D2181B3681C364BA0273C706\00", align 1
@.str.328 = private unnamed_addr constant [105 x i8] c"010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173\00", align 1
@.str.329 = private unnamed_addr constant [17 x i8] c"NIST curve K-571\00", align 1
@.str.330 = private unnamed_addr constant [144 x i8] c"80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000425\00", align 1
@.str.331 = private unnamed_addr constant [145 x i8] c"026EB7A859923FBC82189631F8103FE4AC9CA2970012D5D46024804801841CA44370958493B205E647DA304DB4CEB08CBBD1BA39494776FB988B47174DCA88C7E2945283A01C8972\00", align 1
@.str.332 = private unnamed_addr constant [145 x i8] c"0349DC807F4FBF374F4AEADE3BCA95314DD58CEC9F307A54FFC61EFC006D8A2C9D4979C0AC44AEA74FBEBBB9F772AEDCB620B01A7BA7AF1B320430C8591984F601CD4C143EF1C7A3\00", align 1
@.str.333 = private unnamed_addr constant [145 x i8] c"020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001\00", align 1
@.str.334 = private unnamed_addr constant [17 x i8] c"NIST curve B-571\00", align 1
@.str.335 = private unnamed_addr constant [145 x i8] c"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.336 = private unnamed_addr constant [145 x i8] c"02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A\00", align 1
@.str.337 = private unnamed_addr constant [145 x i8] c"0303001D34B856296C16C0D40D3CD7750A93D1D2955FA80AA5F40FC8DB7B2ABDBDE53950F4C0D293CDD711A35B67FB1499AE60038614F1394ABFA3B4C850D927E1E7769C8EEC2D19\00", align 1
@.str.338 = private unnamed_addr constant [145 x i8] c"037BF27342DA639B6DCCFFFEB73D69D78C6C27A6009CBBCA1980F8533921E8A684423E43BAB08A576291AF8F461BB2A8B3531D2F0485C19B16E2F1516E23DD3C1A4827AF1B8AC15B\00", align 1
@.str.339 = private unnamed_addr constant [145 x i8] c"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47\00", align 1
@nistp_tests_params = internal unnamed_addr constant [3 x %struct.nistp_test_params] [%struct.nistp_test_params { i32 713, i32 224, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.374, i32 0, i32 0) }, %struct.nistp_test_params { i32 415, i32 256, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.383, i32 0, i32 0) }, %struct.nistp_test_params { i32 716, i32 521, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.392, i32 0, i32 0) }], align 16
@.str.340 = private unnamed_addr constant [44 x i8] c"NIST curve P-%d (optimised implementation):\00", align 1
@.str.341 = private unnamed_addr constant [13 x i8] c"m = BN_new()\00", align 1
@.str.342 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.343 = private unnamed_addr constant [46 x i8] c"NISTP = EC_GROUP_new_by_curve_name(test->nid)\00", align 1
@.str.344 = private unnamed_addr constant [40 x i8] c"EC_GROUP_set_curve(NISTP, p, a, b, ctx)\00", align 1
@.str.345 = private unnamed_addr constant [24 x i8] c"G = EC_POINT_new(NISTP)\00", align 1
@.str.346 = private unnamed_addr constant [24 x i8] c"P = EC_POINT_new(NISTP)\00", align 1
@.str.347 = private unnamed_addr constant [24 x i8] c"Q = EC_POINT_new(NISTP)\00", align 1
@.str.348 = private unnamed_addr constant [30 x i8] c"Q_CHECK = EC_POINT_new(NISTP)\00", align 1
@.str.349 = private unnamed_addr constant [24 x i8] c"BN_hex2bn(&x, test->Qx)\00", align 1
@.str.350 = private unnamed_addr constant [24 x i8] c"BN_hex2bn(&y, test->Qy)\00", align 1
@.str.351 = private unnamed_addr constant [66 x i8] c"EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x, yplusone, ctx)\00", align 1
@.str.352 = private unnamed_addr constant [59 x i8] c"EC_POINT_set_affine_coordinates(NISTP, Q_CHECK, x, y, ctx)\00", align 1
@.str.353 = private unnamed_addr constant [24 x i8] c"BN_hex2bn(&x, test->Gx)\00", align 1
@.str.354 = private unnamed_addr constant [24 x i8] c"BN_hex2bn(&y, test->Gy)\00", align 1
@.str.355 = private unnamed_addr constant [53 x i8] c"EC_POINT_set_affine_coordinates(NISTP, G, x, y, ctx)\00", align 1
@.str.356 = private unnamed_addr constant [31 x i8] c"BN_hex2bn(&order, test->order)\00", align 1
@.str.357 = private unnamed_addr constant [56 x i8] c"EC_GROUP_set_generator(NISTP, G, order, BN_value_one())\00", align 1
@.str.358 = private unnamed_addr constant [27 x i8] c"EC_GROUP_get_degree(NISTP)\00", align 1
@.str.359 = private unnamed_addr constant [23 x i8] c"NIST test vectors ... \00", align 1
@.str.360 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&n, test->d)\00", align 1
@.str.361 = private unnamed_addr constant [37 x i8] c"EC_POINT_cmp(NISTP, Q, Q_CHECK, ctx)\00", align 1
@.str.362 = private unnamed_addr constant [31 x i8] c"EC_POINT_dbl(NISTP, P, G, ctx)\00", align 1
@.str.363 = private unnamed_addr constant [56 x i8] c"EC_GROUP_set_generator(NISTP, P, order, BN_value_one())\00", align 1
@.str.364 = private unnamed_addr constant [19 x i8] c"BN_rshift(m, n, 1)\00", align 1
@.str.365 = private unnamed_addr constant [37 x i8] c"EC_GROUP_have_precompute_mult(NISTP)\00", align 1
@.str.366 = private unnamed_addr constant [37 x i8] c"EC_GROUP_precompute_mult(NISTP, ctx)\00", align 1
@.str.367 = private unnamed_addr constant [19 x i8] c"BN_set_word(m, 32)\00", align 1
@.str.368 = private unnamed_addr constant [19 x i8] c"BN_set_word(n, 31)\00", align 1
@.str.369 = private unnamed_addr constant [31 x i8] c"EC_POINT_invert(NISTP, P, ctx)\00", align 1
@.str.370 = private unnamed_addr constant [37 x i8] c"EC_POINT_mul(NISTP, Q, m, P, n, ctx)\00", align 1
@.str.371 = private unnamed_addr constant [31 x i8] c"EC_POINT_cmp(NISTP, Q, G, ctx)\00", align 1
@.str.372 = private unnamed_addr constant [57 x i8] c"E84FB0B8E7000CB657D7973CF6B42ED78B301674276DF744AF130B3E\00", align 1
@.str.373 = private unnamed_addr constant [57 x i8] c"4376675C6FC5612C21A0FF2D2A89D2987DF7A2BC52183B5982298555\00", align 1
@.str.374 = private unnamed_addr constant [57 x i8] c"3F0C488E987C80BE0FEE521F8D90BE6034EC69AE11CA72AA777481E8\00", align 1
@.str.375 = private unnamed_addr constant [65 x i8] c"ffffffff00000001000000000000000000000000ffffffffffffffffffffffff\00", align 1
@.str.376 = private unnamed_addr constant [65 x i8] c"ffffffff00000001000000000000000000000000fffffffffffffffffffffffc\00", align 1
@.str.377 = private unnamed_addr constant [65 x i8] c"5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b\00", align 1
@.str.378 = private unnamed_addr constant [65 x i8] c"b7e08afdfe94bad3f1dc8c734798ba1c62b3a0ad1e9ea2a38201cd0889bc7a19\00", align 1
@.str.379 = private unnamed_addr constant [65 x i8] c"3603f747959dbf7a4bb226e41928729063adc7ae43529e61b563bbc606cc5e09\00", align 1
@.str.380 = private unnamed_addr constant [65 x i8] c"6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296\00", align 1
@.str.381 = private unnamed_addr constant [65 x i8] c"4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5\00", align 1
@.str.382 = private unnamed_addr constant [65 x i8] c"ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551\00", align 1
@.str.383 = private unnamed_addr constant [65 x i8] c"c477f9f65c22cce20657faa5b2d1d8122336f851a508a1ed04e479c34985bf96\00", align 1
@.str.384 = private unnamed_addr constant [132 x i8] c"1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff\00", align 1
@.str.385 = private unnamed_addr constant [132 x i8] c"1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc\00", align 1
@.str.386 = private unnamed_addr constant [132 x i8] c"051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00\00", align 1
@.str.387 = private unnamed_addr constant [133 x i8] c"0098e91eef9a68452822309c52fab453f5f117c1da8ed796b255e9ab8f6410cca16e59df403a6bdc6ca467a37056b1e54b3005d8ac030decfeb68df18b171885d5c4\00", align 1
@.str.388 = private unnamed_addr constant [133 x i8] c"0164350c321aecfc1cca1ba4364c9b15656150b4b78d6a48d7d28e7f31985ef17be8554376b72900712c4b83ad668327231526e313f5f092999a4632fd50d946bc2e\00", align 1
@.str.389 = private unnamed_addr constant [131 x i8] c"c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66\00", align 1
@.str.390 = private unnamed_addr constant [132 x i8] c"11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650\00", align 1
@.str.391 = private unnamed_addr constant [132 x i8] c"1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa51868783bf2f966b7fcc0148f709a5d03bb5c9b8899c47aebb6fb71e91386409\00", align 1
@.str.392 = private unnamed_addr constant [133 x i8] c"0100085f47b8e1b8b11b7eb33028c0b2888e304bfc98501955b45bba1478dc184eeedf09b86a5f7c21994406072787205e69a63709fe35aa93ba333514b24f961722\00", align 1
@.str.393 = private unnamed_addr constant [40 x i8] c"group = EC_GROUP_new_by_curve_name(nid)\00", align 1
@.str.394 = private unnamed_addr constant [48 x i8] c"EC_GROUP_new_curve_name() failed with curve %s\0A\00", align 1
@.str.395 = private unnamed_addr constant [28 x i8] c"EC_GROUP_check(group, NULL)\00", align 1
@.str.396 = private unnamed_addr constant [39 x i8] c"EC_GROUP_check() failed with curve %s\0A\00", align 1
@.str.397 = private unnamed_addr constant [17 x i8] c"Curve %s failed\0A\00", align 1
@.str.398 = private unnamed_addr constant [133 x i8] c"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@check_named_curve_test.invalid_seed = internal constant [25 x i8] c"THIS IS NOT A VALID SEED\00", align 16
@.str.399 = private unnamed_addr constant [22 x i8] c"bn_ctx = BN_CTX_new()\00", align 1
@.str.400 = private unnamed_addr constant [28 x i8] c"gtest = EC_GROUP_dup(group)\00", align 1
@.str.401 = private unnamed_addr constant [19 x i8] c"group_p = BN_new()\00", align 1
@.str.402 = private unnamed_addr constant [19 x i8] c"group_a = BN_new()\00", align 1
@.str.403 = private unnamed_addr constant [19 x i8] c"group_b = BN_new()\00", align 1
@.str.404 = private unnamed_addr constant [26 x i8] c"group_cofactor = BN_new()\00", align 1
@.str.405 = private unnamed_addr constant [43 x i8] c"group_gen = EC_GROUP_get0_generator(group)\00", align 1
@.str.406 = private unnamed_addr constant [41 x i8] c"group_order = EC_GROUP_get0_order(group)\00", align 1
@.str.407 = private unnamed_addr constant [51 x i8] c"EC_GROUP_get_cofactor(group, group_cofactor, NULL)\00", align 1
@.str.408 = private unnamed_addr constant [59 x i8] c"EC_GROUP_get_curve(group, group_p, group_a, group_b, NULL)\00", align 1
@.str.409 = private unnamed_addr constant [43 x i8] c"other_gen = EC_POINT_dup(group_gen, group)\00", align 1
@.str.410 = private unnamed_addr constant [59 x i8] c"EC_POINT_add(group, other_gen, group_gen, group_gen, NULL)\00", align 1
@.str.411 = private unnamed_addr constant [34 x i8] c"other_order = BN_dup(group_order)\00", align 1
@.str.412 = private unnamed_addr constant [28 x i8] c"BN_add_word(other_order, 1)\00", align 1
@.str.413 = private unnamed_addr constant [26 x i8] c"other_a = BN_dup(group_a)\00", align 1
@.str.414 = private unnamed_addr constant [24 x i8] c"BN_add_word(other_a, 1)\00", align 1
@.str.415 = private unnamed_addr constant [26 x i8] c"other_b = BN_dup(group_b)\00", align 1
@.str.416 = private unnamed_addr constant [24 x i8] c"BN_add_word(other_b, 1)\00", align 1
@.str.417 = private unnamed_addr constant [40 x i8] c"other_cofactor = BN_dup(group_cofactor)\00", align 1
@.str.418 = private unnamed_addr constant [31 x i8] c"BN_add_word(other_cofactor, 1)\00", align 1
@.str.419 = private unnamed_addr constant [26 x i8] c"other_p = BN_dup(group_p)\00", align 1
@.str.420 = private unnamed_addr constant [29 x i8] c"BN_lshift1(other_p, other_p)\00", align 1
@.str.421 = private unnamed_addr constant [120 x i8] c"BN_copy(other_p, BN_ucmp(BN_get0_nist_prime_192(), other_p) == 0 ? BN_get0_nist_prime_256() : BN_get0_nist_prime_192())\00", align 1
@.str.422 = private unnamed_addr constant [43 x i8] c"EC_GROUP_check_named_curve(group, 0, NULL)\00", align 1
@.str.423 = private unnamed_addr constant [4 x i8] c"nid\00", align 1
@.str.424 = private unnamed_addr constant [43 x i8] c"EC_GROUP_check_named_curve(group, 1, NULL)\00", align 1
@.str.425 = private unnamed_addr constant [49 x i8] c"EC_curve_nid2nist(nid) != NULL ? nid : NID_undef\00", align 1
@.str.426 = private unnamed_addr constant [57 x i8] c"EC_GROUP_set_seed(group, invalid_seed, invalid_seed_len)\00", align 1
@.str.427 = private unnamed_addr constant [17 x i8] c"invalid_seed_len\00", align 1
@.str.428 = private unnamed_addr constant [34 x i8] c"EC_GROUP_set_seed(group, NULL, 0)\00", align 1
@.str.429 = private unnamed_addr constant [43 x i8] c"EC_GROUP_check_named_curve(gtest, 0, NULL)\00", align 1
@.str.430 = private unnamed_addr constant [70 x i8] c"EC_GROUP_set_generator(gtest, other_gen, group_order, group_cofactor)\00", align 1
@.str.431 = private unnamed_addr constant [70 x i8] c"EC_GROUP_set_generator(gtest, group_gen, other_order, group_cofactor)\00", align 1
@.str.432 = private unnamed_addr constant [63 x i8] c"EC_GROUP_set_generator(gtest, group_gen, NULL, group_cofactor)\00", align 1
@.str.433 = private unnamed_addr constant [70 x i8] c"EC_GROUP_set_generator(gtest, group_gen, group_order, other_cofactor)\00", align 1
@.str.434 = private unnamed_addr constant [60 x i8] c"EC_GROUP_set_generator(gtest, group_gen, group_order, NULL)\00", align 1
@.str.435 = private unnamed_addr constant [70 x i8] c"EC_GROUP_set_generator(gtest, group_gen, group_order, group_cofactor)\00", align 1
@.str.436 = private unnamed_addr constant [59 x i8] c"EC_GROUP_set_curve(gtest, group_p, group_a, group_b, NULL)\00", align 1
@.str.437 = private unnamed_addr constant [36 x i8] c"g = EC_GROUP_new_by_curve_name(nid)\00", align 1
@.str.438 = private unnamed_addr constant [39 x i8] c"p = EC_GROUP_get_ecparameters(g, NULL)\00", align 1
@.str.439 = private unnamed_addr constant [38 x i8] c"g = EC_GROUP_new_from_ecparameters(p)\00", align 1
@.str.440 = private unnamed_addr constant [44 x i8] c"rv = EC_GROUP_check_named_curve(g, 0, NULL)\00", align 1
@.str.441 = private unnamed_addr constant [36 x i8] c"ga = EC_GROUP_new_by_curve_name(rv)\00", align 1
@.str.442 = private unnamed_addr constant [41 x i8] c"pa = EC_GROUP_get_ecparameters(ga, NULL)\00", align 1
@.str.443 = private unnamed_addr constant [40 x i8] c"ga = EC_GROUP_new_from_ecparameters(pa)\00", align 1
@.str.444 = private unnamed_addr constant [25 x i8] c"EC_GROUP_cmp(g, ga, ctx)\00", align 1
@.str.445 = private unnamed_addr constant [47 x i8] c"key = EC_KEY_new_by_curve_name(curves[id].nid)\00", align 1
@.str.446 = private unnamed_addr constant [31 x i8] c"group = EC_KEY_get0_group(key)\00", align 1
@.str.447 = private unnamed_addr constant [35 x i8] c"field = EC_GROUP_get0_field(group)\00", align 1
@.str.448 = private unnamed_addr constant [25 x i8] c"EC_KEY_generate_key(key)\00", align 1
@.str.449 = private unnamed_addr constant [22 x i8] c"EC_KEY_check_key(key)\00", align 1
@.str.450 = private unnamed_addr constant [34 x i8] c"pub = EC_KEY_get0_public_key(key)\00", align 1
@.str.451 = private unnamed_addr constant [56 x i8] c"EC_POINT_get_affine_coordinates(group, pub, x, y, NULL)\00", align 1
@.str.452 = private unnamed_addr constant [25 x i8] c"BN_GF2m_add(x, x, field)\00", align 1
@.str.453 = private unnamed_addr constant [20 x i8] c"BN_add(x, x, field)\00", align 1
@.str.454 = private unnamed_addr constant [33 x i8] c"Unsupported EC_METHOD field_type\00", align 1
@.str.455 = private unnamed_addr constant [52 x i8] c"EC_KEY_set_public_key_affine_coordinates(key, x, y)\00", align 1
@check_named_curve_from_ecparameters.invalid_seed = internal constant [25 x i8] c"THIS IS NOT A VALID SEED\00", align 16
@.str.456 = private unnamed_addr constant [9 x i8] c"Curve %s\00", align 1
@.str.457 = private unnamed_addr constant [36 x i8] c"group_cofactor = BN_CTX_get(bn_ctx)\00", align 1
@.str.458 = private unnamed_addr constant [33 x i8] c"other_gen_x = BN_CTX_get(bn_ctx)\00", align 1
@.str.459 = private unnamed_addr constant [33 x i8] c"other_gen_y = BN_CTX_get(bn_ctx)\00", align 1
@.str.460 = private unnamed_addr constant [33 x i8] c"other_order = BN_CTX_get(bn_ctx)\00", align 1
@.str.461 = private unnamed_addr constant [36 x i8] c"other_cofactor = BN_CTX_get(bn_ctx)\00", align 1
@.str.462 = private unnamed_addr constant [48 x i8] c"params = EC_GROUP_get_ecparameters(group, NULL)\00", align 1
@.str.463 = private unnamed_addr constant [27 x i8] c"tmpg = EC_GROUP_dup(group)\00", align 1
@.str.464 = private unnamed_addr constant [84 x i8] c"EC_POINT_get_affine_coordinates(group, other_gen, other_gen_x, other_gen_y, bn_ctx)\00", align 1
@.str.465 = private unnamed_addr constant [34 x i8] c"BN_copy(other_order, group_order)\00", align 1
@.str.466 = private unnamed_addr constant [40 x i8] c"BN_copy(other_cofactor, group_cofactor)\00", align 1
@.str.467 = private unnamed_addr constant [31 x i8] c"other_gen = EC_POINT_new(tmpg)\00", align 1
@.str.468 = private unnamed_addr constant [83 x i8] c"EC_POINT_set_affine_coordinates(tmpg, other_gen, other_gen_x, other_gen_y, bn_ctx)\00", align 1
@.str.469 = private unnamed_addr constant [60 x i8] c"tgroup = *g_next++ = EC_GROUP_new_from_ecparameters(params)\00", align 1
@.str.470 = private unnamed_addr constant [41 x i8] c"(tnid = EC_GROUP_get_curve_name(tgroup))\00", align 1
@.str.471 = private unnamed_addr constant [10 x i8] c"NID_undef\00", align 1
@.str.472 = private unnamed_addr constant [34 x i8] c"are_ec_nids_compatible(nid, tnid)\00", align 1
@.str.473 = private unnamed_addr constant [20 x i8] c"nid = %s, tnid = %s\00", align 1
@.str.474 = private unnamed_addr constant [31 x i8] c"EC_GROUP_get_asn1_flag(tgroup)\00", align 1
@.str.475 = private unnamed_addr constant [26 x i8] c"OPENSSL_EC_EXPLICIT_CURVE\00", align 1
@.str.476 = private unnamed_addr constant [56 x i8] c"EC_GROUP_set_seed(tmpg, invalid_seed, invalid_seed_len)\00", align 1
@.str.477 = private unnamed_addr constant [65 x i8] c"other_params = *p_next++ = EC_GROUP_get_ecparameters(tmpg, NULL)\00", align 1
@.str.478 = private unnamed_addr constant [66 x i8] c"tgroup = *g_next++ = EC_GROUP_new_from_ecparameters(other_params)\00", align 1
@.str.479 = private unnamed_addr constant [33 x i8] c"EC_GROUP_set_seed(tmpg, NULL, 0)\00", align 1
@.str.480 = private unnamed_addr constant [69 x i8] c"EC_GROUP_set_generator(tmpg, other_gen, group_order, group_cofactor)\00", align 1
@.str.481 = private unnamed_addr constant [69 x i8] c"EC_GROUP_set_generator(tmpg, group_gen, other_order, group_cofactor)\00", align 1
@.str.482 = private unnamed_addr constant [62 x i8] c"EC_GROUP_set_generator(tmpg, group_gen, NULL, group_cofactor)\00", align 1
@.str.483 = private unnamed_addr constant [69 x i8] c"EC_GROUP_set_generator(tmpg, group_gen, group_order, other_cofactor)\00", align 1
@.str.484 = private unnamed_addr constant [59 x i8] c"EC_GROUP_set_generator(tmpg, group_gen, group_order, NULL)\00", align 1
@.str.485 = private unnamed_addr constant [69 x i8] c"EC_GROUP_set_generator(tmpg, group_gen, group_order, group_cofactor)\00", align 1
@.str.486 = private unnamed_addr constant [21 x i8] c"bnctx = BN_CTX_new()\00", align 1
@.str.487 = private unnamed_addr constant [27 x i8] c"P = EC_POINT_dup(G, group)\00", align 1
@.str.488 = private unnamed_addr constant [77 x i8] c"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_COMPRESSED, bnctx)\00", align 1
@.str.489 = private unnamed_addr constant [80 x i8] c"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_COMPRESSED, bnctx)\00", align 1
@.str.490 = private unnamed_addr constant [79 x i8] c"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_UNCOMPRESSED, bnctx)\00", align 1
@.str.491 = private unnamed_addr constant [82 x i8] c"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_UNCOMPRESSED, bnctx)\00", align 1
@.str.492 = private unnamed_addr constant [73 x i8] c"ec_point_hex2point_test_helper(group, P, POINT_CONVERSION_HYBRID, bnctx)\00", align 1
@.str.493 = private unnamed_addr constant [76 x i8] c"ec_point_hex2point_test_helper(group, NULL, POINT_CONVERSION_HYBRID, bnctx)\00", align 1
@.str.494 = private unnamed_addr constant [27 x i8] c"Pinf = EC_POINT_new(group)\00", align 1
@.str.495 = private unnamed_addr constant [38 x i8] c"EC_POINT_set_to_infinity(group, Pinf)\00", align 1
@.str.496 = private unnamed_addr constant [48 x i8] c"hex = EC_POINT_point2hex(group, P, form, bnctx)\00", align 1
@.str.497 = private unnamed_addr constant [48 x i8] c"Q = EC_POINT_hex2point(group, hex, NULL, bnctx)\00", align 1
@.str.498 = private unnamed_addr constant [33 x i8] c"EC_POINT_cmp(group, Q, P, bnctx)\00", align 1
@.str.499 = private unnamed_addr constant [20 x i8] c"k = BN_CTX_get(ctx)\00", align 1
@.str.500 = private unnamed_addr constant [80 x i8] c"BN_rand(k, EC_GROUP_order_bits(group) - 1, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)\00", align 1
@.str.501 = private unnamed_addr constant [19 x i8] c"BN_clear_bit(k, 0)\00", align 1
@.str.502 = private unnamed_addr constant [25 x i8] c"G2 = EC_POINT_new(group)\00", align 1
@.str.503 = private unnamed_addr constant [25 x i8] c"Q1 = EC_POINT_new(group)\00", align 1
@.str.504 = private unnamed_addr constant [44 x i8] c"EC_POINT_mul(group, Q1, k, NULL, NULL, ctx)\00", align 1
@.str.505 = private unnamed_addr constant [75 x i8] c"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)\00", align 1
@.str.506 = private unnamed_addr constant [6 x i8] c"bsize\00", align 1
@.str.507 = private unnamed_addr constant [27 x i8] c"b1 = OPENSSL_malloc(bsize)\00", align 1
@.str.508 = private unnamed_addr constant [77 x i8] c"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, b1, bsize, ctx)\00", align 1
@.str.509 = private unnamed_addr constant [61 x i8] c"EC_POINT_dbl(group, G2, EC_GROUP_get0_generator(group), ctx)\00", align 1
@.str.510 = private unnamed_addr constant [93 x i8] c"EC_GROUP_set_generator(group, G2, EC_GROUP_get0_order(group), EC_GROUP_get0_cofactor(group))\00", align 1
@.str.511 = private unnamed_addr constant [25 x i8] c"Q2 = EC_POINT_new(group)\00", align 1
@.str.512 = private unnamed_addr constant [17 x i8] c"BN_rshift1(k, k)\00", align 1
@.str.513 = private unnamed_addr constant [44 x i8] c"EC_POINT_mul(group, Q2, k, NULL, NULL, ctx)\00", align 1
@.str.514 = private unnamed_addr constant [75 x i8] c"EC_POINT_point2oct(group, Q2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)\00", align 1
@.str.515 = private unnamed_addr constant [27 x i8] c"b2 = OPENSSL_malloc(bsize)\00", align 1
@.str.516 = private unnamed_addr constant [77 x i8] c"EC_POINT_point2oct(group, Q2, POINT_CONVERSION_UNCOMPRESSED, b2, bsize, ctx)\00", align 1
@.str.517 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.518 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.519 = private unnamed_addr constant [27 x i8] c"bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.520 = private unnamed_addr constant [12 x i8] c"prime-field\00", align 1
@.str.521 = private unnamed_addr constant [25 x i8] c"characteristic-two-field\00", align 1
@.str.522 = private unnamed_addr constant [8 x i8] c"tpBasis\00", align 1
@.str.523 = private unnamed_addr constant [41 x i8] c"EC_GROUP_get_trinomial_basis(group, &k1)\00", align 1
@.str.524 = private unnamed_addr constant [8 x i8] c"ppBasis\00", align 1
@.str.525 = private unnamed_addr constant [53 x i8] c"EC_GROUP_get_pentanomial_basis(group, &k1, &k2, &k3)\00", align 1
@.str.526 = private unnamed_addr constant [83 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, field_name, 0)\00", align 1
@.str.527 = private unnamed_addr constant [11 x i8] c"field-type\00", align 1
@.str.528 = private unnamed_addr constant [53 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, p)\00", align 1
@.str.529 = private unnamed_addr constant [53 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_A, a)\00", align 1
@.str.530 = private unnamed_addr constant [53 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_B, b)\00", align 1
@.str.531 = private unnamed_addr constant [120 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_SEED, EC_GROUP_get0_seed(group), EC_GROUP_get_seed_len(group))\00", align 1
@.str.532 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.533 = private unnamed_addr constant [88 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, EC_GROUP_get0_cofactor(group))\00", align 1
@.str.534 = private unnamed_addr constant [9 x i8] c"cofactor\00", align 1
@.str.535 = private unnamed_addr constant [83 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_GENERATOR, gen, gen_size)\00", align 1
@.str.536 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.537 = private unnamed_addr constant [82 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_ORDER, EC_GROUP_get0_order(group))\00", align 1
@.str.538 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.539 = private unnamed_addr constant [38 x i8] c"params = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@.str.540 = private unnamed_addr constant [52 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(NULL, \22EC\22, NULL)\00", align 1
@.str.541 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.542 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_fromdata_init(pctx)\00", align 1
@.str.543 = private unnamed_addr constant [69 x i8] c"EVP_PKEY_fromdata(pctx, &pkeyparam, EVP_PKEY_KEY_PARAMETERS, params)\00", align 1
@.str.544 = private unnamed_addr constant [101 x i8] c"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_GROUP_NAME, name, sizeof(name), &name_len)\00", align 1
@.str.545 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.546 = private unnamed_addr constant [102 x i8] c"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_ENCODING, name, sizeof(name), &name_len)\00", align 1
@.str.547 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.548 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.549 = private unnamed_addr constant [31 x i8] c"OSSL_PKEY_EC_ENCODING_EXPLICIT\00", align 1
@.str.550 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.551 = private unnamed_addr constant [104 x i8] c"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_FIELD_TYPE, name, sizeof(name), &name_len)\00", align 1
@.str.552 = private unnamed_addr constant [11 x i8] c"field_name\00", align 1
@.str.553 = private unnamed_addr constant [101 x i8] c"EVP_PKEY_get_octet_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_GENERATOR, buf, sizeof(buf), &buf_len)\00", align 1
@.str.554 = private unnamed_addr constant [4 x i8] c"gen\00", align 1
@.str.555 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_P, &p_out)\00", align 1
@.str.556 = private unnamed_addr constant [6 x i8] c"p_out\00", align 1
@.str.557 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_A, &a_out)\00", align 1
@.str.558 = private unnamed_addr constant [6 x i8] c"a_out\00", align 1
@.str.559 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_B, &b_out)\00", align 1
@.str.560 = private unnamed_addr constant [6 x i8] c"b_out\00", align 1
@.str.561 = private unnamed_addr constant [71 x i8] c"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_ORDER, &order_out)\00", align 1
@.str.562 = private unnamed_addr constant [10 x i8] c"order_out\00", align 1
@.str.563 = private unnamed_addr constant [27 x i8] c"EC_GROUP_get0_order(group)\00", align 1
@.str.564 = private unnamed_addr constant [77 x i8] c"EVP_PKEY_get_bn_param(pkeyparam, OSSL_PKEY_PARAM_EC_COFACTOR, &cofactor_out)\00", align 1
@.str.565 = private unnamed_addr constant [13 x i8] c"cofactor_out\00", align 1
@.str.566 = private unnamed_addr constant [96 x i8] c"EVP_PKEY_get_octet_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_SEED, buf, sizeof(buf), &buf_len)\00", align 1
@.str.567 = private unnamed_addr constant [26 x i8] c"EC_GROUP_get0_seed(group)\00", align 1
@.str.568 = private unnamed_addr constant [70 x i8] c"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_M, &i_out)\00", align 1
@.str.569 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.570 = private unnamed_addr constant [77 x i8] c"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_TP_BASIS, &i_out)\00", align 1
@.str.571 = private unnamed_addr constant [3 x i8] c"tp\00", align 1
@.str.572 = private unnamed_addr constant [74 x i8] c"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K1, &i_out)\00", align 1
@.str.573 = private unnamed_addr constant [3 x i8] c"k1\00", align 1
@.str.574 = private unnamed_addr constant [74 x i8] c"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K2, &i_out)\00", align 1
@.str.575 = private unnamed_addr constant [3 x i8] c"k2\00", align 1
@.str.576 = private unnamed_addr constant [74 x i8] c"EVP_PKEY_get_int_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_PP_K3, &i_out)\00", align 1
@.str.577 = private unnamed_addr constant [3 x i8] c"k3\00", align 1
@.str.578 = private unnamed_addr constant [104 x i8] c"EVP_PKEY_get_utf8_string_param(pkeyparam, OSSL_PKEY_PARAM_EC_CHAR2_TYPE, name, sizeof(name), &name_len)\00", align 1
@.str.579 = private unnamed_addr constant [11 x i8] c"basis-type\00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"i_out\00", align 1
@.str.581 = private unnamed_addr constant [11 x i8] c"basis_name\00", align 1
@.str.582 = private unnamed_addr constant [47 x i8] c"gettable = EVP_PKEY_gettable_params(pkeyparam)\00", align 1
@.str.583 = private unnamed_addr constant [62 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_GROUP_NAME)\00", align 1
@.str.584 = private unnamed_addr constant [63 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_ENCODING)\00", align 1
@.str.585 = private unnamed_addr constant [65 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_FIELD_TYPE)\00", align 1
@.str.586 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_P)\00", align 1
@.str.587 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_A)\00", align 1
@.str.588 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_B)\00", align 1
@.str.589 = private unnamed_addr constant [64 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_GENERATOR)\00", align 1
@.str.590 = private unnamed_addr constant [60 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_ORDER)\00", align 1
@.str.591 = private unnamed_addr constant [63 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_COFACTOR)\00", align 1
@.str.592 = private unnamed_addr constant [59 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_SEED)\00", align 1
@.str.593 = private unnamed_addr constant [62 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_M)\00", align 1
@.str.594 = private unnamed_addr constant [65 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_TYPE)\00", align 1
@.str.595 = private unnamed_addr constant [69 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_TP_BASIS)\00", align 1
@.str.596 = private unnamed_addr constant [66 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K1)\00", align 1
@.str.597 = private unnamed_addr constant [66 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K2)\00", align 1
@.str.598 = private unnamed_addr constant [66 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_EC_CHAR2_PP_K3)\00", align 1
@.str.599 = private unnamed_addr constant [37 x i8] c"custom params not supported with SM2\00", align 1
@.str.600 = private unnamed_addr constant [20 x i8] c"p = BN_CTX_get(ctx)\00", align 1
@.str.601 = private unnamed_addr constant [20 x i8] c"a = BN_CTX_get(ctx)\00", align 1
@.str.602 = private unnamed_addr constant [20 x i8] c"b = BN_CTX_get(ctx)\00", align 1
@.str.603 = private unnamed_addr constant [75 x i8] c"EC_POINT_point2oct(group, G2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)\00", align 1
@.str.604 = private unnamed_addr constant [29 x i8] c"buf1 = OPENSSL_malloc(bsize)\00", align 1
@.str.605 = private unnamed_addr constant [79 x i8] c"EC_POINT_point2oct(group, G2, POINT_CONVERSION_UNCOMPRESSED, buf1, bsize, ctx)\00", align 1
@.str.606 = private unnamed_addr constant [31 x i8] c"z = EC_GROUP_get0_order(group)\00", align 1
@.str.607 = private unnamed_addr constant [36 x i8] c"cof = EC_GROUP_get0_cofactor(group)\00", align 1
@.str.608 = private unnamed_addr constant [48 x i8] c"altgroup = EC_GROUP_new_curve_GFp(p, a, b, ctx)\00", align 1
@.str.609 = private unnamed_addr constant [49 x i8] c"altgroup = EC_GROUP_new_curve_GF2m(p, a, b, ctx)\00", align 1
@.str.610 = private unnamed_addr constant [28 x i8] c"G2 = EC_POINT_new(altgroup)\00", align 1
@.str.611 = private unnamed_addr constant [51 x i8] c"EC_POINT_oct2point(altgroup, G2, buf1, bsize, ctx)\00", align 1
@.str.612 = private unnamed_addr constant [40 x i8] c"EC_POINT_is_on_curve(altgroup, G2, ctx)\00", align 1
@.str.613 = private unnamed_addr constant [45 x i8] c"EC_GROUP_set_generator(altgroup, G2, z, cof)\00", align 1
@.str.614 = private unnamed_addr constant [28 x i8] c"Q2 = EC_POINT_new(altgroup)\00", align 1
@.str.615 = private unnamed_addr constant [79 x i8] c"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, buf1, bsize, ctx)\00", align 1
@.str.616 = private unnamed_addr constant [47 x i8] c"EC_POINT_mul(altgroup, Q2, k, NULL, NULL, ctx)\00", align 1
@.str.617 = private unnamed_addr constant [78 x i8] c"EC_POINT_point2oct(altgroup, Q2, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)\00", align 1
@.str.618 = private unnamed_addr constant [29 x i8] c"buf2 = OPENSSL_malloc(bsize)\00", align 1
@.str.619 = private unnamed_addr constant [82 x i8] c"EC_POINT_point2oct(altgroup, Q2, POINT_CONVERSION_UNCOMPRESSED, buf2, bsize, ctx)\00", align 1
@.str.620 = private unnamed_addr constant [5 x i8] c"buf1\00", align 1
@.str.621 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1
@.str.622 = private unnamed_addr constant [22 x i8] c"eckey1 = EC_KEY_new()\00", align 1
@.str.623 = private unnamed_addr constant [35 x i8] c"EC_KEY_set_group(eckey1, altgroup)\00", align 1
@.str.624 = private unnamed_addr constant [28 x i8] c"EC_KEY_generate_key(eckey1)\00", align 1
@.str.625 = private unnamed_addr constant [22 x i8] c"eckey2 = EC_KEY_new()\00", align 1
@.str.626 = private unnamed_addr constant [35 x i8] c"EC_KEY_set_group(eckey2, altgroup)\00", align 1
@.str.627 = private unnamed_addr constant [28 x i8] c"EC_KEY_generate_key(eckey2)\00", align 1
@.str.628 = private unnamed_addr constant [40 x i8] c"priv1 = EC_KEY_get0_private_key(eckey1)\00", align 1
@.str.629 = private unnamed_addr constant [48 x i8] c"EC_POINT_mul(group, Q1, priv1, NULL, NULL, ctx)\00", align 1
@.str.630 = private unnamed_addr constant [29 x i8] c"pub1 = OPENSSL_malloc(bsize)\00", align 1
@.str.631 = private unnamed_addr constant [79 x i8] c"EC_POINT_point2oct(group, Q1, POINT_CONVERSION_UNCOMPRESSED, pub1, bsize, ctx)\00", align 1
@.str.632 = private unnamed_addr constant [35 x i8] c"Q = EC_KEY_get0_public_key(eckey2)\00", align 1
@.str.633 = private unnamed_addr constant [77 x i8] c"EC_POINT_point2oct(altgroup, Q, POINT_CONVERSION_UNCOMPRESSED, NULL, 0, ctx)\00", align 1
@.str.634 = private unnamed_addr constant [29 x i8] c"pub2 = OPENSSL_malloc(bsize)\00", align 1
@.str.635 = private unnamed_addr constant [81 x i8] c"EC_POINT_point2oct(altgroup, Q, POINT_CONVERSION_UNCOMPRESSED, pub2, bsize, ctx)\00", align 1
@.str.636 = private unnamed_addr constant [23 x i8] c"pkey1 = EVP_PKEY_new()\00", align 1
@.str.637 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_assign_EC_KEY(pkey1, eckey1)\00", align 1
@.str.638 = private unnamed_addr constant [23 x i8] c"pkey2 = EVP_PKEY_new()\00", align 1
@.str.639 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_assign_EC_KEY(pkey2, eckey2)\00", align 1
@.str.640 = private unnamed_addr constant [38 x i8] c"pctx1 = EVP_PKEY_CTX_new(pkey1, NULL)\00", align 1
@.str.641 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_derive_init(pctx1)\00", align 1
@.str.642 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_derive_set_peer(pctx1, pkey2)\00", align 1
@.str.643 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_derive(pctx1, NULL, &sslen)\00", align 1
@.str.644 = private unnamed_addr constant [6 x i8] c"sslen\00", align 1
@.str.645 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_derive(pctx1, buf1, &sslen)\00", align 1
@.str.646 = private unnamed_addr constant [38 x i8] c"pctx2 = EVP_PKEY_CTX_new(pkey2, NULL)\00", align 1
@.str.647 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_derive_init(pctx2)\00", align 1
@.str.648 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_derive_set_peer(pctx2, pkey1)\00", align 1
@.str.649 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_derive(pctx2, NULL, &t)\00", align 1
@.str.650 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.651 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_derive(pctx2, buf2, &t)\00", align 1
@.str.652 = private unnamed_addr constant [33 x i8] c"param_bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.653 = private unnamed_addr constant [86 x i8] c"OSSL_PARAM_BLD_push_utf8_string(param_bld, OSSL_PKEY_PARAM_GROUP_NAME, curve_name, 0)\00", align 1
@.str.654 = private unnamed_addr constant [82 x i8] c"OSSL_PARAM_BLD_push_octet_string(param_bld, OSSL_PKEY_PARAM_PUB_KEY, pub1, bsize)\00", align 1
@.str.655 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.656 = private unnamed_addr constant [67 x i8] c"OSSL_PARAM_BLD_push_BN(param_bld, OSSL_PKEY_PARAM_PRIV_KEY, priv1)\00", align 1
@.str.657 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.658 = private unnamed_addr constant [45 x i8] c"params1 = OSSL_PARAM_BLD_to_param(param_bld)\00", align 1
@.str.659 = private unnamed_addr constant [82 x i8] c"OSSL_PARAM_BLD_push_octet_string(param_bld, OSSL_PKEY_PARAM_PUB_KEY, pub2, bsize)\00", align 1
@.str.660 = private unnamed_addr constant [45 x i8] c"params2 = OSSL_PARAM_BLD_to_param(param_bld)\00", align 1
@.str.661 = private unnamed_addr constant [53 x i8] c"pctx2 = EVP_PKEY_CTX_new_from_name(NULL, \22EC\22, NULL)\00", align 1
@.str.662 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_fromdata_init(pctx2)\00", align 1
@.str.663 = private unnamed_addr constant [60 x i8] c"EVP_PKEY_fromdata(pctx2, &pkey1, EVP_PKEY_KEYPAIR, params1)\00", align 1
@.str.664 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_fromdata(pctx2, &pkey2, EVP_PKEY_PUBLIC_KEY, params2)\00", align 1
@.str.665 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_derive(pctx1, NULL, &t)\00", align 1
@.str.666 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_derive(pctx1, buf1, &t)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef null, i64 noundef 0) #4
  store i64 %call, i64* @crv_len, align 8, !tbaa !3
  %mul = shl i64 %call, 4
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2972) #4
  store i8* %call1, i8** bitcast (%struct.EC_builtin_curve** @curves to i8**), align 8, !tbaa !7
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2972, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %1 = load i64, i64* @crv_len, align 8, !tbaa !3
  %call3 = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef %0, i64 noundef %1) #4
  %cmp = icmp ne i64 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2973, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @parameter_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @cofactor_range_test) #4
  %2 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv6 = trunc i64 %2 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @cardinality_test, i32 noundef %conv6, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @prime_field_tests) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @hybrid_point_encoding_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @char2_field_tests) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* noundef nonnull @char2_curve_test, i32 noundef 10, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 (i32)* noundef nonnull @nistp_single_test, i32 noundef 3, i32 noundef 1) #4
  %3 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv7 = trunc i64 %3 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 (i32)* noundef nonnull @internal_curve_test, i32 noundef %conv7, i32 noundef 1) #4
  %4 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv8 = trunc i64 %4 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 (i32)* noundef nonnull @internal_curve_test_method, i32 noundef %conv8, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @group_field_test) #4
  %5 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv9 = trunc i64 %5 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 (i32)* noundef nonnull @check_named_curve_test, i32 noundef %conv9, i32 noundef 1) #4
  %6 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv10 = trunc i64 %6 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 (i32)* noundef nonnull @check_named_curve_lookup_test, i32 noundef %conv10, i32 noundef 1) #4
  %7 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv11 = trunc i64 %7 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 (i32)* noundef nonnull @check_ec_key_field_public_range_test, i32 noundef %conv11, i32 noundef 1) #4
  %8 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv12 = trunc i64 %8 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 (i32)* noundef nonnull @check_named_curve_from_ecparameters, i32 noundef %conv12, i32 noundef 1) #4
  %9 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv13 = trunc i64 %9 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @ec_point_hex2point_test, i32 noundef %conv13, i32 noundef 1) #4
  %10 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv14 = trunc i64 %10 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @custom_generator_test, i32 noundef %conv14, i32 noundef 1) #4
  %11 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv15 = trunc i64 %11 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 (i32)* noundef nonnull @custom_params_test, i32 noundef %conv15, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parameter_test() #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %buf, align 8, !tbaa !7
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 715) #4
  %1 = bitcast %struct.ec_group_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2021, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call, %struct.ec_parameters_st* noundef null) #4
  %2 = bitcast %struct.ec_parameters_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2022, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call2) #4
  %3 = bitcast %struct.ec_group_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2023, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i8* noundef %3) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef %call, %struct.ec_group_st* noundef %call6, %struct.bignum_ctx* noundef null) #4
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2024, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  %call13 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 716) #4
  %4 = bitcast %struct.ec_group_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2031, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i8* noundef %4) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %call17 = call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef %call13, i8** noundef nonnull %buf) #4
  %5 = xor i32 %call17, -1
  %call17.lobit.not = lshr i32 %5, 31
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2032, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call17.lobit.not) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %6 = load i8*, i8** %buf, align 8, !tbaa !7
  %conv23 = sext i32 %call17 to i64
  %call24 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2033, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef %6, i64 noundef %conv23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @p521_named, i64 0, i64 0), i64 noundef 7) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false22
  %7 = load i8*, i8** %buf, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2036) #4
  store i8* null, i8** %buf, align 8, !tbaa !7
  call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef %call13, i32 noundef 0) #4
  %call28 = call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef %call13, i8** noundef nonnull %buf) #4
  %8 = xor i32 %call28, -1
  %call28.lobit.not = lshr i32 %8, 31
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2044, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call28.lobit.not) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end27
  %9 = load i8*, i8** %buf, align 8, !tbaa !7
  %conv36 = sext i32 %call28 to i64
  %call37 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2045, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %9, i64 noundef %conv36, i8* noundef getelementptr inbounds ([455 x i8], [455 x i8]* @p521_explicit, i64 0, i64 0), i64 noundef 455) #4
  %tobool38.not = icmp ne i32 %call37, 0
  %spec.select = zext i1 %tobool38.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false35, %if.end27, %if.end, %lor.lhs.false16, %lor.lhs.false22, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %group.0 = phi %struct.ec_group_st* [ %call13, %if.end27 ], [ %call13, %lor.lhs.false22 ], [ %call13, %lor.lhs.false16 ], [ %call13, %if.end ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ %call13, %lor.lhs.false35 ]
  %group2.0 = phi %struct.ec_group_st* [ %call6, %if.end27 ], [ %call6, %lor.lhs.false22 ], [ %call6, %lor.lhs.false16 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false35 ]
  %ecparameters.0 = phi %struct.ec_parameters_st* [ %call2, %if.end27 ], [ %call2, %lor.lhs.false22 ], [ %call2, %lor.lhs.false16 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false35 ]
  %r.0 = phi i32 [ 0, %if.end27 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false35 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group2.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %ecparameters.0) #4
  %10 = load i8*, i8** %buf, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2053) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cofactor_range_test() #0 {
entry:
  %group = alloca %struct.ec_group_st*, align 8
  %cf = alloca %struct.bignum_st*, align 8
  %b1 = alloca i8*, align 8
  %b2 = alloca i8*, align 8
  %0 = bitcast %struct.ec_group_st** %group to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.bignum_st** %cf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %cf, align 8, !tbaa !7
  %2 = bitcast i8** %b1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* getelementptr inbounds ([208 x i8], [208 x i8]* @params_cf_fail, i64 0, i64 0), i8** %b1, align 8, !tbaa !7
  %3 = bitcast i8** %b2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store i8* getelementptr inbounds ([208 x i8], [208 x i8]* @params_cf_pass, i64 0, i64 0), i8** %b2, align 8, !tbaa !7
  %call = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef null, i8** noundef nonnull %b1, i64 noundef 208) #4
  store %struct.ec_group_st* %call, %struct.ec_group_st** %group, align 8, !tbaa !7
  %4 = bitcast %struct.ec_group_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2133, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0), i8* noundef %4) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %call) #4
  %call3 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2134, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), %struct.bignum_st* noundef %call2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef nonnull %group, i8** noundef nonnull %b2, i64 noundef 208) #4
  store %struct.ec_group_st* %call6, %struct.ec_group_st** %group, align 8, !tbaa !7
  %5 = bitcast %struct.ec_group_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2136, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.33, i64 0, i64 0), i8* noundef %5) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %cf, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0)) #4
  %call11 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2137, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %6 = load %struct.bignum_st*, %struct.bignum_st** %cf, align 8, !tbaa !7
  %7 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !7
  %call14 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %7) #4
  %call15 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2138, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call14) #4
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false13, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %ret.0 = phi i32 [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false13 ]
  %8 = load %struct.bignum_st*, %struct.bignum_st** %cf, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %8) #4
  %9 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !7
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %9) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cardinality_test(i32 noundef %n) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %n to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2163, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call) #4
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2165, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %3 = bitcast %struct.ec_group_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2166, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %call4) #4
  %cmp = icmp eq i32 %call7, 407
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %call2) #4
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %4 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2182, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i8* noundef %4) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end
  %call19 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call4, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call10, %struct.bignum_ctx* noundef %call2) #4
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2184, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call4) #4
  %call26 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call25, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call12, %struct.bignum_ctx* noundef %call2) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2186, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %call32 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call4) #4
  %call33 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call32) #4
  %cmp34 = icmp ne %struct.bignum_st* %call33, null
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2187, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false31
  %call39 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %call4, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #4
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2188, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv41) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false44
  %call46 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call10, %struct.bignum_ctx* noundef %call2) #4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false44
  %call47 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call10, %struct.bignum_ctx* noundef %call2) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ec_group_st* [ %call46, %cond.true ], [ %call47, %cond.false ]
  %5 = bitcast %struct.ec_group_st* %cond to i8*
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2193, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.45, i64 0, i64 0), i8* noundef %5) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %cond.end
  %call51 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %cond) #4
  %6 = bitcast %struct.ec_point_st* %call51 to i8*
  %call52 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2198, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i8* noundef %6) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call12, %struct.bignum_ctx* noundef %call2) #4
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2199, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv57) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %call61 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef null) #4
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2201, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv63) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %cond, %struct.bignum_st* noundef %call15, %struct.bignum_ctx* noundef %call2) #4
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2202, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv69) #4
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %call73 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2203, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call15) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %call76 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call15, i64 noundef 0) #4
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2205, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv78) #4
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false75
  %call82 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call15) #4
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2206, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv84) #4
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false81
  %call88 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %cond, %struct.bignum_st* noundef %call15, %struct.bignum_ctx* noundef %call2) #4
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2207, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv90) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false87
  %call94 = tail call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2208, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call15) #4
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false93
  %call97 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call15, i64 noundef 0) #4
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2210, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv99) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false96
  %call103 = tail call %struct.bignum_st* @BN_value_one() #4
  %call104 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call103) #4
  %cmp105 = icmp ne i32 %call104, 0
  %conv106 = zext i1 %cmp105 to i32
  %call107 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2211, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv106) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false102
  %call110 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call15) #4
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2212, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv112) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false109
  %call116 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null) #4
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2214, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv118) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false115
  %call122 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call13, i64 noundef 0) #4
  %cmp123 = icmp ne i32 %call122, 0
  %conv124 = zext i1 %cmp123 to i32
  %call125 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2216, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv124) #4
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false121
  %call128 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef null) #4
  %cmp129 = icmp ne i32 %call128, 0
  %conv130 = zext i1 %cmp129 to i32
  %call131 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2217, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv130) #4
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false127
  %call134 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call15, i64 noundef 0) #4
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2219, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv136) #4
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false133
  %call140 = tail call %struct.bignum_st* @BN_value_one() #4
  %call141 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call140) #4
  %cmp142 = icmp ne i32 %call141, 0
  %conv143 = zext i1 %cmp142 to i32
  %call144 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2220, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv143) #4
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %err, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false139
  %call147 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef null) #4
  %cmp148 = icmp ne i32 %call147, 0
  %conv149 = zext i1 %cmp148 to i32
  %call150 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv149) #4
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false146
  %call153 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %call8, i32 noundef 2) #4
  %cmp154 = icmp ne i32 %call153, 0
  %conv155 = zext i1 %cmp154 to i32
  %call156 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2223, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv155) #4
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %lor.lhs.false152
  %call159 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %cond, %struct.ec_point_st* noundef %call51, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef null) #4
  %cmp160 = icmp ne i32 %call159, 0
  %conv161 = zext i1 %cmp160 to i32
  %call162 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2224, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv161) #4
  %tobool163.not = icmp ne i32 %call162, 0
  %spec.select = zext i1 %tobool163.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false158, %if.end, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false31, %lor.lhs.false38, %cond.end, %lor.lhs.false50, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false75, %lor.lhs.false81, %lor.lhs.false87, %lor.lhs.false93, %lor.lhs.false96, %lor.lhs.false102, %lor.lhs.false109, %lor.lhs.false115, %lor.lhs.false121, %lor.lhs.false127, %lor.lhs.false133, %lor.lhs.false139, %lor.lhs.false146, %lor.lhs.false152
  %ret.0 = phi i32 [ 0, %lor.lhs.false152 ], [ 0, %lor.lhs.false146 ], [ 0, %lor.lhs.false139 ], [ 0, %lor.lhs.false133 ], [ 0, %lor.lhs.false127 ], [ 0, %lor.lhs.false121 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false109 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false93 ], [ 0, %lor.lhs.false87 ], [ 0, %lor.lhs.false81 ], [ 0, %lor.lhs.false75 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false50 ], [ 0, %cond.end ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false158 ]
  %g2.0 = phi %struct.ec_group_st* [ %cond, %lor.lhs.false152 ], [ %cond, %lor.lhs.false146 ], [ %cond, %lor.lhs.false139 ], [ %cond, %lor.lhs.false133 ], [ %cond, %lor.lhs.false127 ], [ %cond, %lor.lhs.false121 ], [ %cond, %lor.lhs.false115 ], [ %cond, %lor.lhs.false109 ], [ %cond, %lor.lhs.false102 ], [ %cond, %lor.lhs.false96 ], [ %cond, %lor.lhs.false93 ], [ %cond, %lor.lhs.false87 ], [ %cond, %lor.lhs.false81 ], [ %cond, %lor.lhs.false75 ], [ %cond, %lor.lhs.false72 ], [ %cond, %lor.lhs.false66 ], [ %cond, %lor.lhs.false60 ], [ %cond, %lor.lhs.false54 ], [ %cond, %lor.lhs.false50 ], [ %cond, %cond.end ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %if.end ], [ %cond, %lor.lhs.false158 ]
  %g2_gen.0 = phi %struct.ec_point_st* [ %call51, %lor.lhs.false152 ], [ %call51, %lor.lhs.false146 ], [ %call51, %lor.lhs.false139 ], [ %call51, %lor.lhs.false133 ], [ %call51, %lor.lhs.false127 ], [ %call51, %lor.lhs.false121 ], [ %call51, %lor.lhs.false115 ], [ %call51, %lor.lhs.false109 ], [ %call51, %lor.lhs.false102 ], [ %call51, %lor.lhs.false96 ], [ %call51, %lor.lhs.false93 ], [ %call51, %lor.lhs.false87 ], [ %call51, %lor.lhs.false81 ], [ %call51, %lor.lhs.false75 ], [ %call51, %lor.lhs.false72 ], [ %call51, %lor.lhs.false66 ], [ %call51, %lor.lhs.false60 ], [ %call51, %lor.lhs.false54 ], [ %call51, %lor.lhs.false50 ], [ null, %cond.end ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %if.end ], [ %call51, %lor.lhs.false158 ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %g2_gen.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call4) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %g2.0) #4
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call2) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prime_field_tests() #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %x = alloca %struct.bignum_st*, align 8
  %y = alloca %struct.bignum_st*, align 8
  %z = alloca %struct.bignum_st*, align 8
  %points = alloca [4 x %struct.ec_point_st*], align 16
  %scalars = alloca [4 x %struct.bignum_st*], align 16
  %buf = alloca [100 x i8], align 16
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !7
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !7
  %3 = bitcast %struct.bignum_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %x, align 8, !tbaa !7
  %4 = bitcast %struct.bignum_st** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %y, align 8, !tbaa !7
  %5 = bitcast %struct.bignum_st** %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %z, align 8, !tbaa !7
  %6 = bitcast [4 x %struct.ec_point_st*]* %points to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5
  %7 = bitcast [4 x %struct.bignum_st*]* %scalars to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #5
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %8) #5
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %9 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %9) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call2, %struct.bignum_st** %p, align 8, !tbaa !7
  %10 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %10) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call6, %struct.bignum_st** %a, align 8, !tbaa !7
  %11 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* noundef %11) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call10, %struct.bignum_st** %b, align 8, !tbaa !7
  %12 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef %12) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #4
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv20) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %call24 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #4
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv26) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %14 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %15 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call30 = call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef %call) #4
  %16 = bitcast %struct.ec_group_st* %call30 to i8*
  %call31 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.66, i64 0, i64 0), i8* noundef %16) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %17 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %18 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %19 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call34 = call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %call) #4
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv36) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false33
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0)) #4
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0)) #4
  %20 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.bignum_st* noundef %20) #4
  %21 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st* noundef %21) #4
  %22 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %22) #4
  store i8 0, i8* %8, align 16, !tbaa !12
  %call39 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call30) #4
  %23 = bitcast %struct.ec_point_st* %call39 to i8*
  %call40 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0), i8* noundef %23) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end
  %call43 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call30) #4
  %24 = bitcast %struct.ec_point_st* %call43 to i8*
  %call44 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8* noundef %24) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %call47 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call30) #4
  %25 = bitcast %struct.ec_point_st* %call47 to i8*
  %call48 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i8* noundef %25) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call51 = call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv53) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %call57 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv59) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %call63 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, i8* noundef nonnull %8, i64 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv65) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false62
  %call69 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv71) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %call75 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv77) #4
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false74
  %call81 = call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call81, %struct.bignum_st** %x, align 8, !tbaa !7
  %26 = bitcast %struct.bignum_st* %call81 to i8*
  %call82 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0), i8* noundef %26) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %call85 = call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call85, %struct.bignum_st** %y, align 8, !tbaa !7
  %27 = bitcast %struct.bignum_st* %call85 to i8*
  %call86 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i8* noundef %27) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %call89 = call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call89, %struct.bignum_st** %z, align 8, !tbaa !7
  %28 = bitcast %struct.bignum_st* %call89 to i8*
  %call90 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef %28) #4
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false88
  %call93 = call %struct.bignum_st* @BN_new() #4
  %29 = bitcast %struct.bignum_st* %call93 to i8*
  %call94 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef %29) #4
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false92
  %call97 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #4
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv99) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false96
  %30 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call103 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, %struct.bignum_st* noundef %30, i32 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv105) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %if.end109

if.end109:                                        ; preds = %lor.lhs.false102
  %call110 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %call111 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call110, i32 noundef 0) #4
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then113, label %if.end121

if.then113:                                       ; preds = %if.end109
  %31 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %32 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call114 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, %struct.bignum_st* noundef %31, %struct.bignum_st* noundef %32, %struct.bignum_ctx* noundef %call) #4
  %cmp115 = icmp ne i32 %call114, 0
  %conv116 = zext i1 %cmp115 to i32
  %call117 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv116) #4
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %if.end120

if.end120:                                        ; preds = %if.then113
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i64 0, i64 0)) #4
  %33 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %33) #4
  %34 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %34) #4
  br label %err

if.end121:                                        ; preds = %if.end109
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end121
  %k.0 = phi i32 [ 100, %if.end121 ], [ %dec, %do.cond ]
  %dec = add nsw i32 %k.0, -1
  %call122 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %k.0, i32 noundef 0) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %if.end125

if.end125:                                        ; preds = %do.body
  %call126 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %if.end125
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0)) #4
  br label %if.end136

if.else:                                          ; preds = %if.end125
  %35 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %36 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call129 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %35, %struct.bignum_st* noundef %36, %struct.bignum_ctx* noundef %call) #4
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv131) #4
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %if.end135

if.end135:                                        ; preds = %if.else
  %37 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %37) #4
  %38 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %38) #4
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then128
  %call137 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call47, %struct.ec_point_st* noundef %call39) #4
  %cmp138 = icmp ne i32 %call137, 0
  %conv139 = zext i1 %cmp138 to i32
  %call140 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv139) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.end136
  %call143 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %cmp144 = icmp ne i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv145) #4
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %do.cond

do.cond:                                          ; preds = %lor.lhs.false142
  %call150 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %call152 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.ec_point_st* noundef %call47, %struct.bignum_ctx* noundef %call) #4
  %cmp153 = icmp ne i32 %call152, 0
  %conv154 = zext i1 %cmp153 to i32
  %call155 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv154) #4
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %do.end
  %call158 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp159 = icmp ne i32 %call158, 0
  %conv160 = zext i1 %cmp159 to i32
  %call161 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv160) #4
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %if.end164

if.end164:                                        ; preds = %lor.lhs.false157
  %call166 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, i32 noundef 2, i8* noundef nonnull %8, i64 noundef 100, %struct.bignum_ctx* noundef %call) #4
  %call167 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call166, i64 noundef 0) #4
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.end164
  %call171 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, i8* noundef nonnull %8, i64 noundef %call166, %struct.bignum_ctx* noundef %call) #4
  %cmp172 = icmp ne i32 %call171, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0), i32 noundef %conv173) #4
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false169
  %call177 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %call178 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef 0, i32 noundef %call177) #4
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %if.end181

if.end181:                                        ; preds = %lor.lhs.false176
  call void @test_output_memory(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.101, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %call166) #4
  %call184 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, i32 noundef 4, i8* noundef nonnull %8, i64 noundef 100, %struct.bignum_ctx* noundef %call) #4
  %call185 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call184, i64 noundef 0) #4
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.end181
  %call189 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, i8* noundef nonnull %8, i64 noundef %call184, %struct.bignum_ctx* noundef %call) #4
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0), i32 noundef %conv191) #4
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %lor.lhs.false187
  %call195 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %call196 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef 0, i32 noundef %call195) #4
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err, label %if.end199

if.end199:                                        ; preds = %lor.lhs.false194
  call void @test_output_memory(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.102, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %call184) #4
  %call202 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, i32 noundef 6, i8* noundef nonnull %8, i64 noundef 100, %struct.bignum_ctx* noundef %call) #4
  %call203 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call202, i64 noundef 0) #4
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %if.end199
  %call207 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, i8* noundef nonnull %8, i64 noundef %call202, %struct.bignum_ctx* noundef %call) #4
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0), i32 noundef %conv209) #4
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %lor.lhs.false205
  %call213 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %call214 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef 0, i32 noundef %call213) #4
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %err, label %if.end217

if.end217:                                        ; preds = %lor.lhs.false212
  call void @test_output_memory(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.103, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %call202) #4
  %call219 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %cmp220 = icmp ne i32 %call219, 0
  %conv221 = zext i1 %cmp220 to i32
  %call222 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv221) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %err, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end217
  %call225 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call47, %struct.bignum_ctx* noundef %call) #4
  %call226 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i64 0, i64 0), i32 noundef 0, i32 noundef %call225) #4
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %lor.lhs.false224
  %call229 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.107, i64 0, i64 0)) #4
  %cmp230 = icmp ne i32 %call229, 0
  %conv231 = zext i1 %cmp230 to i32
  %call232 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.106, i64 0, i64 0), i32 noundef %conv231) #4
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false228
  %39 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call235 = call i32 @BN_check_prime(%struct.bignum_st* noundef %39, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call236 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call235) #4
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false234
  %call239 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i64 0, i64 0)) #4
  %cmp240 = icmp ne i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %call242 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv241) #4
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false238
  %call245 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.112, i64 0, i64 0)) #4
  %cmp246 = icmp ne i32 %call245, 0
  %conv247 = zext i1 %cmp246 to i32
  %call248 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv247) #4
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false244
  %40 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %41 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %42 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call251 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %40, %struct.bignum_st* noundef %41, %struct.bignum_st* noundef %42, %struct.bignum_ctx* noundef %call) #4
  %cmp252 = icmp ne i32 %call251, 0
  %conv253 = zext i1 %cmp252 to i32
  %call254 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv253) #4
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %err, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %lor.lhs.false250
  %call257 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.115, i64 0, i64 0)) #4
  %cmp258 = icmp ne i32 %call257, 0
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv259) #4
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %err, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %lor.lhs.false256
  %call263 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.117, i64 0, i64 0)) #4
  %cmp264 = icmp ne i32 %call263, 0
  %conv265 = zext i1 %cmp264 to i32
  %call266 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv265) #4
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %err, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %lor.lhs.false262
  %43 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call269 = call %struct.bignum_st* @BN_value_one() #4
  %call270 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %43, %struct.bignum_st* noundef %call269) #4
  %cmp271 = icmp ne i32 %call270, 0
  %conv272 = zext i1 %cmp271 to i32
  %call273 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv272) #4
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %err, label %lor.lhs.false275

lor.lhs.false275:                                 ; preds = %lor.lhs.false268
  %44 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call276 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %44, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp277 = icmp ne i32 %call276, 0
  %conv278 = zext i1 %cmp277 to i32
  %call279 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv278) #4
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %err, label %lor.lhs.false281

lor.lhs.false281:                                 ; preds = %lor.lhs.false275
  %45 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %46 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call282 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %45, %struct.bignum_st* noundef %46, %struct.bignum_ctx* noundef %call) #4
  %cmp283 = icmp ne i32 %call282, 0
  %conv284 = zext i1 %cmp283 to i32
  %call285 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv284) #4
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %err, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %lor.lhs.false281
  %call288 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call289 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call288, i32 noundef 0) #4
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %err, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %lor.lhs.false287
  %call292 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.123, i64 0, i64 0)) #4
  %cmp293 = icmp ne i32 %call292, 0
  %conv294 = zext i1 %cmp293 to i32
  %call295 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.122, i64 0, i64 0), i32 noundef %conv294) #4
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %err, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %lor.lhs.false291
  %47 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call298 = call %struct.bignum_st* @BN_value_one() #4
  %call299 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %47, %struct.bignum_st* noundef %call298) #4
  %cmp300 = icmp ne i32 %call299, 0
  %conv301 = zext i1 %cmp300 to i32
  %call302 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv301) #4
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %err, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %lor.lhs.false297
  %48 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %49 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call305 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %49, %struct.bignum_ctx* noundef %call) #4
  %cmp306 = icmp ne i32 %call305, 0
  %conv307 = zext i1 %cmp306 to i32
  %call308 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv307) #4
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %err, label %if.end311

if.end311:                                        ; preds = %lor.lhs.false304
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.125, i64 0, i64 0)) #4
  %50 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %50) #4
  %51 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %51) #4
  %call312 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.117, i64 0, i64 0)) #4
  %cmp313 = icmp ne i32 %call312, 0
  %conv314 = zext i1 %cmp313 to i32
  %call315 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.126, i64 0, i64 0), i32 noundef %conv314) #4
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %err, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %if.end311
  %52 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %53 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call318 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %52, %struct.bignum_st* noundef %53) #4
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %err, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false317
  %call321 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call322 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i32 noundef %call321, i32 noundef 160) #4
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %err, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %lor.lhs.false320
  %call325 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %err, label %lor.lhs.false327

lor.lhs.false327:                                 ; preds = %lor.lhs.false324
  %call328 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.131, i64 0, i64 0)) #4
  %cmp329 = icmp ne i32 %call328, 0
  %conv330 = zext i1 %cmp329 to i32
  %call331 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv330) #4
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %err, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %lor.lhs.false327
  %54 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call334 = call i32 @BN_check_prime(%struct.bignum_st* noundef %54, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call335 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call334) #4
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %err, label %lor.lhs.false337

lor.lhs.false337:                                 ; preds = %lor.lhs.false333
  %call338 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.133, i64 0, i64 0)) #4
  %cmp339 = icmp ne i32 %call338, 0
  %conv340 = zext i1 %cmp339 to i32
  %call341 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.132, i64 0, i64 0), i32 noundef %conv340) #4
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %err, label %lor.lhs.false343

lor.lhs.false343:                                 ; preds = %lor.lhs.false337
  %call344 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.135, i64 0, i64 0)) #4
  %cmp345 = icmp ne i32 %call344, 0
  %conv346 = zext i1 %cmp345 to i32
  %call347 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.134, i64 0, i64 0), i32 noundef %conv346) #4
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %err, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %lor.lhs.false343
  %55 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %56 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %57 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call350 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %55, %struct.bignum_st* noundef %56, %struct.bignum_st* noundef %57, %struct.bignum_ctx* noundef %call) #4
  %cmp351 = icmp ne i32 %call350, 0
  %conv352 = zext i1 %cmp351 to i32
  %call353 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv352) #4
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %err, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %lor.lhs.false349
  %call356 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.137, i64 0, i64 0)) #4
  %cmp357 = icmp ne i32 %call356, 0
  %conv358 = zext i1 %cmp357 to i32
  %call359 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.136, i64 0, i64 0), i32 noundef %conv358) #4
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %err, label %lor.lhs.false361

lor.lhs.false361:                                 ; preds = %lor.lhs.false355
  %58 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call362 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %58, i32 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp363 = icmp ne i32 %call362, 0
  %conv364 = zext i1 %cmp363 to i32
  %call365 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv364) #4
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %err, label %lor.lhs.false367

lor.lhs.false367:                                 ; preds = %lor.lhs.false361
  %call368 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call369 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call368, i32 noundef 0) #4
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %err, label %lor.lhs.false371

lor.lhs.false371:                                 ; preds = %lor.lhs.false367
  %call372 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.140, i64 0, i64 0)) #4
  %cmp373 = icmp ne i32 %call372, 0
  %conv374 = zext i1 %cmp373 to i32
  %call375 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.139, i64 0, i64 0), i32 noundef %conv374) #4
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %err, label %lor.lhs.false377

lor.lhs.false377:                                 ; preds = %lor.lhs.false371
  %59 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call378 = call %struct.bignum_st* @BN_value_one() #4
  %call379 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %59, %struct.bignum_st* noundef %call378) #4
  %cmp380 = icmp ne i32 %call379, 0
  %conv381 = zext i1 %cmp380 to i32
  %call382 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv381) #4
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %err, label %lor.lhs.false384

lor.lhs.false384:                                 ; preds = %lor.lhs.false377
  %60 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %61 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call385 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %60, %struct.bignum_st* noundef %61, %struct.bignum_ctx* noundef %call) #4
  %cmp386 = icmp ne i32 %call385, 0
  %conv387 = zext i1 %cmp386 to i32
  %call388 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv387) #4
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %err, label %if.end391

if.end391:                                        ; preds = %lor.lhs.false384
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0)) #4
  %62 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %62) #4
  %63 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %63) #4
  %call392 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.143, i64 0, i64 0)) #4
  %cmp393 = icmp ne i32 %call392, 0
  %conv394 = zext i1 %cmp393 to i32
  %call395 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv394) #4
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %err, label %lor.lhs.false397

lor.lhs.false397:                                 ; preds = %if.end391
  %64 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %65 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call398 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %64, %struct.bignum_st* noundef %65) #4
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %err, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %lor.lhs.false397
  %66 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call401 = call %struct.bignum_st* @BN_value_one() #4
  %call402 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %66, %struct.bignum_st* noundef %call401) #4
  %cmp403 = icmp ne i32 %call402, 0
  %conv404 = zext i1 %cmp403 to i32
  %call405 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv404) #4
  %tobool406.not = icmp eq i32 %call405, 0
  br i1 %tobool406.not, label %err, label %lor.lhs.false407

lor.lhs.false407:                                 ; preds = %lor.lhs.false400
  %67 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call408 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %67, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp409 = icmp ne i32 %call408, 0
  %conv410 = zext i1 %cmp409 to i32
  %call411 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv410) #4
  %tobool412.not = icmp eq i32 %call411, 0
  br i1 %tobool412.not, label %err, label %lor.lhs.false413

lor.lhs.false413:                                 ; preds = %lor.lhs.false407
  %call414 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call415 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0), i32 noundef %call414, i32 noundef 192) #4
  %tobool416.not = icmp eq i32 %call415, 0
  br i1 %tobool416.not, label %err, label %lor.lhs.false417

lor.lhs.false417:                                 ; preds = %lor.lhs.false413
  %call418 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %err, label %lor.lhs.false420

lor.lhs.false420:                                 ; preds = %lor.lhs.false417
  %call421 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i64 0, i64 0)) #4
  %cmp422 = icmp ne i32 %call421, 0
  %conv423 = zext i1 %cmp422 to i32
  %call424 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.145, i64 0, i64 0), i32 noundef %conv423) #4
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %err, label %lor.lhs.false426

lor.lhs.false426:                                 ; preds = %lor.lhs.false420
  %68 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call427 = call i32 @BN_check_prime(%struct.bignum_st* noundef %68, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call428 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call427) #4
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %err, label %lor.lhs.false430

lor.lhs.false430:                                 ; preds = %lor.lhs.false426
  %call431 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.148, i64 0, i64 0)) #4
  %cmp432 = icmp ne i32 %call431, 0
  %conv433 = zext i1 %cmp432 to i32
  %call434 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv433) #4
  %tobool435.not = icmp eq i32 %call434, 0
  br i1 %tobool435.not, label %err, label %lor.lhs.false436

lor.lhs.false436:                                 ; preds = %lor.lhs.false430
  %call437 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.150, i64 0, i64 0)) #4
  %cmp438 = icmp ne i32 %call437, 0
  %conv439 = zext i1 %cmp438 to i32
  %call440 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.149, i64 0, i64 0), i32 noundef %conv439) #4
  %tobool441.not = icmp eq i32 %call440, 0
  br i1 %tobool441.not, label %err, label %lor.lhs.false442

lor.lhs.false442:                                 ; preds = %lor.lhs.false436
  %69 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %70 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %71 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call443 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %69, %struct.bignum_st* noundef %70, %struct.bignum_st* noundef %71, %struct.bignum_ctx* noundef %call) #4
  %cmp444 = icmp ne i32 %call443, 0
  %conv445 = zext i1 %cmp444 to i32
  %call446 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv445) #4
  %tobool447.not = icmp eq i32 %call446, 0
  br i1 %tobool447.not, label %err, label %lor.lhs.false448

lor.lhs.false448:                                 ; preds = %lor.lhs.false442
  %call449 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.152, i64 0, i64 0)) #4
  %cmp450 = icmp ne i32 %call449, 0
  %conv451 = zext i1 %cmp450 to i32
  %call452 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.151, i64 0, i64 0), i32 noundef %conv451) #4
  %tobool453.not = icmp eq i32 %call452, 0
  br i1 %tobool453.not, label %err, label %lor.lhs.false454

lor.lhs.false454:                                 ; preds = %lor.lhs.false448
  %72 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call455 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %72, i32 noundef 0, %struct.bignum_ctx* noundef %call) #4
  %cmp456 = icmp ne i32 %call455, 0
  %conv457 = zext i1 %cmp456 to i32
  %call458 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.153, i64 0, i64 0), i32 noundef %conv457) #4
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %err, label %lor.lhs.false460

lor.lhs.false460:                                 ; preds = %lor.lhs.false454
  %call461 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call462 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call461, i32 noundef 0) #4
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %err, label %lor.lhs.false464

lor.lhs.false464:                                 ; preds = %lor.lhs.false460
  %call465 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.155, i64 0, i64 0)) #4
  %cmp466 = icmp ne i32 %call465, 0
  %conv467 = zext i1 %cmp466 to i32
  %call468 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv467) #4
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %err, label %lor.lhs.false470

lor.lhs.false470:                                 ; preds = %lor.lhs.false464
  %73 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call471 = call %struct.bignum_st* @BN_value_one() #4
  %call472 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %73, %struct.bignum_st* noundef %call471) #4
  %cmp473 = icmp ne i32 %call472, 0
  %conv474 = zext i1 %cmp473 to i32
  %call475 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv474) #4
  %tobool476.not = icmp eq i32 %call475, 0
  br i1 %tobool476.not, label %err, label %lor.lhs.false477

lor.lhs.false477:                                 ; preds = %lor.lhs.false470
  %74 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %75 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call478 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %74, %struct.bignum_st* noundef %75, %struct.bignum_ctx* noundef %call) #4
  %cmp479 = icmp ne i32 %call478, 0
  %conv480 = zext i1 %cmp479 to i32
  %call481 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv480) #4
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %err, label %if.end484

if.end484:                                        ; preds = %lor.lhs.false477
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.156, i64 0, i64 0)) #4
  %76 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %76) #4
  %77 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %77) #4
  %call485 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.158, i64 0, i64 0)) #4
  %cmp486 = icmp ne i32 %call485, 0
  %conv487 = zext i1 %cmp486 to i32
  %call488 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.157, i64 0, i64 0), i32 noundef %conv487) #4
  %tobool489.not = icmp eq i32 %call488, 0
  br i1 %tobool489.not, label %err, label %lor.lhs.false490

lor.lhs.false490:                                 ; preds = %if.end484
  %78 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %79 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call491 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %78, %struct.bignum_st* noundef %79) #4
  %tobool492.not = icmp eq i32 %call491, 0
  br i1 %tobool492.not, label %err, label %lor.lhs.false493

lor.lhs.false493:                                 ; preds = %lor.lhs.false490
  %80 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call494 = call %struct.bignum_st* @BN_value_one() #4
  %call495 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %80, %struct.bignum_st* noundef %call494) #4
  %cmp496 = icmp ne i32 %call495, 0
  %conv497 = zext i1 %cmp496 to i32
  %call498 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv497) #4
  %tobool499.not = icmp eq i32 %call498, 0
  br i1 %tobool499.not, label %err, label %lor.lhs.false500

lor.lhs.false500:                                 ; preds = %lor.lhs.false493
  %81 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call501 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %81, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp502 = icmp ne i32 %call501, 0
  %conv503 = zext i1 %cmp502 to i32
  %call504 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv503) #4
  %tobool505.not = icmp eq i32 %call504, 0
  br i1 %tobool505.not, label %err, label %lor.lhs.false506

lor.lhs.false506:                                 ; preds = %lor.lhs.false500
  %call507 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call508 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i64 0, i64 0), i32 noundef %call507, i32 noundef 224) #4
  %tobool509.not = icmp eq i32 %call508, 0
  br i1 %tobool509.not, label %err, label %lor.lhs.false510

lor.lhs.false510:                                 ; preds = %lor.lhs.false506
  %call511 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool512.not = icmp eq i32 %call511, 0
  br i1 %tobool512.not, label %err, label %lor.lhs.false513

lor.lhs.false513:                                 ; preds = %lor.lhs.false510
  %call514 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.161, i64 0, i64 0)) #4
  %cmp515 = icmp ne i32 %call514, 0
  %conv516 = zext i1 %cmp515 to i32
  %call517 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.160, i64 0, i64 0), i32 noundef %conv516) #4
  %tobool518.not = icmp eq i32 %call517, 0
  br i1 %tobool518.not, label %err, label %lor.lhs.false519

lor.lhs.false519:                                 ; preds = %lor.lhs.false513
  %82 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call520 = call i32 @BN_check_prime(%struct.bignum_st* noundef %82, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call521 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call520) #4
  %tobool522.not = icmp eq i32 %call521, 0
  br i1 %tobool522.not, label %err, label %lor.lhs.false523

lor.lhs.false523:                                 ; preds = %lor.lhs.false519
  %call524 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.163, i64 0, i64 0)) #4
  %cmp525 = icmp ne i32 %call524, 0
  %conv526 = zext i1 %cmp525 to i32
  %call527 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.162, i64 0, i64 0), i32 noundef %conv526) #4
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %err, label %lor.lhs.false529

lor.lhs.false529:                                 ; preds = %lor.lhs.false523
  %call530 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.165, i64 0, i64 0)) #4
  %cmp531 = icmp ne i32 %call530, 0
  %conv532 = zext i1 %cmp531 to i32
  %call533 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.164, i64 0, i64 0), i32 noundef %conv532) #4
  %tobool534.not = icmp eq i32 %call533, 0
  br i1 %tobool534.not, label %err, label %lor.lhs.false535

lor.lhs.false535:                                 ; preds = %lor.lhs.false529
  %83 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %84 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %85 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call536 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %83, %struct.bignum_st* noundef %84, %struct.bignum_st* noundef %85, %struct.bignum_ctx* noundef %call) #4
  %cmp537 = icmp ne i32 %call536, 0
  %conv538 = zext i1 %cmp537 to i32
  %call539 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv538) #4
  %tobool540.not = icmp eq i32 %call539, 0
  br i1 %tobool540.not, label %err, label %lor.lhs.false541

lor.lhs.false541:                                 ; preds = %lor.lhs.false535
  %call542 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.167, i64 0, i64 0)) #4
  %cmp543 = icmp ne i32 %call542, 0
  %conv544 = zext i1 %cmp543 to i32
  %call545 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.166, i64 0, i64 0), i32 noundef %conv544) #4
  %tobool546.not = icmp eq i32 %call545, 0
  br i1 %tobool546.not, label %err, label %lor.lhs.false547

lor.lhs.false547:                                 ; preds = %lor.lhs.false541
  %86 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call548 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %86, i32 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp549 = icmp ne i32 %call548, 0
  %conv550 = zext i1 %cmp549 to i32
  %call551 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv550) #4
  %tobool552.not = icmp eq i32 %call551, 0
  br i1 %tobool552.not, label %err, label %lor.lhs.false553

lor.lhs.false553:                                 ; preds = %lor.lhs.false547
  %call554 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call555 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call554, i32 noundef 0) #4
  %tobool556.not = icmp eq i32 %call555, 0
  br i1 %tobool556.not, label %err, label %lor.lhs.false557

lor.lhs.false557:                                 ; preds = %lor.lhs.false553
  %call558 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.169, i64 0, i64 0)) #4
  %cmp559 = icmp ne i32 %call558, 0
  %conv560 = zext i1 %cmp559 to i32
  %call561 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.168, i64 0, i64 0), i32 noundef %conv560) #4
  %tobool562.not = icmp eq i32 %call561, 0
  br i1 %tobool562.not, label %err, label %lor.lhs.false563

lor.lhs.false563:                                 ; preds = %lor.lhs.false557
  %87 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call564 = call %struct.bignum_st* @BN_value_one() #4
  %call565 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %87, %struct.bignum_st* noundef %call564) #4
  %cmp566 = icmp ne i32 %call565, 0
  %conv567 = zext i1 %cmp566 to i32
  %call568 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv567) #4
  %tobool569.not = icmp eq i32 %call568, 0
  br i1 %tobool569.not, label %err, label %lor.lhs.false570

lor.lhs.false570:                                 ; preds = %lor.lhs.false563
  %88 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %89 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call571 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %88, %struct.bignum_st* noundef %89, %struct.bignum_ctx* noundef %call) #4
  %cmp572 = icmp ne i32 %call571, 0
  %conv573 = zext i1 %cmp572 to i32
  %call574 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv573) #4
  %tobool575.not = icmp eq i32 %call574, 0
  br i1 %tobool575.not, label %err, label %if.end577

if.end577:                                        ; preds = %lor.lhs.false570
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.170, i64 0, i64 0)) #4
  %90 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %90) #4
  %91 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %91) #4
  %call578 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.172, i64 0, i64 0)) #4
  %cmp579 = icmp ne i32 %call578, 0
  %conv580 = zext i1 %cmp579 to i32
  %call581 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.171, i64 0, i64 0), i32 noundef %conv580) #4
  %tobool582.not = icmp eq i32 %call581, 0
  br i1 %tobool582.not, label %err, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %if.end577
  %92 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %93 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call584 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %92, %struct.bignum_st* noundef %93) #4
  %tobool585.not = icmp eq i32 %call584, 0
  br i1 %tobool585.not, label %err, label %lor.lhs.false586

lor.lhs.false586:                                 ; preds = %lor.lhs.false583
  %94 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call587 = call %struct.bignum_st* @BN_value_one() #4
  %call588 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %94, %struct.bignum_st* noundef %call587) #4
  %cmp589 = icmp ne i32 %call588, 0
  %conv590 = zext i1 %cmp589 to i32
  %call591 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv590) #4
  %tobool592.not = icmp eq i32 %call591, 0
  br i1 %tobool592.not, label %err, label %lor.lhs.false593

lor.lhs.false593:                                 ; preds = %lor.lhs.false586
  %95 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call594 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %95, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp595 = icmp ne i32 %call594, 0
  %conv596 = zext i1 %cmp595 to i32
  %call597 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv596) #4
  %tobool598.not = icmp eq i32 %call597, 0
  br i1 %tobool598.not, label %err, label %lor.lhs.false599

lor.lhs.false599:                                 ; preds = %lor.lhs.false593
  %call600 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call601 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), i32 noundef %call600, i32 noundef 256) #4
  %tobool602.not = icmp eq i32 %call601, 0
  br i1 %tobool602.not, label %err, label %lor.lhs.false603

lor.lhs.false603:                                 ; preds = %lor.lhs.false599
  %call604 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool605.not = icmp eq i32 %call604, 0
  br i1 %tobool605.not, label %err, label %lor.lhs.false606

lor.lhs.false606:                                 ; preds = %lor.lhs.false603
  %call607 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.175, i64 0, i64 0)) #4
  %cmp608 = icmp ne i32 %call607, 0
  %conv609 = zext i1 %cmp608 to i32
  %call610 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.174, i64 0, i64 0), i32 noundef %conv609) #4
  %tobool611.not = icmp eq i32 %call610, 0
  br i1 %tobool611.not, label %err, label %lor.lhs.false612

lor.lhs.false612:                                 ; preds = %lor.lhs.false606
  %96 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call613 = call i32 @BN_check_prime(%struct.bignum_st* noundef %96, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call614 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call613) #4
  %tobool615.not = icmp eq i32 %call614, 0
  br i1 %tobool615.not, label %err, label %lor.lhs.false616

lor.lhs.false616:                                 ; preds = %lor.lhs.false612
  %call617 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.177, i64 0, i64 0)) #4
  %cmp618 = icmp ne i32 %call617, 0
  %conv619 = zext i1 %cmp618 to i32
  %call620 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.176, i64 0, i64 0), i32 noundef %conv619) #4
  %tobool621.not = icmp eq i32 %call620, 0
  br i1 %tobool621.not, label %err, label %lor.lhs.false622

lor.lhs.false622:                                 ; preds = %lor.lhs.false616
  %call623 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.179, i64 0, i64 0)) #4
  %cmp624 = icmp ne i32 %call623, 0
  %conv625 = zext i1 %cmp624 to i32
  %call626 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.178, i64 0, i64 0), i32 noundef %conv625) #4
  %tobool627.not = icmp eq i32 %call626, 0
  br i1 %tobool627.not, label %err, label %lor.lhs.false628

lor.lhs.false628:                                 ; preds = %lor.lhs.false622
  %97 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %98 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %99 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call629 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %97, %struct.bignum_st* noundef %98, %struct.bignum_st* noundef %99, %struct.bignum_ctx* noundef %call) #4
  %cmp630 = icmp ne i32 %call629, 0
  %conv631 = zext i1 %cmp630 to i32
  %call632 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv631) #4
  %tobool633.not = icmp eq i32 %call632, 0
  br i1 %tobool633.not, label %err, label %lor.lhs.false634

lor.lhs.false634:                                 ; preds = %lor.lhs.false628
  %call635 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.181, i64 0, i64 0)) #4
  %cmp636 = icmp ne i32 %call635, 0
  %conv637 = zext i1 %cmp636 to i32
  %call638 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.180, i64 0, i64 0), i32 noundef %conv637) #4
  %tobool639.not = icmp eq i32 %call638, 0
  br i1 %tobool639.not, label %err, label %lor.lhs.false640

lor.lhs.false640:                                 ; preds = %lor.lhs.false634
  %100 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call641 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %100, i32 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp642 = icmp ne i32 %call641, 0
  %conv643 = zext i1 %cmp642 to i32
  %call644 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 445, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.138, i64 0, i64 0), i32 noundef %conv643) #4
  %tobool645.not = icmp eq i32 %call644, 0
  br i1 %tobool645.not, label %err, label %lor.lhs.false646

lor.lhs.false646:                                 ; preds = %lor.lhs.false640
  %call647 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call648 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call647, i32 noundef 0) #4
  %tobool649.not = icmp eq i32 %call648, 0
  br i1 %tobool649.not, label %err, label %lor.lhs.false650

lor.lhs.false650:                                 ; preds = %lor.lhs.false646
  %call651 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.183, i64 0, i64 0)) #4
  %cmp652 = icmp ne i32 %call651, 0
  %conv653 = zext i1 %cmp652 to i32
  %call654 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.182, i64 0, i64 0), i32 noundef %conv653) #4
  %tobool655.not = icmp eq i32 %call654, 0
  br i1 %tobool655.not, label %err, label %lor.lhs.false656

lor.lhs.false656:                                 ; preds = %lor.lhs.false650
  %101 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call657 = call %struct.bignum_st* @BN_value_one() #4
  %call658 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %101, %struct.bignum_st* noundef %call657) #4
  %cmp659 = icmp ne i32 %call658, 0
  %conv660 = zext i1 %cmp659 to i32
  %call661 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv660) #4
  %tobool662.not = icmp eq i32 %call661, 0
  br i1 %tobool662.not, label %err, label %lor.lhs.false663

lor.lhs.false663:                                 ; preds = %lor.lhs.false656
  %102 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %103 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call664 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %102, %struct.bignum_st* noundef %103, %struct.bignum_ctx* noundef %call) #4
  %cmp665 = icmp ne i32 %call664, 0
  %conv666 = zext i1 %cmp665 to i32
  %call667 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv666) #4
  %tobool668.not = icmp eq i32 %call667, 0
  br i1 %tobool668.not, label %err, label %if.end670

if.end670:                                        ; preds = %lor.lhs.false663
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.184, i64 0, i64 0)) #4
  %104 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %104) #4
  %105 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %105) #4
  %call671 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.186, i64 0, i64 0)) #4
  %cmp672 = icmp ne i32 %call671, 0
  %conv673 = zext i1 %cmp672 to i32
  %call674 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.185, i64 0, i64 0), i32 noundef %conv673) #4
  %tobool675.not = icmp eq i32 %call674, 0
  br i1 %tobool675.not, label %err, label %lor.lhs.false676

lor.lhs.false676:                                 ; preds = %if.end670
  %106 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %107 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call677 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %106, %struct.bignum_st* noundef %107) #4
  %tobool678.not = icmp eq i32 %call677, 0
  br i1 %tobool678.not, label %err, label %lor.lhs.false679

lor.lhs.false679:                                 ; preds = %lor.lhs.false676
  %108 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call680 = call %struct.bignum_st* @BN_value_one() #4
  %call681 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %108, %struct.bignum_st* noundef %call680) #4
  %cmp682 = icmp ne i32 %call681, 0
  %conv683 = zext i1 %cmp682 to i32
  %call684 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv683) #4
  %tobool685.not = icmp eq i32 %call684, 0
  br i1 %tobool685.not, label %err, label %lor.lhs.false686

lor.lhs.false686:                                 ; preds = %lor.lhs.false679
  %109 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call687 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %109, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp688 = icmp ne i32 %call687, 0
  %conv689 = zext i1 %cmp688 to i32
  %call690 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv689) #4
  %tobool691.not = icmp eq i32 %call690, 0
  br i1 %tobool691.not, label %err, label %lor.lhs.false692

lor.lhs.false692:                                 ; preds = %lor.lhs.false686
  %call693 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call694 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.187, i64 0, i64 0), i32 noundef %call693, i32 noundef 384) #4
  %tobool695.not = icmp eq i32 %call694, 0
  br i1 %tobool695.not, label %err, label %lor.lhs.false696

lor.lhs.false696:                                 ; preds = %lor.lhs.false692
  %call697 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool698.not = icmp eq i32 %call697, 0
  br i1 %tobool698.not, label %err, label %lor.lhs.false699

lor.lhs.false699:                                 ; preds = %lor.lhs.false696
  %call700 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.189, i64 0, i64 0)) #4
  %cmp701 = icmp ne i32 %call700, 0
  %conv702 = zext i1 %cmp701 to i32
  %call703 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.188, i64 0, i64 0), i32 noundef %conv702) #4
  %tobool704.not = icmp eq i32 %call703, 0
  br i1 %tobool704.not, label %err, label %lor.lhs.false705

lor.lhs.false705:                                 ; preds = %lor.lhs.false699
  %110 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call706 = call i32 @BN_check_prime(%struct.bignum_st* noundef %110, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call707 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call706) #4
  %tobool708.not = icmp eq i32 %call707, 0
  br i1 %tobool708.not, label %err, label %lor.lhs.false709

lor.lhs.false709:                                 ; preds = %lor.lhs.false705
  %call710 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.191, i64 0, i64 0)) #4
  %cmp711 = icmp ne i32 %call710, 0
  %conv712 = zext i1 %cmp711 to i32
  %call713 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.190, i64 0, i64 0), i32 noundef %conv712) #4
  %tobool714.not = icmp eq i32 %call713, 0
  br i1 %tobool714.not, label %err, label %lor.lhs.false715

lor.lhs.false715:                                 ; preds = %lor.lhs.false709
  %call716 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.193, i64 0, i64 0)) #4
  %cmp717 = icmp ne i32 %call716, 0
  %conv718 = zext i1 %cmp717 to i32
  %call719 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.192, i64 0, i64 0), i32 noundef %conv718) #4
  %tobool720.not = icmp eq i32 %call719, 0
  br i1 %tobool720.not, label %err, label %lor.lhs.false721

lor.lhs.false721:                                 ; preds = %lor.lhs.false715
  %111 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %112 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %113 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call722 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %111, %struct.bignum_st* noundef %112, %struct.bignum_st* noundef %113, %struct.bignum_ctx* noundef %call) #4
  %cmp723 = icmp ne i32 %call722, 0
  %conv724 = zext i1 %cmp723 to i32
  %call725 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv724) #4
  %tobool726.not = icmp eq i32 %call725, 0
  br i1 %tobool726.not, label %err, label %lor.lhs.false727

lor.lhs.false727:                                 ; preds = %lor.lhs.false721
  %call728 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([131 x i8], [131 x i8]* @.str.195, i64 0, i64 0)) #4
  %cmp729 = icmp ne i32 %call728, 0
  %conv730 = zext i1 %cmp729 to i32
  %call731 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([160 x i8], [160 x i8]* @.str.194, i64 0, i64 0), i32 noundef %conv730) #4
  %tobool732.not = icmp eq i32 %call731, 0
  br i1 %tobool732.not, label %err, label %lor.lhs.false733

lor.lhs.false733:                                 ; preds = %lor.lhs.false727
  %114 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call734 = call i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %114, i32 noundef 0, %struct.bignum_ctx* noundef %call) #4
  %cmp735 = icmp ne i32 %call734, 0
  %conv736 = zext i1 %cmp735 to i32
  %call737 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.153, i64 0, i64 0), i32 noundef %conv736) #4
  %tobool738.not = icmp eq i32 %call737, 0
  br i1 %tobool738.not, label %err, label %lor.lhs.false739

lor.lhs.false739:                                 ; preds = %lor.lhs.false733
  %call740 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call741 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call740, i32 noundef 0) #4
  %tobool742.not = icmp eq i32 %call741, 0
  br i1 %tobool742.not, label %err, label %lor.lhs.false743

lor.lhs.false743:                                 ; preds = %lor.lhs.false739
  %call744 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.197, i64 0, i64 0)) #4
  %cmp745 = icmp ne i32 %call744, 0
  %conv746 = zext i1 %cmp745 to i32
  %call747 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.196, i64 0, i64 0), i32 noundef %conv746) #4
  %tobool748.not = icmp eq i32 %call747, 0
  br i1 %tobool748.not, label %err, label %lor.lhs.false749

lor.lhs.false749:                                 ; preds = %lor.lhs.false743
  %115 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call750 = call %struct.bignum_st* @BN_value_one() #4
  %call751 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %115, %struct.bignum_st* noundef %call750) #4
  %cmp752 = icmp ne i32 %call751, 0
  %conv753 = zext i1 %cmp752 to i32
  %call754 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 502, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv753) #4
  %tobool755.not = icmp eq i32 %call754, 0
  br i1 %tobool755.not, label %err, label %lor.lhs.false756

lor.lhs.false756:                                 ; preds = %lor.lhs.false749
  %116 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %117 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call757 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %116, %struct.bignum_st* noundef %117, %struct.bignum_ctx* noundef %call) #4
  %cmp758 = icmp ne i32 %call757, 0
  %conv759 = zext i1 %cmp758 to i32
  %call760 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv759) #4
  %tobool761.not = icmp eq i32 %call760, 0
  br i1 %tobool761.not, label %err, label %if.end763

if.end763:                                        ; preds = %lor.lhs.false756
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.198, i64 0, i64 0)) #4
  %118 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %118) #4
  %119 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %119) #4
  %call764 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef getelementptr inbounds ([132 x i8], [132 x i8]* @.str.200, i64 0, i64 0)) #4
  %cmp765 = icmp ne i32 %call764, 0
  %conv766 = zext i1 %cmp765 to i32
  %call767 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([161 x i8], [161 x i8]* @.str.199, i64 0, i64 0), i32 noundef %conv766) #4
  %tobool768.not = icmp eq i32 %call767, 0
  br i1 %tobool768.not, label %err, label %lor.lhs.false769

lor.lhs.false769:                                 ; preds = %if.end763
  %120 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %121 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call770 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 515, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i64 0, i64 0), %struct.bignum_st* noundef %120, %struct.bignum_st* noundef %121) #4
  %tobool771.not = icmp eq i32 %call770, 0
  br i1 %tobool771.not, label %err, label %lor.lhs.false772

lor.lhs.false772:                                 ; preds = %lor.lhs.false769
  %122 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call773 = call %struct.bignum_st* @BN_value_one() #4
  %call774 = call i32 @BN_add(%struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %122, %struct.bignum_st* noundef %call773) #4
  %cmp775 = icmp ne i32 %call774, 0
  %conv776 = zext i1 %cmp775 to i32
  %call777 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv776) #4
  %tobool778.not = icmp eq i32 %call777, 0
  br i1 %tobool778.not, label %err, label %lor.lhs.false779

lor.lhs.false779:                                 ; preds = %lor.lhs.false772
  %123 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call780 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %123, %struct.bignum_st* noundef %call93, %struct.bignum_ctx* noundef %call) #4
  %cmp781 = icmp ne i32 %call780, 0
  %conv782 = zext i1 %cmp781 to i32
  %call783 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv782) #4
  %tobool784.not = icmp eq i32 %call783, 0
  br i1 %tobool784.not, label %err, label %lor.lhs.false785

lor.lhs.false785:                                 ; preds = %lor.lhs.false779
  %call786 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call30) #4
  %call787 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i64 0, i64 0), i32 noundef %call786, i32 noundef 521) #4
  %tobool788.not = icmp eq i32 %call787, 0
  br i1 %tobool788.not, label %err, label %lor.lhs.false789

lor.lhs.false789:                                 ; preds = %lor.lhs.false785
  %call790 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call30) #6
  %tobool791.not = icmp eq i32 %call790, 0
  br i1 %tobool791.not, label %err, label %lor.lhs.false792

lor.lhs.false792:                                 ; preds = %lor.lhs.false789
  %124 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %125 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call793 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef %124, %struct.bignum_st* noundef %125, %struct.bignum_ctx* noundef %call) #4
  %cmp794 = icmp ne i32 %call793, 0
  %conv795 = zext i1 %cmp794 to i32
  %call796 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv795) #4
  %tobool797.not = icmp eq i32 %call796, 0
  br i1 %tobool797.not, label %err, label %lor.lhs.false798

lor.lhs.false798:                                 ; preds = %lor.lhs.false792
  %call799 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call43, %struct.ec_point_st* noundef %call39) #4
  %cmp800 = icmp ne i32 %call799, 0
  %conv801 = zext i1 %cmp800 to i32
  %call802 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.202, i64 0, i64 0), i32 noundef %conv801) #4
  %tobool803.not = icmp eq i32 %call802, 0
  br i1 %tobool803.not, label %err, label %lor.lhs.false804

lor.lhs.false804:                                 ; preds = %lor.lhs.false798
  %call805 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43) #4
  %cmp806 = icmp ne i32 %call805, 0
  %conv807 = zext i1 %cmp806 to i32
  %call808 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 531, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv807) #4
  %tobool809.not = icmp eq i32 %call808, 0
  br i1 %tobool809.not, label %err, label %lor.lhs.false810

lor.lhs.false810:                                 ; preds = %lor.lhs.false804
  %call811 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %cmp812 = icmp ne i32 %call811, 0
  %conv813 = zext i1 %cmp812 to i32
  %call814 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 532, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.204, i64 0, i64 0), i32 noundef %conv813) #4
  %tobool815.not = icmp eq i32 %call814, 0
  br i1 %tobool815.not, label %err, label %lor.lhs.false816

lor.lhs.false816:                                 ; preds = %lor.lhs.false810
  %call817 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_ctx* noundef %call) #4
  %call818 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 533, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call817, i32 noundef 0) #4
  %tobool819.not = icmp eq i32 %call818, 0
  br i1 %tobool819.not, label %err, label %lor.lhs.false820

lor.lhs.false820:                                 ; preds = %lor.lhs.false816
  %call821 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %cmp822 = icmp ne i32 %call821, 0
  %conv823 = zext i1 %cmp822 to i32
  %call824 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 534, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv823) #4
  %tobool825.not = icmp eq i32 %call824, 0
  br i1 %tobool825.not, label %err, label %lor.lhs.false826

lor.lhs.false826:                                 ; preds = %lor.lhs.false820
  %call827 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call47, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %cmp828 = icmp ne i32 %call827, 0
  %conv829 = zext i1 %cmp828 to i32
  %call830 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 535, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.206, i64 0, i64 0), i32 noundef %conv829) #4
  %tobool831.not = icmp eq i32 %call830, 0
  br i1 %tobool831.not, label %err, label %lor.lhs.false832

lor.lhs.false832:                                 ; preds = %lor.lhs.false826
  %call833 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call47, %struct.ec_point_st* noundef %call47, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %cmp834 = icmp ne i32 %call833, 0
  %conv835 = zext i1 %cmp834 to i32
  %call836 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv835) #4
  %tobool837.not = icmp eq i32 %call836, 0
  br i1 %tobool837.not, label %err, label %lor.lhs.false838

lor.lhs.false838:                                 ; preds = %lor.lhs.false832
  %call839 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call47) #4
  %cmp840 = icmp ne i32 %call839, 0
  %conv841 = zext i1 %cmp840 to i32
  %call842 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.208, i64 0, i64 0), i32 noundef %conv841) #4
  %tobool843.not = icmp eq i32 %call842, 0
  br i1 %tobool843.not, label %err, label %lor.lhs.false844

lor.lhs.false844:                                 ; preds = %lor.lhs.false838
  %call845 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call43) #4
  %cmp846 = icmp ne i32 %call845, 0
  %conv847 = zext i1 %cmp846 to i32
  %call848 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv847) #4
  %tobool849.not = icmp eq i32 %call848, 0
  br i1 %tobool849.not, label %err, label %if.end851

if.end851:                                        ; preds = %lor.lhs.false844
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.209, i64 0, i64 0)) #4
  %arrayidx852 = getelementptr inbounds [4 x %struct.ec_point_st*], [4 x %struct.ec_point_st*]* %points, i64 0, i64 0
  store %struct.ec_point_st* %call43, %struct.ec_point_st** %arrayidx852, align 16, !tbaa !7
  %arrayidx853 = getelementptr inbounds [4 x %struct.ec_point_st*], [4 x %struct.ec_point_st*]* %points, i64 0, i64 1
  store %struct.ec_point_st* %call43, %struct.ec_point_st** %arrayidx853, align 8, !tbaa !7
  %arrayidx854 = getelementptr inbounds [4 x %struct.ec_point_st*], [4 x %struct.ec_point_st*]* %points, i64 0, i64 2
  store %struct.ec_point_st* %call43, %struct.ec_point_st** %arrayidx854, align 16, !tbaa !7
  %arrayidx855 = getelementptr inbounds [4 x %struct.ec_point_st*], [4 x %struct.ec_point_st*]* %points, i64 0, i64 3
  store %struct.ec_point_st* %call43, %struct.ec_point_st** %arrayidx855, align 8, !tbaa !7
  %126 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call856 = call i32 @EC_GROUP_get_order(%struct.ec_group_st* noundef %call30, %struct.bignum_st* noundef %126, %struct.bignum_ctx* noundef %call) #4
  %cmp857 = icmp ne i32 %call856, 0
  %conv858 = zext i1 %cmp857 to i32
  %call859 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.210, i64 0, i64 0), i32 noundef %conv858) #4
  %tobool860.not = icmp eq i32 %call859, 0
  br i1 %tobool860.not, label %err, label %lor.lhs.false861

lor.lhs.false861:                                 ; preds = %if.end851
  %127 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %128 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call862 = call %struct.bignum_st* @BN_value_one() #4
  %call863 = call i32 @BN_add(%struct.bignum_st* noundef %127, %struct.bignum_st* noundef %128, %struct.bignum_st* noundef %call862) #4
  %cmp864 = icmp ne i32 %call863, 0
  %conv865 = zext i1 %cmp864 to i32
  %call866 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.211, i64 0, i64 0), i32 noundef %conv865) #4
  %tobool867.not = icmp eq i32 %call866, 0
  br i1 %tobool867.not, label %err, label %lor.lhs.false868

lor.lhs.false868:                                 ; preds = %lor.lhs.false861
  %129 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call869 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %129) #4
  %tobool870.not = icmp eq i32 %call869, 0
  br i1 %tobool870.not, label %err, label %lor.lhs.false871

lor.lhs.false871:                                 ; preds = %lor.lhs.false868
  %130 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call872 = call i32 @BN_rshift1(%struct.bignum_st* noundef %130, %struct.bignum_st* noundef %130) #4
  %cmp873 = icmp ne i32 %call872, 0
  %conv874 = zext i1 %cmp873 to i32
  %call875 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.212, i64 0, i64 0), i32 noundef %conv874) #4
  %tobool876.not = icmp eq i32 %call875, 0
  br i1 %tobool876.not, label %err, label %if.end878

if.end878:                                        ; preds = %lor.lhs.false871
  %131 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %arrayidx879 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %scalars, i64 0, i64 0
  store %struct.bignum_st* %131, %struct.bignum_st** %arrayidx879, align 16, !tbaa !7
  %arrayidx880 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %scalars, i64 0, i64 1
  store %struct.bignum_st* %131, %struct.bignum_st** %arrayidx880, align 8, !tbaa !7
  %call883 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef null, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx852, %struct.bignum_st** noundef nonnull %arrayidx879, %struct.bignum_ctx* noundef %call) #4
  %cmp884 = icmp ne i32 %call883, 0
  %conv885 = zext i1 %cmp884 to i32
  %call886 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv885) #4
  %tobool887.not = icmp eq i32 %call886, 0
  br i1 %tobool887.not, label %err, label %lor.lhs.false888

lor.lhs.false888:                                 ; preds = %if.end878
  %132 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call891 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call47, %struct.bignum_st* noundef %132, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx852, %struct.bignum_st** noundef nonnull %arrayidx879, %struct.bignum_ctx* noundef %call) #4
  %cmp892 = icmp ne i32 %call891, 0
  %conv893 = zext i1 %cmp892 to i32
  %call894 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv893) #4
  %tobool895.not = icmp eq i32 %call894, 0
  br i1 %tobool895.not, label %err, label %lor.lhs.false896

lor.lhs.false896:                                 ; preds = %lor.lhs.false888
  %call897 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.ec_point_st* noundef %call47, %struct.bignum_ctx* noundef %call) #4
  %call898 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i64 0, i64 0), i32 noundef 0, i32 noundef %call897) #4
  %tobool899.not = icmp eq i32 %call898, 0
  br i1 %tobool899.not, label %err, label %lor.lhs.false900

lor.lhs.false900:                                 ; preds = %lor.lhs.false896
  %call901 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call47, %struct.ec_point_st* noundef %call43, %struct.bignum_ctx* noundef %call) #4
  %call902 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 561, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.215, i64 0, i64 0), i32 noundef 0, i32 noundef %call901) #4
  %tobool903.not = icmp eq i32 %call902, 0
  br i1 %tobool903.not, label %err, label %lor.lhs.false904

lor.lhs.false904:                                 ; preds = %lor.lhs.false900
  %133 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call905 = call i32 @BN_num_bits(%struct.bignum_st* noundef %133) #4
  %call906 = call i32 @BN_rand(%struct.bignum_st* noundef %133, i32 noundef %call905, i32 noundef 0, i32 noundef 0) #4
  %cmp907 = icmp ne i32 %call906, 0
  %conv908 = zext i1 %cmp907 to i32
  %call909 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.216, i64 0, i64 0), i32 noundef %conv908) #4
  %tobool910.not = icmp eq i32 %call909, 0
  br i1 %tobool910.not, label %err, label %lor.lhs.false911

lor.lhs.false911:                                 ; preds = %lor.lhs.false904
  %134 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %135 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call912 = call i32 @BN_add(%struct.bignum_st* noundef %134, %struct.bignum_st* noundef %134, %struct.bignum_st* noundef %135) #4
  %cmp913 = icmp ne i32 %call912, 0
  %conv914 = zext i1 %cmp913 to i32
  %call915 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.217, i64 0, i64 0), i32 noundef %conv914) #4
  %tobool916.not = icmp eq i32 %call915, 0
  br i1 %tobool916.not, label %err, label %if.end918

if.end918:                                        ; preds = %lor.lhs.false911
  %136 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_set_negative(%struct.bignum_st* noundef %136, i32 noundef 1) #4
  %137 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  store %struct.bignum_st* %137, %struct.bignum_st** %arrayidx879, align 16, !tbaa !7
  %138 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  store %struct.bignum_st* %138, %struct.bignum_st** %arrayidx880, align 8, !tbaa !7
  %call923 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef null, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx852, %struct.bignum_st** noundef nonnull %arrayidx879, %struct.bignum_ctx* noundef %call) #4
  %cmp924 = icmp ne i32 %call923, 0
  %conv925 = zext i1 %cmp924 to i32
  %call926 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv925) #4
  %tobool927.not = icmp eq i32 %call926, 0
  br i1 %tobool927.not, label %err, label %lor.lhs.false928

lor.lhs.false928:                                 ; preds = %if.end918
  %call929 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp930 = icmp ne i32 %call929, 0
  %conv931 = zext i1 %cmp930 to i32
  %call932 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv931) #4
  %tobool933.not = icmp eq i32 %call932, 0
  br i1 %tobool933.not, label %err, label %lor.lhs.false934

lor.lhs.false934:                                 ; preds = %lor.lhs.false928
  %139 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %140 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call935 = call i32 @BN_num_bits(%struct.bignum_st* noundef %140) #4
  %sub = add nsw i32 %call935, -1
  %call936 = call i32 @BN_rand(%struct.bignum_st* noundef %139, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #4
  %cmp937 = icmp ne i32 %call936, 0
  %conv938 = zext i1 %cmp937 to i32
  %call939 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 571, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.218, i64 0, i64 0), i32 noundef %conv938) #4
  %tobool940.not = icmp eq i32 %call939, 0
  br i1 %tobool940.not, label %err, label %lor.lhs.false941

lor.lhs.false941:                                 ; preds = %lor.lhs.false934
  %141 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %142 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %143 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call942 = call i32 @BN_add(%struct.bignum_st* noundef %141, %struct.bignum_st* noundef %142, %struct.bignum_st* noundef %143) #4
  %cmp943 = icmp ne i32 %call942, 0
  %conv944 = zext i1 %cmp943 to i32
  %call945 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.219, i64 0, i64 0), i32 noundef %conv944) #4
  %tobool946.not = icmp eq i32 %call945, 0
  br i1 %tobool946.not, label %err, label %if.end948

if.end948:                                        ; preds = %lor.lhs.false941
  %144 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_set_negative(%struct.bignum_st* noundef %144, i32 noundef 1) #4
  %145 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  store %struct.bignum_st* %145, %struct.bignum_st** %arrayidx879, align 16, !tbaa !7
  %146 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  store %struct.bignum_st* %146, %struct.bignum_st** %arrayidx880, align 8, !tbaa !7
  %147 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %arrayidx951 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %scalars, i64 0, i64 2
  store %struct.bignum_st* %147, %struct.bignum_st** %arrayidx951, align 16, !tbaa !7
  %call952 = call %struct.bignum_st* @BN_new() #4
  %148 = bitcast %struct.bignum_st* %call952 to i8*
  %call953 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.220, i64 0, i64 0), i8* noundef %148) #4
  %tobool954.not = icmp eq i32 %call953, 0
  br i1 %tobool954.not, label %err, label %if.end956

if.end956:                                        ; preds = %if.end948
  call void @BN_zero_ex(%struct.bignum_st* noundef %call952) #4
  %arrayidx957 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %scalars, i64 0, i64 3
  store %struct.bignum_st* %call952, %struct.bignum_st** %arrayidx957, align 8, !tbaa !7
  %call960 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39, %struct.bignum_st* noundef null, i64 noundef 4, %struct.ec_point_st** noundef nonnull %arrayidx852, %struct.bignum_st** noundef nonnull %arrayidx879, %struct.bignum_ctx* noundef %call) #4
  %cmp961 = icmp ne i32 %call960, 0
  %conv962 = zext i1 %cmp961 to i32
  %call963 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.221, i64 0, i64 0), i32 noundef %conv962) #4
  %tobool964.not = icmp eq i32 %call963, 0
  br i1 %tobool964.not, label %err, label %lor.lhs.false965

lor.lhs.false965:                                 ; preds = %if.end956
  %call966 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call30, %struct.ec_point_st* noundef %call39) #4
  %cmp967 = icmp ne i32 %call966, 0
  %conv968 = zext i1 %cmp967 to i32
  %call969 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv968) #4
  %tobool970.not = icmp eq i32 %call969, 0
  br i1 %tobool970.not, label %err, label %if.end972

if.end972:                                        ; preds = %lor.lhs.false965
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i64 0, i64 0)) #4
  br label %err

err:                                              ; preds = %if.end136, %lor.lhs.false142, %if.else, %do.body, %if.end956, %lor.lhs.false965, %if.end948, %if.end918, %lor.lhs.false928, %lor.lhs.false934, %lor.lhs.false941, %if.end878, %lor.lhs.false888, %lor.lhs.false896, %lor.lhs.false900, %lor.lhs.false904, %lor.lhs.false911, %if.end851, %lor.lhs.false861, %lor.lhs.false868, %lor.lhs.false871, %if.end763, %lor.lhs.false769, %lor.lhs.false772, %lor.lhs.false779, %lor.lhs.false785, %lor.lhs.false789, %lor.lhs.false792, %lor.lhs.false798, %lor.lhs.false804, %lor.lhs.false810, %lor.lhs.false816, %lor.lhs.false820, %lor.lhs.false826, %lor.lhs.false832, %lor.lhs.false838, %lor.lhs.false844, %if.end670, %lor.lhs.false676, %lor.lhs.false679, %lor.lhs.false686, %lor.lhs.false692, %lor.lhs.false696, %lor.lhs.false699, %lor.lhs.false705, %lor.lhs.false709, %lor.lhs.false715, %lor.lhs.false721, %lor.lhs.false727, %lor.lhs.false733, %lor.lhs.false739, %lor.lhs.false743, %lor.lhs.false749, %lor.lhs.false756, %if.end577, %lor.lhs.false583, %lor.lhs.false586, %lor.lhs.false593, %lor.lhs.false599, %lor.lhs.false603, %lor.lhs.false606, %lor.lhs.false612, %lor.lhs.false616, %lor.lhs.false622, %lor.lhs.false628, %lor.lhs.false634, %lor.lhs.false640, %lor.lhs.false646, %lor.lhs.false650, %lor.lhs.false656, %lor.lhs.false663, %if.end484, %lor.lhs.false490, %lor.lhs.false493, %lor.lhs.false500, %lor.lhs.false506, %lor.lhs.false510, %lor.lhs.false513, %lor.lhs.false519, %lor.lhs.false523, %lor.lhs.false529, %lor.lhs.false535, %lor.lhs.false541, %lor.lhs.false547, %lor.lhs.false553, %lor.lhs.false557, %lor.lhs.false563, %lor.lhs.false570, %if.end391, %lor.lhs.false397, %lor.lhs.false400, %lor.lhs.false407, %lor.lhs.false413, %lor.lhs.false417, %lor.lhs.false420, %lor.lhs.false426, %lor.lhs.false430, %lor.lhs.false436, %lor.lhs.false442, %lor.lhs.false448, %lor.lhs.false454, %lor.lhs.false460, %lor.lhs.false464, %lor.lhs.false470, %lor.lhs.false477, %if.end311, %lor.lhs.false317, %lor.lhs.false320, %lor.lhs.false324, %lor.lhs.false327, %lor.lhs.false333, %lor.lhs.false337, %lor.lhs.false343, %lor.lhs.false349, %lor.lhs.false355, %lor.lhs.false361, %lor.lhs.false367, %lor.lhs.false371, %lor.lhs.false377, %lor.lhs.false384, %if.end217, %lor.lhs.false224, %lor.lhs.false228, %lor.lhs.false234, %lor.lhs.false238, %lor.lhs.false244, %lor.lhs.false250, %lor.lhs.false256, %lor.lhs.false262, %lor.lhs.false268, %lor.lhs.false275, %lor.lhs.false281, %lor.lhs.false287, %lor.lhs.false291, %lor.lhs.false297, %lor.lhs.false304, %if.end199, %lor.lhs.false205, %lor.lhs.false212, %if.end181, %lor.lhs.false187, %lor.lhs.false194, %if.end164, %lor.lhs.false169, %lor.lhs.false176, %do.end, %lor.lhs.false157, %if.then113, %if.end, %lor.lhs.false42, %lor.lhs.false46, %lor.lhs.false50, %lor.lhs.false56, %lor.lhs.false62, %lor.lhs.false68, %lor.lhs.false74, %lor.lhs.false80, %lor.lhs.false84, %lor.lhs.false88, %lor.lhs.false92, %lor.lhs.false96, %lor.lhs.false102, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false23, %lor.lhs.false29, %lor.lhs.false33, %if.end972, %if.end120
  %scalar3.0 = phi %struct.bignum_st* [ %call952, %if.end972 ], [ %call952, %lor.lhs.false965 ], [ %call952, %if.end956 ], [ %call952, %if.end948 ], [ null, %lor.lhs.false941 ], [ null, %lor.lhs.false934 ], [ null, %lor.lhs.false928 ], [ null, %if.end918 ], [ null, %lor.lhs.false911 ], [ null, %lor.lhs.false904 ], [ null, %lor.lhs.false900 ], [ null, %lor.lhs.false896 ], [ null, %lor.lhs.false888 ], [ null, %if.end878 ], [ null, %lor.lhs.false871 ], [ null, %lor.lhs.false868 ], [ null, %lor.lhs.false861 ], [ null, %if.end851 ], [ null, %lor.lhs.false844 ], [ null, %lor.lhs.false838 ], [ null, %lor.lhs.false832 ], [ null, %lor.lhs.false826 ], [ null, %lor.lhs.false820 ], [ null, %lor.lhs.false816 ], [ null, %lor.lhs.false810 ], [ null, %lor.lhs.false804 ], [ null, %lor.lhs.false798 ], [ null, %lor.lhs.false792 ], [ null, %lor.lhs.false789 ], [ null, %lor.lhs.false785 ], [ null, %lor.lhs.false779 ], [ null, %lor.lhs.false772 ], [ null, %lor.lhs.false769 ], [ null, %if.end763 ], [ null, %lor.lhs.false756 ], [ null, %lor.lhs.false749 ], [ null, %lor.lhs.false743 ], [ null, %lor.lhs.false739 ], [ null, %lor.lhs.false733 ], [ null, %lor.lhs.false727 ], [ null, %lor.lhs.false721 ], [ null, %lor.lhs.false715 ], [ null, %lor.lhs.false709 ], [ null, %lor.lhs.false705 ], [ null, %lor.lhs.false699 ], [ null, %lor.lhs.false696 ], [ null, %lor.lhs.false692 ], [ null, %lor.lhs.false686 ], [ null, %lor.lhs.false679 ], [ null, %lor.lhs.false676 ], [ null, %if.end670 ], [ null, %lor.lhs.false663 ], [ null, %lor.lhs.false656 ], [ null, %lor.lhs.false650 ], [ null, %lor.lhs.false646 ], [ null, %lor.lhs.false640 ], [ null, %lor.lhs.false634 ], [ null, %lor.lhs.false628 ], [ null, %lor.lhs.false622 ], [ null, %lor.lhs.false616 ], [ null, %lor.lhs.false612 ], [ null, %lor.lhs.false606 ], [ null, %lor.lhs.false603 ], [ null, %lor.lhs.false599 ], [ null, %lor.lhs.false593 ], [ null, %lor.lhs.false586 ], [ null, %lor.lhs.false583 ], [ null, %if.end577 ], [ null, %lor.lhs.false570 ], [ null, %lor.lhs.false563 ], [ null, %lor.lhs.false557 ], [ null, %lor.lhs.false553 ], [ null, %lor.lhs.false547 ], [ null, %lor.lhs.false541 ], [ null, %lor.lhs.false535 ], [ null, %lor.lhs.false529 ], [ null, %lor.lhs.false523 ], [ null, %lor.lhs.false519 ], [ null, %lor.lhs.false513 ], [ null, %lor.lhs.false510 ], [ null, %lor.lhs.false506 ], [ null, %lor.lhs.false500 ], [ null, %lor.lhs.false493 ], [ null, %lor.lhs.false490 ], [ null, %if.end484 ], [ null, %lor.lhs.false477 ], [ null, %lor.lhs.false470 ], [ null, %lor.lhs.false464 ], [ null, %lor.lhs.false460 ], [ null, %lor.lhs.false454 ], [ null, %lor.lhs.false448 ], [ null, %lor.lhs.false442 ], [ null, %lor.lhs.false436 ], [ null, %lor.lhs.false430 ], [ null, %lor.lhs.false426 ], [ null, %lor.lhs.false420 ], [ null, %lor.lhs.false417 ], [ null, %lor.lhs.false413 ], [ null, %lor.lhs.false407 ], [ null, %lor.lhs.false400 ], [ null, %lor.lhs.false397 ], [ null, %if.end391 ], [ null, %lor.lhs.false384 ], [ null, %lor.lhs.false377 ], [ null, %lor.lhs.false371 ], [ null, %lor.lhs.false367 ], [ null, %lor.lhs.false361 ], [ null, %lor.lhs.false355 ], [ null, %lor.lhs.false349 ], [ null, %lor.lhs.false343 ], [ null, %lor.lhs.false337 ], [ null, %lor.lhs.false333 ], [ null, %lor.lhs.false327 ], [ null, %lor.lhs.false324 ], [ null, %lor.lhs.false320 ], [ null, %lor.lhs.false317 ], [ null, %if.end311 ], [ null, %lor.lhs.false304 ], [ null, %lor.lhs.false297 ], [ null, %lor.lhs.false291 ], [ null, %lor.lhs.false287 ], [ null, %lor.lhs.false281 ], [ null, %lor.lhs.false275 ], [ null, %lor.lhs.false268 ], [ null, %lor.lhs.false262 ], [ null, %lor.lhs.false256 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false244 ], [ null, %lor.lhs.false238 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false224 ], [ null, %if.end217 ], [ null, %lor.lhs.false212 ], [ null, %lor.lhs.false205 ], [ null, %if.end199 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false187 ], [ null, %if.end181 ], [ null, %lor.lhs.false176 ], [ null, %lor.lhs.false169 ], [ null, %if.end164 ], [ null, %lor.lhs.false157 ], [ null, %do.end ], [ null, %if.end120 ], [ null, %if.then113 ], [ null, %lor.lhs.false102 ], [ null, %lor.lhs.false96 ], [ null, %lor.lhs.false92 ], [ null, %lor.lhs.false88 ], [ null, %lor.lhs.false84 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false56 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %if.end ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ null, %lor.lhs.false142 ], [ null, %if.end136 ]
  %group.0 = phi %struct.ec_group_st* [ %call30, %if.end972 ], [ %call30, %lor.lhs.false965 ], [ %call30, %if.end956 ], [ %call30, %if.end948 ], [ %call30, %lor.lhs.false941 ], [ %call30, %lor.lhs.false934 ], [ %call30, %lor.lhs.false928 ], [ %call30, %if.end918 ], [ %call30, %lor.lhs.false911 ], [ %call30, %lor.lhs.false904 ], [ %call30, %lor.lhs.false900 ], [ %call30, %lor.lhs.false896 ], [ %call30, %lor.lhs.false888 ], [ %call30, %if.end878 ], [ %call30, %lor.lhs.false871 ], [ %call30, %lor.lhs.false868 ], [ %call30, %lor.lhs.false861 ], [ %call30, %if.end851 ], [ %call30, %lor.lhs.false844 ], [ %call30, %lor.lhs.false838 ], [ %call30, %lor.lhs.false832 ], [ %call30, %lor.lhs.false826 ], [ %call30, %lor.lhs.false820 ], [ %call30, %lor.lhs.false816 ], [ %call30, %lor.lhs.false810 ], [ %call30, %lor.lhs.false804 ], [ %call30, %lor.lhs.false798 ], [ %call30, %lor.lhs.false792 ], [ %call30, %lor.lhs.false789 ], [ %call30, %lor.lhs.false785 ], [ %call30, %lor.lhs.false779 ], [ %call30, %lor.lhs.false772 ], [ %call30, %lor.lhs.false769 ], [ %call30, %if.end763 ], [ %call30, %lor.lhs.false756 ], [ %call30, %lor.lhs.false749 ], [ %call30, %lor.lhs.false743 ], [ %call30, %lor.lhs.false739 ], [ %call30, %lor.lhs.false733 ], [ %call30, %lor.lhs.false727 ], [ %call30, %lor.lhs.false721 ], [ %call30, %lor.lhs.false715 ], [ %call30, %lor.lhs.false709 ], [ %call30, %lor.lhs.false705 ], [ %call30, %lor.lhs.false699 ], [ %call30, %lor.lhs.false696 ], [ %call30, %lor.lhs.false692 ], [ %call30, %lor.lhs.false686 ], [ %call30, %lor.lhs.false679 ], [ %call30, %lor.lhs.false676 ], [ %call30, %if.end670 ], [ %call30, %lor.lhs.false663 ], [ %call30, %lor.lhs.false656 ], [ %call30, %lor.lhs.false650 ], [ %call30, %lor.lhs.false646 ], [ %call30, %lor.lhs.false640 ], [ %call30, %lor.lhs.false634 ], [ %call30, %lor.lhs.false628 ], [ %call30, %lor.lhs.false622 ], [ %call30, %lor.lhs.false616 ], [ %call30, %lor.lhs.false612 ], [ %call30, %lor.lhs.false606 ], [ %call30, %lor.lhs.false603 ], [ %call30, %lor.lhs.false599 ], [ %call30, %lor.lhs.false593 ], [ %call30, %lor.lhs.false586 ], [ %call30, %lor.lhs.false583 ], [ %call30, %if.end577 ], [ %call30, %lor.lhs.false570 ], [ %call30, %lor.lhs.false563 ], [ %call30, %lor.lhs.false557 ], [ %call30, %lor.lhs.false553 ], [ %call30, %lor.lhs.false547 ], [ %call30, %lor.lhs.false541 ], [ %call30, %lor.lhs.false535 ], [ %call30, %lor.lhs.false529 ], [ %call30, %lor.lhs.false523 ], [ %call30, %lor.lhs.false519 ], [ %call30, %lor.lhs.false513 ], [ %call30, %lor.lhs.false510 ], [ %call30, %lor.lhs.false506 ], [ %call30, %lor.lhs.false500 ], [ %call30, %lor.lhs.false493 ], [ %call30, %lor.lhs.false490 ], [ %call30, %if.end484 ], [ %call30, %lor.lhs.false477 ], [ %call30, %lor.lhs.false470 ], [ %call30, %lor.lhs.false464 ], [ %call30, %lor.lhs.false460 ], [ %call30, %lor.lhs.false454 ], [ %call30, %lor.lhs.false448 ], [ %call30, %lor.lhs.false442 ], [ %call30, %lor.lhs.false436 ], [ %call30, %lor.lhs.false430 ], [ %call30, %lor.lhs.false426 ], [ %call30, %lor.lhs.false420 ], [ %call30, %lor.lhs.false417 ], [ %call30, %lor.lhs.false413 ], [ %call30, %lor.lhs.false407 ], [ %call30, %lor.lhs.false400 ], [ %call30, %lor.lhs.false397 ], [ %call30, %if.end391 ], [ %call30, %lor.lhs.false384 ], [ %call30, %lor.lhs.false377 ], [ %call30, %lor.lhs.false371 ], [ %call30, %lor.lhs.false367 ], [ %call30, %lor.lhs.false361 ], [ %call30, %lor.lhs.false355 ], [ %call30, %lor.lhs.false349 ], [ %call30, %lor.lhs.false343 ], [ %call30, %lor.lhs.false337 ], [ %call30, %lor.lhs.false333 ], [ %call30, %lor.lhs.false327 ], [ %call30, %lor.lhs.false324 ], [ %call30, %lor.lhs.false320 ], [ %call30, %lor.lhs.false317 ], [ %call30, %if.end311 ], [ %call30, %lor.lhs.false304 ], [ %call30, %lor.lhs.false297 ], [ %call30, %lor.lhs.false291 ], [ %call30, %lor.lhs.false287 ], [ %call30, %lor.lhs.false281 ], [ %call30, %lor.lhs.false275 ], [ %call30, %lor.lhs.false268 ], [ %call30, %lor.lhs.false262 ], [ %call30, %lor.lhs.false256 ], [ %call30, %lor.lhs.false250 ], [ %call30, %lor.lhs.false244 ], [ %call30, %lor.lhs.false238 ], [ %call30, %lor.lhs.false234 ], [ %call30, %lor.lhs.false228 ], [ %call30, %lor.lhs.false224 ], [ %call30, %if.end217 ], [ %call30, %lor.lhs.false212 ], [ %call30, %lor.lhs.false205 ], [ %call30, %if.end199 ], [ %call30, %lor.lhs.false194 ], [ %call30, %lor.lhs.false187 ], [ %call30, %if.end181 ], [ %call30, %lor.lhs.false176 ], [ %call30, %lor.lhs.false169 ], [ %call30, %if.end164 ], [ %call30, %lor.lhs.false157 ], [ %call30, %do.end ], [ %call30, %if.end120 ], [ %call30, %if.then113 ], [ %call30, %lor.lhs.false102 ], [ %call30, %lor.lhs.false96 ], [ %call30, %lor.lhs.false92 ], [ %call30, %lor.lhs.false88 ], [ %call30, %lor.lhs.false84 ], [ %call30, %lor.lhs.false80 ], [ %call30, %lor.lhs.false74 ], [ %call30, %lor.lhs.false68 ], [ %call30, %lor.lhs.false62 ], [ %call30, %lor.lhs.false56 ], [ %call30, %lor.lhs.false50 ], [ %call30, %lor.lhs.false46 ], [ %call30, %lor.lhs.false42 ], [ %call30, %if.end ], [ %call30, %lor.lhs.false33 ], [ %call30, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call30, %do.body ], [ %call30, %if.else ], [ %call30, %lor.lhs.false142 ], [ %call30, %if.end136 ]
  %P.0 = phi %struct.ec_point_st* [ %call39, %if.end972 ], [ %call39, %lor.lhs.false965 ], [ %call39, %if.end956 ], [ %call39, %if.end948 ], [ %call39, %lor.lhs.false941 ], [ %call39, %lor.lhs.false934 ], [ %call39, %lor.lhs.false928 ], [ %call39, %if.end918 ], [ %call39, %lor.lhs.false911 ], [ %call39, %lor.lhs.false904 ], [ %call39, %lor.lhs.false900 ], [ %call39, %lor.lhs.false896 ], [ %call39, %lor.lhs.false888 ], [ %call39, %if.end878 ], [ %call39, %lor.lhs.false871 ], [ %call39, %lor.lhs.false868 ], [ %call39, %lor.lhs.false861 ], [ %call39, %if.end851 ], [ %call39, %lor.lhs.false844 ], [ %call39, %lor.lhs.false838 ], [ %call39, %lor.lhs.false832 ], [ %call39, %lor.lhs.false826 ], [ %call39, %lor.lhs.false820 ], [ %call39, %lor.lhs.false816 ], [ %call39, %lor.lhs.false810 ], [ %call39, %lor.lhs.false804 ], [ %call39, %lor.lhs.false798 ], [ %call39, %lor.lhs.false792 ], [ %call39, %lor.lhs.false789 ], [ %call39, %lor.lhs.false785 ], [ %call39, %lor.lhs.false779 ], [ %call39, %lor.lhs.false772 ], [ %call39, %lor.lhs.false769 ], [ %call39, %if.end763 ], [ %call39, %lor.lhs.false756 ], [ %call39, %lor.lhs.false749 ], [ %call39, %lor.lhs.false743 ], [ %call39, %lor.lhs.false739 ], [ %call39, %lor.lhs.false733 ], [ %call39, %lor.lhs.false727 ], [ %call39, %lor.lhs.false721 ], [ %call39, %lor.lhs.false715 ], [ %call39, %lor.lhs.false709 ], [ %call39, %lor.lhs.false705 ], [ %call39, %lor.lhs.false699 ], [ %call39, %lor.lhs.false696 ], [ %call39, %lor.lhs.false692 ], [ %call39, %lor.lhs.false686 ], [ %call39, %lor.lhs.false679 ], [ %call39, %lor.lhs.false676 ], [ %call39, %if.end670 ], [ %call39, %lor.lhs.false663 ], [ %call39, %lor.lhs.false656 ], [ %call39, %lor.lhs.false650 ], [ %call39, %lor.lhs.false646 ], [ %call39, %lor.lhs.false640 ], [ %call39, %lor.lhs.false634 ], [ %call39, %lor.lhs.false628 ], [ %call39, %lor.lhs.false622 ], [ %call39, %lor.lhs.false616 ], [ %call39, %lor.lhs.false612 ], [ %call39, %lor.lhs.false606 ], [ %call39, %lor.lhs.false603 ], [ %call39, %lor.lhs.false599 ], [ %call39, %lor.lhs.false593 ], [ %call39, %lor.lhs.false586 ], [ %call39, %lor.lhs.false583 ], [ %call39, %if.end577 ], [ %call39, %lor.lhs.false570 ], [ %call39, %lor.lhs.false563 ], [ %call39, %lor.lhs.false557 ], [ %call39, %lor.lhs.false553 ], [ %call39, %lor.lhs.false547 ], [ %call39, %lor.lhs.false541 ], [ %call39, %lor.lhs.false535 ], [ %call39, %lor.lhs.false529 ], [ %call39, %lor.lhs.false523 ], [ %call39, %lor.lhs.false519 ], [ %call39, %lor.lhs.false513 ], [ %call39, %lor.lhs.false510 ], [ %call39, %lor.lhs.false506 ], [ %call39, %lor.lhs.false500 ], [ %call39, %lor.lhs.false493 ], [ %call39, %lor.lhs.false490 ], [ %call39, %if.end484 ], [ %call39, %lor.lhs.false477 ], [ %call39, %lor.lhs.false470 ], [ %call39, %lor.lhs.false464 ], [ %call39, %lor.lhs.false460 ], [ %call39, %lor.lhs.false454 ], [ %call39, %lor.lhs.false448 ], [ %call39, %lor.lhs.false442 ], [ %call39, %lor.lhs.false436 ], [ %call39, %lor.lhs.false430 ], [ %call39, %lor.lhs.false426 ], [ %call39, %lor.lhs.false420 ], [ %call39, %lor.lhs.false417 ], [ %call39, %lor.lhs.false413 ], [ %call39, %lor.lhs.false407 ], [ %call39, %lor.lhs.false400 ], [ %call39, %lor.lhs.false397 ], [ %call39, %if.end391 ], [ %call39, %lor.lhs.false384 ], [ %call39, %lor.lhs.false377 ], [ %call39, %lor.lhs.false371 ], [ %call39, %lor.lhs.false367 ], [ %call39, %lor.lhs.false361 ], [ %call39, %lor.lhs.false355 ], [ %call39, %lor.lhs.false349 ], [ %call39, %lor.lhs.false343 ], [ %call39, %lor.lhs.false337 ], [ %call39, %lor.lhs.false333 ], [ %call39, %lor.lhs.false327 ], [ %call39, %lor.lhs.false324 ], [ %call39, %lor.lhs.false320 ], [ %call39, %lor.lhs.false317 ], [ %call39, %if.end311 ], [ %call39, %lor.lhs.false304 ], [ %call39, %lor.lhs.false297 ], [ %call39, %lor.lhs.false291 ], [ %call39, %lor.lhs.false287 ], [ %call39, %lor.lhs.false281 ], [ %call39, %lor.lhs.false275 ], [ %call39, %lor.lhs.false268 ], [ %call39, %lor.lhs.false262 ], [ %call39, %lor.lhs.false256 ], [ %call39, %lor.lhs.false250 ], [ %call39, %lor.lhs.false244 ], [ %call39, %lor.lhs.false238 ], [ %call39, %lor.lhs.false234 ], [ %call39, %lor.lhs.false228 ], [ %call39, %lor.lhs.false224 ], [ %call39, %if.end217 ], [ %call39, %lor.lhs.false212 ], [ %call39, %lor.lhs.false205 ], [ %call39, %if.end199 ], [ %call39, %lor.lhs.false194 ], [ %call39, %lor.lhs.false187 ], [ %call39, %if.end181 ], [ %call39, %lor.lhs.false176 ], [ %call39, %lor.lhs.false169 ], [ %call39, %if.end164 ], [ %call39, %lor.lhs.false157 ], [ %call39, %do.end ], [ %call39, %if.end120 ], [ %call39, %if.then113 ], [ %call39, %lor.lhs.false102 ], [ %call39, %lor.lhs.false96 ], [ %call39, %lor.lhs.false92 ], [ %call39, %lor.lhs.false88 ], [ %call39, %lor.lhs.false84 ], [ %call39, %lor.lhs.false80 ], [ %call39, %lor.lhs.false74 ], [ %call39, %lor.lhs.false68 ], [ %call39, %lor.lhs.false62 ], [ %call39, %lor.lhs.false56 ], [ %call39, %lor.lhs.false50 ], [ %call39, %lor.lhs.false46 ], [ %call39, %lor.lhs.false42 ], [ %call39, %if.end ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call39, %do.body ], [ %call39, %if.else ], [ %call39, %lor.lhs.false142 ], [ %call39, %if.end136 ]
  %Q.0 = phi %struct.ec_point_st* [ %call43, %if.end972 ], [ %call43, %lor.lhs.false965 ], [ %call43, %if.end956 ], [ %call43, %if.end948 ], [ %call43, %lor.lhs.false941 ], [ %call43, %lor.lhs.false934 ], [ %call43, %lor.lhs.false928 ], [ %call43, %if.end918 ], [ %call43, %lor.lhs.false911 ], [ %call43, %lor.lhs.false904 ], [ %call43, %lor.lhs.false900 ], [ %call43, %lor.lhs.false896 ], [ %call43, %lor.lhs.false888 ], [ %call43, %if.end878 ], [ %call43, %lor.lhs.false871 ], [ %call43, %lor.lhs.false868 ], [ %call43, %lor.lhs.false861 ], [ %call43, %if.end851 ], [ %call43, %lor.lhs.false844 ], [ %call43, %lor.lhs.false838 ], [ %call43, %lor.lhs.false832 ], [ %call43, %lor.lhs.false826 ], [ %call43, %lor.lhs.false820 ], [ %call43, %lor.lhs.false816 ], [ %call43, %lor.lhs.false810 ], [ %call43, %lor.lhs.false804 ], [ %call43, %lor.lhs.false798 ], [ %call43, %lor.lhs.false792 ], [ %call43, %lor.lhs.false789 ], [ %call43, %lor.lhs.false785 ], [ %call43, %lor.lhs.false779 ], [ %call43, %lor.lhs.false772 ], [ %call43, %lor.lhs.false769 ], [ %call43, %if.end763 ], [ %call43, %lor.lhs.false756 ], [ %call43, %lor.lhs.false749 ], [ %call43, %lor.lhs.false743 ], [ %call43, %lor.lhs.false739 ], [ %call43, %lor.lhs.false733 ], [ %call43, %lor.lhs.false727 ], [ %call43, %lor.lhs.false721 ], [ %call43, %lor.lhs.false715 ], [ %call43, %lor.lhs.false709 ], [ %call43, %lor.lhs.false705 ], [ %call43, %lor.lhs.false699 ], [ %call43, %lor.lhs.false696 ], [ %call43, %lor.lhs.false692 ], [ %call43, %lor.lhs.false686 ], [ %call43, %lor.lhs.false679 ], [ %call43, %lor.lhs.false676 ], [ %call43, %if.end670 ], [ %call43, %lor.lhs.false663 ], [ %call43, %lor.lhs.false656 ], [ %call43, %lor.lhs.false650 ], [ %call43, %lor.lhs.false646 ], [ %call43, %lor.lhs.false640 ], [ %call43, %lor.lhs.false634 ], [ %call43, %lor.lhs.false628 ], [ %call43, %lor.lhs.false622 ], [ %call43, %lor.lhs.false616 ], [ %call43, %lor.lhs.false612 ], [ %call43, %lor.lhs.false606 ], [ %call43, %lor.lhs.false603 ], [ %call43, %lor.lhs.false599 ], [ %call43, %lor.lhs.false593 ], [ %call43, %lor.lhs.false586 ], [ %call43, %lor.lhs.false583 ], [ %call43, %if.end577 ], [ %call43, %lor.lhs.false570 ], [ %call43, %lor.lhs.false563 ], [ %call43, %lor.lhs.false557 ], [ %call43, %lor.lhs.false553 ], [ %call43, %lor.lhs.false547 ], [ %call43, %lor.lhs.false541 ], [ %call43, %lor.lhs.false535 ], [ %call43, %lor.lhs.false529 ], [ %call43, %lor.lhs.false523 ], [ %call43, %lor.lhs.false519 ], [ %call43, %lor.lhs.false513 ], [ %call43, %lor.lhs.false510 ], [ %call43, %lor.lhs.false506 ], [ %call43, %lor.lhs.false500 ], [ %call43, %lor.lhs.false493 ], [ %call43, %lor.lhs.false490 ], [ %call43, %if.end484 ], [ %call43, %lor.lhs.false477 ], [ %call43, %lor.lhs.false470 ], [ %call43, %lor.lhs.false464 ], [ %call43, %lor.lhs.false460 ], [ %call43, %lor.lhs.false454 ], [ %call43, %lor.lhs.false448 ], [ %call43, %lor.lhs.false442 ], [ %call43, %lor.lhs.false436 ], [ %call43, %lor.lhs.false430 ], [ %call43, %lor.lhs.false426 ], [ %call43, %lor.lhs.false420 ], [ %call43, %lor.lhs.false417 ], [ %call43, %lor.lhs.false413 ], [ %call43, %lor.lhs.false407 ], [ %call43, %lor.lhs.false400 ], [ %call43, %lor.lhs.false397 ], [ %call43, %if.end391 ], [ %call43, %lor.lhs.false384 ], [ %call43, %lor.lhs.false377 ], [ %call43, %lor.lhs.false371 ], [ %call43, %lor.lhs.false367 ], [ %call43, %lor.lhs.false361 ], [ %call43, %lor.lhs.false355 ], [ %call43, %lor.lhs.false349 ], [ %call43, %lor.lhs.false343 ], [ %call43, %lor.lhs.false337 ], [ %call43, %lor.lhs.false333 ], [ %call43, %lor.lhs.false327 ], [ %call43, %lor.lhs.false324 ], [ %call43, %lor.lhs.false320 ], [ %call43, %lor.lhs.false317 ], [ %call43, %if.end311 ], [ %call43, %lor.lhs.false304 ], [ %call43, %lor.lhs.false297 ], [ %call43, %lor.lhs.false291 ], [ %call43, %lor.lhs.false287 ], [ %call43, %lor.lhs.false281 ], [ %call43, %lor.lhs.false275 ], [ %call43, %lor.lhs.false268 ], [ %call43, %lor.lhs.false262 ], [ %call43, %lor.lhs.false256 ], [ %call43, %lor.lhs.false250 ], [ %call43, %lor.lhs.false244 ], [ %call43, %lor.lhs.false238 ], [ %call43, %lor.lhs.false234 ], [ %call43, %lor.lhs.false228 ], [ %call43, %lor.lhs.false224 ], [ %call43, %if.end217 ], [ %call43, %lor.lhs.false212 ], [ %call43, %lor.lhs.false205 ], [ %call43, %if.end199 ], [ %call43, %lor.lhs.false194 ], [ %call43, %lor.lhs.false187 ], [ %call43, %if.end181 ], [ %call43, %lor.lhs.false176 ], [ %call43, %lor.lhs.false169 ], [ %call43, %if.end164 ], [ %call43, %lor.lhs.false157 ], [ %call43, %do.end ], [ %call43, %if.end120 ], [ %call43, %if.then113 ], [ %call43, %lor.lhs.false102 ], [ %call43, %lor.lhs.false96 ], [ %call43, %lor.lhs.false92 ], [ %call43, %lor.lhs.false88 ], [ %call43, %lor.lhs.false84 ], [ %call43, %lor.lhs.false80 ], [ %call43, %lor.lhs.false74 ], [ %call43, %lor.lhs.false68 ], [ %call43, %lor.lhs.false62 ], [ %call43, %lor.lhs.false56 ], [ %call43, %lor.lhs.false50 ], [ %call43, %lor.lhs.false46 ], [ %call43, %lor.lhs.false42 ], [ null, %if.end ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call43, %do.body ], [ %call43, %if.else ], [ %call43, %lor.lhs.false142 ], [ %call43, %if.end136 ]
  %R.0 = phi %struct.ec_point_st* [ %call47, %if.end972 ], [ %call47, %lor.lhs.false965 ], [ %call47, %if.end956 ], [ %call47, %if.end948 ], [ %call47, %lor.lhs.false941 ], [ %call47, %lor.lhs.false934 ], [ %call47, %lor.lhs.false928 ], [ %call47, %if.end918 ], [ %call47, %lor.lhs.false911 ], [ %call47, %lor.lhs.false904 ], [ %call47, %lor.lhs.false900 ], [ %call47, %lor.lhs.false896 ], [ %call47, %lor.lhs.false888 ], [ %call47, %if.end878 ], [ %call47, %lor.lhs.false871 ], [ %call47, %lor.lhs.false868 ], [ %call47, %lor.lhs.false861 ], [ %call47, %if.end851 ], [ %call47, %lor.lhs.false844 ], [ %call47, %lor.lhs.false838 ], [ %call47, %lor.lhs.false832 ], [ %call47, %lor.lhs.false826 ], [ %call47, %lor.lhs.false820 ], [ %call47, %lor.lhs.false816 ], [ %call47, %lor.lhs.false810 ], [ %call47, %lor.lhs.false804 ], [ %call47, %lor.lhs.false798 ], [ %call47, %lor.lhs.false792 ], [ %call47, %lor.lhs.false789 ], [ %call47, %lor.lhs.false785 ], [ %call47, %lor.lhs.false779 ], [ %call47, %lor.lhs.false772 ], [ %call47, %lor.lhs.false769 ], [ %call47, %if.end763 ], [ %call47, %lor.lhs.false756 ], [ %call47, %lor.lhs.false749 ], [ %call47, %lor.lhs.false743 ], [ %call47, %lor.lhs.false739 ], [ %call47, %lor.lhs.false733 ], [ %call47, %lor.lhs.false727 ], [ %call47, %lor.lhs.false721 ], [ %call47, %lor.lhs.false715 ], [ %call47, %lor.lhs.false709 ], [ %call47, %lor.lhs.false705 ], [ %call47, %lor.lhs.false699 ], [ %call47, %lor.lhs.false696 ], [ %call47, %lor.lhs.false692 ], [ %call47, %lor.lhs.false686 ], [ %call47, %lor.lhs.false679 ], [ %call47, %lor.lhs.false676 ], [ %call47, %if.end670 ], [ %call47, %lor.lhs.false663 ], [ %call47, %lor.lhs.false656 ], [ %call47, %lor.lhs.false650 ], [ %call47, %lor.lhs.false646 ], [ %call47, %lor.lhs.false640 ], [ %call47, %lor.lhs.false634 ], [ %call47, %lor.lhs.false628 ], [ %call47, %lor.lhs.false622 ], [ %call47, %lor.lhs.false616 ], [ %call47, %lor.lhs.false612 ], [ %call47, %lor.lhs.false606 ], [ %call47, %lor.lhs.false603 ], [ %call47, %lor.lhs.false599 ], [ %call47, %lor.lhs.false593 ], [ %call47, %lor.lhs.false586 ], [ %call47, %lor.lhs.false583 ], [ %call47, %if.end577 ], [ %call47, %lor.lhs.false570 ], [ %call47, %lor.lhs.false563 ], [ %call47, %lor.lhs.false557 ], [ %call47, %lor.lhs.false553 ], [ %call47, %lor.lhs.false547 ], [ %call47, %lor.lhs.false541 ], [ %call47, %lor.lhs.false535 ], [ %call47, %lor.lhs.false529 ], [ %call47, %lor.lhs.false523 ], [ %call47, %lor.lhs.false519 ], [ %call47, %lor.lhs.false513 ], [ %call47, %lor.lhs.false510 ], [ %call47, %lor.lhs.false506 ], [ %call47, %lor.lhs.false500 ], [ %call47, %lor.lhs.false493 ], [ %call47, %lor.lhs.false490 ], [ %call47, %if.end484 ], [ %call47, %lor.lhs.false477 ], [ %call47, %lor.lhs.false470 ], [ %call47, %lor.lhs.false464 ], [ %call47, %lor.lhs.false460 ], [ %call47, %lor.lhs.false454 ], [ %call47, %lor.lhs.false448 ], [ %call47, %lor.lhs.false442 ], [ %call47, %lor.lhs.false436 ], [ %call47, %lor.lhs.false430 ], [ %call47, %lor.lhs.false426 ], [ %call47, %lor.lhs.false420 ], [ %call47, %lor.lhs.false417 ], [ %call47, %lor.lhs.false413 ], [ %call47, %lor.lhs.false407 ], [ %call47, %lor.lhs.false400 ], [ %call47, %lor.lhs.false397 ], [ %call47, %if.end391 ], [ %call47, %lor.lhs.false384 ], [ %call47, %lor.lhs.false377 ], [ %call47, %lor.lhs.false371 ], [ %call47, %lor.lhs.false367 ], [ %call47, %lor.lhs.false361 ], [ %call47, %lor.lhs.false355 ], [ %call47, %lor.lhs.false349 ], [ %call47, %lor.lhs.false343 ], [ %call47, %lor.lhs.false337 ], [ %call47, %lor.lhs.false333 ], [ %call47, %lor.lhs.false327 ], [ %call47, %lor.lhs.false324 ], [ %call47, %lor.lhs.false320 ], [ %call47, %lor.lhs.false317 ], [ %call47, %if.end311 ], [ %call47, %lor.lhs.false304 ], [ %call47, %lor.lhs.false297 ], [ %call47, %lor.lhs.false291 ], [ %call47, %lor.lhs.false287 ], [ %call47, %lor.lhs.false281 ], [ %call47, %lor.lhs.false275 ], [ %call47, %lor.lhs.false268 ], [ %call47, %lor.lhs.false262 ], [ %call47, %lor.lhs.false256 ], [ %call47, %lor.lhs.false250 ], [ %call47, %lor.lhs.false244 ], [ %call47, %lor.lhs.false238 ], [ %call47, %lor.lhs.false234 ], [ %call47, %lor.lhs.false228 ], [ %call47, %lor.lhs.false224 ], [ %call47, %if.end217 ], [ %call47, %lor.lhs.false212 ], [ %call47, %lor.lhs.false205 ], [ %call47, %if.end199 ], [ %call47, %lor.lhs.false194 ], [ %call47, %lor.lhs.false187 ], [ %call47, %if.end181 ], [ %call47, %lor.lhs.false176 ], [ %call47, %lor.lhs.false169 ], [ %call47, %if.end164 ], [ %call47, %lor.lhs.false157 ], [ %call47, %do.end ], [ %call47, %if.end120 ], [ %call47, %if.then113 ], [ %call47, %lor.lhs.false102 ], [ %call47, %lor.lhs.false96 ], [ %call47, %lor.lhs.false92 ], [ %call47, %lor.lhs.false88 ], [ %call47, %lor.lhs.false84 ], [ %call47, %lor.lhs.false80 ], [ %call47, %lor.lhs.false74 ], [ %call47, %lor.lhs.false68 ], [ %call47, %lor.lhs.false62 ], [ %call47, %lor.lhs.false56 ], [ %call47, %lor.lhs.false50 ], [ %call47, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %if.end ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call47, %do.body ], [ %call47, %if.else ], [ %call47, %lor.lhs.false142 ], [ %call47, %if.end136 ]
  %yplusone.0 = phi %struct.bignum_st* [ %call93, %if.end972 ], [ %call93, %lor.lhs.false965 ], [ %call93, %if.end956 ], [ %call93, %if.end948 ], [ %call93, %lor.lhs.false941 ], [ %call93, %lor.lhs.false934 ], [ %call93, %lor.lhs.false928 ], [ %call93, %if.end918 ], [ %call93, %lor.lhs.false911 ], [ %call93, %lor.lhs.false904 ], [ %call93, %lor.lhs.false900 ], [ %call93, %lor.lhs.false896 ], [ %call93, %lor.lhs.false888 ], [ %call93, %if.end878 ], [ %call93, %lor.lhs.false871 ], [ %call93, %lor.lhs.false868 ], [ %call93, %lor.lhs.false861 ], [ %call93, %if.end851 ], [ %call93, %lor.lhs.false844 ], [ %call93, %lor.lhs.false838 ], [ %call93, %lor.lhs.false832 ], [ %call93, %lor.lhs.false826 ], [ %call93, %lor.lhs.false820 ], [ %call93, %lor.lhs.false816 ], [ %call93, %lor.lhs.false810 ], [ %call93, %lor.lhs.false804 ], [ %call93, %lor.lhs.false798 ], [ %call93, %lor.lhs.false792 ], [ %call93, %lor.lhs.false789 ], [ %call93, %lor.lhs.false785 ], [ %call93, %lor.lhs.false779 ], [ %call93, %lor.lhs.false772 ], [ %call93, %lor.lhs.false769 ], [ %call93, %if.end763 ], [ %call93, %lor.lhs.false756 ], [ %call93, %lor.lhs.false749 ], [ %call93, %lor.lhs.false743 ], [ %call93, %lor.lhs.false739 ], [ %call93, %lor.lhs.false733 ], [ %call93, %lor.lhs.false727 ], [ %call93, %lor.lhs.false721 ], [ %call93, %lor.lhs.false715 ], [ %call93, %lor.lhs.false709 ], [ %call93, %lor.lhs.false705 ], [ %call93, %lor.lhs.false699 ], [ %call93, %lor.lhs.false696 ], [ %call93, %lor.lhs.false692 ], [ %call93, %lor.lhs.false686 ], [ %call93, %lor.lhs.false679 ], [ %call93, %lor.lhs.false676 ], [ %call93, %if.end670 ], [ %call93, %lor.lhs.false663 ], [ %call93, %lor.lhs.false656 ], [ %call93, %lor.lhs.false650 ], [ %call93, %lor.lhs.false646 ], [ %call93, %lor.lhs.false640 ], [ %call93, %lor.lhs.false634 ], [ %call93, %lor.lhs.false628 ], [ %call93, %lor.lhs.false622 ], [ %call93, %lor.lhs.false616 ], [ %call93, %lor.lhs.false612 ], [ %call93, %lor.lhs.false606 ], [ %call93, %lor.lhs.false603 ], [ %call93, %lor.lhs.false599 ], [ %call93, %lor.lhs.false593 ], [ %call93, %lor.lhs.false586 ], [ %call93, %lor.lhs.false583 ], [ %call93, %if.end577 ], [ %call93, %lor.lhs.false570 ], [ %call93, %lor.lhs.false563 ], [ %call93, %lor.lhs.false557 ], [ %call93, %lor.lhs.false553 ], [ %call93, %lor.lhs.false547 ], [ %call93, %lor.lhs.false541 ], [ %call93, %lor.lhs.false535 ], [ %call93, %lor.lhs.false529 ], [ %call93, %lor.lhs.false523 ], [ %call93, %lor.lhs.false519 ], [ %call93, %lor.lhs.false513 ], [ %call93, %lor.lhs.false510 ], [ %call93, %lor.lhs.false506 ], [ %call93, %lor.lhs.false500 ], [ %call93, %lor.lhs.false493 ], [ %call93, %lor.lhs.false490 ], [ %call93, %if.end484 ], [ %call93, %lor.lhs.false477 ], [ %call93, %lor.lhs.false470 ], [ %call93, %lor.lhs.false464 ], [ %call93, %lor.lhs.false460 ], [ %call93, %lor.lhs.false454 ], [ %call93, %lor.lhs.false448 ], [ %call93, %lor.lhs.false442 ], [ %call93, %lor.lhs.false436 ], [ %call93, %lor.lhs.false430 ], [ %call93, %lor.lhs.false426 ], [ %call93, %lor.lhs.false420 ], [ %call93, %lor.lhs.false417 ], [ %call93, %lor.lhs.false413 ], [ %call93, %lor.lhs.false407 ], [ %call93, %lor.lhs.false400 ], [ %call93, %lor.lhs.false397 ], [ %call93, %if.end391 ], [ %call93, %lor.lhs.false384 ], [ %call93, %lor.lhs.false377 ], [ %call93, %lor.lhs.false371 ], [ %call93, %lor.lhs.false367 ], [ %call93, %lor.lhs.false361 ], [ %call93, %lor.lhs.false355 ], [ %call93, %lor.lhs.false349 ], [ %call93, %lor.lhs.false343 ], [ %call93, %lor.lhs.false337 ], [ %call93, %lor.lhs.false333 ], [ %call93, %lor.lhs.false327 ], [ %call93, %lor.lhs.false324 ], [ %call93, %lor.lhs.false320 ], [ %call93, %lor.lhs.false317 ], [ %call93, %if.end311 ], [ %call93, %lor.lhs.false304 ], [ %call93, %lor.lhs.false297 ], [ %call93, %lor.lhs.false291 ], [ %call93, %lor.lhs.false287 ], [ %call93, %lor.lhs.false281 ], [ %call93, %lor.lhs.false275 ], [ %call93, %lor.lhs.false268 ], [ %call93, %lor.lhs.false262 ], [ %call93, %lor.lhs.false256 ], [ %call93, %lor.lhs.false250 ], [ %call93, %lor.lhs.false244 ], [ %call93, %lor.lhs.false238 ], [ %call93, %lor.lhs.false234 ], [ %call93, %lor.lhs.false228 ], [ %call93, %lor.lhs.false224 ], [ %call93, %if.end217 ], [ %call93, %lor.lhs.false212 ], [ %call93, %lor.lhs.false205 ], [ %call93, %if.end199 ], [ %call93, %lor.lhs.false194 ], [ %call93, %lor.lhs.false187 ], [ %call93, %if.end181 ], [ %call93, %lor.lhs.false176 ], [ %call93, %lor.lhs.false169 ], [ %call93, %if.end164 ], [ %call93, %lor.lhs.false157 ], [ %call93, %do.end ], [ %call93, %if.end120 ], [ %call93, %if.then113 ], [ %call93, %lor.lhs.false102 ], [ %call93, %lor.lhs.false96 ], [ %call93, %lor.lhs.false92 ], [ null, %lor.lhs.false88 ], [ null, %lor.lhs.false84 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false56 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %if.end ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call93, %do.body ], [ %call93, %if.else ], [ %call93, %lor.lhs.false142 ], [ %call93, %if.end136 ]
  %r.0 = phi i32 [ 1, %if.end972 ], [ 0, %lor.lhs.false965 ], [ 0, %if.end956 ], [ 0, %if.end948 ], [ 0, %lor.lhs.false941 ], [ 0, %lor.lhs.false934 ], [ 0, %lor.lhs.false928 ], [ 0, %if.end918 ], [ 0, %lor.lhs.false911 ], [ 0, %lor.lhs.false904 ], [ 0, %lor.lhs.false900 ], [ 0, %lor.lhs.false896 ], [ 0, %lor.lhs.false888 ], [ 0, %if.end878 ], [ 0, %lor.lhs.false871 ], [ 0, %lor.lhs.false868 ], [ 0, %lor.lhs.false861 ], [ 0, %if.end851 ], [ 0, %lor.lhs.false844 ], [ 0, %lor.lhs.false838 ], [ 0, %lor.lhs.false832 ], [ 0, %lor.lhs.false826 ], [ 0, %lor.lhs.false820 ], [ 0, %lor.lhs.false816 ], [ 0, %lor.lhs.false810 ], [ 0, %lor.lhs.false804 ], [ 0, %lor.lhs.false798 ], [ 0, %lor.lhs.false792 ], [ 0, %lor.lhs.false789 ], [ 0, %lor.lhs.false785 ], [ 0, %lor.lhs.false779 ], [ 0, %lor.lhs.false772 ], [ 0, %lor.lhs.false769 ], [ 0, %if.end763 ], [ 0, %lor.lhs.false756 ], [ 0, %lor.lhs.false749 ], [ 0, %lor.lhs.false743 ], [ 0, %lor.lhs.false739 ], [ 0, %lor.lhs.false733 ], [ 0, %lor.lhs.false727 ], [ 0, %lor.lhs.false721 ], [ 0, %lor.lhs.false715 ], [ 0, %lor.lhs.false709 ], [ 0, %lor.lhs.false705 ], [ 0, %lor.lhs.false699 ], [ 0, %lor.lhs.false696 ], [ 0, %lor.lhs.false692 ], [ 0, %lor.lhs.false686 ], [ 0, %lor.lhs.false679 ], [ 0, %lor.lhs.false676 ], [ 0, %if.end670 ], [ 0, %lor.lhs.false663 ], [ 0, %lor.lhs.false656 ], [ 0, %lor.lhs.false650 ], [ 0, %lor.lhs.false646 ], [ 0, %lor.lhs.false640 ], [ 0, %lor.lhs.false634 ], [ 0, %lor.lhs.false628 ], [ 0, %lor.lhs.false622 ], [ 0, %lor.lhs.false616 ], [ 0, %lor.lhs.false612 ], [ 0, %lor.lhs.false606 ], [ 0, %lor.lhs.false603 ], [ 0, %lor.lhs.false599 ], [ 0, %lor.lhs.false593 ], [ 0, %lor.lhs.false586 ], [ 0, %lor.lhs.false583 ], [ 0, %if.end577 ], [ 0, %lor.lhs.false570 ], [ 0, %lor.lhs.false563 ], [ 0, %lor.lhs.false557 ], [ 0, %lor.lhs.false553 ], [ 0, %lor.lhs.false547 ], [ 0, %lor.lhs.false541 ], [ 0, %lor.lhs.false535 ], [ 0, %lor.lhs.false529 ], [ 0, %lor.lhs.false523 ], [ 0, %lor.lhs.false519 ], [ 0, %lor.lhs.false513 ], [ 0, %lor.lhs.false510 ], [ 0, %lor.lhs.false506 ], [ 0, %lor.lhs.false500 ], [ 0, %lor.lhs.false493 ], [ 0, %lor.lhs.false490 ], [ 0, %if.end484 ], [ 0, %lor.lhs.false477 ], [ 0, %lor.lhs.false470 ], [ 0, %lor.lhs.false464 ], [ 0, %lor.lhs.false460 ], [ 0, %lor.lhs.false454 ], [ 0, %lor.lhs.false448 ], [ 0, %lor.lhs.false442 ], [ 0, %lor.lhs.false436 ], [ 0, %lor.lhs.false430 ], [ 0, %lor.lhs.false426 ], [ 0, %lor.lhs.false420 ], [ 0, %lor.lhs.false417 ], [ 0, %lor.lhs.false413 ], [ 0, %lor.lhs.false407 ], [ 0, %lor.lhs.false400 ], [ 0, %lor.lhs.false397 ], [ 0, %if.end391 ], [ 0, %lor.lhs.false384 ], [ 0, %lor.lhs.false377 ], [ 0, %lor.lhs.false371 ], [ 0, %lor.lhs.false367 ], [ 0, %lor.lhs.false361 ], [ 0, %lor.lhs.false355 ], [ 0, %lor.lhs.false349 ], [ 0, %lor.lhs.false343 ], [ 0, %lor.lhs.false337 ], [ 0, %lor.lhs.false333 ], [ 0, %lor.lhs.false327 ], [ 0, %lor.lhs.false324 ], [ 0, %lor.lhs.false320 ], [ 0, %lor.lhs.false317 ], [ 0, %if.end311 ], [ 0, %lor.lhs.false304 ], [ 0, %lor.lhs.false297 ], [ 0, %lor.lhs.false291 ], [ 0, %lor.lhs.false287 ], [ 0, %lor.lhs.false281 ], [ 0, %lor.lhs.false275 ], [ 0, %lor.lhs.false268 ], [ 0, %lor.lhs.false262 ], [ 0, %lor.lhs.false256 ], [ 0, %lor.lhs.false250 ], [ 0, %lor.lhs.false244 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false234 ], [ 0, %lor.lhs.false228 ], [ 0, %lor.lhs.false224 ], [ 0, %if.end217 ], [ 0, %lor.lhs.false212 ], [ 0, %lor.lhs.false205 ], [ 0, %if.end199 ], [ 0, %lor.lhs.false194 ], [ 0, %lor.lhs.false187 ], [ 0, %if.end181 ], [ 0, %lor.lhs.false176 ], [ 0, %lor.lhs.false169 ], [ 0, %if.end164 ], [ 0, %lor.lhs.false157 ], [ 0, %do.end ], [ 0, %if.end120 ], [ 0, %if.then113 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false42 ], [ 0, %if.end ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %do.body ], [ 0, %if.else ], [ 0, %lor.lhs.false142 ], [ 0, %if.end136 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  %149 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %149) #4
  %150 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %150) #4
  %151 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %151) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %R.0) #4
  %152 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %152) #4
  %153 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %153) #4
  %154 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %154) #4
  call void @BN_free(%struct.bignum_st* noundef %yplusone.0) #4
  call void @BN_free(%struct.bignum_st* noundef %scalar3.0) #4
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @hybrid_point_encoding_test() #0 {
entry:
  %x = alloca %struct.bignum_st*, align 8
  %y = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %x, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %y, align 8, !tbaa !7
  %call = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1096, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.251, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1097, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.252, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 733) #4
  %2 = bitcast %struct.ec_group_st* %call8 to i8*
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1098, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.253, i64 0, i64 0), i8* noundef %2) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %call12 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call8) #4
  %3 = bitcast %struct.ec_point_st* %call12 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1099, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.254, i64 0, i64 0), i8* noundef %3) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %4 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %5 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call16 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call8, %struct.ec_point_st* noundef %call12, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_ctx* noundef null) #4
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1100, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.255, i64 0, i64 0), i32 noundef %conv18) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %call22 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call8, %struct.ec_point_st* noundef %call12, i32 noundef 6, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call23 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1106, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.256, i64 0, i64 0), i64 noundef 0, i64 noundef %call22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = call i8* @CRYPTO_malloc(i64 noundef %call22, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1107) #4
  %call27 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.257, i64 0, i64 0), i8* noundef %call26) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call8, %struct.ec_point_st* noundef %call12, i32 noundef 6, i8* noundef %call26, i64 noundef %call22, %struct.bignum_ctx* noundef null) #4
  %call31 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.258, i64 0, i64 0), i64 noundef %call22, i64 noundef %call30) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false29
  %call33 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call8, %struct.ec_point_st* noundef %call12, i8* noundef %call26, i64 noundef %call22, %struct.bignum_ctx* noundef null) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1119, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.259, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp ne i32 %call36, 0
  %6 = load i8, i8* %call26, align 1, !tbaa !12
  %7 = xor i8 %6, 1
  store i8 %7, i8* %call26, align 1, !tbaa !12
  %call42 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call8, %struct.ec_point_st* noundef %call12, i8* noundef nonnull %call26, i64 noundef %call22, %struct.bignum_ctx* noundef null) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1124, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.259, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp ne i32 %call45, 0
  %narrow = select i1 %tobool46.not, i1 %tobool37.not, i1 false
  %spec.select73 = zext i1 %narrow to i32
  br label %err

err:                                              ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false11, %lor.lhs.false15, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29
  %point.0 = phi %struct.ec_point_st* [ %call12, %lor.lhs.false29 ], [ %call12, %lor.lhs.false25 ], [ %call12, %lor.lhs.false21 ], [ %call12, %lor.lhs.false15 ], [ %call12, %lor.lhs.false11 ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call12, %if.end ]
  %buf.0 = phi i8* [ %call26, %lor.lhs.false29 ], [ %call26, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call26, %if.end ]
  %group.0 = phi %struct.ec_group_st* [ %call8, %lor.lhs.false29 ], [ %call8, %lor.lhs.false25 ], [ %call8, %lor.lhs.false21 ], [ %call8, %lor.lhs.false15 ], [ %call8, %lor.lhs.false11 ], [ %call8, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call8, %if.end ]
  %r.1 = phi i32 [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select73, %if.end ]
  %8 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %8) #4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %9) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %point.0) #4
  call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1132) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @char2_field_tests() #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %x = alloca %struct.bignum_st*, align 8
  %y = alloca %struct.bignum_st*, align 8
  %buf = alloca [100 x i8], align 16
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !7
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !7
  %3 = bitcast %struct.bignum_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %x, align 8, !tbaa !7
  %4 = bitcast %struct.bignum_st** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %y, align 8, !tbaa !7
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %5) #5
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %6 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 945, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %6) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call2, %struct.bignum_st** %p, align 8, !tbaa !7
  %7 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 946, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %7) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call6, %struct.bignum_st** %a, align 8, !tbaa !7
  %8 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* noundef %8) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call10, %struct.bignum_st** %b, align 8, !tbaa !7
  %9 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 948, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef %9) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.261, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 949, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.260, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.263, i64 0, i64 0)) #4
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 950, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.262, i64 0, i64 0), i32 noundef %conv20) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %call24 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #4
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 951, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv26) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false23
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %11 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %12 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call29 = call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef %call) #4
  %13 = bitcast %struct.ec_group_st* %call29 to i8*
  %call30 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 954, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.264, i64 0, i64 0), i8* noundef %13) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end
  %14 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %15 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %16 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call33 = call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call29, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_ctx* noundef %call) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 955, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0)) #4
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.265, i64 0, i64 0)) #4
  %17 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.bignum_st* noundef %17) #4
  %18 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st* noundef %18) #4
  %19 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %19) #4
  %call40 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call29) #4
  %20 = bitcast %struct.ec_point_st* %call40 to i8*
  %call41 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 964, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0), i8* noundef %20) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end39
  %call44 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call29) #4
  %21 = bitcast %struct.ec_point_st* %call44 to i8*
  %call45 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 965, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8* noundef %21) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call29) #4
  %22 = bitcast %struct.ec_point_st* %call48 to i8*
  %call49 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 966, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i8* noundef %22) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %call52 = call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 967, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv54) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %call58 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 968, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv60) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false57
  store i8 0, i8* %5, align 16, !tbaa !12
  %call65 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call44, i8* noundef nonnull %5, i64 noundef 1, %struct.bignum_ctx* noundef %call) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 972, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end64
  %call71 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call44, %struct.bignum_ctx* noundef %call) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 973, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %call77 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 974, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %call83 = call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call83, %struct.bignum_st** %x, align 8, !tbaa !7
  %23 = bitcast %struct.bignum_st* %call83 to i8*
  %call84 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0), i8* noundef %23) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %call87 = call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call87, %struct.bignum_st** %y, align 8, !tbaa !7
  %24 = bitcast %struct.bignum_st* %call87 to i8*
  %call88 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 976, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i8* noundef %24) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %call91 = call %struct.bignum_st* @BN_new() #4
  %25 = bitcast %struct.bignum_st* %call91 to i8*
  %call92 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 977, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef %25) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %call95 = call %struct.bignum_st* @BN_new() #4
  %26 = bitcast %struct.bignum_st* %call95 to i8*
  %call96 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 978, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.266, i64 0, i64 0), i8* noundef %26) #4
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false94
  %call99 = call %struct.bignum_st* @BN_new() #4
  %27 = bitcast %struct.bignum_st* %call99 to i8*
  %call100 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 979, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef %27) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false98
  %call103 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.268, i64 0, i64 0)) #4
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 980, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.267, i64 0, i64 0), i32 noundef %conv105) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false102
  %call109 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.270, i64 0, i64 0)) #4
  %cmp110 = icmp ne i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  %call112 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 985, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.269, i64 0, i64 0), i32 noundef %conv111) #4
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %lor.lhs.false108
  %28 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %29 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call115 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call44, %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %29, %struct.bignum_ctx* noundef %call) #4
  %cmp116 = icmp ne i32 %call115, 0
  %conv117 = zext i1 %cmp116 to i32
  %call118 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 986, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.271, i64 0, i64 0), i32 noundef %conv117) #4
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end121

if.end121:                                        ; preds = %lor.lhs.false114
  %call122 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call44, %struct.bignum_ctx* noundef %call) #4
  %call123 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 990, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call122, i32 noundef 0) #4
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i64 0, i64 0)) #4
  %30 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %30) #4
  %31 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %31) #4
  br label %err

if.end126:                                        ; preds = %if.end121
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i64 0, i64 0)) #4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end126
  %k.0 = phi i32 [ 100, %if.end126 ], [ %dec, %do.cond ]
  %dec = add nsw i32 %k.0, -1
  %call127 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1005, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %k.0, i32 noundef 0) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end130

if.end130:                                        ; preds = %do.body
  %call131 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.else, label %if.then133

if.then133:                                       ; preds = %if.end130
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0)) #4
  br label %if.end141

if.else:                                          ; preds = %if.end130
  %32 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %33 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call134 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.bignum_st* noundef %32, %struct.bignum_st* noundef %33, %struct.bignum_ctx* noundef %call) #4
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1012, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv136) #4
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %if.end140

if.end140:                                        ; preds = %if.else
  %34 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %34) #4
  %35 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %35) #4
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then133
  %call142 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call48, %struct.ec_point_st* noundef %call40) #4
  %cmp143 = icmp ne i32 %call142, 0
  %conv144 = zext i1 %cmp143 to i32
  %call145 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1019, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv144) #4
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end141
  %call148 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call44, %struct.bignum_ctx* noundef %call) #4
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1020, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv150) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %do.cond

do.cond:                                          ; preds = %lor.lhs.false147
  %call155 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %call157 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call44, %struct.ec_point_st* noundef %call48, %struct.bignum_ctx* noundef %call) #4
  %cmp158 = icmp ne i32 %call157, 0
  %conv159 = zext i1 %cmp158 to i32
  %call160 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1025, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv159) #4
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %do.end
  %call163 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40) #4
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv165) #4
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %if.end169

if.end169:                                        ; preds = %lor.lhs.false162
  %call171 = call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call44, i32 noundef 4, i8* noundef nonnull %5, i64 noundef 100, %struct.bignum_ctx* noundef %call) #4
  %call172 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1043, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 noundef %call171, i64 noundef 0) #4
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %err, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %if.end169
  %call176 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, i8* noundef nonnull %5, i64 noundef %call171, %struct.bignum_ctx* noundef %call) #4
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %call179 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1044, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0), i32 noundef %conv178) #4
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false174
  %call182 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call44, %struct.bignum_ctx* noundef %call) #4
  %call183 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1045, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i64 0, i64 0), i32 noundef 0, i32 noundef %call182) #4
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %if.end186

if.end186:                                        ; preds = %lor.lhs.false181
  call void @test_output_memory(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.102, i64 0, i64 0), i8* noundef nonnull %5, i64 noundef %call171) #4
  %call188 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.bignum_ctx* noundef %call) #4
  %cmp189 = icmp ne i32 %call188, 0
  %conv190 = zext i1 %cmp189 to i32
  %call191 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1063, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv190) #4
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %if.end186
  %call194 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call29, %struct.ec_point_st* noundef %call40, %struct.ec_point_st* noundef %call48, %struct.bignum_ctx* noundef %call) #4
  %call195 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1064, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i64 0, i64 0), i32 noundef 0, i32 noundef %call194) #4
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %err, label %if.end198

if.end198:                                        ; preds = %lor.lhs.false193
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.272, i64 0, i64 0)) #4
  br label %err

err:                                              ; preds = %if.end141, %lor.lhs.false147, %if.else, %do.body, %if.end186, %lor.lhs.false193, %if.end169, %lor.lhs.false174, %lor.lhs.false181, %do.end, %lor.lhs.false162, %if.end64, %lor.lhs.false70, %lor.lhs.false76, %lor.lhs.false82, %lor.lhs.false86, %lor.lhs.false90, %lor.lhs.false94, %lor.lhs.false98, %lor.lhs.false102, %lor.lhs.false108, %lor.lhs.false114, %if.end39, %lor.lhs.false43, %lor.lhs.false47, %lor.lhs.false51, %lor.lhs.false57, %if.end, %lor.lhs.false32, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false23, %if.end198, %if.then125
  %group.0 = phi %struct.ec_group_st* [ %call29, %if.end198 ], [ %call29, %lor.lhs.false193 ], [ %call29, %if.end186 ], [ %call29, %lor.lhs.false181 ], [ %call29, %lor.lhs.false174 ], [ %call29, %if.end169 ], [ %call29, %lor.lhs.false162 ], [ %call29, %do.end ], [ %call29, %if.then125 ], [ %call29, %lor.lhs.false114 ], [ %call29, %lor.lhs.false108 ], [ %call29, %lor.lhs.false102 ], [ %call29, %lor.lhs.false98 ], [ %call29, %lor.lhs.false94 ], [ %call29, %lor.lhs.false90 ], [ %call29, %lor.lhs.false86 ], [ %call29, %lor.lhs.false82 ], [ %call29, %lor.lhs.false76 ], [ %call29, %lor.lhs.false70 ], [ %call29, %if.end64 ], [ %call29, %lor.lhs.false57 ], [ %call29, %lor.lhs.false51 ], [ %call29, %lor.lhs.false47 ], [ %call29, %lor.lhs.false43 ], [ %call29, %if.end39 ], [ %call29, %lor.lhs.false32 ], [ %call29, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call29, %do.body ], [ %call29, %if.else ], [ %call29, %lor.lhs.false147 ], [ %call29, %if.end141 ]
  %P.0 = phi %struct.ec_point_st* [ %call40, %if.end198 ], [ %call40, %lor.lhs.false193 ], [ %call40, %if.end186 ], [ %call40, %lor.lhs.false181 ], [ %call40, %lor.lhs.false174 ], [ %call40, %if.end169 ], [ %call40, %lor.lhs.false162 ], [ %call40, %do.end ], [ %call40, %if.then125 ], [ %call40, %lor.lhs.false114 ], [ %call40, %lor.lhs.false108 ], [ %call40, %lor.lhs.false102 ], [ %call40, %lor.lhs.false98 ], [ %call40, %lor.lhs.false94 ], [ %call40, %lor.lhs.false90 ], [ %call40, %lor.lhs.false86 ], [ %call40, %lor.lhs.false82 ], [ %call40, %lor.lhs.false76 ], [ %call40, %lor.lhs.false70 ], [ %call40, %if.end64 ], [ %call40, %lor.lhs.false57 ], [ %call40, %lor.lhs.false51 ], [ %call40, %lor.lhs.false47 ], [ %call40, %lor.lhs.false43 ], [ %call40, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call40, %do.body ], [ %call40, %if.else ], [ %call40, %lor.lhs.false147 ], [ %call40, %if.end141 ]
  %Q.0 = phi %struct.ec_point_st* [ %call44, %if.end198 ], [ %call44, %lor.lhs.false193 ], [ %call44, %if.end186 ], [ %call44, %lor.lhs.false181 ], [ %call44, %lor.lhs.false174 ], [ %call44, %if.end169 ], [ %call44, %lor.lhs.false162 ], [ %call44, %do.end ], [ %call44, %if.then125 ], [ %call44, %lor.lhs.false114 ], [ %call44, %lor.lhs.false108 ], [ %call44, %lor.lhs.false102 ], [ %call44, %lor.lhs.false98 ], [ %call44, %lor.lhs.false94 ], [ %call44, %lor.lhs.false90 ], [ %call44, %lor.lhs.false86 ], [ %call44, %lor.lhs.false82 ], [ %call44, %lor.lhs.false76 ], [ %call44, %lor.lhs.false70 ], [ %call44, %if.end64 ], [ %call44, %lor.lhs.false57 ], [ %call44, %lor.lhs.false51 ], [ %call44, %lor.lhs.false47 ], [ %call44, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call44, %do.body ], [ %call44, %if.else ], [ %call44, %lor.lhs.false147 ], [ %call44, %if.end141 ]
  %R.0 = phi %struct.ec_point_st* [ %call48, %if.end198 ], [ %call48, %lor.lhs.false193 ], [ %call48, %if.end186 ], [ %call48, %lor.lhs.false181 ], [ %call48, %lor.lhs.false174 ], [ %call48, %if.end169 ], [ %call48, %lor.lhs.false162 ], [ %call48, %do.end ], [ %call48, %if.then125 ], [ %call48, %lor.lhs.false114 ], [ %call48, %lor.lhs.false108 ], [ %call48, %lor.lhs.false102 ], [ %call48, %lor.lhs.false98 ], [ %call48, %lor.lhs.false94 ], [ %call48, %lor.lhs.false90 ], [ %call48, %lor.lhs.false86 ], [ %call48, %lor.lhs.false82 ], [ %call48, %lor.lhs.false76 ], [ %call48, %lor.lhs.false70 ], [ %call48, %if.end64 ], [ %call48, %lor.lhs.false57 ], [ %call48, %lor.lhs.false51 ], [ %call48, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call48, %do.body ], [ %call48, %if.else ], [ %call48, %lor.lhs.false147 ], [ %call48, %if.end141 ]
  %z.0 = phi %struct.bignum_st* [ %call91, %if.end198 ], [ %call91, %lor.lhs.false193 ], [ %call91, %if.end186 ], [ %call91, %lor.lhs.false181 ], [ %call91, %lor.lhs.false174 ], [ %call91, %if.end169 ], [ %call91, %lor.lhs.false162 ], [ %call91, %do.end ], [ %call91, %if.then125 ], [ %call91, %lor.lhs.false114 ], [ %call91, %lor.lhs.false108 ], [ %call91, %lor.lhs.false102 ], [ %call91, %lor.lhs.false98 ], [ %call91, %lor.lhs.false94 ], [ %call91, %lor.lhs.false90 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false70 ], [ null, %if.end64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call91, %do.body ], [ %call91, %if.else ], [ %call91, %lor.lhs.false147 ], [ %call91, %if.end141 ]
  %cof.0 = phi %struct.bignum_st* [ %call95, %if.end198 ], [ %call95, %lor.lhs.false193 ], [ %call95, %if.end186 ], [ %call95, %lor.lhs.false181 ], [ %call95, %lor.lhs.false174 ], [ %call95, %if.end169 ], [ %call95, %lor.lhs.false162 ], [ %call95, %do.end ], [ %call95, %if.then125 ], [ %call95, %lor.lhs.false114 ], [ %call95, %lor.lhs.false108 ], [ %call95, %lor.lhs.false102 ], [ %call95, %lor.lhs.false98 ], [ %call95, %lor.lhs.false94 ], [ null, %lor.lhs.false90 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false70 ], [ null, %if.end64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call95, %do.body ], [ %call95, %if.else ], [ %call95, %lor.lhs.false147 ], [ %call95, %if.end141 ]
  %yplusone.0 = phi %struct.bignum_st* [ %call99, %if.end198 ], [ %call99, %lor.lhs.false193 ], [ %call99, %if.end186 ], [ %call99, %lor.lhs.false181 ], [ %call99, %lor.lhs.false174 ], [ %call99, %if.end169 ], [ %call99, %lor.lhs.false162 ], [ %call99, %do.end ], [ %call99, %if.then125 ], [ %call99, %lor.lhs.false114 ], [ %call99, %lor.lhs.false108 ], [ %call99, %lor.lhs.false102 ], [ %call99, %lor.lhs.false98 ], [ null, %lor.lhs.false94 ], [ null, %lor.lhs.false90 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false70 ], [ null, %if.end64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false43 ], [ null, %if.end39 ], [ null, %lor.lhs.false32 ], [ null, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call99, %do.body ], [ %call99, %if.else ], [ %call99, %lor.lhs.false147 ], [ %call99, %if.end141 ]
  %r.0 = phi i32 [ 1, %if.end198 ], [ 0, %lor.lhs.false193 ], [ 0, %if.end186 ], [ 0, %lor.lhs.false181 ], [ 0, %lor.lhs.false174 ], [ 0, %if.end169 ], [ 0, %lor.lhs.false162 ], [ 0, %do.end ], [ 0, %if.then125 ], [ 0, %lor.lhs.false114 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false90 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false70 ], [ 0, %if.end64 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end39 ], [ 0, %lor.lhs.false32 ], [ 0, %if.end ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %do.body ], [ 0, %if.else ], [ 0, %lor.lhs.false147 ], [ 0, %if.end141 ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  %36 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %36) #4
  %37 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %37) #4
  %38 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %38) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %R.0) #4
  %39 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %39) #4
  %40 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %40) #4
  call void @BN_free(%struct.bignum_st* noundef %z.0) #4
  call void @BN_free(%struct.bignum_st* noundef %cof.0) #4
  call void @BN_free(%struct.bignum_st* noundef %yplusone.0) #4
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @char2_curve_test(i32 noundef %n) #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %x = alloca %struct.bignum_st*, align 8
  %y = alloca %struct.bignum_st*, align 8
  %z = alloca %struct.bignum_st*, align 8
  %cof = alloca %struct.bignum_st*, align 8
  %points = alloca [3 x %struct.ec_point_st*], align 16
  %scalars = alloca [3 x %struct.bignum_st*], align 16
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !7
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !7
  %3 = bitcast %struct.bignum_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %x, align 8, !tbaa !7
  %4 = bitcast %struct.bignum_st** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %y, align 8, !tbaa !7
  %5 = bitcast %struct.bignum_st** %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %z, align 8, !tbaa !7
  %6 = bitcast %struct.bignum_st** %cof to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  store %struct.bignum_st* null, %struct.bignum_st** %cof, align 8, !tbaa !7
  %7 = bitcast [3 x %struct.ec_point_st*]* %points to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5
  %8 = bitcast [3 x %struct.bignum_st*]* %scalars to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #5
  %idx.ext = sext i32 %n to i64
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %9 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 793, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %9) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call2, %struct.bignum_st** %p, align 8, !tbaa !7
  %10 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 794, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %10) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call6, %struct.bignum_st** %a, align 8, !tbaa !7
  %11 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 795, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* noundef %11) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call10, %struct.bignum_st** %b, align 8, !tbaa !7
  %12 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 796, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef %12) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call14, %struct.bignum_st** %x, align 8, !tbaa !7
  %13 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 797, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0), i8* noundef %13) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call18, %struct.bignum_st** %y, align 8, !tbaa !7
  %14 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 798, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i8* noundef %14) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call22, %struct.bignum_st** %z, align 8, !tbaa !7
  %15 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 799, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef %15) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.bignum_st* @BN_new() #4
  %16 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 800, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef %16) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %p30 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 1
  %17 = load i8*, i8** %p30, align 8, !tbaa !16
  %call31 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef %17) #4
  %cmp = icmp ne i32 %call31, 0
  %conv = zext i1 %cmp to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 801, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0), i32 noundef %conv) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false29
  %a35 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 2
  %18 = load i8*, i8** %a35, align 16, !tbaa !18
  %call36 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef %18) #4
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.274, i64 0, i64 0), i32 noundef %conv38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false34
  %b42 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 3
  %19 = load i8*, i8** %b42, align 8, !tbaa !19
  %call43 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef %19) #4
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 803, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.275, i64 0, i64 0), i32 noundef %conv45) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false41
  %20 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %21 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %22 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call49 = call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef %20, %struct.bignum_st* noundef %21, %struct.bignum_st* noundef %22, %struct.bignum_ctx* noundef %call) #4
  %cmp50 = icmp ne %struct.ec_group_st* %call49, null
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 804, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.264, i64 0, i64 0), i32 noundef %conv51) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call49) #4
  %23 = bitcast %struct.ec_point_st* %call55 to i8*
  %call56 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0), i8* noundef %23) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %call59 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call49) #4
  %24 = bitcast %struct.ec_point_st* %call59 to i8*
  %call60 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 806, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8* noundef %24) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %call63 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call49) #4
  %25 = bitcast %struct.ec_point_st* %call63 to i8*
  %call64 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 807, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i8* noundef %25) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %x67 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 4
  %26 = load i8*, i8** %x67, align 16, !tbaa !20
  %call68 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef %26) #4
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 808, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.276, i64 0, i64 0), i32 noundef %conv70) #4
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false66
  %y74 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 5
  %27 = load i8*, i8** %y74, align 8, !tbaa !21
  %call75 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef %27) #4
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 809, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.277, i64 0, i64 0), i32 noundef %conv77) #4
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false73
  %28 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call81 = call %struct.bignum_st* @BN_value_one() #4
  %call82 = call i32 @BN_add(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %call81) #4
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 810, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv84) #4
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false80
  %29 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call87 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef %29, %struct.bignum_st* noundef %call26, %struct.bignum_ctx* noundef %call) #4
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 841, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv89) #4
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.end
  %30 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %31 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call93 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %31, %struct.bignum_ctx* noundef %call) #4
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 842, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv95) #4
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false92
  %call99 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_ctx* noundef %call) #4
  %call100 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 843, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call99, i32 noundef 0) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false98
  %order = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 7
  %32 = load i8*, i8** %order, align 8, !tbaa !22
  %call103 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %z, i8* noundef %32) #4
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 844, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i32 noundef %conv105) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false102
  %cof109 = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 8
  %33 = load i8*, i8** %cof109, align 16, !tbaa !23
  %call110 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %cof, i8* noundef %33) #4
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 845, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.279, i64 0, i64 0), i32 noundef %conv112) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false108
  %34 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %35 = load %struct.bignum_st*, %struct.bignum_st** %cof, align 8, !tbaa !7
  %call116 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef %34, %struct.bignum_st* noundef %35) #4
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 846, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.280, i64 0, i64 0), i32 noundef %conv118) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end122

if.end122:                                        ; preds = %lor.lhs.false115
  %name = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 0
  %36 = load i8*, i8** %name, align 16, !tbaa !24
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 848, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.281, i64 0, i64 0), i8* noundef %36) #4
  %37 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), %struct.bignum_st* noundef %37) #4
  %38 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %38) #4
  %call123 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call49) #4
  %degree = getelementptr inbounds [10 x %struct.c2_curve_test], [10 x %struct.c2_curve_test]* @char2_curve_tests, i64 0, i64 %idx.ext, i32 9
  %39 = load i32, i32* %degree, align 8, !tbaa !25
  %call124 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.282, i64 0, i64 0), i32 noundef %call123, i32 noundef %39) #4
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.end122
  %call127 = call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call49) #6
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end130

if.end130:                                        ; preds = %lor.lhs.false126
  %cmp132 = icmp eq i32 %n, 9
  br i1 %cmp132, label %if.then134, label %if.end302

if.then134:                                       ; preds = %if.end130
  %40 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %41 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call135 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef %40, %struct.bignum_st* noundef %41, %struct.bignum_ctx* noundef %call) #4
  %cmp136 = icmp ne i32 %call135, 0
  %conv137 = zext i1 %cmp136 to i32
  %call138 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv137) #4
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %err, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %if.then134
  %call141 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call59, %struct.ec_point_st* noundef %call55) #4
  %cmp142 = icmp ne i32 %call141, 0
  %conv143 = zext i1 %cmp142 to i32
  %call144 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.202, i64 0, i64 0), i32 noundef %conv143) #4
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %err, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false140
  %call147 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call59) #4
  %cmp148 = icmp ne i32 %call147, 0
  %conv149 = zext i1 %cmp148 to i32
  %call150 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 861, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv149) #4
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false146
  %call153 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.ec_point_st* noundef %call55, %struct.bignum_ctx* noundef %call) #4
  %cmp154 = icmp ne i32 %call153, 0
  %conv155 = zext i1 %cmp154 to i32
  %call156 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 862, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.204, i64 0, i64 0), i32 noundef %conv155) #4
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %lor.lhs.false152
  %call159 = call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_ctx* noundef %call) #4
  %call160 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 863, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call159, i32 noundef 0) #4
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false158
  %call163 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call59, %struct.bignum_ctx* noundef %call) #4
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 864, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv165) #4
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false162
  %call169 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call63, %struct.ec_point_st* noundef %call55, %struct.ec_point_st* noundef %call59, %struct.bignum_ctx* noundef %call) #4
  %cmp170 = icmp ne i32 %call169, 0
  %conv171 = zext i1 %cmp170 to i32
  %call172 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.206, i64 0, i64 0), i32 noundef %conv171) #4
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %err, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false168
  %call175 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call63, %struct.ec_point_st* noundef %call63, %struct.ec_point_st* noundef %call59, %struct.bignum_ctx* noundef %call) #4
  %cmp176 = icmp ne i32 %call175, 0
  %conv177 = zext i1 %cmp176 to i32
  %call178 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 866, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv177) #4
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %err, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false174
  %call181 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call63) #4
  %cmp182 = icmp ne i32 %call181, 0
  %conv183 = zext i1 %cmp182 to i32
  %call184 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 867, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.208, i64 0, i64 0), i32 noundef %conv183) #4
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %err, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false180
  %call187 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call59) #4
  %cmp188 = icmp ne i32 %call187, 0
  %conv189 = zext i1 %cmp188 to i32
  %call190 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 868, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv189) #4
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %err, label %if.end193

if.end193:                                        ; preds = %lor.lhs.false186
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.209, i64 0, i64 0)) #4
  %arrayidx = getelementptr inbounds [3 x %struct.ec_point_st*], [3 x %struct.ec_point_st*]* %points, i64 0, i64 0
  store %struct.ec_point_st* %call59, %struct.ec_point_st** %arrayidx, align 16, !tbaa !7
  %arrayidx194 = getelementptr inbounds [3 x %struct.ec_point_st*], [3 x %struct.ec_point_st*]* %points, i64 0, i64 1
  store %struct.ec_point_st* %call59, %struct.ec_point_st** %arrayidx194, align 8, !tbaa !7
  %arrayidx195 = getelementptr inbounds [3 x %struct.ec_point_st*], [3 x %struct.ec_point_st*]* %points, i64 0, i64 2
  store %struct.ec_point_st* %call59, %struct.ec_point_st** %arrayidx195, align 16, !tbaa !7
  %42 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %43 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call196 = call %struct.bignum_st* @BN_value_one() #4
  %call197 = call i32 @BN_add(%struct.bignum_st* noundef %42, %struct.bignum_st* noundef %43, %struct.bignum_st* noundef %call196) #4
  %cmp198 = icmp ne i32 %call197, 0
  %conv199 = zext i1 %cmp198 to i32
  %call200 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 877, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.211, i64 0, i64 0), i32 noundef %conv199) #4
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %if.end193
  %44 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call203 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 878, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), %struct.bignum_st* noundef %44) #4
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %lor.lhs.false202
  %45 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call206 = call i32 @BN_rshift1(%struct.bignum_st* noundef %45, %struct.bignum_st* noundef %45) #4
  %cmp207 = icmp ne i32 %call206, 0
  %conv208 = zext i1 %cmp207 to i32
  %call209 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.212, i64 0, i64 0), i32 noundef %conv208) #4
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %if.end212

if.end212:                                        ; preds = %lor.lhs.false205
  %46 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %arrayidx213 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* %scalars, i64 0, i64 0
  store %struct.bignum_st* %46, %struct.bignum_st** %arrayidx213, align 16, !tbaa !7
  %arrayidx214 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* %scalars, i64 0, i64 1
  store %struct.bignum_st* %46, %struct.bignum_st** %arrayidx214, align 8, !tbaa !7
  %call216 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef null, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %arrayidx213, %struct.bignum_ctx* noundef %call) #4
  %cmp217 = icmp ne i32 %call216, 0
  %conv218 = zext i1 %cmp217 to i32
  %call219 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv218) #4
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %err, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %if.end212
  %47 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %call224 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call63, %struct.bignum_st* noundef %47, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %arrayidx213, %struct.bignum_ctx* noundef %call) #4
  %cmp225 = icmp ne i32 %call224, 0
  %conv226 = zext i1 %cmp225 to i32
  %call227 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 886, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv226) #4
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false221
  %call230 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.ec_point_st* noundef %call63, %struct.bignum_ctx* noundef %call) #4
  %call231 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 887, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i64 0, i64 0), i32 noundef 0, i32 noundef %call230) #4
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %err, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %lor.lhs.false229
  %call234 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call63, %struct.ec_point_st* noundef %call59, %struct.bignum_ctx* noundef %call) #4
  %call235 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 888, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.215, i64 0, i64 0), i32 noundef 0, i32 noundef %call234) #4
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %err, label %if.end238

if.end238:                                        ; preds = %lor.lhs.false233
  %48 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call239 = call i32 @BN_num_bits(%struct.bignum_st* noundef %48) #4
  %call240 = call i32 @BN_rand(%struct.bignum_st* noundef %48, i32 noundef %call239, i32 noundef 0, i32 noundef 0) #4
  %cmp241 = icmp ne i32 %call240, 0
  %conv242 = zext i1 %cmp241 to i32
  %call243 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 891, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.216, i64 0, i64 0), i32 noundef %conv242) #4
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %err, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %if.end238
  %49 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %50 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call246 = call i32 @BN_add(%struct.bignum_st* noundef %49, %struct.bignum_st* noundef %49, %struct.bignum_st* noundef %50) #4
  %cmp247 = icmp ne i32 %call246, 0
  %conv248 = zext i1 %cmp247 to i32
  %call249 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.217, i64 0, i64 0), i32 noundef %conv248) #4
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %err, label %if.end252

if.end252:                                        ; preds = %lor.lhs.false245
  %51 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_set_negative(%struct.bignum_st* noundef %51, i32 noundef 1) #4
  %52 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  store %struct.bignum_st* %52, %struct.bignum_st** %arrayidx213, align 16, !tbaa !7
  %53 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  store %struct.bignum_st* %53, %struct.bignum_st** %arrayidx214, align 8, !tbaa !7
  %call257 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef null, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %arrayidx213, %struct.bignum_ctx* noundef %call) #4
  %cmp258 = icmp ne i32 %call257, 0
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv259) #4
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %err, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %if.end252
  %call263 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55) #4
  %cmp264 = icmp ne i32 %call263, 0
  %conv265 = zext i1 %cmp264 to i32
  %call266 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 899, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv265) #4
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %err, label %if.end269

if.end269:                                        ; preds = %lor.lhs.false262
  %54 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %55 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call270 = call i32 @BN_num_bits(%struct.bignum_st* noundef %55) #4
  %sub = add nsw i32 %call270, -1
  %call271 = call i32 @BN_rand(%struct.bignum_st* noundef %54, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #4
  %cmp272 = icmp ne i32 %call271, 0
  %conv273 = zext i1 %cmp272 to i32
  %call274 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 902, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.218, i64 0, i64 0), i32 noundef %conv273) #4
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %err, label %lor.lhs.false276

lor.lhs.false276:                                 ; preds = %if.end269
  %56 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %57 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %58 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call277 = call i32 @BN_add(%struct.bignum_st* noundef %56, %struct.bignum_st* noundef %57, %struct.bignum_st* noundef %58) #4
  %cmp278 = icmp ne i32 %call277, 0
  %conv279 = zext i1 %cmp278 to i32
  %call280 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 903, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.219, i64 0, i64 0), i32 noundef %conv279) #4
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %err, label %if.end283

if.end283:                                        ; preds = %lor.lhs.false276
  %59 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_set_negative(%struct.bignum_st* noundef %59, i32 noundef 1) #4
  %60 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  store %struct.bignum_st* %60, %struct.bignum_st** %arrayidx213, align 16, !tbaa !7
  %61 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  store %struct.bignum_st* %61, %struct.bignum_st** %arrayidx214, align 8, !tbaa !7
  %62 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [3 x %struct.bignum_st*], [3 x %struct.bignum_st*]* %scalars, i64 0, i64 2
  store %struct.bignum_st* %62, %struct.bignum_st** %arrayidx286, align 16, !tbaa !7
  %call289 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55, %struct.bignum_st* noundef null, i64 noundef 3, %struct.ec_point_st** noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %arrayidx213, %struct.bignum_ctx* noundef %call) #4
  %cmp290 = icmp ne i32 %call289, 0
  %conv291 = zext i1 %cmp290 to i32
  %call292 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 910, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.283, i64 0, i64 0), i32 noundef %conv291) #4
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %err, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %if.end283
  %call295 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %call49, %struct.ec_point_st* noundef %call55) #4
  %cmp296 = icmp ne i32 %call295, 0
  %conv297 = zext i1 %cmp296 to i32
  %call298 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 911, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv297) #4
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %err, label %if.end302

if.end302:                                        ; preds = %lor.lhs.false294, %if.end130
  br label %err

err:                                              ; preds = %if.end283, %lor.lhs.false294, %if.end269, %lor.lhs.false276, %if.end252, %lor.lhs.false262, %if.end238, %lor.lhs.false245, %if.end212, %lor.lhs.false221, %lor.lhs.false229, %lor.lhs.false233, %if.end193, %lor.lhs.false202, %lor.lhs.false205, %if.then134, %lor.lhs.false140, %lor.lhs.false146, %lor.lhs.false152, %lor.lhs.false158, %lor.lhs.false162, %lor.lhs.false168, %lor.lhs.false174, %lor.lhs.false180, %lor.lhs.false186, %if.end122, %lor.lhs.false126, %if.end, %lor.lhs.false92, %lor.lhs.false98, %lor.lhs.false102, %lor.lhs.false108, %lor.lhs.false115, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false34, %lor.lhs.false41, %lor.lhs.false48, %lor.lhs.false54, %lor.lhs.false58, %lor.lhs.false62, %lor.lhs.false66, %lor.lhs.false73, %lor.lhs.false80, %if.end302
  %yplusone.0 = phi %struct.bignum_st* [ %call26, %if.end302 ], [ %call26, %lor.lhs.false294 ], [ %call26, %if.end283 ], [ %call26, %lor.lhs.false276 ], [ %call26, %if.end269 ], [ %call26, %lor.lhs.false262 ], [ %call26, %if.end252 ], [ %call26, %lor.lhs.false245 ], [ %call26, %if.end238 ], [ %call26, %lor.lhs.false233 ], [ %call26, %lor.lhs.false229 ], [ %call26, %lor.lhs.false221 ], [ %call26, %if.end212 ], [ %call26, %lor.lhs.false205 ], [ %call26, %lor.lhs.false202 ], [ %call26, %if.end193 ], [ %call26, %lor.lhs.false186 ], [ %call26, %lor.lhs.false180 ], [ %call26, %lor.lhs.false174 ], [ %call26, %lor.lhs.false168 ], [ %call26, %lor.lhs.false162 ], [ %call26, %lor.lhs.false158 ], [ %call26, %lor.lhs.false152 ], [ %call26, %lor.lhs.false146 ], [ %call26, %lor.lhs.false140 ], [ %call26, %if.then134 ], [ %call26, %lor.lhs.false126 ], [ %call26, %if.end122 ], [ %call26, %lor.lhs.false115 ], [ %call26, %lor.lhs.false108 ], [ %call26, %lor.lhs.false102 ], [ %call26, %lor.lhs.false98 ], [ %call26, %lor.lhs.false92 ], [ %call26, %if.end ], [ %call26, %lor.lhs.false80 ], [ %call26, %lor.lhs.false73 ], [ %call26, %lor.lhs.false66 ], [ %call26, %lor.lhs.false62 ], [ %call26, %lor.lhs.false58 ], [ %call26, %lor.lhs.false54 ], [ %call26, %lor.lhs.false48 ], [ %call26, %lor.lhs.false41 ], [ %call26, %lor.lhs.false34 ], [ %call26, %lor.lhs.false29 ], [ %call26, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %group.0 = phi %struct.ec_group_st* [ %call49, %if.end302 ], [ %call49, %lor.lhs.false294 ], [ %call49, %if.end283 ], [ %call49, %lor.lhs.false276 ], [ %call49, %if.end269 ], [ %call49, %lor.lhs.false262 ], [ %call49, %if.end252 ], [ %call49, %lor.lhs.false245 ], [ %call49, %if.end238 ], [ %call49, %lor.lhs.false233 ], [ %call49, %lor.lhs.false229 ], [ %call49, %lor.lhs.false221 ], [ %call49, %if.end212 ], [ %call49, %lor.lhs.false205 ], [ %call49, %lor.lhs.false202 ], [ %call49, %if.end193 ], [ %call49, %lor.lhs.false186 ], [ %call49, %lor.lhs.false180 ], [ %call49, %lor.lhs.false174 ], [ %call49, %lor.lhs.false168 ], [ %call49, %lor.lhs.false162 ], [ %call49, %lor.lhs.false158 ], [ %call49, %lor.lhs.false152 ], [ %call49, %lor.lhs.false146 ], [ %call49, %lor.lhs.false140 ], [ %call49, %if.then134 ], [ %call49, %lor.lhs.false126 ], [ %call49, %if.end122 ], [ %call49, %lor.lhs.false115 ], [ %call49, %lor.lhs.false108 ], [ %call49, %lor.lhs.false102 ], [ %call49, %lor.lhs.false98 ], [ %call49, %lor.lhs.false92 ], [ %call49, %if.end ], [ %call49, %lor.lhs.false80 ], [ %call49, %lor.lhs.false73 ], [ %call49, %lor.lhs.false66 ], [ %call49, %lor.lhs.false62 ], [ %call49, %lor.lhs.false58 ], [ %call49, %lor.lhs.false54 ], [ %call49, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %P.0 = phi %struct.ec_point_st* [ %call55, %if.end302 ], [ %call55, %lor.lhs.false294 ], [ %call55, %if.end283 ], [ %call55, %lor.lhs.false276 ], [ %call55, %if.end269 ], [ %call55, %lor.lhs.false262 ], [ %call55, %if.end252 ], [ %call55, %lor.lhs.false245 ], [ %call55, %if.end238 ], [ %call55, %lor.lhs.false233 ], [ %call55, %lor.lhs.false229 ], [ %call55, %lor.lhs.false221 ], [ %call55, %if.end212 ], [ %call55, %lor.lhs.false205 ], [ %call55, %lor.lhs.false202 ], [ %call55, %if.end193 ], [ %call55, %lor.lhs.false186 ], [ %call55, %lor.lhs.false180 ], [ %call55, %lor.lhs.false174 ], [ %call55, %lor.lhs.false168 ], [ %call55, %lor.lhs.false162 ], [ %call55, %lor.lhs.false158 ], [ %call55, %lor.lhs.false152 ], [ %call55, %lor.lhs.false146 ], [ %call55, %lor.lhs.false140 ], [ %call55, %if.then134 ], [ %call55, %lor.lhs.false126 ], [ %call55, %if.end122 ], [ %call55, %lor.lhs.false115 ], [ %call55, %lor.lhs.false108 ], [ %call55, %lor.lhs.false102 ], [ %call55, %lor.lhs.false98 ], [ %call55, %lor.lhs.false92 ], [ %call55, %if.end ], [ %call55, %lor.lhs.false80 ], [ %call55, %lor.lhs.false73 ], [ %call55, %lor.lhs.false66 ], [ %call55, %lor.lhs.false62 ], [ %call55, %lor.lhs.false58 ], [ %call55, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %Q.0 = phi %struct.ec_point_st* [ %call59, %if.end302 ], [ %call59, %lor.lhs.false294 ], [ %call59, %if.end283 ], [ %call59, %lor.lhs.false276 ], [ %call59, %if.end269 ], [ %call59, %lor.lhs.false262 ], [ %call59, %if.end252 ], [ %call59, %lor.lhs.false245 ], [ %call59, %if.end238 ], [ %call59, %lor.lhs.false233 ], [ %call59, %lor.lhs.false229 ], [ %call59, %lor.lhs.false221 ], [ %call59, %if.end212 ], [ %call59, %lor.lhs.false205 ], [ %call59, %lor.lhs.false202 ], [ %call59, %if.end193 ], [ %call59, %lor.lhs.false186 ], [ %call59, %lor.lhs.false180 ], [ %call59, %lor.lhs.false174 ], [ %call59, %lor.lhs.false168 ], [ %call59, %lor.lhs.false162 ], [ %call59, %lor.lhs.false158 ], [ %call59, %lor.lhs.false152 ], [ %call59, %lor.lhs.false146 ], [ %call59, %lor.lhs.false140 ], [ %call59, %if.then134 ], [ %call59, %lor.lhs.false126 ], [ %call59, %if.end122 ], [ %call59, %lor.lhs.false115 ], [ %call59, %lor.lhs.false108 ], [ %call59, %lor.lhs.false102 ], [ %call59, %lor.lhs.false98 ], [ %call59, %lor.lhs.false92 ], [ %call59, %if.end ], [ %call59, %lor.lhs.false80 ], [ %call59, %lor.lhs.false73 ], [ %call59, %lor.lhs.false66 ], [ %call59, %lor.lhs.false62 ], [ %call59, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %R.0 = phi %struct.ec_point_st* [ %call63, %if.end302 ], [ %call63, %lor.lhs.false294 ], [ %call63, %if.end283 ], [ %call63, %lor.lhs.false276 ], [ %call63, %if.end269 ], [ %call63, %lor.lhs.false262 ], [ %call63, %if.end252 ], [ %call63, %lor.lhs.false245 ], [ %call63, %if.end238 ], [ %call63, %lor.lhs.false233 ], [ %call63, %lor.lhs.false229 ], [ %call63, %lor.lhs.false221 ], [ %call63, %if.end212 ], [ %call63, %lor.lhs.false205 ], [ %call63, %lor.lhs.false202 ], [ %call63, %if.end193 ], [ %call63, %lor.lhs.false186 ], [ %call63, %lor.lhs.false180 ], [ %call63, %lor.lhs.false174 ], [ %call63, %lor.lhs.false168 ], [ %call63, %lor.lhs.false162 ], [ %call63, %lor.lhs.false158 ], [ %call63, %lor.lhs.false152 ], [ %call63, %lor.lhs.false146 ], [ %call63, %lor.lhs.false140 ], [ %call63, %if.then134 ], [ %call63, %lor.lhs.false126 ], [ %call63, %if.end122 ], [ %call63, %lor.lhs.false115 ], [ %call63, %lor.lhs.false108 ], [ %call63, %lor.lhs.false102 ], [ %call63, %lor.lhs.false98 ], [ %call63, %lor.lhs.false92 ], [ %call63, %if.end ], [ %call63, %lor.lhs.false80 ], [ %call63, %lor.lhs.false73 ], [ %call63, %lor.lhs.false66 ], [ %call63, %lor.lhs.false62 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %r.0 = phi i32 [ 1, %if.end302 ], [ 0, %lor.lhs.false294 ], [ 0, %if.end283 ], [ 0, %lor.lhs.false276 ], [ 0, %if.end269 ], [ 0, %lor.lhs.false262 ], [ 0, %if.end252 ], [ 0, %lor.lhs.false245 ], [ 0, %if.end238 ], [ 0, %lor.lhs.false233 ], [ 0, %lor.lhs.false229 ], [ 0, %lor.lhs.false221 ], [ 0, %if.end212 ], [ 0, %lor.lhs.false205 ], [ 0, %lor.lhs.false202 ], [ 0, %if.end193 ], [ 0, %lor.lhs.false186 ], [ 0, %lor.lhs.false180 ], [ 0, %lor.lhs.false174 ], [ 0, %lor.lhs.false168 ], [ 0, %lor.lhs.false162 ], [ 0, %lor.lhs.false158 ], [ 0, %lor.lhs.false152 ], [ 0, %lor.lhs.false146 ], [ 0, %lor.lhs.false140 ], [ 0, %if.then134 ], [ 0, %lor.lhs.false126 ], [ 0, %if.end122 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false92 ], [ 0, %if.end ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false73 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  %63 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %63) #4
  %64 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %64) #4
  %65 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %65) #4
  %66 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %66) #4
  %67 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %67) #4
  %68 = load %struct.bignum_st*, %struct.bignum_st** %z, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %68) #4
  call void @BN_free(%struct.bignum_st* noundef %yplusone.0) #4
  %69 = load %struct.bignum_st*, %struct.bignum_st** %cof, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %69) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %R.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @nistp_single_test(i32 noundef %idx) #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %x = alloca %struct.bignum_st*, align 8
  %y = alloca %struct.bignum_st*, align 8
  %n = alloca %struct.bignum_st*, align 8
  %order = alloca %struct.bignum_st*, align 8
  %idx.ext = sext i32 %idx to i64
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !7
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !7
  %3 = bitcast %struct.bignum_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %x, align 8, !tbaa !7
  %4 = bitcast %struct.bignum_st** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %y, align 8, !tbaa !7
  %5 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !7
  %6 = bitcast %struct.bignum_st** %order to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  store %struct.bignum_st* null, %struct.bignum_st** %order, align 8, !tbaa !7
  %degree = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 1
  %7 = load i32, i32* %degree, align 4, !tbaa !26
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.340, i64 0, i64 0), i32 noundef %7) #4
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %8 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1324, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %8) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call2, %struct.bignum_st** %p, align 8, !tbaa !7
  %9 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1325, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef %9) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call6, %struct.bignum_st** %a, align 8, !tbaa !7
  %10 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1326, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0), i8* noundef %10) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call10, %struct.bignum_st** %b, align 8, !tbaa !7
  %11 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1327, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef %11) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call14, %struct.bignum_st** %x, align 8, !tbaa !7
  %12 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1328, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0), i8* noundef %12) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call18, %struct.bignum_st** %y, align 8, !tbaa !7
  %13 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1329, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i8* noundef %13) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.bignum_st* @BN_new() #4
  %14 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1330, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.341, i64 0, i64 0), i8* noundef %14) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call26, %struct.bignum_st** %n, align 8, !tbaa !7
  %15 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1331, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.342, i64 0, i64 0), i8* noundef %15) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call %struct.bignum_st* @BN_new() #4
  store %struct.bignum_st* %call30, %struct.bignum_st** %order, align 8, !tbaa !7
  %16 = bitcast %struct.bignum_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1332, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.225, i64 0, i64 0), i8* noundef %16) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %call34 = tail call %struct.bignum_st* @BN_new() #4
  %17 = bitcast %struct.bignum_st* %call34 to i8*
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1333, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* noundef %17) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %nid = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 0
  %18 = load i32, i32* %nid, align 16, !tbaa !28
  %call38 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %18) #4
  %19 = bitcast %struct.ec_group_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1335, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.343, i64 0, i64 0), i8* noundef %19) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %p42 = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 2
  %20 = load i8*, i8** %p42, align 8, !tbaa !29
  %call43 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %p, i8* noundef %20) #4
  %cmp = icmp ne i32 %call43, 0
  %conv = zext i1 %cmp to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1336, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.273, i64 0, i64 0), i32 noundef %conv) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false41
  %21 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %call47 = call i32 @BN_check_prime(%struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef %call, %struct.bn_gencb_st* noundef null) #4
  %call48 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1337, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i64 0, i64 0), i32 noundef 1, i32 noundef %call47) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %a51 = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 3
  %22 = load i8*, i8** %a51, align 16, !tbaa !30
  %call52 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef %22) #4
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1338, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.274, i64 0, i64 0), i32 noundef %conv54) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false50
  %b58 = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 4
  %23 = load i8*, i8** %b58, align 8, !tbaa !31
  %call59 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef %23) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1339, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.275, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false57
  %24 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  %25 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  %26 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  %call65 = call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call38, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef %call) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1340, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.344, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %call71 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call38) #4
  %27 = bitcast %struct.ec_point_st* %call71 to i8*
  %call72 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1341, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.345, i64 0, i64 0), i8* noundef %27) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %call75 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call38) #4
  %28 = bitcast %struct.ec_point_st* %call75 to i8*
  %call76 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.346, i64 0, i64 0), i8* noundef %28) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %call79 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call38) #4
  %29 = bitcast %struct.ec_point_st* %call79 to i8*
  %call80 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.347, i64 0, i64 0), i8* noundef %29) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false78
  %call83 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call38) #4
  %30 = bitcast %struct.ec_point_st* %call83 to i8*
  %call84 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1344, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.348, i64 0, i64 0), i8* noundef %30) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %Qx = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 5
  %31 = load i8*, i8** %Qx, align 16, !tbaa !32
  %call87 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef %31) #4
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1345, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.349, i64 0, i64 0), i32 noundef %conv89) #4
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %Qy = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 6
  %32 = load i8*, i8** %Qy, align 8, !tbaa !33
  %call93 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef %32) #4
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.350, i64 0, i64 0), i32 noundef %conv95) #4
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false92
  %33 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call99 = call %struct.bignum_st* @BN_value_one() #4
  %call100 = call i32 @BN_add(%struct.bignum_st* noundef %call34, %struct.bignum_st* noundef %33, %struct.bignum_st* noundef %call99) #4
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1347, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv102) #4
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false98
  %34 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %call106 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call83, %struct.bignum_st* noundef %34, %struct.bignum_st* noundef %call34, %struct.bignum_ctx* noundef %call) #4
  %cmp107 = icmp ne i32 %call106, 0
  %conv108 = zext i1 %cmp107 to i32
  %call109 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1353, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.351, i64 0, i64 0), i32 noundef %conv108) #4
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false105
  %35 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %36 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call112 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call83, %struct.bignum_st* noundef %35, %struct.bignum_st* noundef %36, %struct.bignum_ctx* noundef %call) #4
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1355, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.352, i64 0, i64 0), i32 noundef %conv114) #4
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false111
  %Gx = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 7
  %37 = load i8*, i8** %Gx, align 16, !tbaa !34
  %call118 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %x, i8* noundef %37) #4
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1356, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.353, i64 0, i64 0), i32 noundef %conv120) #4
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false117
  %Gy = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 8
  %38 = load i8*, i8** %Gy, align 8, !tbaa !35
  %call124 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %y, i8* noundef %38) #4
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1357, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.354, i64 0, i64 0), i32 noundef %conv126) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false123
  %39 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  %40 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  %call130 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call71, %struct.bignum_st* noundef %39, %struct.bignum_st* noundef %40, %struct.bignum_ctx* noundef %call) #4
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  %call133 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1358, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.355, i64 0, i64 0), i32 noundef %conv132) #4
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false129
  %order136 = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 9
  %41 = load i8*, i8** %order136, align 16, !tbaa !36
  %call137 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %order, i8* noundef %41) #4
  %cmp138 = icmp ne i32 %call137, 0
  %conv139 = zext i1 %cmp138 to i32
  %call140 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.356, i64 0, i64 0), i32 noundef %conv139) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false135
  %42 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !7
  %call143 = call %struct.bignum_st* @BN_value_one() #4
  %call144 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call71, %struct.bignum_st* noundef %42, %struct.bignum_st* noundef %call143) #4
  %cmp145 = icmp ne i32 %call144, 0
  %conv146 = zext i1 %cmp145 to i32
  %call147 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1360, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.357, i64 0, i64 0), i32 noundef %conv146) #4
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %err, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %lor.lhs.false142
  %call150 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call38) #4
  %call152 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.358, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.282, i64 0, i64 0), i32 noundef %call150, i32 noundef %7) #4
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false149
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.359, i64 0, i64 0)) #4
  %d = getelementptr inbounds [3 x %struct.nistp_test_params], [3 x %struct.nistp_test_params]* @nistp_tests_params, i64 0, i64 %idx.ext, i32 10
  %43 = load i8*, i8** %d, align 8, !tbaa !37
  %call154 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %n, i8* noundef %43) #4
  %cmp155 = icmp ne i32 %call154, 0
  %conv156 = zext i1 %cmp155 to i32
  %call157 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1365, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.360, i64 0, i64 0), i32 noundef %conv156) #4
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %if.end160

if.end160:                                        ; preds = %if.end
  %44 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call161 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef %44, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call) #4
  %call162 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call163 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1369, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call162) #4
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %err, label %if.end166

if.end166:                                        ; preds = %if.end160
  %45 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call167 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call71, %struct.bignum_st* noundef %45, %struct.bignum_ctx* noundef %call) #4
  %call168 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call169 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1373, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call168) #4
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %if.end166
  %call172 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call75, %struct.ec_point_st* noundef %call71, %struct.bignum_ctx* noundef %call) #4
  %cmp173 = icmp ne i32 %call172, 0
  %conv174 = zext i1 %cmp173 to i32
  %call175 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1376, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.362, i64 0, i64 0), i32 noundef %conv174) #4
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false171
  %46 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !7
  %call178 = call %struct.bignum_st* @BN_value_one() #4
  %call179 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call75, %struct.bignum_st* noundef %46, %struct.bignum_st* noundef %call178) #4
  %cmp180 = icmp ne i32 %call179, 0
  %conv181 = zext i1 %cmp180 to i32
  %call182 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1377, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.363, i64 0, i64 0), i32 noundef %conv181) #4
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false177
  %47 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call185 = call i32 @BN_rshift(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %47, i32 noundef 1) #4
  %cmp186 = icmp ne i32 %call185, 0
  %conv187 = zext i1 %cmp186 to i32
  %call188 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1379, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.364, i64 0, i64 0), i32 noundef %conv187) #4
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %err, label %if.end191

if.end191:                                        ; preds = %lor.lhs.false184
  %call192 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef %call22, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call) #4
  %call193 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call194 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call193) #4
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %err, label %if.end197

if.end197:                                        ; preds = %if.end191
  %call198 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call75, %struct.bignum_st* noundef %call22, %struct.bignum_ctx* noundef %call) #4
  %call199 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call200 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1389, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call199) #4
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %if.end197
  %call203 = call i32 @EC_GROUP_have_precompute_mult(%struct.ec_group_st* noundef %call38) #4
  %cmp204 = icmp ne i32 %call203, 0
  %conv205 = zext i1 %cmp204 to i32
  %call206 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1392, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.365, i64 0, i64 0), i32 noundef %conv205) #4
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false202
  %call209 = call i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef %call38, %struct.bignum_ctx* noundef %call) #4
  %cmp210 = icmp ne i32 %call209, 0
  %conv211 = zext i1 %cmp210 to i32
  %call212 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1394, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.366, i64 0, i64 0), i32 noundef %conv211) #4
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %err, label %if.end215

if.end215:                                        ; preds = %lor.lhs.false208
  %call216 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef %call22, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call) #4
  %call217 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call218 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1401, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call217) #4
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %err, label %if.end221

if.end221:                                        ; preds = %if.end215
  %call222 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call75, %struct.bignum_st* noundef %call22, %struct.bignum_ctx* noundef %call) #4
  %call223 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call224 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1405, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call223) #4
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %err, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %if.end221
  %48 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !7
  %call227 = call %struct.bignum_st* @BN_value_one() #4
  %call228 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call71, %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %call227) #4
  %cmp229 = icmp ne i32 %call228, 0
  %conv230 = zext i1 %cmp229 to i32
  %call231 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1408, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.357, i64 0, i64 0), i32 noundef %conv230) #4
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %err, label %if.end234

if.end234:                                        ; preds = %lor.lhs.false226
  %49 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call235 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef %49, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call) #4
  %call236 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call237 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1412, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call236) #4
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %err, label %if.end240

if.end240:                                        ; preds = %if.end234
  %50 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call241 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call71, %struct.bignum_st* noundef %50, %struct.bignum_ctx* noundef %call) #4
  %call242 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call83, %struct.bignum_ctx* noundef %call) #4
  %call243 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1416, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.361, i64 0, i64 0), i32 noundef 0, i32 noundef %call242) #4
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %err, label %if.end246

if.end246:                                        ; preds = %if.end240
  %call247 = call i32 @BN_set_word(%struct.bignum_st* noundef %call22, i64 noundef 32) #4
  %cmp248 = icmp ne i32 %call247, 0
  %conv249 = zext i1 %cmp248 to i32
  %call250 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1420, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.367, i64 0, i64 0), i32 noundef %conv249) #4
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %err, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.end246
  %51 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call253 = call i32 @BN_set_word(%struct.bignum_st* noundef %51, i64 noundef 31) #4
  %cmp254 = icmp ne i32 %call253, 0
  %conv255 = zext i1 %cmp254 to i32
  %call256 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1421, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.368, i64 0, i64 0), i32 noundef %conv255) #4
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %err, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %lor.lhs.false252
  %call259 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call75, %struct.ec_point_st* noundef %call71) #4
  %cmp260 = icmp ne i32 %call259, 0
  %conv261 = zext i1 %cmp260 to i32
  %call262 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1422, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.231, i64 0, i64 0), i32 noundef %conv261) #4
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %err, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %lor.lhs.false258
  %call265 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call75, %struct.bignum_ctx* noundef %call) #4
  %cmp266 = icmp ne i32 %call265, 0
  %conv267 = zext i1 %cmp266 to i32
  %call268 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1423, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.369, i64 0, i64 0), i32 noundef %conv267) #4
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %err, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %lor.lhs.false264
  %52 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  %call271 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.bignum_st* noundef %call22, %struct.ec_point_st* noundef %call75, %struct.bignum_st* noundef %52, %struct.bignum_ctx* noundef %call) #4
  %cmp272 = icmp ne i32 %call271, 0
  %conv273 = zext i1 %cmp272 to i32
  %call274 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1424, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.370, i64 0, i64 0), i32 noundef %conv273) #4
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %err, label %lor.lhs.false276

lor.lhs.false276:                                 ; preds = %lor.lhs.false270
  %call277 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %call38, %struct.ec_point_st* noundef %call79, %struct.ec_point_st* noundef %call71, %struct.bignum_ctx* noundef %call) #4
  %call278 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1425, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.371, i64 0, i64 0), i32 noundef 0, i32 noundef %call277) #4
  %tobool279.not = icmp ne i32 %call278, 0
  %spec.select = zext i1 %tobool279.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false276, %if.end246, %lor.lhs.false252, %lor.lhs.false258, %lor.lhs.false264, %lor.lhs.false270, %if.end240, %if.end234, %if.end221, %lor.lhs.false226, %if.end215, %if.end197, %lor.lhs.false202, %lor.lhs.false208, %if.end191, %if.end166, %lor.lhs.false171, %lor.lhs.false177, %lor.lhs.false184, %if.end160, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false33, %lor.lhs.false37, %lor.lhs.false41, %lor.lhs.false46, %lor.lhs.false50, %lor.lhs.false57, %lor.lhs.false64, %lor.lhs.false70, %lor.lhs.false74, %lor.lhs.false78, %lor.lhs.false82, %lor.lhs.false86, %lor.lhs.false92, %lor.lhs.false98, %lor.lhs.false105, %lor.lhs.false111, %lor.lhs.false117, %lor.lhs.false123, %lor.lhs.false129, %lor.lhs.false135, %lor.lhs.false142, %lor.lhs.false149
  %m.0 = phi %struct.bignum_st* [ %call22, %lor.lhs.false270 ], [ %call22, %lor.lhs.false264 ], [ %call22, %lor.lhs.false258 ], [ %call22, %lor.lhs.false252 ], [ %call22, %if.end246 ], [ %call22, %if.end240 ], [ %call22, %if.end234 ], [ %call22, %lor.lhs.false226 ], [ %call22, %if.end221 ], [ %call22, %if.end215 ], [ %call22, %lor.lhs.false208 ], [ %call22, %lor.lhs.false202 ], [ %call22, %if.end197 ], [ %call22, %if.end191 ], [ %call22, %lor.lhs.false184 ], [ %call22, %lor.lhs.false177 ], [ %call22, %lor.lhs.false171 ], [ %call22, %if.end166 ], [ %call22, %if.end160 ], [ %call22, %if.end ], [ %call22, %lor.lhs.false149 ], [ %call22, %lor.lhs.false142 ], [ %call22, %lor.lhs.false135 ], [ %call22, %lor.lhs.false129 ], [ %call22, %lor.lhs.false123 ], [ %call22, %lor.lhs.false117 ], [ %call22, %lor.lhs.false111 ], [ %call22, %lor.lhs.false105 ], [ %call22, %lor.lhs.false98 ], [ %call22, %lor.lhs.false92 ], [ %call22, %lor.lhs.false86 ], [ %call22, %lor.lhs.false82 ], [ %call22, %lor.lhs.false78 ], [ %call22, %lor.lhs.false74 ], [ %call22, %lor.lhs.false70 ], [ %call22, %lor.lhs.false64 ], [ %call22, %lor.lhs.false57 ], [ %call22, %lor.lhs.false50 ], [ %call22, %lor.lhs.false46 ], [ %call22, %lor.lhs.false41 ], [ %call22, %lor.lhs.false37 ], [ %call22, %lor.lhs.false33 ], [ %call22, %lor.lhs.false29 ], [ %call22, %lor.lhs.false25 ], [ %call22, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call22, %lor.lhs.false276 ]
  %yplusone.0 = phi %struct.bignum_st* [ %call34, %lor.lhs.false270 ], [ %call34, %lor.lhs.false264 ], [ %call34, %lor.lhs.false258 ], [ %call34, %lor.lhs.false252 ], [ %call34, %if.end246 ], [ %call34, %if.end240 ], [ %call34, %if.end234 ], [ %call34, %lor.lhs.false226 ], [ %call34, %if.end221 ], [ %call34, %if.end215 ], [ %call34, %lor.lhs.false208 ], [ %call34, %lor.lhs.false202 ], [ %call34, %if.end197 ], [ %call34, %if.end191 ], [ %call34, %lor.lhs.false184 ], [ %call34, %lor.lhs.false177 ], [ %call34, %lor.lhs.false171 ], [ %call34, %if.end166 ], [ %call34, %if.end160 ], [ %call34, %if.end ], [ %call34, %lor.lhs.false149 ], [ %call34, %lor.lhs.false142 ], [ %call34, %lor.lhs.false135 ], [ %call34, %lor.lhs.false129 ], [ %call34, %lor.lhs.false123 ], [ %call34, %lor.lhs.false117 ], [ %call34, %lor.lhs.false111 ], [ %call34, %lor.lhs.false105 ], [ %call34, %lor.lhs.false98 ], [ %call34, %lor.lhs.false92 ], [ %call34, %lor.lhs.false86 ], [ %call34, %lor.lhs.false82 ], [ %call34, %lor.lhs.false78 ], [ %call34, %lor.lhs.false74 ], [ %call34, %lor.lhs.false70 ], [ %call34, %lor.lhs.false64 ], [ %call34, %lor.lhs.false57 ], [ %call34, %lor.lhs.false50 ], [ %call34, %lor.lhs.false46 ], [ %call34, %lor.lhs.false41 ], [ %call34, %lor.lhs.false37 ], [ %call34, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call34, %lor.lhs.false276 ]
  %NISTP.0 = phi %struct.ec_group_st* [ %call38, %lor.lhs.false270 ], [ %call38, %lor.lhs.false264 ], [ %call38, %lor.lhs.false258 ], [ %call38, %lor.lhs.false252 ], [ %call38, %if.end246 ], [ %call38, %if.end240 ], [ %call38, %if.end234 ], [ %call38, %lor.lhs.false226 ], [ %call38, %if.end221 ], [ %call38, %if.end215 ], [ %call38, %lor.lhs.false208 ], [ %call38, %lor.lhs.false202 ], [ %call38, %if.end197 ], [ %call38, %if.end191 ], [ %call38, %lor.lhs.false184 ], [ %call38, %lor.lhs.false177 ], [ %call38, %lor.lhs.false171 ], [ %call38, %if.end166 ], [ %call38, %if.end160 ], [ %call38, %if.end ], [ %call38, %lor.lhs.false149 ], [ %call38, %lor.lhs.false142 ], [ %call38, %lor.lhs.false135 ], [ %call38, %lor.lhs.false129 ], [ %call38, %lor.lhs.false123 ], [ %call38, %lor.lhs.false117 ], [ %call38, %lor.lhs.false111 ], [ %call38, %lor.lhs.false105 ], [ %call38, %lor.lhs.false98 ], [ %call38, %lor.lhs.false92 ], [ %call38, %lor.lhs.false86 ], [ %call38, %lor.lhs.false82 ], [ %call38, %lor.lhs.false78 ], [ %call38, %lor.lhs.false74 ], [ %call38, %lor.lhs.false70 ], [ %call38, %lor.lhs.false64 ], [ %call38, %lor.lhs.false57 ], [ %call38, %lor.lhs.false50 ], [ %call38, %lor.lhs.false46 ], [ %call38, %lor.lhs.false41 ], [ %call38, %lor.lhs.false37 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call38, %lor.lhs.false276 ]
  %G.0 = phi %struct.ec_point_st* [ %call71, %lor.lhs.false270 ], [ %call71, %lor.lhs.false264 ], [ %call71, %lor.lhs.false258 ], [ %call71, %lor.lhs.false252 ], [ %call71, %if.end246 ], [ %call71, %if.end240 ], [ %call71, %if.end234 ], [ %call71, %lor.lhs.false226 ], [ %call71, %if.end221 ], [ %call71, %if.end215 ], [ %call71, %lor.lhs.false208 ], [ %call71, %lor.lhs.false202 ], [ %call71, %if.end197 ], [ %call71, %if.end191 ], [ %call71, %lor.lhs.false184 ], [ %call71, %lor.lhs.false177 ], [ %call71, %lor.lhs.false171 ], [ %call71, %if.end166 ], [ %call71, %if.end160 ], [ %call71, %if.end ], [ %call71, %lor.lhs.false149 ], [ %call71, %lor.lhs.false142 ], [ %call71, %lor.lhs.false135 ], [ %call71, %lor.lhs.false129 ], [ %call71, %lor.lhs.false123 ], [ %call71, %lor.lhs.false117 ], [ %call71, %lor.lhs.false111 ], [ %call71, %lor.lhs.false105 ], [ %call71, %lor.lhs.false98 ], [ %call71, %lor.lhs.false92 ], [ %call71, %lor.lhs.false86 ], [ %call71, %lor.lhs.false82 ], [ %call71, %lor.lhs.false78 ], [ %call71, %lor.lhs.false74 ], [ %call71, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call71, %lor.lhs.false276 ]
  %P.0 = phi %struct.ec_point_st* [ %call75, %lor.lhs.false270 ], [ %call75, %lor.lhs.false264 ], [ %call75, %lor.lhs.false258 ], [ %call75, %lor.lhs.false252 ], [ %call75, %if.end246 ], [ %call75, %if.end240 ], [ %call75, %if.end234 ], [ %call75, %lor.lhs.false226 ], [ %call75, %if.end221 ], [ %call75, %if.end215 ], [ %call75, %lor.lhs.false208 ], [ %call75, %lor.lhs.false202 ], [ %call75, %if.end197 ], [ %call75, %if.end191 ], [ %call75, %lor.lhs.false184 ], [ %call75, %lor.lhs.false177 ], [ %call75, %lor.lhs.false171 ], [ %call75, %if.end166 ], [ %call75, %if.end160 ], [ %call75, %if.end ], [ %call75, %lor.lhs.false149 ], [ %call75, %lor.lhs.false142 ], [ %call75, %lor.lhs.false135 ], [ %call75, %lor.lhs.false129 ], [ %call75, %lor.lhs.false123 ], [ %call75, %lor.lhs.false117 ], [ %call75, %lor.lhs.false111 ], [ %call75, %lor.lhs.false105 ], [ %call75, %lor.lhs.false98 ], [ %call75, %lor.lhs.false92 ], [ %call75, %lor.lhs.false86 ], [ %call75, %lor.lhs.false82 ], [ %call75, %lor.lhs.false78 ], [ %call75, %lor.lhs.false74 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call75, %lor.lhs.false276 ]
  %Q.0 = phi %struct.ec_point_st* [ %call79, %lor.lhs.false270 ], [ %call79, %lor.lhs.false264 ], [ %call79, %lor.lhs.false258 ], [ %call79, %lor.lhs.false252 ], [ %call79, %if.end246 ], [ %call79, %if.end240 ], [ %call79, %if.end234 ], [ %call79, %lor.lhs.false226 ], [ %call79, %if.end221 ], [ %call79, %if.end215 ], [ %call79, %lor.lhs.false208 ], [ %call79, %lor.lhs.false202 ], [ %call79, %if.end197 ], [ %call79, %if.end191 ], [ %call79, %lor.lhs.false184 ], [ %call79, %lor.lhs.false177 ], [ %call79, %lor.lhs.false171 ], [ %call79, %if.end166 ], [ %call79, %if.end160 ], [ %call79, %if.end ], [ %call79, %lor.lhs.false149 ], [ %call79, %lor.lhs.false142 ], [ %call79, %lor.lhs.false135 ], [ %call79, %lor.lhs.false129 ], [ %call79, %lor.lhs.false123 ], [ %call79, %lor.lhs.false117 ], [ %call79, %lor.lhs.false111 ], [ %call79, %lor.lhs.false105 ], [ %call79, %lor.lhs.false98 ], [ %call79, %lor.lhs.false92 ], [ %call79, %lor.lhs.false86 ], [ %call79, %lor.lhs.false82 ], [ %call79, %lor.lhs.false78 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call79, %lor.lhs.false276 ]
  %Q_CHECK.0 = phi %struct.ec_point_st* [ %call83, %lor.lhs.false270 ], [ %call83, %lor.lhs.false264 ], [ %call83, %lor.lhs.false258 ], [ %call83, %lor.lhs.false252 ], [ %call83, %if.end246 ], [ %call83, %if.end240 ], [ %call83, %if.end234 ], [ %call83, %lor.lhs.false226 ], [ %call83, %if.end221 ], [ %call83, %if.end215 ], [ %call83, %lor.lhs.false208 ], [ %call83, %lor.lhs.false202 ], [ %call83, %if.end197 ], [ %call83, %if.end191 ], [ %call83, %lor.lhs.false184 ], [ %call83, %lor.lhs.false177 ], [ %call83, %lor.lhs.false171 ], [ %call83, %if.end166 ], [ %call83, %if.end160 ], [ %call83, %if.end ], [ %call83, %lor.lhs.false149 ], [ %call83, %lor.lhs.false142 ], [ %call83, %lor.lhs.false135 ], [ %call83, %lor.lhs.false129 ], [ %call83, %lor.lhs.false123 ], [ %call83, %lor.lhs.false117 ], [ %call83, %lor.lhs.false111 ], [ %call83, %lor.lhs.false105 ], [ %call83, %lor.lhs.false98 ], [ %call83, %lor.lhs.false92 ], [ %call83, %lor.lhs.false86 ], [ %call83, %lor.lhs.false82 ], [ null, %lor.lhs.false78 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call83, %lor.lhs.false276 ]
  %r.0 = phi i32 [ 0, %lor.lhs.false270 ], [ 0, %lor.lhs.false264 ], [ 0, %lor.lhs.false258 ], [ 0, %lor.lhs.false252 ], [ 0, %if.end246 ], [ 0, %if.end240 ], [ 0, %if.end234 ], [ 0, %lor.lhs.false226 ], [ 0, %if.end221 ], [ 0, %if.end215 ], [ 0, %lor.lhs.false208 ], [ 0, %lor.lhs.false202 ], [ 0, %if.end197 ], [ 0, %if.end191 ], [ 0, %lor.lhs.false184 ], [ 0, %lor.lhs.false177 ], [ 0, %lor.lhs.false171 ], [ 0, %if.end166 ], [ 0, %if.end160 ], [ 0, %if.end ], [ 0, %lor.lhs.false149 ], [ 0, %lor.lhs.false142 ], [ 0, %lor.lhs.false135 ], [ 0, %lor.lhs.false129 ], [ 0, %lor.lhs.false123 ], [ 0, %lor.lhs.false117 ], [ 0, %lor.lhs.false111 ], [ 0, %lor.lhs.false105 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false276 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %NISTP.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %G.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q_CHECK.0) #4
  %53 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %53) #4
  call void @BN_free(%struct.bignum_st* noundef %m.0) #4
  %54 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %54) #4
  %55 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %55) #4
  %56 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %56) #4
  %57 = load %struct.bignum_st*, %struct.bignum_st** %x, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %57) #4
  %58 = load %struct.bignum_st*, %struct.bignum_st** %y, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %58) #4
  %59 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %59) #4
  call void @BN_free(%struct.bignum_st* noundef %yplusone.0) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @internal_curve_test(i32 noundef %n) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %n to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %2 = bitcast %struct.ec_group_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1142, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1144, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.394, i64 0, i64 0), i8* noundef %call3) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @EC_GROUP_check(%struct.ec_group_st* noundef %call, %struct.bignum_ctx* noundef null) #4
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1147, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.395, i64 0, i64 0), i32 noundef %conv) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1148, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.396, i64 0, i64 0), i8* noundef %call8) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @internal_curve_test_method(i32 noundef %n) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %n to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %2 = bitcast %struct.ec_group_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1161, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.397, i64 0, i64 0), i8* noundef %call3) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %call) #6
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @group_field_test() #0 {
entry:
  %secp521r1_field = alloca %struct.bignum_st*, align 8
  %sect163r2_field = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %secp521r1_field to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %secp521r1_field, align 8, !tbaa !7
  %1 = bitcast %struct.bignum_st** %sect163r2_field to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %sect163r2_field, align 8, !tbaa !7
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %secp521r1_field, i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.398, i64 0, i64 0)) #4
  %call1 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %sect163r2_field, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.285, i64 0, i64 0)) #4
  %call2 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 716) #4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %secp521r1_field, align 8, !tbaa !7
  %call3 = call %struct.bignum_st* @EC_GROUP_get0_field(%struct.ec_group_st* noundef %call2) #4
  %call4 = call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %call3) #4
  %tobool.not = icmp eq i32 %call4, 0
  %call5 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 723) #4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %sect163r2_field, align 8, !tbaa !7
  %call6 = call %struct.bignum_st* @EC_GROUP_get0_field(%struct.ec_group_st* noundef %call5) #4
  %call7 = call i32 @BN_cmp(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %call6) #4
  %tobool8.not = icmp eq i32 %call7, 0
  %narrow = select i1 %tobool8.not, i1 %tobool.not, i1 false
  %r.1 = zext i1 %narrow to i32
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %call2) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %call5) #4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %secp521r1_field, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %4) #4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %sect163r2_field, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %r.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_named_curve_test(i32 noundef %id) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1515, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.399, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %3 = bitcast %struct.ec_group_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1516, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %call3) #4
  %4 = bitcast %struct.ec_group_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1517, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.400, i64 0, i64 0), i8* noundef %4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call %struct.bignum_st* @BN_new() #4
  %5 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1518, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.401, i64 0, i64 0), i8* noundef %5) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.bignum_st* @BN_new() #4
  %6 = bitcast %struct.bignum_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1519, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.402, i64 0, i64 0), i8* noundef %6) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.bignum_st* @BN_new() #4
  %7 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1520, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.403, i64 0, i64 0), i8* noundef %7) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.bignum_st* @BN_new() #4
  %8 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1521, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.404, i64 0, i64 0), i8* noundef %8) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call3) #4
  %9 = bitcast %struct.ec_point_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1522, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.405, i64 0, i64 0), i8* noundef %9) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call3) #4
  %10 = bitcast %struct.bignum_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1523, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.406, i64 0, i64 0), i8* noundef %10) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %call3, %struct.bignum_st* noundef %call23, %struct.bignum_ctx* noundef null) #4
  %cmp = icmp ne i32 %call35, 0
  %conv = zext i1 %cmp to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1524, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.407, i64 0, i64 0), i32 noundef %conv) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %call39 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call3, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef null) #4
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1525, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.408, i64 0, i64 0), i32 noundef %conv41) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call45 = tail call %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %call27, %struct.ec_group_st* noundef %call3) #4
  %11 = bitcast %struct.ec_point_st* %call45 to i8*
  %call46 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1526, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.409, i64 0, i64 0), i8* noundef %11) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call49 = tail call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef %call45, %struct.ec_point_st* noundef %call27, %struct.ec_point_st* noundef %call27, %struct.bignum_ctx* noundef null) #4
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1527, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.410, i64 0, i64 0), i32 noundef %conv51) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call31) #4
  %12 = bitcast %struct.bignum_st* %call55 to i8*
  %call56 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1528, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.411, i64 0, i64 0), i8* noundef %12) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %call59 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call55, i64 noundef 1) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1529, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.412, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call15) #4
  %13 = bitcast %struct.bignum_st* %call65 to i8*
  %call66 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1530, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.413, i64 0, i64 0), i8* noundef %13) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %call69 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call65, i64 noundef 1) #4
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1531, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.414, i64 0, i64 0), i32 noundef %conv71) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %call75 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call19) #4
  %14 = bitcast %struct.bignum_st* %call75 to i8*
  %call76 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1532, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.415, i64 0, i64 0), i8* noundef %14) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %call79 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call75, i64 noundef 1) #4
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1533, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.416, i64 0, i64 0), i32 noundef %conv81) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %call85 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call23) #4
  %15 = bitcast %struct.bignum_st* %call85 to i8*
  %call86 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.417, i64 0, i64 0), i8* noundef %15) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %call89 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call85, i64 noundef 1) #4
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1535, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.418, i64 0, i64 0), i32 noundef %conv91) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false88
  %call94 = tail call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef %call3) #4
  %cmp95.not = icmp eq i64 %call94, 0
  %call97 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %call3) #4
  %cmp98 = icmp eq i32 %call97, 407
  %call101 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %call11) #4
  %16 = bitcast %struct.bignum_st* %call101 to i8*
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.end
  %call102 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1542, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.419, i64 0, i64 0), i8* noundef %16) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.then100
  %call105 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %call101, %struct.bignum_st* noundef %call101) #4
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1543, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.420, i64 0, i64 0), i32 noundef %conv107) #4
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end128

if.else:                                          ; preds = %if.end
  %call113 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1546, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.419, i64 0, i64 0), i8* noundef %16) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %if.end116

if.end116:                                        ; preds = %if.else
  %call117 = tail call %struct.bignum_st* @BN_get0_nist_prime_192() #4
  %call118 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call117, %struct.bignum_st* noundef %call101) #4
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end116
  %call121 = tail call %struct.bignum_st* @BN_get0_nist_prime_256() #4
  br label %cond.end

cond.false:                                       ; preds = %if.end116
  %call122 = tail call %struct.bignum_st* @BN_get0_nist_prime_192() #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call121, %cond.true ], [ %call122, %cond.false ]
  %call123 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call101, %struct.bignum_st* noundef %cond) #4
  %17 = bitcast %struct.bignum_st* %call123 to i8*
  %call124 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1556, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.421, i64 0, i64 0), i8* noundef %17) #4
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %if.end128

if.end128:                                        ; preds = %cond.end, %lor.lhs.false104
  %call129 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call130 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1561, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call129, i32 noundef %1) #4
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end128
  %call133 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 1, %struct.bignum_ctx* noundef null) #4
  %call134 = tail call i8* @EC_curve_nid2nist(i32 noundef %1) #4
  %cmp135.not = icmp eq i8* %call134, null
  %cond140 = select i1 %cmp135.not, i32 0, i32 %1
  %call141 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1564, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.424, i64 0, i64 0), i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.425, i64 0, i64 0), i32 noundef %call133, i32 noundef %cond140) #4
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %if.end144

if.end144:                                        ; preds = %lor.lhs.false132
  %add = add nsw i32 %1, 1
  tail call void @EC_GROUP_set_curve_name(%struct.ec_group_st* noundef %call3, i32 noundef %add) #4
  %call145 = tail call i32 @ERR_set_mark() #4
  %call146 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call147 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1570, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call146, i32 noundef 0) #4
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %err, label %if.end150

if.end150:                                        ; preds = %if.end144
  %call151 = tail call i32 @ERR_pop_to_mark() #4
  tail call void @EC_GROUP_set_curve_name(%struct.ec_group_st* noundef %call3, i32 noundef %1) #4
  %call152 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call153 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1576, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call152, i32 noundef %1) #4
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %if.end156

if.end156:                                        ; preds = %if.end150
  %call157 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef %call3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @check_named_curve_test.invalid_seed, i64 0, i64 0), i64 noundef 25) #4
  %conv158 = trunc i64 %call157 to i32
  %call160 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1580, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.426, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.427, i64 0, i64 0), i32 noundef %conv158, i32 noundef 25) #4
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %if.end163

if.end163:                                        ; preds = %if.end156
  %call172 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  br i1 %cmp95.not, label %if.else171, label %if.then165

if.then165:                                       ; preds = %if.end163
  %call167 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1588, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call172, i32 noundef 0) #4
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %if.end177

if.else171:                                       ; preds = %if.end163
  %call173 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1595, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call172, i32 noundef %1) #4
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %err, label %if.end177

if.end177:                                        ; preds = %if.else171, %if.then165
  %call178 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef %call3, i8* noundef null, i64 noundef 0) #4
  %conv179 = trunc i64 %call178 to i32
  %call180 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1599, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.428, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv179, i32 noundef 1) #4
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %if.end177
  %call183 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call184 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1600, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.422, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call183, i32 noundef %1) #4
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %err, label %if.end187

if.end187:                                        ; preds = %lor.lhs.false182
  %call188 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call189 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1604, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call188, i32 noundef %1) #4
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %if.end192

if.end192:                                        ; preds = %if.end187
  %call193 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call45, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call23) #4
  %cmp194 = icmp ne i32 %call193, 0
  %conv195 = zext i1 %cmp194 to i32
  %call196 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1609, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.430, i64 0, i64 0), i32 noundef %conv195) #4
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.end192
  %call199 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call200 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1610, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call199, i32 noundef 0) #4
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false198
  %call203 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call27, %struct.bignum_st* noundef %call55, %struct.bignum_st* noundef %call23) #4
  %cmp204 = icmp ne i32 %call203, 0
  %conv205 = zext i1 %cmp204 to i32
  %call206 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1612, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.431, i64 0, i64 0), i32 noundef %conv205) #4
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false202
  %call209 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call210 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1613, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call209, i32 noundef 0) #4
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %lor.lhs.false208
  %call213 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call27, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call23) #4
  %cmp214 = icmp ne i32 %call213, 0
  %conv215 = zext i1 %cmp214 to i32
  %call216 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1616, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.432, i64 0, i64 0), i32 noundef %conv215) #4
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %err, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false212
  %call219 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call27, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call85) #4
  %cmp220 = icmp ne i32 %call219, 0
  %conv221 = zext i1 %cmp220 to i32
  %call222 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1618, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.433, i64 0, i64 0), i32 noundef %conv221) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %err, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %lor.lhs.false218
  %call225 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call226 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1619, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call225, i32 noundef 0) #4
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %lor.lhs.false224
  %call229 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call27, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef null) #4
  %cmp230 = icmp ne i32 %call229, 0
  %conv231 = zext i1 %cmp230 to i32
  %call232 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1622, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.434, i64 0, i64 0), i32 noundef %conv231) #4
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false228
  %call235 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call236 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1623, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call235, i32 noundef %1) #4
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %lor.lhs.false234
  %call239 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call27, %struct.bignum_st* noundef %call31, %struct.bignum_st* noundef %call23) #4
  %cmp240 = icmp ne i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %call242 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1626, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.435, i64 0, i64 0), i32 noundef %conv241) #4
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false238
  %call245 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call246 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1627, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call245, i32 noundef %1) #4
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %if.end249

if.end249:                                        ; preds = %lor.lhs.false244
  %call250 = tail call i32 @ERR_set_mark() #4
  %call251 = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call101, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef null) #4
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.else259, label %if.then253

if.then253:                                       ; preds = %if.end249
  %call254 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call255 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1639, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call254, i32 noundef 0) #4
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %err, label %if.end262

if.else259:                                       ; preds = %if.end249
  %call260 = tail call i32 @ERR_pop_to_mark() #4
  %call261 = tail call i32 @ERR_set_mark() #4
  br label %if.end262

if.end262:                                        ; preds = %if.then253, %if.else259
  %call263 = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call65, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef null) #4
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.else271, label %if.then265

if.then265:                                       ; preds = %if.end262
  %call266 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call267 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1647, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call266, i32 noundef 0) #4
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %err, label %if.end274

if.else271:                                       ; preds = %if.end262
  %call272 = tail call i32 @ERR_pop_to_mark() #4
  %call273 = tail call i32 @ERR_set_mark() #4
  br label %if.end274

if.end274:                                        ; preds = %if.then265, %if.else271
  %call275 = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call75, %struct.bignum_ctx* noundef null) #4
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.else283, label %if.then277

if.then277:                                       ; preds = %if.end274
  %call278 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call279 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1655, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call278, i32 noundef 0) #4
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %err, label %if.end286

if.else283:                                       ; preds = %if.end274
  %call284 = tail call i32 @ERR_pop_to_mark() #4
  %call285 = tail call i32 @ERR_set_mark() #4
  br label %if.end286

if.end286:                                        ; preds = %if.then277, %if.else283
  %call287 = tail call i32 @ERR_pop_to_mark() #4
  %call288 = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call19, %struct.bignum_ctx* noundef null) #4
  %cmp289 = icmp ne i32 %call288, 0
  %conv290 = zext i1 %cmp289 to i32
  %call291 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1665, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.436, i64 0, i64 0), i32 noundef %conv290) #4
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %err, label %lor.lhs.false293

lor.lhs.false293:                                 ; preds = %if.end286
  %call294 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call7, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call295 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1666, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call294, i32 noundef %1) #4
  %tobool296.not = icmp ne i32 %call295, 0
  %spec.select = zext i1 %tobool296.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false293, %if.end286, %if.then277, %if.then265, %if.then253, %if.end192, %lor.lhs.false198, %lor.lhs.false202, %lor.lhs.false208, %lor.lhs.false212, %lor.lhs.false218, %lor.lhs.false224, %lor.lhs.false228, %lor.lhs.false234, %lor.lhs.false238, %lor.lhs.false244, %if.end187, %if.end177, %lor.lhs.false182, %if.else171, %if.then165, %if.end156, %if.end150, %if.end144, %if.end128, %lor.lhs.false132, %cond.end, %if.else, %if.then100, %lor.lhs.false104, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false30, %lor.lhs.false34, %lor.lhs.false38, %lor.lhs.false44, %lor.lhs.false48, %lor.lhs.false54, %lor.lhs.false58, %lor.lhs.false64, %lor.lhs.false68, %lor.lhs.false74, %lor.lhs.false78, %lor.lhs.false84, %lor.lhs.false88
  %ret.0 = phi i32 [ 0, %if.end286 ], [ 0, %if.then277 ], [ 0, %if.then265 ], [ 0, %if.then253 ], [ 0, %lor.lhs.false244 ], [ 0, %lor.lhs.false238 ], [ 0, %lor.lhs.false234 ], [ 0, %lor.lhs.false228 ], [ 0, %lor.lhs.false224 ], [ 0, %lor.lhs.false218 ], [ 0, %lor.lhs.false212 ], [ 0, %lor.lhs.false208 ], [ 0, %lor.lhs.false202 ], [ 0, %lor.lhs.false198 ], [ 0, %if.end192 ], [ 0, %if.end187 ], [ 0, %lor.lhs.false182 ], [ 0, %if.end177 ], [ 0, %if.then165 ], [ 0, %if.else171 ], [ 0, %if.end156 ], [ 0, %if.end150 ], [ 0, %if.end144 ], [ 0, %lor.lhs.false132 ], [ 0, %if.end128 ], [ 0, %lor.lhs.false104 ], [ 0, %if.then100 ], [ 0, %cond.end ], [ 0, %if.else ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false293 ]
  %group.0 = phi %struct.ec_group_st* [ %call3, %if.end286 ], [ %call3, %if.then277 ], [ %call3, %if.then265 ], [ %call3, %if.then253 ], [ %call3, %lor.lhs.false244 ], [ %call3, %lor.lhs.false238 ], [ %call3, %lor.lhs.false234 ], [ %call3, %lor.lhs.false228 ], [ %call3, %lor.lhs.false224 ], [ %call3, %lor.lhs.false218 ], [ %call3, %lor.lhs.false212 ], [ %call3, %lor.lhs.false208 ], [ %call3, %lor.lhs.false202 ], [ %call3, %lor.lhs.false198 ], [ %call3, %if.end192 ], [ %call3, %if.end187 ], [ %call3, %lor.lhs.false182 ], [ %call3, %if.end177 ], [ %call3, %if.then165 ], [ %call3, %if.else171 ], [ %call3, %if.end156 ], [ %call3, %if.end150 ], [ %call3, %if.end144 ], [ %call3, %lor.lhs.false132 ], [ %call3, %if.end128 ], [ %call3, %lor.lhs.false104 ], [ %call3, %if.then100 ], [ %call3, %cond.end ], [ %call3, %if.else ], [ %call3, %lor.lhs.false88 ], [ %call3, %lor.lhs.false84 ], [ %call3, %lor.lhs.false78 ], [ %call3, %lor.lhs.false74 ], [ %call3, %lor.lhs.false68 ], [ %call3, %lor.lhs.false64 ], [ %call3, %lor.lhs.false58 ], [ %call3, %lor.lhs.false54 ], [ %call3, %lor.lhs.false48 ], [ %call3, %lor.lhs.false44 ], [ %call3, %lor.lhs.false38 ], [ %call3, %lor.lhs.false34 ], [ %call3, %lor.lhs.false30 ], [ %call3, %lor.lhs.false26 ], [ %call3, %lor.lhs.false22 ], [ %call3, %lor.lhs.false18 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %lor.lhs.false293 ]
  %gtest.0 = phi %struct.ec_group_st* [ %call7, %if.end286 ], [ %call7, %if.then277 ], [ %call7, %if.then265 ], [ %call7, %if.then253 ], [ %call7, %lor.lhs.false244 ], [ %call7, %lor.lhs.false238 ], [ %call7, %lor.lhs.false234 ], [ %call7, %lor.lhs.false228 ], [ %call7, %lor.lhs.false224 ], [ %call7, %lor.lhs.false218 ], [ %call7, %lor.lhs.false212 ], [ %call7, %lor.lhs.false208 ], [ %call7, %lor.lhs.false202 ], [ %call7, %lor.lhs.false198 ], [ %call7, %if.end192 ], [ %call7, %if.end187 ], [ %call7, %lor.lhs.false182 ], [ %call7, %if.end177 ], [ %call7, %if.then165 ], [ %call7, %if.else171 ], [ %call7, %if.end156 ], [ %call7, %if.end150 ], [ %call7, %if.end144 ], [ %call7, %lor.lhs.false132 ], [ %call7, %if.end128 ], [ %call7, %lor.lhs.false104 ], [ %call7, %if.then100 ], [ %call7, %cond.end ], [ %call7, %if.else ], [ %call7, %lor.lhs.false88 ], [ %call7, %lor.lhs.false84 ], [ %call7, %lor.lhs.false78 ], [ %call7, %lor.lhs.false74 ], [ %call7, %lor.lhs.false68 ], [ %call7, %lor.lhs.false64 ], [ %call7, %lor.lhs.false58 ], [ %call7, %lor.lhs.false54 ], [ %call7, %lor.lhs.false48 ], [ %call7, %lor.lhs.false44 ], [ %call7, %lor.lhs.false38 ], [ %call7, %lor.lhs.false34 ], [ %call7, %lor.lhs.false30 ], [ %call7, %lor.lhs.false26 ], [ %call7, %lor.lhs.false22 ], [ %call7, %lor.lhs.false18 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %lor.lhs.false293 ]
  %other_gen.0 = phi %struct.ec_point_st* [ %call45, %if.end286 ], [ %call45, %if.then277 ], [ %call45, %if.then265 ], [ %call45, %if.then253 ], [ %call45, %lor.lhs.false244 ], [ %call45, %lor.lhs.false238 ], [ %call45, %lor.lhs.false234 ], [ %call45, %lor.lhs.false228 ], [ %call45, %lor.lhs.false224 ], [ %call45, %lor.lhs.false218 ], [ %call45, %lor.lhs.false212 ], [ %call45, %lor.lhs.false208 ], [ %call45, %lor.lhs.false202 ], [ %call45, %lor.lhs.false198 ], [ %call45, %if.end192 ], [ %call45, %if.end187 ], [ %call45, %lor.lhs.false182 ], [ %call45, %if.end177 ], [ %call45, %if.then165 ], [ %call45, %if.else171 ], [ %call45, %if.end156 ], [ %call45, %if.end150 ], [ %call45, %if.end144 ], [ %call45, %lor.lhs.false132 ], [ %call45, %if.end128 ], [ %call45, %lor.lhs.false104 ], [ %call45, %if.then100 ], [ %call45, %cond.end ], [ %call45, %if.else ], [ %call45, %lor.lhs.false88 ], [ %call45, %lor.lhs.false84 ], [ %call45, %lor.lhs.false78 ], [ %call45, %lor.lhs.false74 ], [ %call45, %lor.lhs.false68 ], [ %call45, %lor.lhs.false64 ], [ %call45, %lor.lhs.false58 ], [ %call45, %lor.lhs.false54 ], [ %call45, %lor.lhs.false48 ], [ %call45, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call45, %lor.lhs.false293 ]
  %group_p.0 = phi %struct.bignum_st* [ %call11, %if.end286 ], [ %call11, %if.then277 ], [ %call11, %if.then265 ], [ %call11, %if.then253 ], [ %call11, %lor.lhs.false244 ], [ %call11, %lor.lhs.false238 ], [ %call11, %lor.lhs.false234 ], [ %call11, %lor.lhs.false228 ], [ %call11, %lor.lhs.false224 ], [ %call11, %lor.lhs.false218 ], [ %call11, %lor.lhs.false212 ], [ %call11, %lor.lhs.false208 ], [ %call11, %lor.lhs.false202 ], [ %call11, %lor.lhs.false198 ], [ %call11, %if.end192 ], [ %call11, %if.end187 ], [ %call11, %lor.lhs.false182 ], [ %call11, %if.end177 ], [ %call11, %if.then165 ], [ %call11, %if.else171 ], [ %call11, %if.end156 ], [ %call11, %if.end150 ], [ %call11, %if.end144 ], [ %call11, %lor.lhs.false132 ], [ %call11, %if.end128 ], [ %call11, %lor.lhs.false104 ], [ %call11, %if.then100 ], [ %call11, %cond.end ], [ %call11, %if.else ], [ %call11, %lor.lhs.false88 ], [ %call11, %lor.lhs.false84 ], [ %call11, %lor.lhs.false78 ], [ %call11, %lor.lhs.false74 ], [ %call11, %lor.lhs.false68 ], [ %call11, %lor.lhs.false64 ], [ %call11, %lor.lhs.false58 ], [ %call11, %lor.lhs.false54 ], [ %call11, %lor.lhs.false48 ], [ %call11, %lor.lhs.false44 ], [ %call11, %lor.lhs.false38 ], [ %call11, %lor.lhs.false34 ], [ %call11, %lor.lhs.false30 ], [ %call11, %lor.lhs.false26 ], [ %call11, %lor.lhs.false22 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %lor.lhs.false293 ]
  %group_a.0 = phi %struct.bignum_st* [ %call15, %if.end286 ], [ %call15, %if.then277 ], [ %call15, %if.then265 ], [ %call15, %if.then253 ], [ %call15, %lor.lhs.false244 ], [ %call15, %lor.lhs.false238 ], [ %call15, %lor.lhs.false234 ], [ %call15, %lor.lhs.false228 ], [ %call15, %lor.lhs.false224 ], [ %call15, %lor.lhs.false218 ], [ %call15, %lor.lhs.false212 ], [ %call15, %lor.lhs.false208 ], [ %call15, %lor.lhs.false202 ], [ %call15, %lor.lhs.false198 ], [ %call15, %if.end192 ], [ %call15, %if.end187 ], [ %call15, %lor.lhs.false182 ], [ %call15, %if.end177 ], [ %call15, %if.then165 ], [ %call15, %if.else171 ], [ %call15, %if.end156 ], [ %call15, %if.end150 ], [ %call15, %if.end144 ], [ %call15, %lor.lhs.false132 ], [ %call15, %if.end128 ], [ %call15, %lor.lhs.false104 ], [ %call15, %if.then100 ], [ %call15, %cond.end ], [ %call15, %if.else ], [ %call15, %lor.lhs.false88 ], [ %call15, %lor.lhs.false84 ], [ %call15, %lor.lhs.false78 ], [ %call15, %lor.lhs.false74 ], [ %call15, %lor.lhs.false68 ], [ %call15, %lor.lhs.false64 ], [ %call15, %lor.lhs.false58 ], [ %call15, %lor.lhs.false54 ], [ %call15, %lor.lhs.false48 ], [ %call15, %lor.lhs.false44 ], [ %call15, %lor.lhs.false38 ], [ %call15, %lor.lhs.false34 ], [ %call15, %lor.lhs.false30 ], [ %call15, %lor.lhs.false26 ], [ %call15, %lor.lhs.false22 ], [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call15, %lor.lhs.false293 ]
  %group_b.0 = phi %struct.bignum_st* [ %call19, %if.end286 ], [ %call19, %if.then277 ], [ %call19, %if.then265 ], [ %call19, %if.then253 ], [ %call19, %lor.lhs.false244 ], [ %call19, %lor.lhs.false238 ], [ %call19, %lor.lhs.false234 ], [ %call19, %lor.lhs.false228 ], [ %call19, %lor.lhs.false224 ], [ %call19, %lor.lhs.false218 ], [ %call19, %lor.lhs.false212 ], [ %call19, %lor.lhs.false208 ], [ %call19, %lor.lhs.false202 ], [ %call19, %lor.lhs.false198 ], [ %call19, %if.end192 ], [ %call19, %if.end187 ], [ %call19, %lor.lhs.false182 ], [ %call19, %if.end177 ], [ %call19, %if.then165 ], [ %call19, %if.else171 ], [ %call19, %if.end156 ], [ %call19, %if.end150 ], [ %call19, %if.end144 ], [ %call19, %lor.lhs.false132 ], [ %call19, %if.end128 ], [ %call19, %lor.lhs.false104 ], [ %call19, %if.then100 ], [ %call19, %cond.end ], [ %call19, %if.else ], [ %call19, %lor.lhs.false88 ], [ %call19, %lor.lhs.false84 ], [ %call19, %lor.lhs.false78 ], [ %call19, %lor.lhs.false74 ], [ %call19, %lor.lhs.false68 ], [ %call19, %lor.lhs.false64 ], [ %call19, %lor.lhs.false58 ], [ %call19, %lor.lhs.false54 ], [ %call19, %lor.lhs.false48 ], [ %call19, %lor.lhs.false44 ], [ %call19, %lor.lhs.false38 ], [ %call19, %lor.lhs.false34 ], [ %call19, %lor.lhs.false30 ], [ %call19, %lor.lhs.false26 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %lor.lhs.false293 ]
  %other_p.1 = phi %struct.bignum_st* [ %call101, %if.end286 ], [ %call101, %if.then277 ], [ %call101, %if.then265 ], [ %call101, %if.then253 ], [ %call101, %lor.lhs.false244 ], [ %call101, %lor.lhs.false238 ], [ %call101, %lor.lhs.false234 ], [ %call101, %lor.lhs.false228 ], [ %call101, %lor.lhs.false224 ], [ %call101, %lor.lhs.false218 ], [ %call101, %lor.lhs.false212 ], [ %call101, %lor.lhs.false208 ], [ %call101, %lor.lhs.false202 ], [ %call101, %lor.lhs.false198 ], [ %call101, %if.end192 ], [ %call101, %if.end187 ], [ %call101, %lor.lhs.false182 ], [ %call101, %if.end177 ], [ %call101, %if.then165 ], [ %call101, %if.else171 ], [ %call101, %if.end156 ], [ %call101, %if.end150 ], [ %call101, %if.end144 ], [ %call101, %lor.lhs.false132 ], [ %call101, %if.end128 ], [ %call101, %lor.lhs.false104 ], [ %call101, %if.then100 ], [ %call101, %cond.end ], [ %call101, %if.else ], [ null, %lor.lhs.false88 ], [ null, %lor.lhs.false84 ], [ null, %lor.lhs.false78 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call101, %lor.lhs.false293 ]
  %other_a.0 = phi %struct.bignum_st* [ %call65, %if.end286 ], [ %call65, %if.then277 ], [ %call65, %if.then265 ], [ %call65, %if.then253 ], [ %call65, %lor.lhs.false244 ], [ %call65, %lor.lhs.false238 ], [ %call65, %lor.lhs.false234 ], [ %call65, %lor.lhs.false228 ], [ %call65, %lor.lhs.false224 ], [ %call65, %lor.lhs.false218 ], [ %call65, %lor.lhs.false212 ], [ %call65, %lor.lhs.false208 ], [ %call65, %lor.lhs.false202 ], [ %call65, %lor.lhs.false198 ], [ %call65, %if.end192 ], [ %call65, %if.end187 ], [ %call65, %lor.lhs.false182 ], [ %call65, %if.end177 ], [ %call65, %if.then165 ], [ %call65, %if.else171 ], [ %call65, %if.end156 ], [ %call65, %if.end150 ], [ %call65, %if.end144 ], [ %call65, %lor.lhs.false132 ], [ %call65, %if.end128 ], [ %call65, %lor.lhs.false104 ], [ %call65, %if.then100 ], [ %call65, %cond.end ], [ %call65, %if.else ], [ %call65, %lor.lhs.false88 ], [ %call65, %lor.lhs.false84 ], [ %call65, %lor.lhs.false78 ], [ %call65, %lor.lhs.false74 ], [ %call65, %lor.lhs.false68 ], [ %call65, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call65, %lor.lhs.false293 ]
  %other_b.0 = phi %struct.bignum_st* [ %call75, %if.end286 ], [ %call75, %if.then277 ], [ %call75, %if.then265 ], [ %call75, %if.then253 ], [ %call75, %lor.lhs.false244 ], [ %call75, %lor.lhs.false238 ], [ %call75, %lor.lhs.false234 ], [ %call75, %lor.lhs.false228 ], [ %call75, %lor.lhs.false224 ], [ %call75, %lor.lhs.false218 ], [ %call75, %lor.lhs.false212 ], [ %call75, %lor.lhs.false208 ], [ %call75, %lor.lhs.false202 ], [ %call75, %lor.lhs.false198 ], [ %call75, %if.end192 ], [ %call75, %if.end187 ], [ %call75, %lor.lhs.false182 ], [ %call75, %if.end177 ], [ %call75, %if.then165 ], [ %call75, %if.else171 ], [ %call75, %if.end156 ], [ %call75, %if.end150 ], [ %call75, %if.end144 ], [ %call75, %lor.lhs.false132 ], [ %call75, %if.end128 ], [ %call75, %lor.lhs.false104 ], [ %call75, %if.then100 ], [ %call75, %cond.end ], [ %call75, %if.else ], [ %call75, %lor.lhs.false88 ], [ %call75, %lor.lhs.false84 ], [ %call75, %lor.lhs.false78 ], [ %call75, %lor.lhs.false74 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call75, %lor.lhs.false293 ]
  %group_cofactor.0 = phi %struct.bignum_st* [ %call23, %if.end286 ], [ %call23, %if.then277 ], [ %call23, %if.then265 ], [ %call23, %if.then253 ], [ %call23, %lor.lhs.false244 ], [ %call23, %lor.lhs.false238 ], [ %call23, %lor.lhs.false234 ], [ %call23, %lor.lhs.false228 ], [ %call23, %lor.lhs.false224 ], [ %call23, %lor.lhs.false218 ], [ %call23, %lor.lhs.false212 ], [ %call23, %lor.lhs.false208 ], [ %call23, %lor.lhs.false202 ], [ %call23, %lor.lhs.false198 ], [ %call23, %if.end192 ], [ %call23, %if.end187 ], [ %call23, %lor.lhs.false182 ], [ %call23, %if.end177 ], [ %call23, %if.then165 ], [ %call23, %if.else171 ], [ %call23, %if.end156 ], [ %call23, %if.end150 ], [ %call23, %if.end144 ], [ %call23, %lor.lhs.false132 ], [ %call23, %if.end128 ], [ %call23, %lor.lhs.false104 ], [ %call23, %if.then100 ], [ %call23, %cond.end ], [ %call23, %if.else ], [ %call23, %lor.lhs.false88 ], [ %call23, %lor.lhs.false84 ], [ %call23, %lor.lhs.false78 ], [ %call23, %lor.lhs.false74 ], [ %call23, %lor.lhs.false68 ], [ %call23, %lor.lhs.false64 ], [ %call23, %lor.lhs.false58 ], [ %call23, %lor.lhs.false54 ], [ %call23, %lor.lhs.false48 ], [ %call23, %lor.lhs.false44 ], [ %call23, %lor.lhs.false38 ], [ %call23, %lor.lhs.false34 ], [ %call23, %lor.lhs.false30 ], [ %call23, %lor.lhs.false26 ], [ %call23, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %lor.lhs.false293 ]
  %other_cofactor.0 = phi %struct.bignum_st* [ %call85, %if.end286 ], [ %call85, %if.then277 ], [ %call85, %if.then265 ], [ %call85, %if.then253 ], [ %call85, %lor.lhs.false244 ], [ %call85, %lor.lhs.false238 ], [ %call85, %lor.lhs.false234 ], [ %call85, %lor.lhs.false228 ], [ %call85, %lor.lhs.false224 ], [ %call85, %lor.lhs.false218 ], [ %call85, %lor.lhs.false212 ], [ %call85, %lor.lhs.false208 ], [ %call85, %lor.lhs.false202 ], [ %call85, %lor.lhs.false198 ], [ %call85, %if.end192 ], [ %call85, %if.end187 ], [ %call85, %lor.lhs.false182 ], [ %call85, %if.end177 ], [ %call85, %if.then165 ], [ %call85, %if.else171 ], [ %call85, %if.end156 ], [ %call85, %if.end150 ], [ %call85, %if.end144 ], [ %call85, %lor.lhs.false132 ], [ %call85, %if.end128 ], [ %call85, %lor.lhs.false104 ], [ %call85, %if.then100 ], [ %call85, %cond.end ], [ %call85, %if.else ], [ %call85, %lor.lhs.false88 ], [ %call85, %lor.lhs.false84 ], [ null, %lor.lhs.false78 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call85, %lor.lhs.false293 ]
  %other_order.0 = phi %struct.bignum_st* [ %call55, %if.end286 ], [ %call55, %if.then277 ], [ %call55, %if.then265 ], [ %call55, %if.then253 ], [ %call55, %lor.lhs.false244 ], [ %call55, %lor.lhs.false238 ], [ %call55, %lor.lhs.false234 ], [ %call55, %lor.lhs.false228 ], [ %call55, %lor.lhs.false224 ], [ %call55, %lor.lhs.false218 ], [ %call55, %lor.lhs.false212 ], [ %call55, %lor.lhs.false208 ], [ %call55, %lor.lhs.false202 ], [ %call55, %lor.lhs.false198 ], [ %call55, %if.end192 ], [ %call55, %if.end187 ], [ %call55, %lor.lhs.false182 ], [ %call55, %if.end177 ], [ %call55, %if.then165 ], [ %call55, %if.else171 ], [ %call55, %if.end156 ], [ %call55, %if.end150 ], [ %call55, %if.end144 ], [ %call55, %lor.lhs.false132 ], [ %call55, %if.end128 ], [ %call55, %lor.lhs.false104 ], [ %call55, %if.then100 ], [ %call55, %cond.end ], [ %call55, %if.else ], [ %call55, %lor.lhs.false88 ], [ %call55, %lor.lhs.false84 ], [ %call55, %lor.lhs.false78 ], [ %call55, %lor.lhs.false74 ], [ %call55, %lor.lhs.false68 ], [ %call55, %lor.lhs.false64 ], [ %call55, %lor.lhs.false58 ], [ %call55, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call55, %lor.lhs.false293 ]
  tail call void @BN_free(%struct.bignum_st* noundef %group_p.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %other_p.1) #4
  tail call void @BN_free(%struct.bignum_st* noundef %group_a.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %other_a.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %group_b.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %other_b.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %group_cofactor.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %other_cofactor.0) #4
  tail call void @BN_free(%struct.bignum_st* noundef %other_order.0) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %other_gen.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %gtest.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_named_curve_lookup_test(i32 noundef %id) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1703, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %3 = bitcast %struct.ec_group_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1704, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.437, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call3, %struct.ec_parameters_st* noundef null) #4
  %4 = bitcast %struct.ec_parameters_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1705, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.438, i64 0, i64 0), i8* noundef %4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call3) #4
  %call10 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call7) #4
  %5 = bitcast %struct.ec_group_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1710, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.439, i64 0, i64 0), i8* noundef %5) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef %call10, i32 noundef 0, %struct.bignum_ctx* noundef null) #4
  %call16 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1713, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.440, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call15, i32 noundef 0) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %cmp.not = icmp eq i32 %call15, %1
  br i1 %cmp.not, label %if.end39, label %if.then20

if.then20:                                        ; preds = %if.end19
  %call21 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %call15) #4
  %6 = bitcast %struct.ec_group_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1725, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.441, i64 0, i64 0), i8* noundef %6) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.then20
  %call25 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call21, %struct.ec_parameters_st* noundef null) #4
  %7 = bitcast %struct.ec_parameters_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1726, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.442, i64 0, i64 0), i8* noundef %7) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call21) #4
  %call30 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call25) #4
  %8 = bitcast %struct.ec_group_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1731, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.443, i64 0, i64 0), i8* noundef %8) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end29
  %call34 = tail call i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef %call10, %struct.ec_group_st* noundef %call30, %struct.bignum_ctx* noundef %call) #4
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1732, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.444, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call34, i32 noundef 0) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false33, %if.end19
  %ga.0 = phi %struct.ec_group_st* [ %call30, %lor.lhs.false33 ], [ null, %if.end19 ]
  %pa.0 = phi %struct.ec_parameters_st* [ %call25, %lor.lhs.false33 ], [ null, %if.end19 ]
  br label %err

err:                                              ; preds = %if.end29, %lor.lhs.false33, %if.then20, %lor.lhs.false24, %if.end14, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %if.end39
  %ret.0 = phi i32 [ 1, %if.end39 ], [ 0, %lor.lhs.false33 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false24 ], [ 0, %if.then20 ], [ 0, %if.end14 ], [ 0, %if.end ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %g.0 = phi %struct.ec_group_st* [ %call10, %if.end39 ], [ %call10, %lor.lhs.false33 ], [ %call10, %if.end29 ], [ %call10, %lor.lhs.false24 ], [ %call10, %if.then20 ], [ %call10, %if.end14 ], [ %call10, %if.end ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ]
  %ga.1 = phi %struct.ec_group_st* [ %ga.0, %if.end39 ], [ %call30, %lor.lhs.false33 ], [ %call30, %if.end29 ], [ %call21, %lor.lhs.false24 ], [ %call21, %if.then20 ], [ null, %if.end14 ], [ null, %if.end ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %p.0 = phi %struct.ec_parameters_st* [ %call7, %if.end39 ], [ %call7, %lor.lhs.false33 ], [ %call7, %if.end29 ], [ %call7, %lor.lhs.false24 ], [ %call7, %if.then20 ], [ %call7, %if.end14 ], [ %call7, %if.end ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %pa.1 = phi %struct.ec_parameters_st* [ %pa.0, %if.end39 ], [ %call25, %lor.lhs.false33 ], [ %call25, %if.end29 ], [ %call25, %lor.lhs.false24 ], [ null, %if.then20 ], [ null, %if.end14 ], [ null, %if.end ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %g.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %ga.1) #4
  tail call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p.0) #4
  tail call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %pa.1) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_ec_key_field_public_range_test(i32 noundef %id) #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #4
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2245, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2246, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i8* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %2, i64 %idxprom, i32 0
  %3 = load i32, i32* %nid, align 8, !tbaa !9
  %call6 = tail call %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef %3) #4
  %4 = bitcast %struct.ec_key_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2247, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.445, i64 0, i64 0), i8* noundef %4) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %call6) #4
  %5 = bitcast %struct.ec_group_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2248, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.446, i64 0, i64 0), i8* noundef %5) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @EC_GROUP_get0_field(%struct.ec_group_st* noundef %call10) #4
  %6 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2249, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.447, i64 0, i64 0), i8* noundef %6) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef %call6) #4
  %call19 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2250, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.448, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call i32 @EC_KEY_check_key(%struct.ec_key_st* noundef %call6) #4
  %call23 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2251, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.449, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %call6) #4
  %7 = bitcast %struct.ec_point_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2252, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.450, i64 0, i64 0), i8* noundef %7) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call10, %struct.ec_point_st* noundef %call26, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef null) #4
  %call31 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2254, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.451, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call30, i32 noundef 0) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false29
  %call33 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %call10) #4
  switch i32 %call33, label %if.else51 [
    i32 407, label %if.then34
    i32 406, label %if.then43
  ]

if.then34:                                        ; preds = %if.end
  %call35 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv = zext i1 %cmp36 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2265, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.452, i64 0, i64 0), i32 noundef %conv) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end53

if.then43:                                        ; preds = %if.end
  %call44 = tail call i32 @BN_add(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14) #4
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2271, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.453, i64 0, i64 0), i32 noundef %conv46) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end53

if.else51:                                        ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2275, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.454, i64 0, i64 0)) #4
  br label %err

if.end53:                                         ; preds = %if.then43, %if.then34
  %call54 = tail call i32 @EC_KEY_set_public_key_affine_coordinates(%struct.ec_key_st* noundef %call6, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2) #4
  %call55 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2278, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.455, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call54, i32 noundef 0) #4
  %tobool56.not = icmp ne i32 %call55, 0
  %spec.select = zext i1 %tobool56.not to i32
  br label %err

err:                                              ; preds = %if.end53, %if.then43, %if.then34, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %if.else51
  %ret.0 = phi i32 [ 0, %if.then34 ], [ 0, %if.then43 ], [ 0, %if.else51 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end53 ]
  %y.0 = phi %struct.bignum_st* [ %call2, %if.then34 ], [ %call2, %if.then43 ], [ %call2, %if.else51 ], [ %call2, %lor.lhs.false29 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.end53 ]
  %key.0 = phi %struct.ec_key_st* [ %call6, %if.then34 ], [ %call6, %if.then43 ], [ %call6, %if.else51 ], [ %call6, %lor.lhs.false29 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %if.end53 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #4
  tail call void @BN_free(%struct.bignum_st* noundef %y.0) #4
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %key.0) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_named_curve_from_ecparameters(i32 noundef %id) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid3 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid3, align 8, !tbaa !9
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.456, i64 0, i64 0), i8* noundef %call) #4
  %call4 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1843, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.399, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %call4) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call4) #4
  %3 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1848, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.457, i64 0, i64 0), i8* noundef %3) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.end339, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call4) #4
  %4 = bitcast %struct.bignum_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1849, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.458, i64 0, i64 0), i8* noundef %4) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.end339, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call4) #4
  %5 = bitcast %struct.bignum_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1850, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.459, i64 0, i64 0), i8* noundef %5) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.end339, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call4) #4
  %6 = bitcast %struct.bignum_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1851, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.460, i64 0, i64 0), i8* noundef %6) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.end339, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call4) #4
  %7 = bitcast %struct.bignum_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1852, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.461, i64 0, i64 0), i8* noundef %7) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.end339, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %8 = bitcast %struct.ec_group_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1854, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %8) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.end339, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call25, %struct.ec_parameters_st* noundef null) #4
  %9 = bitcast %struct.ec_parameters_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1855, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.462, i64 0, i64 0), i8* noundef %9) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.end339, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call25) #4
  %10 = bitcast %struct.ec_point_st* %call33 to i8*
  %call34 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1856, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.405, i64 0, i64 0), i8* noundef %10) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.end339, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %call37 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call25) #4
  %11 = bitcast %struct.bignum_st* %call37 to i8*
  %call38 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1857, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.406, i64 0, i64 0), i8* noundef %11) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.end339, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %call41 = tail call i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef %call25, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef null) #4
  %cmp = icmp ne i32 %call41, 0
  %conv = zext i1 %cmp to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1858, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.407, i64 0, i64 0), i32 noundef %conv) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.end339, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %call45 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %call25) #4
  %12 = bitcast %struct.ec_group_st* %call45 to i8*
  %call46 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1860, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.463, i64 0, i64 0), i8* noundef %12) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.end339, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call49 = tail call %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %call33, %struct.ec_group_st* noundef %call25) #4
  %13 = bitcast %struct.ec_point_st* %call49 to i8*
  %call50 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1861, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.409, i64 0, i64 0), i8* noundef %13) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.end339, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %call53 = tail call i32 @EC_POINT_add(%struct.ec_group_st* noundef %call25, %struct.ec_point_st* noundef %call49, %struct.ec_point_st* noundef %call33, %struct.ec_point_st* noundef %call33, %struct.bignum_ctx* noundef null) #4
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1862, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.410, i64 0, i64 0), i32 noundef %conv55) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.end339, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call25, %struct.ec_point_st* noundef %call49, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call13, %struct.bignum_ctx* noundef %call4) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1864, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.464, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.end339, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call37) #4
  %cmp66 = icmp ne %struct.bignum_st* %call65, null
  %conv67 = zext i1 %cmp66 to i32
  %call68 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1865, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.465, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.end339, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false64
  %call71 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call17, i64 noundef 1) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1866, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.412, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.end339, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %call77 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call6) #4
  %cmp78 = icmp ne %struct.bignum_st* %call77, null
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1867, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.466, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.end339, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %call83 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call21, i64 noundef 1) #4
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1868, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.418, i64 0, i64 0), i32 noundef %conv85) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.end339, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false82
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call49) #4
  %call90 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call45) #4
  %14 = bitcast %struct.ec_point_st* %call90 to i8*
  %call91 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1874, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.467, i64 0, i64 0), i8* noundef %14) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.end339, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end89
  %call94 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call90, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call13, %struct.bignum_ctx* noundef %call4) #4
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1877, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.468, i64 0, i64 0), i32 noundef %conv96) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %for.end339, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false93
  %call101 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call29) #4
  %15 = bitcast %struct.ec_group_st* %call101 to i8*
  %call102 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1890, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.469, i64 0, i64 0), i8* noundef %15) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %for.end339, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end100
  %call105 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call101) #4
  %call106 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1891, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call105, i32 noundef 0) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %for.end339, label %if.end109

if.end109:                                        ; preds = %lor.lhs.false104
  %call110 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call105) #6
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1897, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv112) #4
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end109
  %call116 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  %call117 = tail call i8* @OBJ_nid2sn(i32 noundef %call105) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1898, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.473, i64 0, i64 0), i8* noundef %call116, i8* noundef %call117) #4
  br label %for.end339

if.end118:                                        ; preds = %if.end109
  %call119 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call101) #4
  %call120 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1902, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call119, i32 noundef 0) #4
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %for.end339, label %if.end123

if.end123:                                        ; preds = %if.end118
  %call124 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef %call45, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @check_named_curve_from_ecparameters.invalid_seed, i64 0, i64 0), i64 noundef 25) #4
  %conv125 = trunc i64 %call124 to i32
  %call127 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1910, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.476, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.427, i64 0, i64 0), i32 noundef %conv125, i32 noundef 25) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then153, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %if.end123
  %call130 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %16 = bitcast %struct.ec_parameters_st* %call130 to i8*
  %call132 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1912, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %16) #4
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then153, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false129
  %call135 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call130) #4
  %17 = bitcast %struct.ec_group_st* %call135 to i8*
  %call137 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1914, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %17) #4
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.then153, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false134
  %call140 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call135) #4
  %call141 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1915, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call140, i32 noundef 0) #4
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then153, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %lor.lhs.false139
  %call144 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call140) #6
  %cmp145 = icmp ne i32 %call144, 0
  %conv146 = zext i1 %cmp145 to i32
  %call147 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1916, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv146) #4
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then153, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %lor.lhs.false143
  %call150 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call135) #4
  %call151 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1918, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call150, i32 noundef 0) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end156

if.then153:                                       ; preds = %lor.lhs.false149, %lor.lhs.false143, %lor.lhs.false139, %lor.lhs.false134, %lor.lhs.false129, %if.end123
  %g_ary.sroa.5.0 = phi %struct.ec_group_st* [ null, %if.end123 ], [ null, %lor.lhs.false129 ], [ %call135, %lor.lhs.false134 ], [ %call135, %lor.lhs.false139 ], [ %call135, %lor.lhs.false143 ], [ %call135, %lor.lhs.false149 ]
  %p_ary.sroa.0.0 = phi %struct.ec_parameters_st* [ null, %if.end123 ], [ %call130, %lor.lhs.false129 ], [ %call130, %lor.lhs.false134 ], [ %call130, %lor.lhs.false139 ], [ %call130, %lor.lhs.false143 ], [ %call130, %lor.lhs.false149 ]
  %tnid.0 = phi i32 [ %call105, %if.end123 ], [ %call105, %lor.lhs.false129 ], [ %call105, %lor.lhs.false134 ], [ %call140, %lor.lhs.false139 ], [ %call140, %lor.lhs.false143 ], [ %call140, %lor.lhs.false149 ]
  %call154 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  %call155 = tail call i8* @OBJ_nid2sn(i32 noundef %tnid.0) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1919, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.473, i64 0, i64 0), i8* noundef %call154, i8* noundef %call155) #4
  br label %for.end339

if.end156:                                        ; preds = %lor.lhs.false149
  %call157 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef %call45, i8* noundef null, i64 noundef 0) #4
  %conv158 = trunc i64 %call157 to i32
  %call159 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1927, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.479, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv158, i32 noundef 1) #4
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then185, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.end156
  %call162 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %18 = bitcast %struct.ec_parameters_st* %call162 to i8*
  %call164 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1929, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %18) #4
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.then185, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false161
  %call167 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call162) #4
  %19 = bitcast %struct.ec_group_st* %call167 to i8*
  %call169 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1931, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %19) #4
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then185, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false166
  %call172 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call167) #4
  %call173 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1932, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call172, i32 noundef 0) #4
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then185, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false171
  %call176 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call172) #6
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %call179 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1933, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv178) #4
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then185, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false175
  %call182 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call167) #4
  %call183 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1935, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call182, i32 noundef 0) #4
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then185, label %if.end188

if.then185:                                       ; preds = %lor.lhs.false181, %lor.lhs.false175, %lor.lhs.false171, %lor.lhs.false166, %lor.lhs.false161, %if.end156
  %g_ary.sroa.7.0 = phi %struct.ec_group_st* [ null, %if.end156 ], [ null, %lor.lhs.false161 ], [ %call167, %lor.lhs.false166 ], [ %call167, %lor.lhs.false171 ], [ %call167, %lor.lhs.false175 ], [ %call167, %lor.lhs.false181 ]
  %p_ary.sroa.5.0 = phi %struct.ec_parameters_st* [ null, %if.end156 ], [ %call162, %lor.lhs.false161 ], [ %call162, %lor.lhs.false166 ], [ %call162, %lor.lhs.false171 ], [ %call162, %lor.lhs.false175 ], [ %call162, %lor.lhs.false181 ]
  %tnid.1 = phi i32 [ %call140, %if.end156 ], [ %call140, %lor.lhs.false161 ], [ %call140, %lor.lhs.false166 ], [ %call172, %lor.lhs.false171 ], [ %call172, %lor.lhs.false175 ], [ %call172, %lor.lhs.false181 ]
  %call186 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  %call187 = tail call i8* @OBJ_nid2sn(i32 noundef %tnid.1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1936, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.473, i64 0, i64 0), i8* noundef %call186, i8* noundef %call187) #4
  br label %for.end339

if.end188:                                        ; preds = %lor.lhs.false181
  %call189 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call90, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call6) #4
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1946, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.480, i64 0, i64 0), i32 noundef %conv191) #4
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %for.end339, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end188
  %call195 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %20 = bitcast %struct.ec_parameters_st* %call195 to i8*
  %call197 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1948, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %20) #4
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %for.end339, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false194
  %call200 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call195) #4
  %21 = bitcast %struct.ec_group_st* %call200 to i8*
  %call202 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1950, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %21) #4
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %for.end339, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %lor.lhs.false199
  %call205 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call200) #4
  %call206 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1951, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call205, i32 noundef 0) #4
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %for.end339, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false204
  %call209 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call6) #4
  %cmp210 = icmp ne i32 %call209, 0
  %conv211 = zext i1 %cmp210 to i32
  %call212 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1954, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.481, i64 0, i64 0), i32 noundef %conv211) #4
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %for.end339, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %lor.lhs.false208
  %call215 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %22 = bitcast %struct.ec_parameters_st* %call215 to i8*
  %call217 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1956, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %22) #4
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %for.end339, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %lor.lhs.false214
  %call220 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call215) #4
  %23 = bitcast %struct.ec_group_st* %call220 to i8*
  %call222 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1958, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %23) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %for.end339, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %lor.lhs.false219
  %call225 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call220) #4
  %call226 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1959, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call225, i32 noundef 0) #4
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %for.end339, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %lor.lhs.false224
  %call229 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call6) #4
  %cmp230 = icmp ne i32 %call229, 0
  %conv231 = zext i1 %cmp230 to i32
  %call232 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1962, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.482, i64 0, i64 0), i32 noundef %conv231) #4
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %for.end339, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false228
  %call235 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call21) #4
  %cmp236 = icmp ne i32 %call235, 0
  %conv237 = zext i1 %cmp236 to i32
  %call238 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1965, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.483, i64 0, i64 0), i32 noundef %conv237) #4
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %for.end339, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %lor.lhs.false234
  %call241 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %24 = bitcast %struct.ec_parameters_st* %call241 to i8*
  %call243 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1967, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %24) #4
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %for.end339, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %lor.lhs.false240
  %call246 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call241) #4
  %25 = bitcast %struct.ec_group_st* %call246 to i8*
  %call248 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1969, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %25) #4
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %for.end339, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false245
  %call251 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call246) #4
  %call252 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1970, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call251, i32 noundef 0) #4
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %for.end339, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %lor.lhs.false250
  %call255 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call251) #6
  %cmp256 = icmp ne i32 %call255, 0
  %conv257 = zext i1 %cmp256 to i32
  %call258 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1971, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv257) #4
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %for.end339, label %lor.lhs.false260

lor.lhs.false260:                                 ; preds = %lor.lhs.false254
  %call261 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call246) #4
  %call262 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1973, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call261, i32 noundef 0) #4
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %for.end339, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %lor.lhs.false260
  %call265 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef null) #4
  %cmp266 = icmp ne i32 %call265, 0
  %conv267 = zext i1 %cmp266 to i32
  %call268 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1976, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.484, i64 0, i64 0), i32 noundef %conv267) #4
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %for.end339, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %lor.lhs.false264
  %call271 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %26 = bitcast %struct.ec_parameters_st* %call271 to i8*
  %call273 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1978, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %26) #4
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %for.end339, label %lor.lhs.false275

lor.lhs.false275:                                 ; preds = %lor.lhs.false270
  %call276 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call271) #4
  %27 = bitcast %struct.ec_group_st* %call276 to i8*
  %call278 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1980, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %27) #4
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %for.end339, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %lor.lhs.false275
  %call281 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call276) #4
  %call282 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1981, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call281, i32 noundef 0) #4
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %for.end339, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %lor.lhs.false280
  %call285 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call281) #6
  %cmp286 = icmp ne i32 %call285, 0
  %conv287 = zext i1 %cmp286 to i32
  %call288 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1982, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv287) #4
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %for.end339, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %lor.lhs.false284
  %call291 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call276) #4
  %call292 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1984, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call291, i32 noundef 0) #4
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %for.end339, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %lor.lhs.false290
  %call295 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call45, %struct.ec_point_st* noundef %call33, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call6) #4
  %cmp296 = icmp ne i32 %call295, 0
  %conv297 = zext i1 %cmp296 to i32
  %call298 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1987, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.485, i64 0, i64 0), i32 noundef %conv297) #4
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %for.end339, label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %lor.lhs.false294
  %call301 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %call45, %struct.ec_parameters_st* noundef null) #4
  %28 = bitcast %struct.ec_parameters_st* %call301 to i8*
  %call303 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1989, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.477, i64 0, i64 0), i8* noundef %28) #4
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %for.end339, label %lor.lhs.false305

lor.lhs.false305:                                 ; preds = %lor.lhs.false300
  %call306 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call301) #4
  %29 = bitcast %struct.ec_group_st* %call306 to i8*
  %call308 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1991, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.478, i64 0, i64 0), i8* noundef %29) #4
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %for.end339, label %lor.lhs.false310

lor.lhs.false310:                                 ; preds = %lor.lhs.false305
  %call311 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %call306) #4
  %call312 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1992, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.470, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.471, i64 0, i64 0), i32 noundef %call311, i32 noundef 0) #4
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %for.end339, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %lor.lhs.false310
  %call315 = tail call fastcc i32 @are_ec_nids_compatible(i32 noundef %1, i32 noundef %call311) #6
  %cmp316 = icmp ne i32 %call315, 0
  %conv317 = zext i1 %cmp316 to i32
  %call318 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1993, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.472, i64 0, i64 0), i32 noundef %conv317) #4
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %for.end339, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false314
  %call321 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call306) #4
  %call322 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 1995, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.474, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.475, i64 0, i64 0), i32 noundef %call321, i32 noundef 0) #4
  %tobool323.not = icmp ne i32 %call322, 0
  %spec.select = zext i1 %tobool323.not to i32
  br label %for.end339

for.end339:                                       ; preds = %if.then115, %if.then153, %if.then185, %lor.lhs.false82, %lor.lhs.false76, %lor.lhs.false70, %lor.lhs.false64, %lor.lhs.false58, %lor.lhs.false52, %lor.lhs.false48, %lor.lhs.false44, %lor.lhs.false40, %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false24, %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %if.end, %lor.lhs.false93, %if.end89, %lor.lhs.false104, %if.end100, %if.end118, %lor.lhs.false314, %lor.lhs.false310, %lor.lhs.false305, %lor.lhs.false300, %lor.lhs.false294, %lor.lhs.false290, %lor.lhs.false284, %lor.lhs.false280, %lor.lhs.false275, %lor.lhs.false270, %lor.lhs.false264, %lor.lhs.false260, %lor.lhs.false254, %lor.lhs.false250, %lor.lhs.false245, %lor.lhs.false240, %lor.lhs.false234, %lor.lhs.false228, %lor.lhs.false224, %lor.lhs.false219, %lor.lhs.false214, %lor.lhs.false208, %lor.lhs.false204, %lor.lhs.false199, %lor.lhs.false194, %if.end188, %lor.lhs.false320
  %g_ary.sroa.5.1 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ %g_ary.sroa.5.0, %if.then153 ], [ %call135, %if.then185 ], [ %call135, %if.end188 ], [ %call135, %lor.lhs.false194 ], [ %call135, %lor.lhs.false199 ], [ %call135, %lor.lhs.false204 ], [ %call135, %lor.lhs.false208 ], [ %call135, %lor.lhs.false214 ], [ %call135, %lor.lhs.false219 ], [ %call135, %lor.lhs.false224 ], [ %call135, %lor.lhs.false228 ], [ %call135, %lor.lhs.false234 ], [ %call135, %lor.lhs.false240 ], [ %call135, %lor.lhs.false245 ], [ %call135, %lor.lhs.false250 ], [ %call135, %lor.lhs.false254 ], [ %call135, %lor.lhs.false260 ], [ %call135, %lor.lhs.false264 ], [ %call135, %lor.lhs.false270 ], [ %call135, %lor.lhs.false275 ], [ %call135, %lor.lhs.false280 ], [ %call135, %lor.lhs.false284 ], [ %call135, %lor.lhs.false290 ], [ %call135, %lor.lhs.false294 ], [ %call135, %lor.lhs.false300 ], [ %call135, %lor.lhs.false305 ], [ %call135, %lor.lhs.false310 ], [ %call135, %lor.lhs.false314 ], [ %call135, %lor.lhs.false320 ]
  %g_ary.sroa.7.1 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ %g_ary.sroa.7.0, %if.then185 ], [ %call167, %if.end188 ], [ %call167, %lor.lhs.false194 ], [ %call167, %lor.lhs.false199 ], [ %call167, %lor.lhs.false204 ], [ %call167, %lor.lhs.false208 ], [ %call167, %lor.lhs.false214 ], [ %call167, %lor.lhs.false219 ], [ %call167, %lor.lhs.false224 ], [ %call167, %lor.lhs.false228 ], [ %call167, %lor.lhs.false234 ], [ %call167, %lor.lhs.false240 ], [ %call167, %lor.lhs.false245 ], [ %call167, %lor.lhs.false250 ], [ %call167, %lor.lhs.false254 ], [ %call167, %lor.lhs.false260 ], [ %call167, %lor.lhs.false264 ], [ %call167, %lor.lhs.false270 ], [ %call167, %lor.lhs.false275 ], [ %call167, %lor.lhs.false280 ], [ %call167, %lor.lhs.false284 ], [ %call167, %lor.lhs.false290 ], [ %call167, %lor.lhs.false294 ], [ %call167, %lor.lhs.false300 ], [ %call167, %lor.lhs.false305 ], [ %call167, %lor.lhs.false310 ], [ %call167, %lor.lhs.false314 ], [ %call167, %lor.lhs.false320 ]
  %g_ary.sroa.9.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ %call200, %lor.lhs.false199 ], [ %call200, %lor.lhs.false204 ], [ %call200, %lor.lhs.false208 ], [ %call200, %lor.lhs.false214 ], [ %call200, %lor.lhs.false219 ], [ %call200, %lor.lhs.false224 ], [ %call200, %lor.lhs.false228 ], [ %call200, %lor.lhs.false234 ], [ %call200, %lor.lhs.false240 ], [ %call200, %lor.lhs.false245 ], [ %call200, %lor.lhs.false250 ], [ %call200, %lor.lhs.false254 ], [ %call200, %lor.lhs.false260 ], [ %call200, %lor.lhs.false264 ], [ %call200, %lor.lhs.false270 ], [ %call200, %lor.lhs.false275 ], [ %call200, %lor.lhs.false280 ], [ %call200, %lor.lhs.false284 ], [ %call200, %lor.lhs.false290 ], [ %call200, %lor.lhs.false294 ], [ %call200, %lor.lhs.false300 ], [ %call200, %lor.lhs.false305 ], [ %call200, %lor.lhs.false310 ], [ %call200, %lor.lhs.false314 ], [ %call200, %lor.lhs.false320 ]
  %g_ary.sroa.11.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ %call220, %lor.lhs.false219 ], [ %call220, %lor.lhs.false224 ], [ %call220, %lor.lhs.false228 ], [ %call220, %lor.lhs.false234 ], [ %call220, %lor.lhs.false240 ], [ %call220, %lor.lhs.false245 ], [ %call220, %lor.lhs.false250 ], [ %call220, %lor.lhs.false254 ], [ %call220, %lor.lhs.false260 ], [ %call220, %lor.lhs.false264 ], [ %call220, %lor.lhs.false270 ], [ %call220, %lor.lhs.false275 ], [ %call220, %lor.lhs.false280 ], [ %call220, %lor.lhs.false284 ], [ %call220, %lor.lhs.false290 ], [ %call220, %lor.lhs.false294 ], [ %call220, %lor.lhs.false300 ], [ %call220, %lor.lhs.false305 ], [ %call220, %lor.lhs.false310 ], [ %call220, %lor.lhs.false314 ], [ %call220, %lor.lhs.false320 ]
  %g_ary.sroa.13.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false240 ], [ %call246, %lor.lhs.false245 ], [ %call246, %lor.lhs.false250 ], [ %call246, %lor.lhs.false254 ], [ %call246, %lor.lhs.false260 ], [ %call246, %lor.lhs.false264 ], [ %call246, %lor.lhs.false270 ], [ %call246, %lor.lhs.false275 ], [ %call246, %lor.lhs.false280 ], [ %call246, %lor.lhs.false284 ], [ %call246, %lor.lhs.false290 ], [ %call246, %lor.lhs.false294 ], [ %call246, %lor.lhs.false300 ], [ %call246, %lor.lhs.false305 ], [ %call246, %lor.lhs.false310 ], [ %call246, %lor.lhs.false314 ], [ %call246, %lor.lhs.false320 ]
  %g_ary.sroa.15.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false240 ], [ null, %lor.lhs.false245 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false260 ], [ null, %lor.lhs.false264 ], [ null, %lor.lhs.false270 ], [ %call276, %lor.lhs.false275 ], [ %call276, %lor.lhs.false280 ], [ %call276, %lor.lhs.false284 ], [ %call276, %lor.lhs.false290 ], [ %call276, %lor.lhs.false294 ], [ %call276, %lor.lhs.false300 ], [ %call276, %lor.lhs.false305 ], [ %call276, %lor.lhs.false310 ], [ %call276, %lor.lhs.false314 ], [ %call276, %lor.lhs.false320 ]
  %g_ary.sroa.17.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false240 ], [ null, %lor.lhs.false245 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false260 ], [ null, %lor.lhs.false264 ], [ null, %lor.lhs.false270 ], [ null, %lor.lhs.false275 ], [ null, %lor.lhs.false280 ], [ null, %lor.lhs.false284 ], [ null, %lor.lhs.false290 ], [ null, %lor.lhs.false294 ], [ null, %lor.lhs.false300 ], [ %call306, %lor.lhs.false305 ], [ %call306, %lor.lhs.false310 ], [ %call306, %lor.lhs.false314 ], [ %call306, %lor.lhs.false320 ]
  %p_ary.sroa.0.1 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ %p_ary.sroa.0.0, %if.then153 ], [ %call130, %if.then185 ], [ %call130, %if.end188 ], [ %call130, %lor.lhs.false194 ], [ %call130, %lor.lhs.false199 ], [ %call130, %lor.lhs.false204 ], [ %call130, %lor.lhs.false208 ], [ %call130, %lor.lhs.false214 ], [ %call130, %lor.lhs.false219 ], [ %call130, %lor.lhs.false224 ], [ %call130, %lor.lhs.false228 ], [ %call130, %lor.lhs.false234 ], [ %call130, %lor.lhs.false240 ], [ %call130, %lor.lhs.false245 ], [ %call130, %lor.lhs.false250 ], [ %call130, %lor.lhs.false254 ], [ %call130, %lor.lhs.false260 ], [ %call130, %lor.lhs.false264 ], [ %call130, %lor.lhs.false270 ], [ %call130, %lor.lhs.false275 ], [ %call130, %lor.lhs.false280 ], [ %call130, %lor.lhs.false284 ], [ %call130, %lor.lhs.false290 ], [ %call130, %lor.lhs.false294 ], [ %call130, %lor.lhs.false300 ], [ %call130, %lor.lhs.false305 ], [ %call130, %lor.lhs.false310 ], [ %call130, %lor.lhs.false314 ], [ %call130, %lor.lhs.false320 ]
  %p_ary.sroa.5.1 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ %p_ary.sroa.5.0, %if.then185 ], [ %call162, %if.end188 ], [ %call162, %lor.lhs.false194 ], [ %call162, %lor.lhs.false199 ], [ %call162, %lor.lhs.false204 ], [ %call162, %lor.lhs.false208 ], [ %call162, %lor.lhs.false214 ], [ %call162, %lor.lhs.false219 ], [ %call162, %lor.lhs.false224 ], [ %call162, %lor.lhs.false228 ], [ %call162, %lor.lhs.false234 ], [ %call162, %lor.lhs.false240 ], [ %call162, %lor.lhs.false245 ], [ %call162, %lor.lhs.false250 ], [ %call162, %lor.lhs.false254 ], [ %call162, %lor.lhs.false260 ], [ %call162, %lor.lhs.false264 ], [ %call162, %lor.lhs.false270 ], [ %call162, %lor.lhs.false275 ], [ %call162, %lor.lhs.false280 ], [ %call162, %lor.lhs.false284 ], [ %call162, %lor.lhs.false290 ], [ %call162, %lor.lhs.false294 ], [ %call162, %lor.lhs.false300 ], [ %call162, %lor.lhs.false305 ], [ %call162, %lor.lhs.false310 ], [ %call162, %lor.lhs.false314 ], [ %call162, %lor.lhs.false320 ]
  %p_ary.sroa.7.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ %call195, %lor.lhs.false194 ], [ %call195, %lor.lhs.false199 ], [ %call195, %lor.lhs.false204 ], [ %call195, %lor.lhs.false208 ], [ %call195, %lor.lhs.false214 ], [ %call195, %lor.lhs.false219 ], [ %call195, %lor.lhs.false224 ], [ %call195, %lor.lhs.false228 ], [ %call195, %lor.lhs.false234 ], [ %call195, %lor.lhs.false240 ], [ %call195, %lor.lhs.false245 ], [ %call195, %lor.lhs.false250 ], [ %call195, %lor.lhs.false254 ], [ %call195, %lor.lhs.false260 ], [ %call195, %lor.lhs.false264 ], [ %call195, %lor.lhs.false270 ], [ %call195, %lor.lhs.false275 ], [ %call195, %lor.lhs.false280 ], [ %call195, %lor.lhs.false284 ], [ %call195, %lor.lhs.false290 ], [ %call195, %lor.lhs.false294 ], [ %call195, %lor.lhs.false300 ], [ %call195, %lor.lhs.false305 ], [ %call195, %lor.lhs.false310 ], [ %call195, %lor.lhs.false314 ], [ %call195, %lor.lhs.false320 ]
  %p_ary.sroa.9.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ %call215, %lor.lhs.false214 ], [ %call215, %lor.lhs.false219 ], [ %call215, %lor.lhs.false224 ], [ %call215, %lor.lhs.false228 ], [ %call215, %lor.lhs.false234 ], [ %call215, %lor.lhs.false240 ], [ %call215, %lor.lhs.false245 ], [ %call215, %lor.lhs.false250 ], [ %call215, %lor.lhs.false254 ], [ %call215, %lor.lhs.false260 ], [ %call215, %lor.lhs.false264 ], [ %call215, %lor.lhs.false270 ], [ %call215, %lor.lhs.false275 ], [ %call215, %lor.lhs.false280 ], [ %call215, %lor.lhs.false284 ], [ %call215, %lor.lhs.false290 ], [ %call215, %lor.lhs.false294 ], [ %call215, %lor.lhs.false300 ], [ %call215, %lor.lhs.false305 ], [ %call215, %lor.lhs.false310 ], [ %call215, %lor.lhs.false314 ], [ %call215, %lor.lhs.false320 ]
  %p_ary.sroa.11.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ %call241, %lor.lhs.false240 ], [ %call241, %lor.lhs.false245 ], [ %call241, %lor.lhs.false250 ], [ %call241, %lor.lhs.false254 ], [ %call241, %lor.lhs.false260 ], [ %call241, %lor.lhs.false264 ], [ %call241, %lor.lhs.false270 ], [ %call241, %lor.lhs.false275 ], [ %call241, %lor.lhs.false280 ], [ %call241, %lor.lhs.false284 ], [ %call241, %lor.lhs.false290 ], [ %call241, %lor.lhs.false294 ], [ %call241, %lor.lhs.false300 ], [ %call241, %lor.lhs.false305 ], [ %call241, %lor.lhs.false310 ], [ %call241, %lor.lhs.false314 ], [ %call241, %lor.lhs.false320 ]
  %p_ary.sroa.13.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false240 ], [ null, %lor.lhs.false245 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false260 ], [ null, %lor.lhs.false264 ], [ %call271, %lor.lhs.false270 ], [ %call271, %lor.lhs.false275 ], [ %call271, %lor.lhs.false280 ], [ %call271, %lor.lhs.false284 ], [ %call271, %lor.lhs.false290 ], [ %call271, %lor.lhs.false294 ], [ %call271, %lor.lhs.false300 ], [ %call271, %lor.lhs.false305 ], [ %call271, %lor.lhs.false310 ], [ %call271, %lor.lhs.false314 ], [ %call271, %lor.lhs.false320 ]
  %p_ary.sroa.15.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ null, %if.end100 ], [ null, %lor.lhs.false104 ], [ null, %if.then115 ], [ null, %if.end118 ], [ null, %if.then153 ], [ null, %if.then185 ], [ null, %if.end188 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false199 ], [ null, %lor.lhs.false204 ], [ null, %lor.lhs.false208 ], [ null, %lor.lhs.false214 ], [ null, %lor.lhs.false219 ], [ null, %lor.lhs.false224 ], [ null, %lor.lhs.false228 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false240 ], [ null, %lor.lhs.false245 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false254 ], [ null, %lor.lhs.false260 ], [ null, %lor.lhs.false264 ], [ null, %lor.lhs.false270 ], [ null, %lor.lhs.false275 ], [ null, %lor.lhs.false280 ], [ null, %lor.lhs.false284 ], [ null, %lor.lhs.false290 ], [ null, %lor.lhs.false294 ], [ %call301, %lor.lhs.false300 ], [ %call301, %lor.lhs.false305 ], [ %call301, %lor.lhs.false310 ], [ %call301, %lor.lhs.false314 ], [ %call301, %lor.lhs.false320 ]
  %g_ary.sroa.0.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false82 ], [ null, %if.end89 ], [ null, %lor.lhs.false93 ], [ %call101, %if.end100 ], [ %call101, %lor.lhs.false104 ], [ %call101, %if.then115 ], [ %call101, %if.end118 ], [ %call101, %if.then153 ], [ %call101, %if.then185 ], [ %call101, %if.end188 ], [ %call101, %lor.lhs.false194 ], [ %call101, %lor.lhs.false199 ], [ %call101, %lor.lhs.false204 ], [ %call101, %lor.lhs.false208 ], [ %call101, %lor.lhs.false214 ], [ %call101, %lor.lhs.false219 ], [ %call101, %lor.lhs.false224 ], [ %call101, %lor.lhs.false228 ], [ %call101, %lor.lhs.false234 ], [ %call101, %lor.lhs.false240 ], [ %call101, %lor.lhs.false245 ], [ %call101, %lor.lhs.false250 ], [ %call101, %lor.lhs.false254 ], [ %call101, %lor.lhs.false260 ], [ %call101, %lor.lhs.false264 ], [ %call101, %lor.lhs.false270 ], [ %call101, %lor.lhs.false275 ], [ %call101, %lor.lhs.false280 ], [ %call101, %lor.lhs.false284 ], [ %call101, %lor.lhs.false290 ], [ %call101, %lor.lhs.false294 ], [ %call101, %lor.lhs.false300 ], [ %call101, %lor.lhs.false305 ], [ %call101, %lor.lhs.false310 ], [ %call101, %lor.lhs.false314 ], [ %call101, %lor.lhs.false320 ]
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false52 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false82 ], [ 0, %if.end89 ], [ 0, %lor.lhs.false93 ], [ 0, %if.end100 ], [ 0, %lor.lhs.false104 ], [ 0, %if.then115 ], [ 0, %if.end118 ], [ 0, %if.then153 ], [ 0, %if.then185 ], [ 0, %if.end188 ], [ 0, %lor.lhs.false194 ], [ 0, %lor.lhs.false199 ], [ 0, %lor.lhs.false204 ], [ 0, %lor.lhs.false208 ], [ 0, %lor.lhs.false214 ], [ 0, %lor.lhs.false219 ], [ 0, %lor.lhs.false224 ], [ 0, %lor.lhs.false228 ], [ 0, %lor.lhs.false234 ], [ 0, %lor.lhs.false240 ], [ 0, %lor.lhs.false245 ], [ 0, %lor.lhs.false250 ], [ 0, %lor.lhs.false254 ], [ 0, %lor.lhs.false260 ], [ 0, %lor.lhs.false264 ], [ 0, %lor.lhs.false270 ], [ 0, %lor.lhs.false275 ], [ 0, %lor.lhs.false280 ], [ 0, %lor.lhs.false284 ], [ 0, %lor.lhs.false290 ], [ 0, %lor.lhs.false294 ], [ 0, %lor.lhs.false300 ], [ 0, %lor.lhs.false305 ], [ 0, %lor.lhs.false310 ], [ 0, %lor.lhs.false314 ], [ %spec.select, %lor.lhs.false320 ]
  %group.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ %call25, %lor.lhs.false24 ], [ %call25, %lor.lhs.false28 ], [ %call25, %lor.lhs.false32 ], [ %call25, %lor.lhs.false36 ], [ %call25, %lor.lhs.false40 ], [ %call25, %lor.lhs.false44 ], [ %call25, %lor.lhs.false48 ], [ %call25, %lor.lhs.false52 ], [ %call25, %lor.lhs.false58 ], [ %call25, %lor.lhs.false64 ], [ %call25, %lor.lhs.false70 ], [ %call25, %lor.lhs.false76 ], [ %call25, %lor.lhs.false82 ], [ %call25, %if.end89 ], [ %call25, %lor.lhs.false93 ], [ %call25, %if.end100 ], [ %call25, %lor.lhs.false104 ], [ %call25, %if.then115 ], [ %call25, %if.end118 ], [ %call25, %if.then153 ], [ %call25, %if.then185 ], [ %call25, %if.end188 ], [ %call25, %lor.lhs.false194 ], [ %call25, %lor.lhs.false199 ], [ %call25, %lor.lhs.false204 ], [ %call25, %lor.lhs.false208 ], [ %call25, %lor.lhs.false214 ], [ %call25, %lor.lhs.false219 ], [ %call25, %lor.lhs.false224 ], [ %call25, %lor.lhs.false228 ], [ %call25, %lor.lhs.false234 ], [ %call25, %lor.lhs.false240 ], [ %call25, %lor.lhs.false245 ], [ %call25, %lor.lhs.false250 ], [ %call25, %lor.lhs.false254 ], [ %call25, %lor.lhs.false260 ], [ %call25, %lor.lhs.false264 ], [ %call25, %lor.lhs.false270 ], [ %call25, %lor.lhs.false275 ], [ %call25, %lor.lhs.false280 ], [ %call25, %lor.lhs.false284 ], [ %call25, %lor.lhs.false290 ], [ %call25, %lor.lhs.false294 ], [ %call25, %lor.lhs.false300 ], [ %call25, %lor.lhs.false305 ], [ %call25, %lor.lhs.false310 ], [ %call25, %lor.lhs.false314 ], [ %call25, %lor.lhs.false320 ]
  %tmpg.0 = phi %struct.ec_group_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ %call45, %lor.lhs.false44 ], [ %call45, %lor.lhs.false48 ], [ %call45, %lor.lhs.false52 ], [ %call45, %lor.lhs.false58 ], [ %call45, %lor.lhs.false64 ], [ %call45, %lor.lhs.false70 ], [ %call45, %lor.lhs.false76 ], [ %call45, %lor.lhs.false82 ], [ %call45, %if.end89 ], [ %call45, %lor.lhs.false93 ], [ %call45, %if.end100 ], [ %call45, %lor.lhs.false104 ], [ %call45, %if.then115 ], [ %call45, %if.end118 ], [ %call45, %if.then153 ], [ %call45, %if.then185 ], [ %call45, %if.end188 ], [ %call45, %lor.lhs.false194 ], [ %call45, %lor.lhs.false199 ], [ %call45, %lor.lhs.false204 ], [ %call45, %lor.lhs.false208 ], [ %call45, %lor.lhs.false214 ], [ %call45, %lor.lhs.false219 ], [ %call45, %lor.lhs.false224 ], [ %call45, %lor.lhs.false228 ], [ %call45, %lor.lhs.false234 ], [ %call45, %lor.lhs.false240 ], [ %call45, %lor.lhs.false245 ], [ %call45, %lor.lhs.false250 ], [ %call45, %lor.lhs.false254 ], [ %call45, %lor.lhs.false260 ], [ %call45, %lor.lhs.false264 ], [ %call45, %lor.lhs.false270 ], [ %call45, %lor.lhs.false275 ], [ %call45, %lor.lhs.false280 ], [ %call45, %lor.lhs.false284 ], [ %call45, %lor.lhs.false290 ], [ %call45, %lor.lhs.false294 ], [ %call45, %lor.lhs.false300 ], [ %call45, %lor.lhs.false305 ], [ %call45, %lor.lhs.false310 ], [ %call45, %lor.lhs.false314 ], [ %call45, %lor.lhs.false320 ]
  %other_gen.0 = phi %struct.ec_point_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false36 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false44 ], [ %call49, %lor.lhs.false48 ], [ %call49, %lor.lhs.false52 ], [ %call49, %lor.lhs.false58 ], [ %call49, %lor.lhs.false64 ], [ %call49, %lor.lhs.false70 ], [ %call49, %lor.lhs.false76 ], [ %call49, %lor.lhs.false82 ], [ %call90, %if.end89 ], [ %call90, %lor.lhs.false93 ], [ %call90, %if.end100 ], [ %call90, %lor.lhs.false104 ], [ %call90, %if.then115 ], [ %call90, %if.end118 ], [ %call90, %if.then153 ], [ %call90, %if.then185 ], [ %call90, %if.end188 ], [ %call90, %lor.lhs.false194 ], [ %call90, %lor.lhs.false199 ], [ %call90, %lor.lhs.false204 ], [ %call90, %lor.lhs.false208 ], [ %call90, %lor.lhs.false214 ], [ %call90, %lor.lhs.false219 ], [ %call90, %lor.lhs.false224 ], [ %call90, %lor.lhs.false228 ], [ %call90, %lor.lhs.false234 ], [ %call90, %lor.lhs.false240 ], [ %call90, %lor.lhs.false245 ], [ %call90, %lor.lhs.false250 ], [ %call90, %lor.lhs.false254 ], [ %call90, %lor.lhs.false260 ], [ %call90, %lor.lhs.false264 ], [ %call90, %lor.lhs.false270 ], [ %call90, %lor.lhs.false275 ], [ %call90, %lor.lhs.false280 ], [ %call90, %lor.lhs.false284 ], [ %call90, %lor.lhs.false290 ], [ %call90, %lor.lhs.false294 ], [ %call90, %lor.lhs.false300 ], [ %call90, %lor.lhs.false305 ], [ %call90, %lor.lhs.false310 ], [ %call90, %lor.lhs.false314 ], [ %call90, %lor.lhs.false320 ]
  %params.0 = phi %struct.ec_parameters_st* [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false24 ], [ %call29, %lor.lhs.false28 ], [ %call29, %lor.lhs.false32 ], [ %call29, %lor.lhs.false36 ], [ %call29, %lor.lhs.false40 ], [ %call29, %lor.lhs.false44 ], [ %call29, %lor.lhs.false48 ], [ %call29, %lor.lhs.false52 ], [ %call29, %lor.lhs.false58 ], [ %call29, %lor.lhs.false64 ], [ %call29, %lor.lhs.false70 ], [ %call29, %lor.lhs.false76 ], [ %call29, %lor.lhs.false82 ], [ %call29, %if.end89 ], [ %call29, %lor.lhs.false93 ], [ %call29, %if.end100 ], [ %call29, %lor.lhs.false104 ], [ %call29, %if.then115 ], [ %call29, %if.end118 ], [ %call29, %if.then153 ], [ %call29, %if.then185 ], [ %call29, %if.end188 ], [ %call29, %lor.lhs.false194 ], [ %call29, %lor.lhs.false199 ], [ %call29, %lor.lhs.false204 ], [ %call29, %lor.lhs.false208 ], [ %call29, %lor.lhs.false214 ], [ %call29, %lor.lhs.false219 ], [ %call29, %lor.lhs.false224 ], [ %call29, %lor.lhs.false228 ], [ %call29, %lor.lhs.false234 ], [ %call29, %lor.lhs.false240 ], [ %call29, %lor.lhs.false245 ], [ %call29, %lor.lhs.false250 ], [ %call29, %lor.lhs.false254 ], [ %call29, %lor.lhs.false260 ], [ %call29, %lor.lhs.false264 ], [ %call29, %lor.lhs.false270 ], [ %call29, %lor.lhs.false275 ], [ %call29, %lor.lhs.false280 ], [ %call29, %lor.lhs.false284 ], [ %call29, %lor.lhs.false290 ], [ %call29, %lor.lhs.false294 ], [ %call29, %lor.lhs.false300 ], [ %call29, %lor.lhs.false305 ], [ %call29, %lor.lhs.false310 ], [ %call29, %lor.lhs.false314 ], [ %call29, %lor.lhs.false320 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.0.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.5.1) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.7.1) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.9.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.11.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.13.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.15.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %g_ary.sroa.17.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.0.1) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.5.1) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.7.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.9.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.11.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.13.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %p_ary.sroa.15.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef null) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %params.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %other_gen.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %tmpg.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %call4) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end339
  %retval.0 = phi i32 [ %ret.0, %for.end339 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_point_hex2point_test(i32 noundef %id) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2352, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.486, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %3 = bitcast %struct.ec_group_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2353, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call3) #4
  %4 = bitcast %struct.ec_point_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2354, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.226, i64 0, i64 0), i8* noundef %4) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %call7, %struct.ec_group_st* noundef %call3) #4
  %5 = bitcast %struct.ec_point_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2355, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.487, i64 0, i64 0), i8* noundef %5) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false10
  %call14 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef %call11, i32 noundef 2, %struct.bignum_ctx* noundef %call) #6
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2360, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.488, i64 0, i64 0), i32 noundef %conv) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end
  %call18 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef null, i32 noundef 2, %struct.bignum_ctx* noundef %call) #6
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2363, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.489, i64 0, i64 0), i32 noundef %conv20) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %call24 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef %call11, i32 noundef 4, %struct.bignum_ctx* noundef %call) #6
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2366, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.490, i64 0, i64 0), i32 noundef %conv26) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %call30 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef null, i32 noundef 4, %struct.bignum_ctx* noundef %call) #6
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2369, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.491, i64 0, i64 0), i32 noundef %conv32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false29
  %call36 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef %call11, i32 noundef 6, %struct.bignum_ctx* noundef %call) #6
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2372, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.492, i64 0, i64 0), i32 noundef %conv38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %call42 = tail call fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %call3, %struct.ec_point_st* noundef null, i32 noundef 6, %struct.bignum_ctx* noundef %call) #6
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2375, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.493, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp ne i32 %call45, 0
  %spec.select = zext i1 %tobool46.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false41, %if.end, %lor.lhs.false17, %lor.lhs.false23, %lor.lhs.false29, %lor.lhs.false35, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10
  %ret.0 = phi i32 [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false17 ], [ 0, %if.end ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false41 ]
  %group.0 = phi %struct.ec_group_st* [ %call3, %lor.lhs.false35 ], [ %call3, %lor.lhs.false29 ], [ %call3, %lor.lhs.false23 ], [ %call3, %lor.lhs.false17 ], [ %call3, %if.end ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %lor.lhs.false41 ]
  %P.0 = phi %struct.ec_point_st* [ %call11, %lor.lhs.false35 ], [ %call11, %lor.lhs.false29 ], [ %call11, %lor.lhs.false23 ], [ %call11, %lor.lhs.false17 ], [ %call11, %if.end ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %lor.lhs.false41 ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.0) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_generator_test(i32 noundef %id) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.456, i64 0, i64 0), i8* noundef %call) #4
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %2 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2623, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %call2) #4
  %call4 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %3 = bitcast %struct.ec_group_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2628, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call4) #4
  %add = add nsw i32 %call9, 7
  %div = sdiv i32 %add, 8
  %mul = shl nsw i32 %div, 1
  %add10 = or i32 %mul, 1
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call2) #4
  %4 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2635, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.499, i64 0, i64 0), i8* noundef %4) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %call14 = tail call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef %call4) #4
  %sub = add nsw i32 %call14, -1
  %call15 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call11, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #4
  %cmp = icmp ne i32 %call15, 0
  %conv = zext i1 %cmp to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2638, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.500, i64 0, i64 0), i32 noundef %conv) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %call19 = tail call i32 @BN_clear_bit(%struct.bignum_st* noundef %call11, i32 noundef 0) #4
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2640, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.501, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call4) #4
  %5 = bitcast %struct.ec_point_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2641, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.502, i64 0, i64 0), i8* noundef %5) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call4) #4
  %6 = bitcast %struct.ec_point_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2642, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.503, i64 0, i64 0), i8* noundef %6) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call29, %struct.bignum_st* noundef %call11, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call2) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2644, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.504, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call29, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call2) #4
  %conv40 = trunc i64 %call39 to i32
  %call41 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2648, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.505, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv40, i32 noundef %add10) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %conv44 = sext i32 %add10 to i64
  %call45 = tail call i8* @CRYPTO_malloc(i64 noundef %conv44, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2649) #4
  %call46 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2649, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.507, i64 0, i64 0), i8* noundef %call45) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false43
  %call50 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call29, i32 noundef 4, i8* noundef %call45, i64 noundef %conv44, %struct.bignum_ctx* noundef %call2) #4
  %conv51 = trunc i64 %call50 to i32
  %call52 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2652, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.508, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv51, i32 noundef %add10) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call4) #4
  %call56 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call25, %struct.ec_point_st* noundef %call55, %struct.bignum_ctx* noundef %call2) #4
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2655, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.509, i64 0, i64 0), i32 noundef %conv58) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false54
  %call62 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call4) #4
  %call63 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %call4) #4
  %call64 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call25, %struct.bignum_st* noundef %call62, %struct.bignum_st* noundef %call63) #4
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2658, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.510, i64 0, i64 0), i32 noundef %conv66) #4
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false61
  %call70 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call4) #4
  %7 = bitcast %struct.ec_point_st* %call70 to i8*
  %call71 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2659, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.511, i64 0, i64 0), i8* noundef %7) #4
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %call74 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call11) #4
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2660, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.512, i64 0, i64 0), i32 noundef %conv76) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false73
  %call80 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call70, %struct.bignum_st* noundef %call11, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call2) #4
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2662, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.513, i64 0, i64 0), i32 noundef %conv82) #4
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false79
  %call86 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call70, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call2) #4
  %conv87 = trunc i64 %call86 to i32
  %call88 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2665, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.514, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv87, i32 noundef %add10) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false85
  %call92 = tail call i8* @CRYPTO_malloc(i64 noundef %conv44, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2666) #4
  %call93 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2666, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.515, i64 0, i64 0), i8* noundef %call92) #4
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false90
  %call97 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call4, %struct.ec_point_st* noundef %call70, i32 noundef 4, i8* noundef %call92, i64 noundef %conv44, %struct.bignum_ctx* noundef %call2) #4
  %conv98 = trunc i64 %call97 to i32
  %call99 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2669, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.516, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv98, i32 noundef %add10) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false95
  %call104 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2671, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.517, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.518, i64 0, i64 0), i8* noundef %call45, i64 noundef %conv44, i8* noundef %call92, i64 noundef %conv44) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %if.end107

if.end107:                                        ; preds = %lor.lhs.false101
  %call108 = tail call fastcc i32 @do_test_custom_explicit_fromdata(%struct.ec_group_st* noundef %call4, %struct.bignum_ctx* noundef %call2, i8* noundef %call45, i32 noundef %add10) #6
  %tobool109.not = icmp ne i32 %call108, 0
  %spec.select = zext i1 %tobool109.not to i32
  br label %err

err:                                              ; preds = %if.end107, %if.end8, %lor.lhs.false, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false28, %lor.lhs.false32, %lor.lhs.false38, %lor.lhs.false43, %lor.lhs.false48, %lor.lhs.false54, %lor.lhs.false61, %lor.lhs.false69, %lor.lhs.false73, %lor.lhs.false79, %lor.lhs.false85, %lor.lhs.false90, %lor.lhs.false95, %lor.lhs.false101, %if.end
  %ret.0 = phi i32 [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false95 ], [ 0, %lor.lhs.false90 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false73 ], [ 0, %lor.lhs.false69 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false43 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false ], [ 0, %if.end8 ], [ 0, %if.end ], [ %spec.select, %if.end107 ]
  %G2.0 = phi %struct.ec_point_st* [ %call25, %lor.lhs.false101 ], [ %call25, %lor.lhs.false95 ], [ %call25, %lor.lhs.false90 ], [ %call25, %lor.lhs.false85 ], [ %call25, %lor.lhs.false79 ], [ %call25, %lor.lhs.false73 ], [ %call25, %lor.lhs.false69 ], [ %call25, %lor.lhs.false61 ], [ %call25, %lor.lhs.false54 ], [ %call25, %lor.lhs.false48 ], [ %call25, %lor.lhs.false43 ], [ %call25, %lor.lhs.false38 ], [ %call25, %lor.lhs.false32 ], [ %call25, %lor.lhs.false28 ], [ %call25, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ null, %if.end ], [ %call25, %if.end107 ]
  %Q1.0 = phi %struct.ec_point_st* [ %call29, %lor.lhs.false101 ], [ %call29, %lor.lhs.false95 ], [ %call29, %lor.lhs.false90 ], [ %call29, %lor.lhs.false85 ], [ %call29, %lor.lhs.false79 ], [ %call29, %lor.lhs.false73 ], [ %call29, %lor.lhs.false69 ], [ %call29, %lor.lhs.false61 ], [ %call29, %lor.lhs.false54 ], [ %call29, %lor.lhs.false48 ], [ %call29, %lor.lhs.false43 ], [ %call29, %lor.lhs.false38 ], [ %call29, %lor.lhs.false32 ], [ %call29, %lor.lhs.false28 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ null, %if.end ], [ %call29, %if.end107 ]
  %Q2.0 = phi %struct.ec_point_st* [ %call70, %lor.lhs.false101 ], [ %call70, %lor.lhs.false95 ], [ %call70, %lor.lhs.false90 ], [ %call70, %lor.lhs.false85 ], [ %call70, %lor.lhs.false79 ], [ %call70, %lor.lhs.false73 ], [ %call70, %lor.lhs.false69 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ null, %if.end ], [ %call70, %if.end107 ]
  %b1.0 = phi i8* [ %call45, %lor.lhs.false101 ], [ %call45, %lor.lhs.false95 ], [ %call45, %lor.lhs.false90 ], [ %call45, %lor.lhs.false85 ], [ %call45, %lor.lhs.false79 ], [ %call45, %lor.lhs.false73 ], [ %call45, %lor.lhs.false69 ], [ %call45, %lor.lhs.false61 ], [ %call45, %lor.lhs.false54 ], [ %call45, %lor.lhs.false48 ], [ %call45, %lor.lhs.false43 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ null, %if.end ], [ %call45, %if.end107 ]
  %b2.0 = phi i8* [ %call92, %lor.lhs.false101 ], [ %call92, %lor.lhs.false95 ], [ %call92, %lor.lhs.false90 ], [ null, %lor.lhs.false85 ], [ null, %lor.lhs.false79 ], [ null, %lor.lhs.false73 ], [ null, %lor.lhs.false69 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ null, %if.end ], [ %call92, %if.end107 ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %Q1.0) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %Q2.0) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %G2.0) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call4) #4
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call2) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call2) #4
  tail call void @CRYPTO_free(i8* noundef %b1.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2686) #4
  tail call void @CRYPTO_free(i8* noundef %b2.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2687) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_params_test(i32 noundef %id) #0 {
entry:
  %pkey1 = alloca %struct.evp_pkey_st*, align 8
  %pkey2 = alloca %struct.evp_pkey_st*, align 8
  %sslen = alloca i64, align 8
  %t = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !7
  %1 = bitcast %struct.evp_pkey_st** %pkey2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !7
  %2 = bitcast i64* %sslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %id to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %4, i64 %idxprom, i32 0
  %5 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %5) #4
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.456, i64 0, i64 0), i8* noundef %call) #4
  %cmp = icmp eq i32 %5, 1172
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2722, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.599, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %6 = bitcast %struct.bignum_ctx* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2724, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %6) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %5) #4
  %7 = bitcast %struct.ec_group_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2727, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.393, i64 0, i64 0), i8* noundef %7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %call7) #4
  %cmp13 = icmp eq i32 %call12, 406
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %call3) #4
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call3) #4
  %8 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2739, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.600, i64 0, i64 0), i8* noundef %8) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call3) #4
  %9 = bitcast %struct.bignum_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2740, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.601, i64 0, i64 0), i8* noundef %9) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call3) #4
  %10 = bitcast %struct.bignum_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2741, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.602, i64 0, i64 0), i8* noundef %10) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call3) #4
  %11 = bitcast %struct.bignum_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2742, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.499, i64 0, i64 0), i8* noundef %11) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false24
  %call30 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %call7) #4
  %add = add nsw i32 %call30, 7
  %div = sdiv i32 %add, 8
  %mul = shl nsw i32 %div, 1
  %add31 = or i32 %mul, 1
  %call32 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call3) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2750, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end29
  %call38 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call7) #4
  %12 = bitcast %struct.ec_point_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2751, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.502, i64 0, i64 0), i8* noundef %12) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %call42 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %call7) #4
  %call43 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call38, %struct.ec_point_st* noundef %call42, %struct.bignum_ctx* noundef %call3) #4
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2754, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.509, i64 0, i64 0), i32 noundef %conv45) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false41
  %call49 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call38, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call3) #4
  %conv50 = trunc i64 %call49 to i32
  %call51 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2758, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.603, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv50, i32 noundef %add31) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %conv54 = sext i32 %add31 to i64
  %call55 = tail call i8* @CRYPTO_malloc(i64 noundef %conv54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2759) #4
  %call56 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2759, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.604, i64 0, i64 0), i8* noundef %call55) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false53
  %call60 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call38, i32 noundef 4, i8* noundef %call55, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %conv61 = trunc i64 %call60 to i32
  %call62 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2762, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.605, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv61, i32 noundef %add31) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false58
  %call65 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call7) #4
  %13 = bitcast %struct.bignum_st* %call65 to i8*
  %call66 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2763, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.606, i64 0, i64 0), i8* noundef %13) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %call69 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %call7) #4
  %14 = bitcast %struct.bignum_st* %call69 to i8*
  %call70 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2764, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.607, i64 0, i64 0), i8* noundef %14) #4
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68
  br i1 %cmp13, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end73
  %call76 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call3) #4
  %15 = bitcast %struct.ec_group_st* %call76 to i8*
  %call77 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2770, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.608, i64 0, i64 0), i8* noundef %15) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end86

if.else:                                          ; preds = %if.end73
  %call81 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call17, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef %call3) #4
  %16 = bitcast %struct.ec_group_st* %call81 to i8*
  %call82 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2775, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.609, i64 0, i64 0), i8* noundef %16) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %if.end86

if.end86:                                         ; preds = %if.else, %if.then75
  %altgroup.0 = phi %struct.ec_group_st* [ %call76, %if.then75 ], [ %call81, %if.else ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call38) #4
  %call87 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %altgroup.0) #4
  %17 = bitcast %struct.ec_point_st* %call87 to i8*
  %call88 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2782, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.610, i64 0, i64 0), i8* noundef %17) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end86
  %call92 = tail call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call87, i8* noundef %call55, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %cmp93 = icmp ne i32 %call92, 0
  %conv94 = zext i1 %cmp93 to i32
  %call95 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2783, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.611, i64 0, i64 0), i32 noundef %conv94) #4
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false90
  %call98 = tail call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call87, %struct.bignum_ctx* noundef %call3) #4
  %call99 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2784, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.612, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call98, i32 noundef 1) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call102 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call87, %struct.bignum_st* noundef %call65, %struct.bignum_st* noundef %call69) #4
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2785, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.613, i64 0, i64 0), i32 noundef %conv104) #4
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %if.end108

if.end108:                                        ; preds = %lor.lhs.false101
  %call109 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call7) #4
  %18 = bitcast %struct.ec_point_st* %call109 to i8*
  %call110 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2791, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.503, i64 0, i64 0), i8* noundef %18) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %if.end108
  %call113 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %altgroup.0) #4
  %19 = bitcast %struct.ec_point_st* %call113 to i8*
  %call114 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2792, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.614, i64 0, i64 0), i8* noundef %19) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %call117 = tail call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef %call7) #4
  %sub = add nsw i32 %call117, -1
  %call118 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call25, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #4
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2795, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.500, i64 0, i64 0), i32 noundef %conv120) #4
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false116
  %call124 = tail call i32 @BN_clear_bit(%struct.bignum_st* noundef %call25, i32 noundef 0) #4
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2797, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.501, i64 0, i64 0), i32 noundef %conv126) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false123
  %call130 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, %struct.bignum_st* noundef %call25, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call3) #4
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  %call133 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2799, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.504, i64 0, i64 0), i32 noundef %conv132) #4
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false129
  %call136 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call3) #4
  %conv137 = trunc i64 %call136 to i32
  %call138 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2803, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.505, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv137, i32 noundef %add31) #4
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %err, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false135
  %call142 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, i32 noundef 4, i8* noundef %call55, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %conv143 = trunc i64 %call142 to i32
  %call144 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2806, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.615, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv143, i32 noundef %add31) #4
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %err, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false140
  %call147 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call25) #4
  %cmp148 = icmp ne i32 %call147, 0
  %conv149 = zext i1 %cmp148 to i32
  %call150 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2808, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.512, i64 0, i64 0), i32 noundef %conv149) #4
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %err, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false146
  %call153 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call113, %struct.bignum_st* noundef %call25, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call3) #4
  %cmp154 = icmp ne i32 %call153, 0
  %conv155 = zext i1 %cmp154 to i32
  %call156 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2810, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.616, i64 0, i64 0), i32 noundef %conv155) #4
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %lor.lhs.false152
  %call159 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call113, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call3) #4
  %conv160 = trunc i64 %call159 to i32
  %call161 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2814, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.617, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv160, i32 noundef %add31) #4
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false158
  %call165 = tail call i8* @CRYPTO_malloc(i64 noundef %conv54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2815) #4
  %call166 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2815, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.618, i64 0, i64 0), i8* noundef %call165) #4
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false163
  %call170 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call113, i32 noundef 4, i8* noundef %call165, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %conv171 = trunc i64 %call170 to i32
  %call172 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2818, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.619, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv171, i32 noundef %add31) #4
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %err, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false168
  %call177 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2820, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.620, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.621, i64 0, i64 0), i8* noundef %call55, i64 noundef %conv54, i8* noundef %call165, i64 noundef %conv54) #4
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err, label %if.end180

if.end180:                                        ; preds = %lor.lhs.false174
  %call181 = tail call %struct.ec_key_st* @EC_KEY_new() #4
  %20 = bitcast %struct.ec_key_st* %call181 to i8*
  %call182 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2824, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.622, i64 0, i64 0), i8* noundef %20) #4
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %if.end180
  %call185 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call181, %struct.ec_group_st* noundef %altgroup.0) #4
  %cmp186 = icmp ne i32 %call185, 0
  %conv187 = zext i1 %cmp186 to i32
  %call188 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2825, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.623, i64 0, i64 0), i32 noundef %conv187) #4
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %err, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false184
  %call191 = tail call i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef %call181) #4
  %cmp192 = icmp ne i32 %call191, 0
  %conv193 = zext i1 %cmp192 to i32
  %call194 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2826, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.624, i64 0, i64 0), i32 noundef %conv193) #4
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %err, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false190
  %call197 = tail call %struct.ec_key_st* @EC_KEY_new() #4
  %21 = bitcast %struct.ec_key_st* %call197 to i8*
  %call198 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2827, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.625, i64 0, i64 0), i8* noundef %21) #4
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %err, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %lor.lhs.false196
  %call201 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call197, %struct.ec_group_st* noundef %altgroup.0) #4
  %cmp202 = icmp ne i32 %call201, 0
  %conv203 = zext i1 %cmp202 to i32
  %call204 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2828, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.626, i64 0, i64 0), i32 noundef %conv203) #4
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %err, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %lor.lhs.false200
  %call207 = tail call i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef %call197) #4
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2829, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.627, i64 0, i64 0), i32 noundef %conv209) #4
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %if.end213

if.end213:                                        ; preds = %lor.lhs.false206
  %call214 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %call181) #4
  %22 = bitcast %struct.bignum_st* %call214 to i8*
  %call215 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2833, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.628, i64 0, i64 0), i8* noundef %22) #4
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %err, label %if.end218

if.end218:                                        ; preds = %if.end213
  %call219 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, %struct.bignum_st* noundef %call214, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call3) #4
  %cmp220 = icmp ne i32 %call219, 0
  %conv221 = zext i1 %cmp220 to i32
  %call222 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2842, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.629, i64 0, i64 0), i32 noundef %conv221) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %err, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end218
  %call225 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call3) #4
  %conv226 = trunc i64 %call225 to i32
  %call227 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2845, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.505, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv226, i32 noundef %add31) #4
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false224
  %call231 = tail call i8* @CRYPTO_malloc(i64 noundef %conv54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2846) #4
  %call232 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2846, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.630, i64 0, i64 0), i8* noundef %call231) #4
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %lor.lhs.false234

lor.lhs.false234:                                 ; preds = %lor.lhs.false229
  %call236 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %call7, %struct.ec_point_st* noundef %call109, i32 noundef 4, i8* noundef %call231, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %conv237 = trunc i64 %call236 to i32
  %call238 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2849, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.631, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv237, i32 noundef %add31) #4
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %err, label %if.end241

if.end241:                                        ; preds = %lor.lhs.false234
  %call242 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %call197) #4
  %23 = bitcast %struct.ec_point_st* %call242 to i8*
  %call243 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2853, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.632, i64 0, i64 0), i8* noundef %23) #4
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %err, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %if.end241
  %call246 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call242, i32 noundef 4, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef %call3) #4
  %conv247 = trunc i64 %call246 to i32
  %call248 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2856, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.633, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv247, i32 noundef %add31) #4
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false245
  %call252 = tail call i8* @CRYPTO_malloc(i64 noundef %conv54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2857) #4
  %call253 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2857, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.634, i64 0, i64 0), i8* noundef %call252) #4
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %err, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false250
  %call257 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %altgroup.0, %struct.ec_point_st* noundef %call242, i32 noundef 4, i8* noundef %call252, i64 noundef %conv54, %struct.bignum_ctx* noundef %call3) #4
  %conv258 = trunc i64 %call257 to i32
  %call259 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2860, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.635, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i32 noundef %conv258, i32 noundef %add31) #4
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %err, label %if.end262

if.end262:                                        ; preds = %lor.lhs.false255
  %call263 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  store %struct.evp_pkey_st* %call263, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !7
  %24 = bitcast %struct.evp_pkey_st* %call263 to i8*
  %call264 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2864, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.636, i64 0, i64 0), i8* noundef %24) #4
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %err, label %lor.lhs.false266

lor.lhs.false266:                                 ; preds = %if.end262
  %call267 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call263, i32 noundef 408, i8* noundef %20) #4
  %call268 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2865, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.637, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call267, i32 noundef 1) #4
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %err, label %if.end271

if.end271:                                        ; preds = %lor.lhs.false266
  %call272 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  store %struct.evp_pkey_st* %call272, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !7
  %25 = bitcast %struct.evp_pkey_st* %call272 to i8*
  %call273 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2868, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.638, i64 0, i64 0), i8* noundef %25) #4
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %err, label %lor.lhs.false275

lor.lhs.false275:                                 ; preds = %if.end271
  %call276 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call272, i32 noundef 408, i8* noundef %21) #4
  %call277 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2869, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.639, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call276, i32 noundef 1) #4
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %err, label %if.end280

if.end280:                                        ; preds = %lor.lhs.false275
  %call281 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call263, %struct.engine_st* noundef null) #4
  %26 = bitcast %struct.evp_pkey_ctx_st* %call281 to i8*
  %call282 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2874, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.640, i64 0, i64 0), i8* noundef %26) #4
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %err, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %if.end280
  %call285 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call281) #4
  %call286 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2875, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.641, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call285, i32 noundef 1) #4
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %err, label %lor.lhs.false288

lor.lhs.false288:                                 ; preds = %lor.lhs.false284
  %call289 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %call281, %struct.evp_pkey_st* noundef %call272) #4
  %call290 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2876, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.642, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call289, i32 noundef 1) #4
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %err, label %lor.lhs.false292

lor.lhs.false292:                                 ; preds = %lor.lhs.false288
  %call293 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call281, i8* noundef null, i64* noundef nonnull %sslen) #4
  %call294 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2877, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.643, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call293, i32 noundef 1) #4
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %err, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %lor.lhs.false292
  %27 = load i64, i64* %sslen, align 8, !tbaa !3
  %conv297 = trunc i64 %27 to i32
  %call298 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2878, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.644, i64 0, i64 0), i32 noundef %add31, i32 noundef %conv297) #4
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %err, label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %lor.lhs.false296
  %call301 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call281, i8* noundef %call55, i64* noundef nonnull %sslen) #4
  %call302 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2879, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.645, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call301, i32 noundef 1) #4
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %err, label %if.end305

if.end305:                                        ; preds = %lor.lhs.false300
  %call306 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call272, %struct.engine_st* noundef null) #4
  %28 = bitcast %struct.evp_pkey_ctx_st* %call306 to i8*
  %call307 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2881, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.646, i64 0, i64 0), i8* noundef %28) #4
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %err, label %lor.lhs.false309

lor.lhs.false309:                                 ; preds = %if.end305
  %call310 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call306) #4
  %call311 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2882, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.647, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call310, i32 noundef 1) #4
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %err, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %lor.lhs.false309
  %call314 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %call306, %struct.evp_pkey_st* noundef %call263) #4
  %call315 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2883, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.648, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call314, i32 noundef 1) #4
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %err, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %lor.lhs.false313
  %call318 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call306, i8* noundef null, i64* noundef nonnull %t) #4
  %call319 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2884, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.649, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call318, i32 noundef 1) #4
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %err, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %lor.lhs.false317
  %29 = load i64, i64* %t, align 8, !tbaa !3
  %conv322 = trunc i64 %29 to i32
  %call323 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2885, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.650, i64 0, i64 0), i32 noundef %add31, i32 noundef %conv322) #4
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %err, label %lor.lhs.false325

lor.lhs.false325:                                 ; preds = %lor.lhs.false321
  %30 = load i64, i64* %sslen, align 8, !tbaa !3
  %conv326 = trunc i64 %30 to i32
  %31 = load i64, i64* %t, align 8, !tbaa !3
  %conv327 = trunc i64 %31 to i32
  %call328 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2886, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.644, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.650, i64 0, i64 0), i32 noundef %conv326, i32 noundef %conv327) #4
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %err, label %lor.lhs.false330

lor.lhs.false330:                                 ; preds = %lor.lhs.false325
  %call331 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call306, i8* noundef %call165, i64* noundef nonnull %t) #4
  %call332 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2887, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.651, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call331, i32 noundef 1) #4
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %err, label %if.end335

if.end335:                                        ; preds = %lor.lhs.false330
  %32 = load i64, i64* %sslen, align 8, !tbaa !3
  %33 = load i64, i64* %t, align 8, !tbaa !3
  %call336 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2891, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.620, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.621, i64 0, i64 0), i8* noundef %call55, i64 noundef %32, i8* noundef %call165, i64 noundef %33) #4
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %err, label %if.end339

if.end339:                                        ; preds = %if.end335
  %call340 = call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #4
  %34 = bitcast %struct.ossl_param_bld_st* %call340 to i8*
  %call341 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2895, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.652, i64 0, i64 0), i8* noundef %34) #4
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %err, label %lor.lhs.false343

lor.lhs.false343:                                 ; preds = %if.end339
  %call344 = call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call340, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.545, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #4
  %cmp345 = icmp ne i32 %call344, 0
  %conv346 = zext i1 %cmp345 to i32
  %call347 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2898, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.653, i64 0, i64 0), i32 noundef %conv346) #4
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %err, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %lor.lhs.false343
  %call351 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call340, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.655, i64 0, i64 0), i8* noundef %call231, i64 noundef %conv54) #4
  %cmp352 = icmp ne i32 %call351, 0
  %conv353 = zext i1 %cmp352 to i32
  %call354 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2901, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.654, i64 0, i64 0), i32 noundef %conv353) #4
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %err, label %lor.lhs.false356

lor.lhs.false356:                                 ; preds = %lor.lhs.false349
  %call357 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call340, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.657, i64 0, i64 0), %struct.bignum_st* noundef %call214) #4
  %cmp358 = icmp ne i32 %call357, 0
  %conv359 = zext i1 %cmp358 to i32
  %call360 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2904, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.656, i64 0, i64 0), i32 noundef %conv359) #4
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %err, label %lor.lhs.false362

lor.lhs.false362:                                 ; preds = %lor.lhs.false356
  %call363 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call340) #4
  %35 = bitcast %struct.ossl_param_st* %call363 to i8*
  %call364 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2905, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.658, i64 0, i64 0), i8* noundef %35) #4
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %err, label %if.end367

if.end367:                                        ; preds = %lor.lhs.false362
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call340) #4
  %call368 = call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #4
  %36 = bitcast %struct.ossl_param_bld_st* %call368 to i8*
  %call369 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2909, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.652, i64 0, i64 0), i8* noundef %36) #4
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %err, label %lor.lhs.false371

lor.lhs.false371:                                 ; preds = %if.end367
  %call372 = call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call368, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.545, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #4
  %cmp373 = icmp ne i32 %call372, 0
  %conv374 = zext i1 %cmp373 to i32
  %call375 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2912, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.653, i64 0, i64 0), i32 noundef %conv374) #4
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %err, label %lor.lhs.false377

lor.lhs.false377:                                 ; preds = %lor.lhs.false371
  %call379 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call368, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.655, i64 0, i64 0), i8* noundef %call252, i64 noundef %conv54) #4
  %cmp380 = icmp ne i32 %call379, 0
  %conv381 = zext i1 %cmp380 to i32
  %call382 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2915, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.659, i64 0, i64 0), i32 noundef %conv381) #4
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %err, label %lor.lhs.false384

lor.lhs.false384:                                 ; preds = %lor.lhs.false377
  %call385 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call368) #4
  %37 = bitcast %struct.ossl_param_st* %call385 to i8*
  %call386 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2916, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.660, i64 0, i64 0), i8* noundef %37) #4
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %err, label %if.end389

if.end389:                                        ; preds = %lor.lhs.false384
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call306) #4
  %call390 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.541, i64 0, i64 0), i8* noundef null) #4
  %38 = bitcast %struct.evp_pkey_ctx_st* %call390 to i8*
  %call391 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2921, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.661, i64 0, i64 0), i8* noundef %38) #4
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %err, label %lor.lhs.false393

lor.lhs.false393:                                 ; preds = %if.end389
  %call394 = call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call390) #4
  %cmp395 = icmp ne i32 %call394, 0
  %conv396 = zext i1 %cmp395 to i32
  %call397 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2922, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.662, i64 0, i64 0), i32 noundef %conv396) #4
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %err, label %lor.lhs.false399

lor.lhs.false399:                                 ; preds = %lor.lhs.false393
  %call400 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call390, %struct.evp_pkey_st** noundef nonnull %pkey1, i32 noundef 135, %struct.ossl_param_st* noundef %call363) #4
  %cmp401 = icmp ne i32 %call400, 0
  %conv402 = zext i1 %cmp401 to i32
  %call403 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2924, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.663, i64 0, i64 0), i32 noundef %conv402) #4
  %tobool404.not = icmp eq i32 %call403, 0
  br i1 %tobool404.not, label %err, label %lor.lhs.false405

lor.lhs.false405:                                 ; preds = %lor.lhs.false399
  %call406 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call390, %struct.evp_pkey_st** noundef nonnull %pkey2, i32 noundef 134, %struct.ossl_param_st* noundef %call385) #4
  %cmp407 = icmp ne i32 %call406, 0
  %conv408 = zext i1 %cmp407 to i32
  %call409 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2926, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.664, i64 0, i64 0), i32 noundef %conv408) #4
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %err, label %if.end412

if.end412:                                        ; preds = %lor.lhs.false405
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call281) #4
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !7
  %call413 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %39, %struct.engine_st* noundef null) #4
  %40 = bitcast %struct.evp_pkey_ctx_st* %call413 to i8*
  %call414 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2931, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.640, i64 0, i64 0), i8* noundef %40) #4
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %err, label %lor.lhs.false416

lor.lhs.false416:                                 ; preds = %if.end412
  %call417 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call413) #4
  %call418 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2932, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.641, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call417, i32 noundef 1) #4
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %err, label %lor.lhs.false420

lor.lhs.false420:                                 ; preds = %lor.lhs.false416
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !7
  %call421 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %call413, %struct.evp_pkey_st* noundef %41) #4
  %call422 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2933, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.642, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call421, i32 noundef 1) #4
  %tobool423.not = icmp eq i32 %call422, 0
  br i1 %tobool423.not, label %err, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %lor.lhs.false420
  %call425 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call413, i8* noundef null, i64* noundef nonnull %t) #4
  %call426 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2934, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.665, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call425, i32 noundef 1) #4
  %tobool427.not = icmp eq i32 %call426, 0
  br i1 %tobool427.not, label %err, label %lor.lhs.false428

lor.lhs.false428:                                 ; preds = %lor.lhs.false424
  %42 = load i64, i64* %t, align 8, !tbaa !3
  %conv429 = trunc i64 %42 to i32
  %call430 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2935, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.506, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.650, i64 0, i64 0), i32 noundef %add31, i32 noundef %conv429) #4
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %err, label %lor.lhs.false432

lor.lhs.false432:                                 ; preds = %lor.lhs.false428
  %43 = load i64, i64* %sslen, align 8, !tbaa !3
  %conv433 = trunc i64 %43 to i32
  %44 = load i64, i64* %t, align 8, !tbaa !3
  %conv434 = trunc i64 %44 to i32
  %call435 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2936, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.644, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.650, i64 0, i64 0), i32 noundef %conv433, i32 noundef %conv434) #4
  %tobool436.not = icmp eq i32 %call435, 0
  br i1 %tobool436.not, label %err, label %lor.lhs.false437

lor.lhs.false437:                                 ; preds = %lor.lhs.false432
  %call438 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call413, i8* noundef %call55, i64* noundef nonnull %t) #4
  %call439 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2937, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.666, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call438, i32 noundef 1) #4
  %tobool440.not = icmp eq i32 %call439, 0
  br i1 %tobool440.not, label %err, label %lor.lhs.false441

lor.lhs.false441:                                 ; preds = %lor.lhs.false437
  %45 = load i64, i64* %t, align 8, !tbaa !3
  %46 = load i64, i64* %sslen, align 8, !tbaa !3
  %call442 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2939, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.620, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.621, i64 0, i64 0), i8* noundef %call55, i64 noundef %45, i8* noundef %call165, i64 noundef %46) #4
  %tobool443.not = icmp ne i32 %call442, 0
  %spec.select = zext i1 %tobool443.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false441, %if.end412, %lor.lhs.false416, %lor.lhs.false420, %lor.lhs.false424, %lor.lhs.false428, %lor.lhs.false432, %lor.lhs.false437, %if.end389, %lor.lhs.false393, %lor.lhs.false399, %lor.lhs.false405, %if.end367, %lor.lhs.false371, %lor.lhs.false377, %lor.lhs.false384, %if.end339, %lor.lhs.false343, %lor.lhs.false349, %lor.lhs.false356, %lor.lhs.false362, %if.end335, %if.end305, %lor.lhs.false309, %lor.lhs.false313, %lor.lhs.false317, %lor.lhs.false321, %lor.lhs.false325, %lor.lhs.false330, %if.end280, %lor.lhs.false284, %lor.lhs.false288, %lor.lhs.false292, %lor.lhs.false296, %lor.lhs.false300, %if.end271, %lor.lhs.false275, %if.end262, %lor.lhs.false266, %if.end241, %lor.lhs.false245, %lor.lhs.false250, %lor.lhs.false255, %if.end218, %lor.lhs.false224, %lor.lhs.false229, %lor.lhs.false234, %if.end213, %if.end180, %lor.lhs.false184, %lor.lhs.false190, %lor.lhs.false196, %lor.lhs.false200, %lor.lhs.false206, %if.end108, %lor.lhs.false112, %lor.lhs.false116, %lor.lhs.false123, %lor.lhs.false129, %lor.lhs.false135, %lor.lhs.false140, %lor.lhs.false146, %lor.lhs.false152, %lor.lhs.false158, %lor.lhs.false163, %lor.lhs.false168, %lor.lhs.false174, %if.end86, %lor.lhs.false90, %lor.lhs.false97, %lor.lhs.false101, %if.else, %if.then75, %if.end29, %lor.lhs.false37, %lor.lhs.false41, %lor.lhs.false48, %lor.lhs.false53, %lor.lhs.false58, %lor.lhs.false64, %lor.lhs.false68, %if.end11, %lor.lhs.false, %lor.lhs.false20, %lor.lhs.false24, %if.end6
  %ret.0 = phi i32 [ 0, %lor.lhs.false437 ], [ 0, %lor.lhs.false432 ], [ 0, %lor.lhs.false428 ], [ 0, %lor.lhs.false424 ], [ 0, %lor.lhs.false420 ], [ 0, %lor.lhs.false416 ], [ 0, %if.end412 ], [ 0, %lor.lhs.false405 ], [ 0, %lor.lhs.false399 ], [ 0, %lor.lhs.false393 ], [ 0, %if.end389 ], [ 0, %lor.lhs.false384 ], [ 0, %lor.lhs.false377 ], [ 0, %lor.lhs.false371 ], [ 0, %if.end367 ], [ 0, %lor.lhs.false362 ], [ 0, %lor.lhs.false356 ], [ 0, %lor.lhs.false349 ], [ 0, %lor.lhs.false343 ], [ 0, %if.end339 ], [ 0, %if.end335 ], [ 0, %lor.lhs.false330 ], [ 0, %lor.lhs.false325 ], [ 0, %lor.lhs.false321 ], [ 0, %lor.lhs.false317 ], [ 0, %lor.lhs.false313 ], [ 0, %lor.lhs.false309 ], [ 0, %if.end305 ], [ 0, %lor.lhs.false300 ], [ 0, %lor.lhs.false296 ], [ 0, %lor.lhs.false292 ], [ 0, %lor.lhs.false288 ], [ 0, %lor.lhs.false284 ], [ 0, %if.end280 ], [ 0, %lor.lhs.false275 ], [ 0, %if.end271 ], [ 0, %lor.lhs.false266 ], [ 0, %if.end262 ], [ 0, %lor.lhs.false255 ], [ 0, %lor.lhs.false250 ], [ 0, %lor.lhs.false245 ], [ 0, %if.end241 ], [ 0, %lor.lhs.false234 ], [ 0, %lor.lhs.false229 ], [ 0, %lor.lhs.false224 ], [ 0, %if.end218 ], [ 0, %if.end213 ], [ 0, %lor.lhs.false206 ], [ 0, %lor.lhs.false200 ], [ 0, %lor.lhs.false196 ], [ 0, %lor.lhs.false190 ], [ 0, %lor.lhs.false184 ], [ 0, %if.end180 ], [ 0, %lor.lhs.false174 ], [ 0, %lor.lhs.false168 ], [ 0, %lor.lhs.false163 ], [ 0, %lor.lhs.false158 ], [ 0, %lor.lhs.false152 ], [ 0, %lor.lhs.false146 ], [ 0, %lor.lhs.false140 ], [ 0, %lor.lhs.false135 ], [ 0, %lor.lhs.false129 ], [ 0, %lor.lhs.false123 ], [ 0, %lor.lhs.false116 ], [ 0, %lor.lhs.false112 ], [ 0, %if.end108 ], [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false90 ], [ 0, %if.end86 ], [ 0, %if.then75 ], [ 0, %if.else ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false37 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ %spec.select, %lor.lhs.false441 ]
  %altgroup.1 = phi %struct.ec_group_st* [ %altgroup.0, %lor.lhs.false437 ], [ %altgroup.0, %lor.lhs.false432 ], [ %altgroup.0, %lor.lhs.false428 ], [ %altgroup.0, %lor.lhs.false424 ], [ %altgroup.0, %lor.lhs.false420 ], [ %altgroup.0, %lor.lhs.false416 ], [ %altgroup.0, %if.end412 ], [ %altgroup.0, %lor.lhs.false405 ], [ %altgroup.0, %lor.lhs.false399 ], [ %altgroup.0, %lor.lhs.false393 ], [ %altgroup.0, %if.end389 ], [ %altgroup.0, %lor.lhs.false384 ], [ %altgroup.0, %lor.lhs.false377 ], [ %altgroup.0, %lor.lhs.false371 ], [ %altgroup.0, %if.end367 ], [ %altgroup.0, %lor.lhs.false362 ], [ %altgroup.0, %lor.lhs.false356 ], [ %altgroup.0, %lor.lhs.false349 ], [ %altgroup.0, %lor.lhs.false343 ], [ %altgroup.0, %if.end339 ], [ %altgroup.0, %if.end335 ], [ %altgroup.0, %lor.lhs.false330 ], [ %altgroup.0, %lor.lhs.false325 ], [ %altgroup.0, %lor.lhs.false321 ], [ %altgroup.0, %lor.lhs.false317 ], [ %altgroup.0, %lor.lhs.false313 ], [ %altgroup.0, %lor.lhs.false309 ], [ %altgroup.0, %if.end305 ], [ %altgroup.0, %lor.lhs.false300 ], [ %altgroup.0, %lor.lhs.false296 ], [ %altgroup.0, %lor.lhs.false292 ], [ %altgroup.0, %lor.lhs.false288 ], [ %altgroup.0, %lor.lhs.false284 ], [ %altgroup.0, %if.end280 ], [ %altgroup.0, %lor.lhs.false275 ], [ %altgroup.0, %if.end271 ], [ %altgroup.0, %lor.lhs.false266 ], [ %altgroup.0, %if.end262 ], [ %altgroup.0, %lor.lhs.false255 ], [ %altgroup.0, %lor.lhs.false250 ], [ %altgroup.0, %lor.lhs.false245 ], [ %altgroup.0, %if.end241 ], [ %altgroup.0, %lor.lhs.false234 ], [ %altgroup.0, %lor.lhs.false229 ], [ %altgroup.0, %lor.lhs.false224 ], [ %altgroup.0, %if.end218 ], [ %altgroup.0, %if.end213 ], [ %altgroup.0, %lor.lhs.false206 ], [ %altgroup.0, %lor.lhs.false200 ], [ %altgroup.0, %lor.lhs.false196 ], [ %altgroup.0, %lor.lhs.false190 ], [ %altgroup.0, %lor.lhs.false184 ], [ %altgroup.0, %if.end180 ], [ %altgroup.0, %lor.lhs.false174 ], [ %altgroup.0, %lor.lhs.false168 ], [ %altgroup.0, %lor.lhs.false163 ], [ %altgroup.0, %lor.lhs.false158 ], [ %altgroup.0, %lor.lhs.false152 ], [ %altgroup.0, %lor.lhs.false146 ], [ %altgroup.0, %lor.lhs.false140 ], [ %altgroup.0, %lor.lhs.false135 ], [ %altgroup.0, %lor.lhs.false129 ], [ %altgroup.0, %lor.lhs.false123 ], [ %altgroup.0, %lor.lhs.false116 ], [ %altgroup.0, %lor.lhs.false112 ], [ %altgroup.0, %if.end108 ], [ %altgroup.0, %lor.lhs.false101 ], [ %altgroup.0, %lor.lhs.false97 ], [ %altgroup.0, %lor.lhs.false90 ], [ %altgroup.0, %if.end86 ], [ %call76, %if.then75 ], [ %call81, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %altgroup.0, %lor.lhs.false441 ]
  %G2.0 = phi %struct.ec_point_st* [ %call87, %lor.lhs.false437 ], [ %call87, %lor.lhs.false432 ], [ %call87, %lor.lhs.false428 ], [ %call87, %lor.lhs.false424 ], [ %call87, %lor.lhs.false420 ], [ %call87, %lor.lhs.false416 ], [ %call87, %if.end412 ], [ %call87, %lor.lhs.false405 ], [ %call87, %lor.lhs.false399 ], [ %call87, %lor.lhs.false393 ], [ %call87, %if.end389 ], [ %call87, %lor.lhs.false384 ], [ %call87, %lor.lhs.false377 ], [ %call87, %lor.lhs.false371 ], [ %call87, %if.end367 ], [ %call87, %lor.lhs.false362 ], [ %call87, %lor.lhs.false356 ], [ %call87, %lor.lhs.false349 ], [ %call87, %lor.lhs.false343 ], [ %call87, %if.end339 ], [ %call87, %if.end335 ], [ %call87, %lor.lhs.false330 ], [ %call87, %lor.lhs.false325 ], [ %call87, %lor.lhs.false321 ], [ %call87, %lor.lhs.false317 ], [ %call87, %lor.lhs.false313 ], [ %call87, %lor.lhs.false309 ], [ %call87, %if.end305 ], [ %call87, %lor.lhs.false300 ], [ %call87, %lor.lhs.false296 ], [ %call87, %lor.lhs.false292 ], [ %call87, %lor.lhs.false288 ], [ %call87, %lor.lhs.false284 ], [ %call87, %if.end280 ], [ %call87, %lor.lhs.false275 ], [ %call87, %if.end271 ], [ %call87, %lor.lhs.false266 ], [ %call87, %if.end262 ], [ %call87, %lor.lhs.false255 ], [ %call87, %lor.lhs.false250 ], [ %call87, %lor.lhs.false245 ], [ %call87, %if.end241 ], [ %call87, %lor.lhs.false234 ], [ %call87, %lor.lhs.false229 ], [ %call87, %lor.lhs.false224 ], [ %call87, %if.end218 ], [ %call87, %if.end213 ], [ %call87, %lor.lhs.false206 ], [ %call87, %lor.lhs.false200 ], [ %call87, %lor.lhs.false196 ], [ %call87, %lor.lhs.false190 ], [ %call87, %lor.lhs.false184 ], [ %call87, %if.end180 ], [ %call87, %lor.lhs.false174 ], [ %call87, %lor.lhs.false168 ], [ %call87, %lor.lhs.false163 ], [ %call87, %lor.lhs.false158 ], [ %call87, %lor.lhs.false152 ], [ %call87, %lor.lhs.false146 ], [ %call87, %lor.lhs.false140 ], [ %call87, %lor.lhs.false135 ], [ %call87, %lor.lhs.false129 ], [ %call87, %lor.lhs.false123 ], [ %call87, %lor.lhs.false116 ], [ %call87, %lor.lhs.false112 ], [ %call87, %if.end108 ], [ %call87, %lor.lhs.false101 ], [ %call87, %lor.lhs.false97 ], [ %call87, %lor.lhs.false90 ], [ %call87, %if.end86 ], [ %call38, %if.then75 ], [ %call38, %if.else ], [ %call38, %lor.lhs.false68 ], [ %call38, %lor.lhs.false64 ], [ %call38, %lor.lhs.false58 ], [ %call38, %lor.lhs.false53 ], [ %call38, %lor.lhs.false48 ], [ %call38, %lor.lhs.false41 ], [ %call38, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call87, %lor.lhs.false441 ]
  %Q1.0 = phi %struct.ec_point_st* [ %call109, %lor.lhs.false437 ], [ %call109, %lor.lhs.false432 ], [ %call109, %lor.lhs.false428 ], [ %call109, %lor.lhs.false424 ], [ %call109, %lor.lhs.false420 ], [ %call109, %lor.lhs.false416 ], [ %call109, %if.end412 ], [ %call109, %lor.lhs.false405 ], [ %call109, %lor.lhs.false399 ], [ %call109, %lor.lhs.false393 ], [ %call109, %if.end389 ], [ %call109, %lor.lhs.false384 ], [ %call109, %lor.lhs.false377 ], [ %call109, %lor.lhs.false371 ], [ %call109, %if.end367 ], [ %call109, %lor.lhs.false362 ], [ %call109, %lor.lhs.false356 ], [ %call109, %lor.lhs.false349 ], [ %call109, %lor.lhs.false343 ], [ %call109, %if.end339 ], [ %call109, %if.end335 ], [ %call109, %lor.lhs.false330 ], [ %call109, %lor.lhs.false325 ], [ %call109, %lor.lhs.false321 ], [ %call109, %lor.lhs.false317 ], [ %call109, %lor.lhs.false313 ], [ %call109, %lor.lhs.false309 ], [ %call109, %if.end305 ], [ %call109, %lor.lhs.false300 ], [ %call109, %lor.lhs.false296 ], [ %call109, %lor.lhs.false292 ], [ %call109, %lor.lhs.false288 ], [ %call109, %lor.lhs.false284 ], [ %call109, %if.end280 ], [ %call109, %lor.lhs.false275 ], [ %call109, %if.end271 ], [ %call109, %lor.lhs.false266 ], [ %call109, %if.end262 ], [ %call109, %lor.lhs.false255 ], [ %call109, %lor.lhs.false250 ], [ %call109, %lor.lhs.false245 ], [ %call109, %if.end241 ], [ %call109, %lor.lhs.false234 ], [ %call109, %lor.lhs.false229 ], [ %call109, %lor.lhs.false224 ], [ %call109, %if.end218 ], [ %call109, %if.end213 ], [ %call109, %lor.lhs.false206 ], [ %call109, %lor.lhs.false200 ], [ %call109, %lor.lhs.false196 ], [ %call109, %lor.lhs.false190 ], [ %call109, %lor.lhs.false184 ], [ %call109, %if.end180 ], [ %call109, %lor.lhs.false174 ], [ %call109, %lor.lhs.false168 ], [ %call109, %lor.lhs.false163 ], [ %call109, %lor.lhs.false158 ], [ %call109, %lor.lhs.false152 ], [ %call109, %lor.lhs.false146 ], [ %call109, %lor.lhs.false140 ], [ %call109, %lor.lhs.false135 ], [ %call109, %lor.lhs.false129 ], [ %call109, %lor.lhs.false123 ], [ %call109, %lor.lhs.false116 ], [ %call109, %lor.lhs.false112 ], [ %call109, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call109, %lor.lhs.false441 ]
  %Q2.0 = phi %struct.ec_point_st* [ %call113, %lor.lhs.false437 ], [ %call113, %lor.lhs.false432 ], [ %call113, %lor.lhs.false428 ], [ %call113, %lor.lhs.false424 ], [ %call113, %lor.lhs.false420 ], [ %call113, %lor.lhs.false416 ], [ %call113, %if.end412 ], [ %call113, %lor.lhs.false405 ], [ %call113, %lor.lhs.false399 ], [ %call113, %lor.lhs.false393 ], [ %call113, %if.end389 ], [ %call113, %lor.lhs.false384 ], [ %call113, %lor.lhs.false377 ], [ %call113, %lor.lhs.false371 ], [ %call113, %if.end367 ], [ %call113, %lor.lhs.false362 ], [ %call113, %lor.lhs.false356 ], [ %call113, %lor.lhs.false349 ], [ %call113, %lor.lhs.false343 ], [ %call113, %if.end339 ], [ %call113, %if.end335 ], [ %call113, %lor.lhs.false330 ], [ %call113, %lor.lhs.false325 ], [ %call113, %lor.lhs.false321 ], [ %call113, %lor.lhs.false317 ], [ %call113, %lor.lhs.false313 ], [ %call113, %lor.lhs.false309 ], [ %call113, %if.end305 ], [ %call113, %lor.lhs.false300 ], [ %call113, %lor.lhs.false296 ], [ %call113, %lor.lhs.false292 ], [ %call113, %lor.lhs.false288 ], [ %call113, %lor.lhs.false284 ], [ %call113, %if.end280 ], [ %call113, %lor.lhs.false275 ], [ %call113, %if.end271 ], [ %call113, %lor.lhs.false266 ], [ %call113, %if.end262 ], [ %call113, %lor.lhs.false255 ], [ %call113, %lor.lhs.false250 ], [ %call113, %lor.lhs.false245 ], [ %call113, %if.end241 ], [ %call113, %lor.lhs.false234 ], [ %call113, %lor.lhs.false229 ], [ %call113, %lor.lhs.false224 ], [ %call113, %if.end218 ], [ %call113, %if.end213 ], [ %call113, %lor.lhs.false206 ], [ %call113, %lor.lhs.false200 ], [ %call113, %lor.lhs.false196 ], [ %call113, %lor.lhs.false190 ], [ %call113, %lor.lhs.false184 ], [ %call113, %if.end180 ], [ %call113, %lor.lhs.false174 ], [ %call113, %lor.lhs.false168 ], [ %call113, %lor.lhs.false163 ], [ %call113, %lor.lhs.false158 ], [ %call113, %lor.lhs.false152 ], [ %call113, %lor.lhs.false146 ], [ %call113, %lor.lhs.false140 ], [ %call113, %lor.lhs.false135 ], [ %call113, %lor.lhs.false129 ], [ %call113, %lor.lhs.false123 ], [ %call113, %lor.lhs.false116 ], [ %call113, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call113, %lor.lhs.false441 ]
  %buf1.0 = phi i8* [ %call55, %lor.lhs.false437 ], [ %call55, %lor.lhs.false432 ], [ %call55, %lor.lhs.false428 ], [ %call55, %lor.lhs.false424 ], [ %call55, %lor.lhs.false420 ], [ %call55, %lor.lhs.false416 ], [ %call55, %if.end412 ], [ %call55, %lor.lhs.false405 ], [ %call55, %lor.lhs.false399 ], [ %call55, %lor.lhs.false393 ], [ %call55, %if.end389 ], [ %call55, %lor.lhs.false384 ], [ %call55, %lor.lhs.false377 ], [ %call55, %lor.lhs.false371 ], [ %call55, %if.end367 ], [ %call55, %lor.lhs.false362 ], [ %call55, %lor.lhs.false356 ], [ %call55, %lor.lhs.false349 ], [ %call55, %lor.lhs.false343 ], [ %call55, %if.end339 ], [ %call55, %if.end335 ], [ %call55, %lor.lhs.false330 ], [ %call55, %lor.lhs.false325 ], [ %call55, %lor.lhs.false321 ], [ %call55, %lor.lhs.false317 ], [ %call55, %lor.lhs.false313 ], [ %call55, %lor.lhs.false309 ], [ %call55, %if.end305 ], [ %call55, %lor.lhs.false300 ], [ %call55, %lor.lhs.false296 ], [ %call55, %lor.lhs.false292 ], [ %call55, %lor.lhs.false288 ], [ %call55, %lor.lhs.false284 ], [ %call55, %if.end280 ], [ %call55, %lor.lhs.false275 ], [ %call55, %if.end271 ], [ %call55, %lor.lhs.false266 ], [ %call55, %if.end262 ], [ %call55, %lor.lhs.false255 ], [ %call55, %lor.lhs.false250 ], [ %call55, %lor.lhs.false245 ], [ %call55, %if.end241 ], [ %call55, %lor.lhs.false234 ], [ %call55, %lor.lhs.false229 ], [ %call55, %lor.lhs.false224 ], [ %call55, %if.end218 ], [ %call55, %if.end213 ], [ %call55, %lor.lhs.false206 ], [ %call55, %lor.lhs.false200 ], [ %call55, %lor.lhs.false196 ], [ %call55, %lor.lhs.false190 ], [ %call55, %lor.lhs.false184 ], [ %call55, %if.end180 ], [ %call55, %lor.lhs.false174 ], [ %call55, %lor.lhs.false168 ], [ %call55, %lor.lhs.false163 ], [ %call55, %lor.lhs.false158 ], [ %call55, %lor.lhs.false152 ], [ %call55, %lor.lhs.false146 ], [ %call55, %lor.lhs.false140 ], [ %call55, %lor.lhs.false135 ], [ %call55, %lor.lhs.false129 ], [ %call55, %lor.lhs.false123 ], [ %call55, %lor.lhs.false116 ], [ %call55, %lor.lhs.false112 ], [ %call55, %if.end108 ], [ %call55, %lor.lhs.false101 ], [ %call55, %lor.lhs.false97 ], [ %call55, %lor.lhs.false90 ], [ %call55, %if.end86 ], [ %call55, %if.then75 ], [ %call55, %if.else ], [ %call55, %lor.lhs.false68 ], [ %call55, %lor.lhs.false64 ], [ %call55, %lor.lhs.false58 ], [ %call55, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call55, %lor.lhs.false441 ]
  %buf2.0 = phi i8* [ %call165, %lor.lhs.false437 ], [ %call165, %lor.lhs.false432 ], [ %call165, %lor.lhs.false428 ], [ %call165, %lor.lhs.false424 ], [ %call165, %lor.lhs.false420 ], [ %call165, %lor.lhs.false416 ], [ %call165, %if.end412 ], [ %call165, %lor.lhs.false405 ], [ %call165, %lor.lhs.false399 ], [ %call165, %lor.lhs.false393 ], [ %call165, %if.end389 ], [ %call165, %lor.lhs.false384 ], [ %call165, %lor.lhs.false377 ], [ %call165, %lor.lhs.false371 ], [ %call165, %if.end367 ], [ %call165, %lor.lhs.false362 ], [ %call165, %lor.lhs.false356 ], [ %call165, %lor.lhs.false349 ], [ %call165, %lor.lhs.false343 ], [ %call165, %if.end339 ], [ %call165, %if.end335 ], [ %call165, %lor.lhs.false330 ], [ %call165, %lor.lhs.false325 ], [ %call165, %lor.lhs.false321 ], [ %call165, %lor.lhs.false317 ], [ %call165, %lor.lhs.false313 ], [ %call165, %lor.lhs.false309 ], [ %call165, %if.end305 ], [ %call165, %lor.lhs.false300 ], [ %call165, %lor.lhs.false296 ], [ %call165, %lor.lhs.false292 ], [ %call165, %lor.lhs.false288 ], [ %call165, %lor.lhs.false284 ], [ %call165, %if.end280 ], [ %call165, %lor.lhs.false275 ], [ %call165, %if.end271 ], [ %call165, %lor.lhs.false266 ], [ %call165, %if.end262 ], [ %call165, %lor.lhs.false255 ], [ %call165, %lor.lhs.false250 ], [ %call165, %lor.lhs.false245 ], [ %call165, %if.end241 ], [ %call165, %lor.lhs.false234 ], [ %call165, %lor.lhs.false229 ], [ %call165, %lor.lhs.false224 ], [ %call165, %if.end218 ], [ %call165, %if.end213 ], [ %call165, %lor.lhs.false206 ], [ %call165, %lor.lhs.false200 ], [ %call165, %lor.lhs.false196 ], [ %call165, %lor.lhs.false190 ], [ %call165, %lor.lhs.false184 ], [ %call165, %if.end180 ], [ %call165, %lor.lhs.false174 ], [ %call165, %lor.lhs.false168 ], [ %call165, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call165, %lor.lhs.false441 ]
  %eckey1.0 = phi %struct.ec_key_st* [ null, %lor.lhs.false437 ], [ null, %lor.lhs.false432 ], [ null, %lor.lhs.false428 ], [ null, %lor.lhs.false424 ], [ null, %lor.lhs.false420 ], [ null, %lor.lhs.false416 ], [ null, %if.end412 ], [ null, %lor.lhs.false405 ], [ null, %lor.lhs.false399 ], [ null, %lor.lhs.false393 ], [ null, %if.end389 ], [ null, %lor.lhs.false384 ], [ null, %lor.lhs.false377 ], [ null, %lor.lhs.false371 ], [ null, %if.end367 ], [ null, %lor.lhs.false362 ], [ null, %lor.lhs.false356 ], [ null, %lor.lhs.false349 ], [ null, %lor.lhs.false343 ], [ null, %if.end339 ], [ null, %if.end335 ], [ null, %lor.lhs.false330 ], [ null, %lor.lhs.false325 ], [ null, %lor.lhs.false321 ], [ null, %lor.lhs.false317 ], [ null, %lor.lhs.false313 ], [ null, %lor.lhs.false309 ], [ null, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ %call181, %lor.lhs.false266 ], [ %call181, %if.end262 ], [ %call181, %lor.lhs.false255 ], [ %call181, %lor.lhs.false250 ], [ %call181, %lor.lhs.false245 ], [ %call181, %if.end241 ], [ %call181, %lor.lhs.false234 ], [ %call181, %lor.lhs.false229 ], [ %call181, %lor.lhs.false224 ], [ %call181, %if.end218 ], [ %call181, %if.end213 ], [ %call181, %lor.lhs.false206 ], [ %call181, %lor.lhs.false200 ], [ %call181, %lor.lhs.false196 ], [ %call181, %lor.lhs.false190 ], [ %call181, %lor.lhs.false184 ], [ %call181, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ null, %lor.lhs.false441 ]
  %eckey2.0 = phi %struct.ec_key_st* [ null, %lor.lhs.false437 ], [ null, %lor.lhs.false432 ], [ null, %lor.lhs.false428 ], [ null, %lor.lhs.false424 ], [ null, %lor.lhs.false420 ], [ null, %lor.lhs.false416 ], [ null, %if.end412 ], [ null, %lor.lhs.false405 ], [ null, %lor.lhs.false399 ], [ null, %lor.lhs.false393 ], [ null, %if.end389 ], [ null, %lor.lhs.false384 ], [ null, %lor.lhs.false377 ], [ null, %lor.lhs.false371 ], [ null, %if.end367 ], [ null, %lor.lhs.false362 ], [ null, %lor.lhs.false356 ], [ null, %lor.lhs.false349 ], [ null, %lor.lhs.false343 ], [ null, %if.end339 ], [ null, %if.end335 ], [ null, %lor.lhs.false330 ], [ null, %lor.lhs.false325 ], [ null, %lor.lhs.false321 ], [ null, %lor.lhs.false317 ], [ null, %lor.lhs.false313 ], [ null, %lor.lhs.false309 ], [ null, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ %call197, %lor.lhs.false275 ], [ %call197, %if.end271 ], [ %call197, %lor.lhs.false266 ], [ %call197, %if.end262 ], [ %call197, %lor.lhs.false255 ], [ %call197, %lor.lhs.false250 ], [ %call197, %lor.lhs.false245 ], [ %call197, %if.end241 ], [ %call197, %lor.lhs.false234 ], [ %call197, %lor.lhs.false229 ], [ %call197, %lor.lhs.false224 ], [ %call197, %if.end218 ], [ %call197, %if.end213 ], [ %call197, %lor.lhs.false206 ], [ %call197, %lor.lhs.false200 ], [ %call197, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ null, %lor.lhs.false441 ]
  %pctx1.0 = phi %struct.evp_pkey_ctx_st* [ %call413, %lor.lhs.false437 ], [ %call413, %lor.lhs.false432 ], [ %call413, %lor.lhs.false428 ], [ %call413, %lor.lhs.false424 ], [ %call413, %lor.lhs.false420 ], [ %call413, %lor.lhs.false416 ], [ %call413, %if.end412 ], [ %call281, %lor.lhs.false405 ], [ %call281, %lor.lhs.false399 ], [ %call281, %lor.lhs.false393 ], [ %call281, %if.end389 ], [ %call281, %lor.lhs.false384 ], [ %call281, %lor.lhs.false377 ], [ %call281, %lor.lhs.false371 ], [ %call281, %if.end367 ], [ %call281, %lor.lhs.false362 ], [ %call281, %lor.lhs.false356 ], [ %call281, %lor.lhs.false349 ], [ %call281, %lor.lhs.false343 ], [ %call281, %if.end339 ], [ %call281, %if.end335 ], [ %call281, %lor.lhs.false330 ], [ %call281, %lor.lhs.false325 ], [ %call281, %lor.lhs.false321 ], [ %call281, %lor.lhs.false317 ], [ %call281, %lor.lhs.false313 ], [ %call281, %lor.lhs.false309 ], [ %call281, %if.end305 ], [ %call281, %lor.lhs.false300 ], [ %call281, %lor.lhs.false296 ], [ %call281, %lor.lhs.false292 ], [ %call281, %lor.lhs.false288 ], [ %call281, %lor.lhs.false284 ], [ %call281, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ null, %lor.lhs.false266 ], [ null, %if.end262 ], [ null, %lor.lhs.false255 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call413, %lor.lhs.false441 ]
  %pctx2.0 = phi %struct.evp_pkey_ctx_st* [ %call390, %lor.lhs.false437 ], [ %call390, %lor.lhs.false432 ], [ %call390, %lor.lhs.false428 ], [ %call390, %lor.lhs.false424 ], [ %call390, %lor.lhs.false420 ], [ %call390, %lor.lhs.false416 ], [ %call390, %if.end412 ], [ %call390, %lor.lhs.false405 ], [ %call390, %lor.lhs.false399 ], [ %call390, %lor.lhs.false393 ], [ %call390, %if.end389 ], [ %call306, %lor.lhs.false384 ], [ %call306, %lor.lhs.false377 ], [ %call306, %lor.lhs.false371 ], [ %call306, %if.end367 ], [ %call306, %lor.lhs.false362 ], [ %call306, %lor.lhs.false356 ], [ %call306, %lor.lhs.false349 ], [ %call306, %lor.lhs.false343 ], [ %call306, %if.end339 ], [ %call306, %if.end335 ], [ %call306, %lor.lhs.false330 ], [ %call306, %lor.lhs.false325 ], [ %call306, %lor.lhs.false321 ], [ %call306, %lor.lhs.false317 ], [ %call306, %lor.lhs.false313 ], [ %call306, %lor.lhs.false309 ], [ %call306, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ null, %lor.lhs.false266 ], [ null, %if.end262 ], [ null, %lor.lhs.false255 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call390, %lor.lhs.false441 ]
  %pub1.0 = phi i8* [ %call231, %lor.lhs.false437 ], [ %call231, %lor.lhs.false432 ], [ %call231, %lor.lhs.false428 ], [ %call231, %lor.lhs.false424 ], [ %call231, %lor.lhs.false420 ], [ %call231, %lor.lhs.false416 ], [ %call231, %if.end412 ], [ %call231, %lor.lhs.false405 ], [ %call231, %lor.lhs.false399 ], [ %call231, %lor.lhs.false393 ], [ %call231, %if.end389 ], [ %call231, %lor.lhs.false384 ], [ %call231, %lor.lhs.false377 ], [ %call231, %lor.lhs.false371 ], [ %call231, %if.end367 ], [ %call231, %lor.lhs.false362 ], [ %call231, %lor.lhs.false356 ], [ %call231, %lor.lhs.false349 ], [ %call231, %lor.lhs.false343 ], [ %call231, %if.end339 ], [ %call231, %if.end335 ], [ %call231, %lor.lhs.false330 ], [ %call231, %lor.lhs.false325 ], [ %call231, %lor.lhs.false321 ], [ %call231, %lor.lhs.false317 ], [ %call231, %lor.lhs.false313 ], [ %call231, %lor.lhs.false309 ], [ %call231, %if.end305 ], [ %call231, %lor.lhs.false300 ], [ %call231, %lor.lhs.false296 ], [ %call231, %lor.lhs.false292 ], [ %call231, %lor.lhs.false288 ], [ %call231, %lor.lhs.false284 ], [ %call231, %if.end280 ], [ %call231, %lor.lhs.false275 ], [ %call231, %if.end271 ], [ %call231, %lor.lhs.false266 ], [ %call231, %if.end262 ], [ %call231, %lor.lhs.false255 ], [ %call231, %lor.lhs.false250 ], [ %call231, %lor.lhs.false245 ], [ %call231, %if.end241 ], [ %call231, %lor.lhs.false234 ], [ %call231, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call231, %lor.lhs.false441 ]
  %pub2.0 = phi i8* [ %call252, %lor.lhs.false437 ], [ %call252, %lor.lhs.false432 ], [ %call252, %lor.lhs.false428 ], [ %call252, %lor.lhs.false424 ], [ %call252, %lor.lhs.false420 ], [ %call252, %lor.lhs.false416 ], [ %call252, %if.end412 ], [ %call252, %lor.lhs.false405 ], [ %call252, %lor.lhs.false399 ], [ %call252, %lor.lhs.false393 ], [ %call252, %if.end389 ], [ %call252, %lor.lhs.false384 ], [ %call252, %lor.lhs.false377 ], [ %call252, %lor.lhs.false371 ], [ %call252, %if.end367 ], [ %call252, %lor.lhs.false362 ], [ %call252, %lor.lhs.false356 ], [ %call252, %lor.lhs.false349 ], [ %call252, %lor.lhs.false343 ], [ %call252, %if.end339 ], [ %call252, %if.end335 ], [ %call252, %lor.lhs.false330 ], [ %call252, %lor.lhs.false325 ], [ %call252, %lor.lhs.false321 ], [ %call252, %lor.lhs.false317 ], [ %call252, %lor.lhs.false313 ], [ %call252, %lor.lhs.false309 ], [ %call252, %if.end305 ], [ %call252, %lor.lhs.false300 ], [ %call252, %lor.lhs.false296 ], [ %call252, %lor.lhs.false292 ], [ %call252, %lor.lhs.false288 ], [ %call252, %lor.lhs.false284 ], [ %call252, %if.end280 ], [ %call252, %lor.lhs.false275 ], [ %call252, %if.end271 ], [ %call252, %lor.lhs.false266 ], [ %call252, %if.end262 ], [ %call252, %lor.lhs.false255 ], [ %call252, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call252, %lor.lhs.false441 ]
  %param_bld.0 = phi %struct.ossl_param_bld_st* [ %call368, %lor.lhs.false437 ], [ %call368, %lor.lhs.false432 ], [ %call368, %lor.lhs.false428 ], [ %call368, %lor.lhs.false424 ], [ %call368, %lor.lhs.false420 ], [ %call368, %lor.lhs.false416 ], [ %call368, %if.end412 ], [ %call368, %lor.lhs.false405 ], [ %call368, %lor.lhs.false399 ], [ %call368, %lor.lhs.false393 ], [ %call368, %if.end389 ], [ %call368, %lor.lhs.false384 ], [ %call368, %lor.lhs.false377 ], [ %call368, %lor.lhs.false371 ], [ %call368, %if.end367 ], [ %call340, %lor.lhs.false362 ], [ %call340, %lor.lhs.false356 ], [ %call340, %lor.lhs.false349 ], [ %call340, %lor.lhs.false343 ], [ %call340, %if.end339 ], [ null, %if.end335 ], [ null, %lor.lhs.false330 ], [ null, %lor.lhs.false325 ], [ null, %lor.lhs.false321 ], [ null, %lor.lhs.false317 ], [ null, %lor.lhs.false313 ], [ null, %lor.lhs.false309 ], [ null, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ null, %lor.lhs.false266 ], [ null, %if.end262 ], [ null, %lor.lhs.false255 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call368, %lor.lhs.false441 ]
  %params1.0 = phi %struct.ossl_param_st* [ %call363, %lor.lhs.false437 ], [ %call363, %lor.lhs.false432 ], [ %call363, %lor.lhs.false428 ], [ %call363, %lor.lhs.false424 ], [ %call363, %lor.lhs.false420 ], [ %call363, %lor.lhs.false416 ], [ %call363, %if.end412 ], [ %call363, %lor.lhs.false405 ], [ %call363, %lor.lhs.false399 ], [ %call363, %lor.lhs.false393 ], [ %call363, %if.end389 ], [ %call363, %lor.lhs.false384 ], [ %call363, %lor.lhs.false377 ], [ %call363, %lor.lhs.false371 ], [ %call363, %if.end367 ], [ %call363, %lor.lhs.false362 ], [ null, %lor.lhs.false356 ], [ null, %lor.lhs.false349 ], [ null, %lor.lhs.false343 ], [ null, %if.end339 ], [ null, %if.end335 ], [ null, %lor.lhs.false330 ], [ null, %lor.lhs.false325 ], [ null, %lor.lhs.false321 ], [ null, %lor.lhs.false317 ], [ null, %lor.lhs.false313 ], [ null, %lor.lhs.false309 ], [ null, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ null, %lor.lhs.false266 ], [ null, %if.end262 ], [ null, %lor.lhs.false255 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call363, %lor.lhs.false441 ]
  %params2.0 = phi %struct.ossl_param_st* [ %call385, %lor.lhs.false437 ], [ %call385, %lor.lhs.false432 ], [ %call385, %lor.lhs.false428 ], [ %call385, %lor.lhs.false424 ], [ %call385, %lor.lhs.false420 ], [ %call385, %lor.lhs.false416 ], [ %call385, %if.end412 ], [ %call385, %lor.lhs.false405 ], [ %call385, %lor.lhs.false399 ], [ %call385, %lor.lhs.false393 ], [ %call385, %if.end389 ], [ %call385, %lor.lhs.false384 ], [ null, %lor.lhs.false377 ], [ null, %lor.lhs.false371 ], [ null, %if.end367 ], [ null, %lor.lhs.false362 ], [ null, %lor.lhs.false356 ], [ null, %lor.lhs.false349 ], [ null, %lor.lhs.false343 ], [ null, %if.end339 ], [ null, %if.end335 ], [ null, %lor.lhs.false330 ], [ null, %lor.lhs.false325 ], [ null, %lor.lhs.false321 ], [ null, %lor.lhs.false317 ], [ null, %lor.lhs.false313 ], [ null, %lor.lhs.false309 ], [ null, %if.end305 ], [ null, %lor.lhs.false300 ], [ null, %lor.lhs.false296 ], [ null, %lor.lhs.false292 ], [ null, %lor.lhs.false288 ], [ null, %lor.lhs.false284 ], [ null, %if.end280 ], [ null, %lor.lhs.false275 ], [ null, %if.end271 ], [ null, %lor.lhs.false266 ], [ null, %if.end262 ], [ null, %lor.lhs.false255 ], [ null, %lor.lhs.false250 ], [ null, %lor.lhs.false245 ], [ null, %if.end241 ], [ null, %lor.lhs.false234 ], [ null, %lor.lhs.false229 ], [ null, %lor.lhs.false224 ], [ null, %if.end218 ], [ null, %if.end213 ], [ null, %lor.lhs.false206 ], [ null, %lor.lhs.false200 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false190 ], [ null, %lor.lhs.false184 ], [ null, %if.end180 ], [ null, %lor.lhs.false174 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false158 ], [ null, %lor.lhs.false152 ], [ null, %lor.lhs.false146 ], [ null, %lor.lhs.false140 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false129 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %if.end108 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false90 ], [ null, %if.end86 ], [ null, %if.then75 ], [ null, %if.else ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false53 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false37 ], [ null, %if.end29 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ %call385, %lor.lhs.false441 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %call3) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %call3) #4
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %param_bld.0) #4
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params1.0) #4
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params2.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q1.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q2.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %G2.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %call7) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %altgroup.1) #4
  call void @CRYPTO_free(i8* noundef %buf1.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2955) #4
  call void @CRYPTO_free(i8* noundef %buf2.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2956) #4
  call void @CRYPTO_free(i8* noundef %pub1.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2957) #4
  call void @CRYPTO_free(i8* noundef %pub2.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2958) #4
  call void @EC_KEY_free(%struct.ec_key_st* noundef %eckey1.0) #4
  call void @EC_KEY_free(%struct.ec_key_st* noundef %eckey2.0) #4
  %47 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %47) #4
  %48 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %48) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx1.0) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx2.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %ret.0, %err ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** bitcast (%struct.EC_builtin_curve** @curves to i8**), align 8, !tbaa !7
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 3001) #4
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef, %struct.ec_parameters_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_output_bignum(i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_set_compressed_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare dso_local i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @test_output_memory(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @group_order_tests(%struct.ec_group_st* noundef %group) unnamed_addr #0 {
entry:
  %scalars = alloca [6 x %struct.bignum_st*], align 16
  %points = alloca [6 x %struct.ec_point_st*], align 16
  %call = tail call %struct.bignum_st* @BN_new() #4
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end273, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #4
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.224, i64 0, i64 0), i8* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end273, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #4
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.225, i64 0, i64 0), i8* noundef %2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end273, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %3 = bitcast %struct.bignum_ctx* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* noundef %3) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end273, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #4
  %4 = bitcast %struct.ec_point_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.226, i64 0, i64 0), i8* noundef %4) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end273, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %5 = bitcast %struct.ec_point_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0), i8* noundef %5) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end273, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %6 = bitcast %struct.ec_point_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8* noundef %6) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end273, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %7 = bitcast %struct.ec_point_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i8* noundef %7) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end273, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %8 = bitcast %struct.ec_point_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.227, i64 0, i64 0), i8* noundef %8) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end273, label %if.end

if.end:                                           ; preds = %lor.lhs.false29
  %call33 = tail call i32 @EC_GROUP_get_order(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call6, %struct.bignum_ctx* noundef %call10) #4
  %cmp = icmp ne i32 %call33, 0
  %conv = zext i1 %cmp to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.228, i64 0, i64 0), i32 noundef %conv) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end273, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end
  %call37 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef %call6, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call10) #4
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.229, i64 0, i64 0), i32 noundef %conv39) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end273, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %call43 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22) #4
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv45) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end273, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %call49 = tail call i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %call10) #4
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.230, i64 0, i64 0), i32 noundef %conv51) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end273, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef %call6, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call10) #4
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.229, i64 0, i64 0), i32 noundef %conv57) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end273, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %call61 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22) #4
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv63) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end273, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false60
  %call67 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %call18, %struct.ec_point_st* noundef %call14) #4
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.231, i64 0, i64 0), i32 noundef %conv69) #4
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end273, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %call73 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #4
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i64 0, i64 0), i32 noundef %conv75) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end273, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false72
  %call79 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef %call, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call10) #4
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.233, i64 0, i64 0), i32 noundef %conv81) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end273, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %call85 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %call86 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.234, i64 0, i64 0), i32 noundef 0, i32 noundef %call85) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end273, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %call89 = tail call i32 @BN_sub(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call) #4
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.235, i64 0, i64 0), i32 noundef %conv91) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end273, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false88
  %call95 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef %call, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call10) #4
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.233, i64 0, i64 0), i32 noundef %conv97) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end273, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %call101 = tail call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_ctx* noundef %call10) #4
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv103) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end273, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %call107 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %call108 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.234, i64 0, i64 0), i32 noundef 0, i32 noundef %call107) #4
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end273, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false106
  %9 = bitcast [6 x %struct.bignum_st*]* %scalars to i8*
  %10 = bitcast [6 x %struct.ec_point_st*]* %points to i8*
  %arrayidx = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 1
  %arrayidx215 = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 0
  %arrayidx216 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 1
  %arrayidx217 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 0
  %arrayidx241 = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 2
  %arrayidx242 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 2
  %arrayidx243 = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 3
  %arrayidx244 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 3
  %arrayidx245 = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 4
  %arrayidx246 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 4
  %arrayidx247 = getelementptr inbounds [6 x %struct.bignum_st*], [6 x %struct.bignum_st*]* %scalars, i64 0, i64 5
  %arrayidx248 = getelementptr inbounds [6 x %struct.ec_point_st*], [6 x %struct.ec_point_st*]* %points, i64 0, i64 5
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #5
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #5
  %call115 = call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef %indvars.iv) #4
  %cmp116 = icmp ne i32 %call115, 0
  %conv117 = zext i1 %cmp116 to i32
  %call118 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.236, i64 0, i64 0), i32 noundef %conv117) #4
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %for.body
  %call121 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %call, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %call10) #4
  %cmp122 = icmp ne i32 %call121, 0
  %conv123 = zext i1 %cmp122 to i32
  %call124 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.237, i64 0, i64 0), i32 noundef %conv123) #4
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false120
  %cmp127 = icmp eq i64 %indvars.iv, 1
  br i1 %cmp127, label %land.lhs.true, label %lor.lhs.false132

land.lhs.true:                                    ; preds = %lor.lhs.false126
  %call129 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call18, %struct.ec_point_st* noundef %call14, %struct.bignum_ctx* noundef %call10) #4
  %call130 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.238, i64 0, i64 0), i32 noundef 0, i32 noundef %call129) #4
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %land.lhs.true, %lor.lhs.false126
  %call133 = call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #4
  %cmp134 = icmp ne i32 %call133, 0
  %conv135 = zext i1 %cmp134 to i32
  %call136 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i64 0, i64 0), i32 noundef %conv135) #4
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false132
  %call139 = call i32 @BN_sub(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call6) #4
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.239, i64 0, i64 0), i32 noundef %conv141) #4
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false138
  %call145 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %call10) #4
  %cmp146 = icmp ne i32 %call145, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.240, i64 0, i64 0), i32 noundef %conv147) #4
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %call151 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %call152 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.234, i64 0, i64 0), i32 noundef 0, i32 noundef %call151) #4
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %err, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false150
  %call155 = call %struct.bignum_st* @BN_value_one() #4
  %call156 = call i32 @BN_add(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call155) #4
  %cmp157 = icmp ne i32 %call156, 0
  %conv158 = zext i1 %cmp157 to i32
  %call159 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.241, i64 0, i64 0), i32 noundef %conv158) #4
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %lor.lhs.false154
  %call162 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call10) #4
  %cmp163 = icmp ne i32 %call162, 0
  %conv164 = zext i1 %cmp163 to i32
  %call165 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv164) #4
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %err, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false161
  %call168 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %call169 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.234, i64 0, i64 0), i32 noundef 0, i32 noundef %call168) #4
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false167
  %call172 = call i32 @BN_mul(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call10) #4
  %cmp173 = icmp ne i32 %call172, 0
  %conv174 = zext i1 %cmp173 to i32
  %call175 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.243, i64 0, i64 0), i32 noundef %conv174) #4
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false171
  %call178 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call10) #4
  %cmp179 = icmp ne i32 %call178, 0
  %conv180 = zext i1 %cmp179 to i32
  %call181 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv180) #4
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %err, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false177
  %call184 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %call185 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.234, i64 0, i64 0), i32 noundef 0, i32 noundef %call184) #4
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %if.end188

if.end188:                                        ; preds = %lor.lhs.false183
  call void @BN_set_negative(%struct.bignum_st* noundef %call2, i32 noundef 0) #4
  %call189 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %call10) #4
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv191) #4
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end188
  %call195 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call22, %struct.ec_point_st* noundef %call18, %struct.bignum_ctx* noundef %call10) #4
  %cmp196 = icmp ne i32 %call195, 0
  %conv197 = zext i1 %cmp196 to i32
  %call198 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.244, i64 0, i64 0), i32 noundef %conv197) #4
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %err, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %lor.lhs.false194
  %call201 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call22) #4
  %cmp202 = icmp ne i32 %call201, 0
  %conv203 = zext i1 %cmp202 to i32
  %call204 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv203) #4
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %err, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %lor.lhs.false200
  %call207 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call18) #4
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv209) #4
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %if.end213

if.end213:                                        ; preds = %lor.lhs.false206
  %call214 = call %struct.bignum_st* @BN_value_one() #4
  store %struct.bignum_st* %call214, %struct.bignum_st** %arrayidx, align 8, !tbaa !7
  store %struct.bignum_st* %call214, %struct.bignum_st** %arrayidx215, align 16, !tbaa !7
  store %struct.ec_point_st* %call18, %struct.ec_point_st** %arrayidx216, align 8, !tbaa !7
  store %struct.ec_point_st* %call18, %struct.ec_point_st** %arrayidx217, align 16, !tbaa !7
  %call219 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call26, %struct.bignum_st* noundef null, i64 noundef 2, %struct.ec_point_st** noundef nonnull %arrayidx217, %struct.bignum_st** noundef nonnull %arrayidx215, %struct.bignum_ctx* noundef %call10) #4
  %cmp220 = icmp ne i32 %call219, 0
  %conv221 = zext i1 %cmp220 to i32
  %call222 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.245, i64 0, i64 0), i32 noundef %conv221) #4
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %err, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end213
  %11 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx217, align 16, !tbaa !7
  %call226 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call30, %struct.ec_point_st* noundef %11, %struct.bignum_ctx* noundef %call10) #4
  %cmp227 = icmp ne i32 %call226, 0
  %conv228 = zext i1 %cmp227 to i32
  %call229 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.246, i64 0, i64 0), i32 noundef %conv228) #4
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %err, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %lor.lhs.false224
  %call232 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call26, %struct.ec_point_st* noundef %call30, %struct.bignum_ctx* noundef %call10) #4
  %call233 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.247, i64 0, i64 0), i32 noundef 0, i32 noundef %call232) #4
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %if.end236

if.end236:                                        ; preds = %lor.lhs.false231
  store %struct.bignum_st* %call, %struct.bignum_st** %arrayidx215, align 16, !tbaa !7
  store %struct.ec_point_st* %call22, %struct.ec_point_st** %arrayidx217, align 16, !tbaa !7
  store %struct.bignum_st* %call2, %struct.bignum_st** %arrayidx, align 8, !tbaa !7
  store %struct.ec_point_st* %call18, %struct.ec_point_st** %arrayidx216, align 8, !tbaa !7
  store %struct.bignum_st* %call, %struct.bignum_st** %arrayidx241, align 16, !tbaa !7
  store %struct.ec_point_st* %call22, %struct.ec_point_st** %arrayidx242, align 16, !tbaa !7
  store %struct.bignum_st* %call2, %struct.bignum_st** %arrayidx243, align 8, !tbaa !7
  store %struct.ec_point_st* %call22, %struct.ec_point_st** %arrayidx244, align 8, !tbaa !7
  store %struct.bignum_st* %call, %struct.bignum_st** %arrayidx245, align 16, !tbaa !7
  store %struct.ec_point_st* %call18, %struct.ec_point_st** %arrayidx246, align 16, !tbaa !7
  store %struct.bignum_st* %call2, %struct.bignum_st** %arrayidx247, align 8, !tbaa !7
  store %struct.ec_point_st* %call22, %struct.ec_point_st** %arrayidx248, align 8, !tbaa !7
  %call251 = call i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call18, %struct.bignum_st* noundef null, i64 noundef 6, %struct.ec_point_st** noundef nonnull %arrayidx217, %struct.bignum_st** noundef nonnull %arrayidx215, %struct.bignum_ctx* noundef %call10) #4
  %cmp252 = icmp ne i32 %call251, 0
  %conv253 = zext i1 %cmp252 to i32
  %call254 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.248, i64 0, i64 0), i32 noundef %conv253) #4
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %err, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %if.end236
  %call257 = call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call18) #4
  %cmp258 = icmp ne i32 %call257, 0
  %conv259 = zext i1 %cmp258 to i32
  %call260 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv259) #4
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %err, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false256
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %if.end273, label %for.body, !llvm.loop !38

err:                                              ; preds = %lor.lhs.false256, %lor.lhs.false183, %lor.lhs.false177, %lor.lhs.false171, %lor.lhs.false167, %lor.lhs.false161, %lor.lhs.false154, %lor.lhs.false150, %lor.lhs.false144, %lor.lhs.false138, %lor.lhs.false132, %land.lhs.true, %lor.lhs.false120, %for.body, %lor.lhs.false206, %lor.lhs.false200, %lor.lhs.false194, %if.end188, %lor.lhs.false231, %lor.lhs.false224, %if.end213, %if.end236
  %12 = trunc i64 %indvars.iv to i32
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #5
  %cmp271 = icmp eq i32 %12, 1
  %cond = select i1 %cmp271, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.249, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.250, i64 0, i64 0)
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef %cond) #4
  br label %if.end273

if.end273:                                        ; preds = %for.inc, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false29, %if.end, %lor.lhs.false36, %lor.lhs.false42, %lor.lhs.false48, %lor.lhs.false54, %lor.lhs.false60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false78, %lor.lhs.false84, %lor.lhs.false88, %lor.lhs.false94, %lor.lhs.false100, %lor.lhs.false106, %err
  %r.0458 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false29 ], [ 0, %if.end ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false106 ], [ 1, %for.inc ]
  %ctx.0457 = phi %struct.bignum_ctx* [ %call10, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ %call10, %lor.lhs.false9 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false21 ], [ %call10, %lor.lhs.false25 ], [ %call10, %lor.lhs.false29 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false36 ], [ %call10, %lor.lhs.false42 ], [ %call10, %lor.lhs.false48 ], [ %call10, %lor.lhs.false54 ], [ %call10, %lor.lhs.false60 ], [ %call10, %lor.lhs.false66 ], [ %call10, %lor.lhs.false72 ], [ %call10, %lor.lhs.false78 ], [ %call10, %lor.lhs.false84 ], [ %call10, %lor.lhs.false88 ], [ %call10, %lor.lhs.false94 ], [ %call10, %lor.lhs.false100 ], [ %call10, %lor.lhs.false106 ], [ %call10, %for.inc ]
  %S.0456 = phi %struct.ec_point_st* [ %call30, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false25 ], [ %call30, %lor.lhs.false29 ], [ %call30, %if.end ], [ %call30, %lor.lhs.false36 ], [ %call30, %lor.lhs.false42 ], [ %call30, %lor.lhs.false48 ], [ %call30, %lor.lhs.false54 ], [ %call30, %lor.lhs.false60 ], [ %call30, %lor.lhs.false66 ], [ %call30, %lor.lhs.false72 ], [ %call30, %lor.lhs.false78 ], [ %call30, %lor.lhs.false84 ], [ %call30, %lor.lhs.false88 ], [ %call30, %lor.lhs.false94 ], [ %call30, %lor.lhs.false100 ], [ %call30, %lor.lhs.false106 ], [ %call30, %for.inc ]
  %R.0455 = phi %struct.ec_point_st* [ %call26, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false21 ], [ %call26, %lor.lhs.false25 ], [ %call26, %lor.lhs.false29 ], [ %call26, %if.end ], [ %call26, %lor.lhs.false36 ], [ %call26, %lor.lhs.false42 ], [ %call26, %lor.lhs.false48 ], [ %call26, %lor.lhs.false54 ], [ %call26, %lor.lhs.false60 ], [ %call26, %lor.lhs.false66 ], [ %call26, %lor.lhs.false72 ], [ %call26, %lor.lhs.false78 ], [ %call26, %lor.lhs.false84 ], [ %call26, %lor.lhs.false88 ], [ %call26, %lor.lhs.false94 ], [ %call26, %lor.lhs.false100 ], [ %call26, %lor.lhs.false106 ], [ %call26, %for.inc ]
  %Q.0454 = phi %struct.ec_point_st* [ %call22, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false17 ], [ %call22, %lor.lhs.false21 ], [ %call22, %lor.lhs.false25 ], [ %call22, %lor.lhs.false29 ], [ %call22, %if.end ], [ %call22, %lor.lhs.false36 ], [ %call22, %lor.lhs.false42 ], [ %call22, %lor.lhs.false48 ], [ %call22, %lor.lhs.false54 ], [ %call22, %lor.lhs.false60 ], [ %call22, %lor.lhs.false66 ], [ %call22, %lor.lhs.false72 ], [ %call22, %lor.lhs.false78 ], [ %call22, %lor.lhs.false84 ], [ %call22, %lor.lhs.false88 ], [ %call22, %lor.lhs.false94 ], [ %call22, %lor.lhs.false100 ], [ %call22, %lor.lhs.false106 ], [ %call22, %for.inc ]
  %P.0453 = phi %struct.ec_point_st* [ %call18, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false13 ], [ %call18, %lor.lhs.false17 ], [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false25 ], [ %call18, %lor.lhs.false29 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false36 ], [ %call18, %lor.lhs.false42 ], [ %call18, %lor.lhs.false48 ], [ %call18, %lor.lhs.false54 ], [ %call18, %lor.lhs.false60 ], [ %call18, %lor.lhs.false66 ], [ %call18, %lor.lhs.false72 ], [ %call18, %lor.lhs.false78 ], [ %call18, %lor.lhs.false84 ], [ %call18, %lor.lhs.false88 ], [ %call18, %lor.lhs.false94 ], [ %call18, %lor.lhs.false100 ], [ %call18, %lor.lhs.false106 ], [ %call18, %for.inc ]
  %order.0452 = phi %struct.bignum_st* [ %call6, %err ], [ null, %entry ], [ null, %lor.lhs.false ], [ %call6, %lor.lhs.false5 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false29 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false36 ], [ %call6, %lor.lhs.false42 ], [ %call6, %lor.lhs.false48 ], [ %call6, %lor.lhs.false54 ], [ %call6, %lor.lhs.false60 ], [ %call6, %lor.lhs.false66 ], [ %call6, %lor.lhs.false72 ], [ %call6, %lor.lhs.false78 ], [ %call6, %lor.lhs.false84 ], [ %call6, %lor.lhs.false88 ], [ %call6, %lor.lhs.false94 ], [ %call6, %lor.lhs.false100 ], [ %call6, %lor.lhs.false106 ], [ %call6, %for.inc ]
  %n2.0451 = phi %struct.bignum_st* [ %call2, %err ], [ null, %entry ], [ %call2, %lor.lhs.false ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false29 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false36 ], [ %call2, %lor.lhs.false42 ], [ %call2, %lor.lhs.false48 ], [ %call2, %lor.lhs.false54 ], [ %call2, %lor.lhs.false60 ], [ %call2, %lor.lhs.false66 ], [ %call2, %lor.lhs.false72 ], [ %call2, %lor.lhs.false78 ], [ %call2, %lor.lhs.false84 ], [ %call2, %lor.lhs.false88 ], [ %call2, %lor.lhs.false94 ], [ %call2, %lor.lhs.false100 ], [ %call2, %lor.lhs.false106 ], [ %call2, %for.inc ]
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0453) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0454) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %R.0455) #4
  call void @EC_POINT_free(%struct.ec_point_st* noundef %S.0456) #4
  call void @BN_free(%struct.bignum_st* noundef %call) #4
  call void @BN_free(%struct.bignum_st* noundef %n2.0451) #4
  call void @BN_free(%struct.bignum_st* noundef %order.0452) #4
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0457) #4
  ret i32 %r.0458
}

declare dso_local i32 @EC_POINT_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_order(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_even(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINTs_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_st** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_dec2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_have_precompute_mult(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_check(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @EC_GROUP_get0_field(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_get0_nist_prime_192() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_get0_nist_prime_256() local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_check_named_curve(%struct.ec_group_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i8* @EC_curve_nid2nist(i32 noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_set_curve_name(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare dso_local i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_check_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_GF2m_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_public_key_affine_coordinates(%struct.ec_key_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @are_ec_nids_compatible(i32 noundef %n1d, i32 noundef %n2d) unnamed_addr #3 {
entry:
  switch i32 %n1d, label %sw.default [
    i32 717, label %sw.bb
    i32 737, label %sw.bb
    i32 721, label %sw.bb2
    i32 736, label %sw.bb2
    i32 726, label %sw.bb8
    i32 743, label %sw.bb8
    i32 727, label %sw.bb14
    i32 744, label %sw.bb14
    i32 684, label %sw.bb20
    i32 738, label %sw.bb20
    i32 704, label %sw.bb26
    i32 739, label %sw.bb26
    i32 710, label %sw.bb32
    i32 740, label %sw.bb32
    i32 713, label %sw.bb38
    i32 745, label %sw.bb38
  ]

sw.bb:                                            ; preds = %entry, %entry
  %cmp = icmp eq i32 %n2d, 717
  %cmp1 = icmp eq i32 %n2d, 737
  %0 = or i1 %cmp, %cmp1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  %cmp3 = icmp eq i32 %n2d, 721
  %cmp5 = icmp eq i32 %n2d, 736
  %1 = or i1 %cmp3, %cmp5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry
  %cmp9 = icmp eq i32 %n2d, 726
  %cmp11 = icmp eq i32 %n2d, 743
  %2 = or i1 %cmp9, %cmp11
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry, %entry
  %cmp15 = icmp eq i32 %n2d, 727
  %cmp17 = icmp eq i32 %n2d, 744
  %3 = or i1 %cmp15, %cmp17
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry, %entry
  %cmp21 = icmp eq i32 %n2d, 684
  %cmp23 = icmp eq i32 %n2d, 738
  %4 = or i1 %cmp21, %cmp23
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry, %entry
  %cmp27 = icmp eq i32 %n2d, 704
  %cmp29 = icmp eq i32 %n2d, 739
  %5 = or i1 %cmp27, %cmp29
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry, %entry
  %cmp33 = icmp eq i32 %n2d, 710
  %cmp35 = icmp eq i32 %n2d, 740
  %6 = or i1 %cmp33, %cmp35
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry, %entry
  %7 = and i32 %n2d, -33
  %8 = icmp eq i32 %7, 713
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %cmp44 = icmp eq i32 %n1d, %n2d
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb38, %sw.bb32, %sw.bb26, %sw.bb20, %sw.bb14, %sw.bb8, %sw.bb2, %sw.bb
  %ret.0.in = phi i1 [ %cmp44, %sw.default ], [ %8, %sw.bb38 ], [ %6, %sw.bb32 ], [ %5, %sw.bb26 ], [ %4, %sw.bb20 ], [ %3, %sw.bb14 ], [ %2, %sw.bb8 ], [ %1, %sw.bb2 ], [ %0, %sw.bb ]
  %ret.0 = zext i1 %ret.0.in to i32
  ret i32 %ret.0
}

declare dso_local i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_point_hex2point_test_helper(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %P, i32 noundef %form, %struct.bignum_ctx* noundef %bnctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_point_st* %P, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %0 = bitcast %struct.ec_point_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2308, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.494, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2309, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.495, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %entry
  %P.addr.0 = phi %struct.ec_point_st* [ %P, %entry ], [ %call, %lor.lhs.false ]
  %Pinf.0 = phi %struct.ec_point_st* [ null, %entry ], [ %call, %lor.lhs.false ]
  %call8 = tail call i8* @EC_POINT_point2hex(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %P.addr.0, i32 noundef %form, %struct.bignum_ctx* noundef %bnctx) #4
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2314, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.496, i64 0, i64 0), i8* noundef %call8) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end7
  %call12 = tail call %struct.ec_point_st* @EC_POINT_hex2point(%struct.ec_group_st* noundef %group, i8* noundef %call8, %struct.ec_point_st* noundef null, %struct.bignum_ctx* noundef %bnctx) #4
  %1 = bitcast %struct.ec_point_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2315, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.497, i64 0, i64 0), i8* noundef %1) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call12, %struct.ec_point_st* noundef %P.addr.0, %struct.bignum_ctx* noundef %bnctx) #4
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2316, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.498, i64 0, i64 0), i32 noundef 0, i32 noundef %call16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false15
  %cmp21.not = icmp eq %struct.ec_point_st* %Pinf.0, null
  br i1 %cmp21.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %call23 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %call12) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2326, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end20
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end7, %lor.lhs.false11, %lor.lhs.false15, %if.then, %lor.lhs.false, %if.end29
  %ret.0 = phi i32 [ 1, %if.end29 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %if.then ]
  %Q.0 = phi %struct.ec_point_st* [ %call12, %if.end29 ], [ %call12, %land.lhs.true ], [ %call12, %lor.lhs.false15 ], [ %call12, %lor.lhs.false11 ], [ null, %if.end7 ], [ null, %lor.lhs.false ], [ null, %if.then ]
  %Pinf.1 = phi %struct.ec_point_st* [ %Pinf.0, %if.end29 ], [ %Pinf.0, %land.lhs.true ], [ %Pinf.0, %lor.lhs.false15 ], [ %Pinf.0, %lor.lhs.false11 ], [ %Pinf.0, %if.end7 ], [ %call, %lor.lhs.false ], [ %call, %if.then ]
  %hex.0 = phi i8* [ %call8, %if.end29 ], [ %call8, %land.lhs.true ], [ %call8, %lor.lhs.false15 ], [ %call8, %lor.lhs.false11 ], [ %call8, %if.end7 ], [ null, %lor.lhs.false ], [ null, %if.then ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %Pinf.1) #4
  tail call void @CRYPTO_free(i8* noundef %hex.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2333) #4
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %Q.0) #4
  ret i32 %ret.0
}

declare dso_local i8* @EC_POINT_point2hex(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_point_st* @EC_POINT_hex2point(%struct.ec_group_st* noundef, i8* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_clear_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_test_custom_explicit_fromdata(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx, i8* noundef %gen, i32 noundef %gen_size) unnamed_addr #0 {
entry:
  %i_out = alloca i32, align 4
  %pkeyparam = alloca %struct.evp_pkey_st*, align 8
  %p_out = alloca %struct.bignum_st*, align 8
  %a_out = alloca %struct.bignum_st*, align 8
  %b_out = alloca %struct.bignum_st*, align 8
  %order_out = alloca %struct.bignum_st*, align 8
  %cofactor_out = alloca %struct.bignum_st*, align 8
  %name = alloca [80 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %buf_len = alloca i64, align 8
  %name_len = alloca i64, align 8
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %0 = bitcast i32* %i_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast %struct.evp_pkey_st** %pkeyparam to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %2 = bitcast %struct.bignum_st** %p_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p_out, align 8, !tbaa !7
  %3 = bitcast %struct.bignum_st** %a_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a_out, align 8, !tbaa !7
  %4 = bitcast %struct.bignum_st** %b_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b_out, align 8, !tbaa !7
  %5 = bitcast %struct.bignum_st** %order_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %order_out, align 8, !tbaa !7
  %6 = bitcast %struct.bignum_st** %cofactor_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  store %struct.bignum_st* null, %struct.bignum_st** %cofactor_out, align 8, !tbaa !7
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #5
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %8) #5
  %9 = bitcast i64* %buf_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5
  %10 = bitcast i64* %name_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  %11 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 0, i32* %k1, align 4, !tbaa !39
  %12 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %k2, align 4, !tbaa !39
  %13 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i32 0, i32* %k3, align 4, !tbaa !39
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %14 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2413, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i8* noundef %14) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #4
  %15 = bitcast %struct.ossl_param_bld_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2414, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.519, i64 0, i64 0), i8* noundef %15) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %group) #4
  %cmp = icmp eq i32 %call7, 406
  br i1 %cmp, label %if.end27, label %if.else

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef %group) #4
  %cmp10 = icmp eq i32 %call9, 682
  br i1 %cmp10, label %if.then11, label %if.else18

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @EC_GROUP_get_trinomial_basis(%struct.ec_group_st* noundef %group, i32* noundef nonnull %k1) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp13 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2424, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.523, i64 0, i64 0), i32 noundef %conv) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end27

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @EC_GROUP_get_pentanomial_basis(%struct.ec_group_st* noundef %group, i32* noundef nonnull %k1, i32* noundef nonnull %k2, i32* noundef nonnull %k3) #4
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2428, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.525, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end, %if.then11, %if.else18
  %field_name.0 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.521, i64 0, i64 0), %if.then11 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.521, i64 0, i64 0), %if.else18 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.520, i64 0, i64 0), %if.end ]
  %basis_name.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.522, i64 0, i64 0), %if.then11 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.524, i64 0, i64 0), %if.else18 ], [ null, %if.end ]
  %call28 = call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_ctx* noundef %ctx) #4
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2433, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv30) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end27
  %call34 = call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.527, i64 0, i64 0), i8* noundef %field_name.0, i64 noundef 0) #4
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2435, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.526, i64 0, i64 0), i32 noundef %conv36) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %call40 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %call) #4
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2436, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.528, i64 0, i64 0), i32 noundef %conv42) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.bignum_st* noundef %call1) #4
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2437, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.529, i64 0, i64 0), i32 noundef %conv48) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %call52 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st* noundef %call2) #4
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2438, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.530, i64 0, i64 0), i32 noundef %conv54) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false51
  %call59 = call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #4
  %cmp60.not = icmp eq i8* %call59, null
  br i1 %cmp60.not, label %if.end72, label %if.then62

if.then62:                                        ; preds = %if.end58
  %call63 = call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #4
  %call64 = call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef %group) #4
  %call65 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.532, i64 0, i64 0), i8* noundef %call63, i64 noundef %call64) #4
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2444, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.531, i64 0, i64 0), i32 noundef %conv67) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.then62, %if.end58
  %call73 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #4
  %cmp74.not = icmp eq %struct.bignum_st* %call73, null
  br i1 %cmp74.not, label %if.end85, label %if.then76

if.then76:                                        ; preds = %if.end72
  %call77 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #4
  %call78 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.534, i64 0, i64 0), %struct.bignum_st* noundef %call77) #4
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2449, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.533, i64 0, i64 0), i32 noundef %conv80) #4
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end85

if.end85:                                         ; preds = %if.then76, %if.end72
  %conv86 = sext i32 %gen_size to i64
  %call87 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.536, i64 0, i64 0), i8* noundef %gen, i64 noundef %conv86) #4
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2454, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.535, i64 0, i64 0), i32 noundef %conv89) #4
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.end85
  %call93 = call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #4
  %call94 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i64 0, i64 0), %struct.bignum_st* noundef %call93) #4
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2456, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.537, i64 0, i64 0), i32 noundef %conv96) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false92
  %call101 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call4) #4
  %16 = bitcast %struct.ossl_param_st* %call101 to i8*
  %call102 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2459, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.539, i64 0, i64 0), i8* noundef %16) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end100
  %call105 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.541, i64 0, i64 0), i8* noundef null) #4
  %17 = bitcast %struct.evp_pkey_ctx_st* %call105 to i8*
  %call106 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2460, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.540, i64 0, i64 0), i8* noundef %17) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %call109 = call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call105) #4
  %call110 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2461, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.542, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call109, i32 noundef 0) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %call113 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call105, %struct.evp_pkey_st** noundef nonnull %pkeyparam, i32 noundef 132, %struct.ossl_param_st* noundef %call101) #4
  %call114 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2463, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.543, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call113, i32 noundef 0) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %if.end117

if.end117:                                        ; preds = %lor.lhs.false112
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call118 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.545, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 80, i64* noundef nonnull %name_len) #4
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2471, i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.544, i64 0, i64 0), i32 noundef %conv120) #4
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %if.end124

if.end124:                                        ; preds = %if.end117
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call126 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.547, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 80, i64* noundef nonnull %name_len) #4
  %cmp127 = icmp ne i32 %call126, 0
  %conv128 = zext i1 %cmp127 to i32
  %call129 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2477, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.546, i64 0, i64 0), i32 noundef %conv128) #4
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.end124
  %call133 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2478, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.548, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.549, i64 0, i64 0), i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.550, i64 0, i64 0)) #4
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %if.end136

if.end136:                                        ; preds = %lor.lhs.false131
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call138 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.527, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 80, i64* noundef nonnull %name_len) #4
  %cmp139 = icmp ne i32 %call138, 0
  %conv140 = zext i1 %cmp139 to i32
  %call141 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2483, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.551, i64 0, i64 0), i32 noundef %conv140) #4
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.end136
  %call145 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2484, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.548, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.552, i64 0, i64 0), i8* noundef nonnull %7, i8* noundef %field_name.0) #4
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %if.end148

if.end148:                                        ; preds = %lor.lhs.false143
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call150 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.536, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef 1024, i64* noundef nonnull %buf_len) #4
  %cmp151 = icmp ne i32 %call150, 0
  %conv152 = zext i1 %cmp151 to i32
  %call153 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2488, i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.553, i64 0, i64 0), i32 noundef %conv152) #4
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %if.end148
  %22 = load i64, i64* %buf_len, align 8, !tbaa !3
  %sext = shl i64 %22, 32
  %conv158 = ashr exact i64 %sext, 32
  %call160 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2489, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.554, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %conv158, i8* noundef %gen, i64 noundef %conv86) #4
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %if.end163

if.end163:                                        ; preds = %lor.lhs.false155
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call164 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p_out) #4
  %cmp165 = icmp ne i32 %call164, 0
  %conv166 = zext i1 %cmp165 to i32
  %call167 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2492, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.555, i64 0, i64 0), i32 noundef %conv166) #4
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.end163
  %24 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !7
  %call170 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2493, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.556, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %24, %struct.bignum_st* noundef %call) #4
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false169
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call173 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.bignum_st** noundef nonnull %a_out) #4
  %cmp174 = icmp ne i32 %call173, 0
  %conv175 = zext i1 %cmp174 to i32
  %call176 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2495, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.557, i64 0, i64 0), i32 noundef %conv175) #4
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false172
  %26 = load %struct.bignum_st*, %struct.bignum_st** %a_out, align 8, !tbaa !7
  %call179 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2496, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.558, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), %struct.bignum_st* noundef %26, %struct.bignum_st* noundef %call1) #4
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %err, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false178
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call182 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st** noundef nonnull %b_out) #4
  %cmp183 = icmp ne i32 %call182, 0
  %conv184 = zext i1 %cmp183 to i32
  %call185 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2498, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.559, i64 0, i64 0), i32 noundef %conv184) #4
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false181
  %28 = load %struct.bignum_st*, %struct.bignum_st** %b_out, align 8, !tbaa !7
  %call188 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2499, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.560, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), %struct.bignum_st* noundef %28, %struct.bignum_st* noundef %call2) #4
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %err, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false187
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call191 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i64 0, i64 0), %struct.bignum_st** noundef nonnull %order_out) #4
  %cmp192 = icmp ne i32 %call191, 0
  %conv193 = zext i1 %cmp192 to i32
  %call194 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2501, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.561, i64 0, i64 0), i32 noundef %conv193) #4
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %err, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false190
  %30 = load %struct.bignum_st*, %struct.bignum_st** %order_out, align 8, !tbaa !7
  %call197 = call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #4
  %call198 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2502, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.562, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.563, i64 0, i64 0), %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %call197) #4
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %err, label %if.end201

if.end201:                                        ; preds = %lor.lhs.false196
  %call202 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #4
  %cmp203.not = icmp eq %struct.bignum_st* %call202, null
  br i1 %cmp203.not, label %if.end217, label %if.then205

if.then205:                                       ; preds = %if.end201
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call206 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.534, i64 0, i64 0), %struct.bignum_st** noundef nonnull %cofactor_out) #4
  %cmp207 = icmp ne i32 %call206, 0
  %conv208 = zext i1 %cmp207 to i32
  %call209 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2507, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.564, i64 0, i64 0), i32 noundef %conv208) #4
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %if.then205
  %32 = load %struct.bignum_st*, %struct.bignum_st** %cofactor_out, align 8, !tbaa !7
  %call212 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #4
  %call213 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2508, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.565, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), %struct.bignum_st* noundef %32, %struct.bignum_st* noundef %call212) #4
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %err, label %if.end217

if.end217:                                        ; preds = %lor.lhs.false211, %if.end201
  %call218 = call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #4
  %cmp219.not = icmp eq i8* %call218, null
  br i1 %cmp219.not, label %if.end236, label %if.then221

if.then221:                                       ; preds = %if.end217
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call223 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.532, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef 1024, i64* noundef nonnull %buf_len) #4
  %cmp224 = icmp ne i32 %call223, 0
  %conv225 = zext i1 %cmp224 to i32
  %call226 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2513, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.566, i64 0, i64 0), i32 noundef %conv225) #4
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %err, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %if.then221
  %34 = load i64, i64* %buf_len, align 8, !tbaa !3
  %call230 = call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #4
  %call231 = call i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* noundef %group) #4
  %call232 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2515, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.567, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef %34, i8* noundef %call230, i64 noundef %call231) #4
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %if.end236

if.end236:                                        ; preds = %lor.lhs.false228, %if.end217
  %call237 = call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %group) #4
  %cmp238 = icmp eq i32 %call237, 406
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call241 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.569, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp242 = icmp ne i32 %call241, 0
  %conv243 = zext i1 %cmp242 to i32
  br i1 %cmp238, label %if.then240, label %if.else279

if.then240:                                       ; preds = %if.end236
  %call244 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2522, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.568, i64 0, i64 0), i32 noundef %conv243) #4
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %err, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %if.then240
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call247 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.571, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp248 = icmp ne i32 %call247, 0
  %conv249 = zext i1 %cmp248 to i32
  %call250 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2524, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.570, i64 0, i64 0), i32 noundef %conv249) #4
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %err, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %lor.lhs.false246
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call253 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %37, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp254 = icmp ne i32 %call253, 0
  %conv255 = zext i1 %cmp254 to i32
  %call256 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2526, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.572, i64 0, i64 0), i32 noundef %conv255) #4
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %err, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %lor.lhs.false252
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call259 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.575, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp260 = icmp ne i32 %call259, 0
  %conv261 = zext i1 %cmp260 to i32
  %call262 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2528, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.574, i64 0, i64 0), i32 noundef %conv261) #4
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %err, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %lor.lhs.false258
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call265 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.577, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp266 = icmp ne i32 %call265, 0
  %conv267 = zext i1 %cmp266 to i32
  %call268 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2530, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.576, i64 0, i64 0), i32 noundef %conv267) #4
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %err, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %lor.lhs.false264
  %40 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call272 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.579, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 80, i64* noundef nonnull %name_len) #4
  %cmp273 = icmp ne i32 %call272, 0
  %conv274 = zext i1 %cmp273 to i32
  %call275 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2533, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.578, i64 0, i64 0), i32 noundef %conv274) #4
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %err, label %if.end370

if.else279:                                       ; preds = %if.end236
  %call283 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2538, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.568, i64 0, i64 0), i32 noundef %conv243) #4
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %err, label %lor.lhs.false285

lor.lhs.false285:                                 ; preds = %if.else279
  %call286 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %group) #4
  %41 = load i32, i32* %i_out, align 4, !tbaa !39
  %call287 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2539, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.580, i64 0, i64 0), i32 noundef %call286, i32 noundef %41) #4
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %err, label %lor.lhs.false289

lor.lhs.false289:                                 ; preds = %lor.lhs.false285
  %42 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call291 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %42, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.579, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 80, i64* noundef nonnull %name_len) #4
  %cmp292 = icmp ne i32 %call291, 0
  %conv293 = zext i1 %cmp292 to i32
  %call294 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2542, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.578, i64 0, i64 0), i32 noundef %conv293) #4
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %err, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %lor.lhs.false289
  %call298 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2543, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.548, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.581, i64 0, i64 0), i8* noundef nonnull %7, i8* noundef %basis_name.0) #4
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %err, label %if.end301

if.end301:                                        ; preds = %lor.lhs.false296
  %call302 = call i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef %group) #4
  %cmp303 = icmp eq i32 %call302, 682
  %43 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call306 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %43, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.571, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp307 = icmp ne i32 %call306, 0
  %conv308 = zext i1 %cmp307 to i32
  br i1 %cmp303, label %if.then305, label %if.else334

if.then305:                                       ; preds = %if.end301
  %call309 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2548, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.570, i64 0, i64 0), i32 noundef %conv308) #4
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %err, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %if.then305
  %44 = load i32, i32* %k1, align 4, !tbaa !39
  %45 = load i32, i32* %i_out, align 4, !tbaa !39
  %call312 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2549, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.580, i64 0, i64 0), i32 noundef %44, i32 noundef %45) #4
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %err, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %lor.lhs.false311
  %46 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call315 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %46, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp316 = icmp ne i32 %call315, 0
  %conv317 = zext i1 %cmp316 to i32
  %call318 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2551, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.572, i64 0, i64 0), i32 noundef %conv317) #4
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %err, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false314
  %47 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call321 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.575, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp322 = icmp ne i32 %call321, 0
  %conv323 = zext i1 %cmp322 to i32
  %call324 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2553, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.574, i64 0, i64 0), i32 noundef %conv323) #4
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %err, label %lor.lhs.false326

lor.lhs.false326:                                 ; preds = %lor.lhs.false320
  %48 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call327 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %48, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.577, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp328 = icmp ne i32 %call327, 0
  %conv329 = zext i1 %cmp328 to i32
  %call330 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2555, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.576, i64 0, i64 0), i32 noundef %conv329) #4
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %err, label %if.end370

if.else334:                                       ; preds = %if.end301
  %call338 = call i32 @test_false(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2559, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.570, i64 0, i64 0), i32 noundef %conv308) #4
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %err, label %lor.lhs.false340

lor.lhs.false340:                                 ; preds = %if.else334
  %49 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call341 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %49, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp342 = icmp ne i32 %call341, 0
  %conv343 = zext i1 %cmp342 to i32
  %call344 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2561, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.572, i64 0, i64 0), i32 noundef %conv343) #4
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %err, label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %lor.lhs.false340
  %50 = load i32, i32* %k1, align 4, !tbaa !39
  %51 = load i32, i32* %i_out, align 4, !tbaa !39
  %call347 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2562, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.580, i64 0, i64 0), i32 noundef %50, i32 noundef %51) #4
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %err, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %lor.lhs.false346
  %52 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call350 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.575, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp351 = icmp ne i32 %call350, 0
  %conv352 = zext i1 %cmp351 to i32
  %call353 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2564, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.574, i64 0, i64 0), i32 noundef %conv352) #4
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %err, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %lor.lhs.false349
  %53 = load i32, i32* %k2, align 4, !tbaa !39
  %54 = load i32, i32* %i_out, align 4, !tbaa !39
  %call356 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2565, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.575, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.580, i64 0, i64 0), i32 noundef %53, i32 noundef %54) #4
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %err, label %lor.lhs.false358

lor.lhs.false358:                                 ; preds = %lor.lhs.false355
  %55 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call359 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %55, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.577, i64 0, i64 0), i32* noundef nonnull %i_out) #4
  %cmp360 = icmp ne i32 %call359, 0
  %conv361 = zext i1 %cmp360 to i32
  %call362 = call i32 @test_true(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2567, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.576, i64 0, i64 0), i32 noundef %conv361) #4
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %err, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %lor.lhs.false358
  %56 = load i32, i32* %k3, align 4, !tbaa !39
  %57 = load i32, i32* %i_out, align 4, !tbaa !39
  %call365 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2568, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.577, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.580, i64 0, i64 0), i32 noundef %56, i32 noundef %57) #4
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %err, label %if.end370

if.end370:                                        ; preds = %lor.lhs.false326, %lor.lhs.false364, %lor.lhs.false270
  %58 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  %call371 = call %struct.ossl_param_st* @EVP_PKEY_gettable_params(%struct.evp_pkey_st* noundef %58) #4
  %59 = bitcast %struct.ossl_param_st* %call371 to i8*
  %call372 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2573, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.582, i64 0, i64 0), i8* noundef %59) #4
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %err, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %if.end370
  %call375 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.545, i64 0, i64 0)) #4
  %60 = bitcast %struct.ossl_param_st* %call375 to i8*
  %call376 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2574, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.583, i64 0, i64 0), i8* noundef %60) #4
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %err, label %lor.lhs.false378

lor.lhs.false378:                                 ; preds = %lor.lhs.false374
  %call379 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.547, i64 0, i64 0)) #4
  %61 = bitcast %struct.ossl_param_st* %call379 to i8*
  %call380 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2575, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.584, i64 0, i64 0), i8* noundef %61) #4
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %err, label %lor.lhs.false382

lor.lhs.false382:                                 ; preds = %lor.lhs.false378
  %call383 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.527, i64 0, i64 0)) #4
  %62 = bitcast %struct.ossl_param_st* %call383 to i8*
  %call384 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2576, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.585, i64 0, i64 0), i8* noundef %62) #4
  %tobool385.not = icmp eq i32 %call384, 0
  br i1 %tobool385.not, label %err, label %lor.lhs.false386

lor.lhs.false386:                                 ; preds = %lor.lhs.false382
  %call387 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0)) #4
  %63 = bitcast %struct.ossl_param_st* %call387 to i8*
  %call388 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2577, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.586, i64 0, i64 0), i8* noundef %63) #4
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %err, label %lor.lhs.false390

lor.lhs.false390:                                 ; preds = %lor.lhs.false386
  %call391 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0)) #4
  %64 = bitcast %struct.ossl_param_st* %call391 to i8*
  %call392 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2578, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.587, i64 0, i64 0), i8* noundef %64) #4
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %err, label %lor.lhs.false394

lor.lhs.false394:                                 ; preds = %lor.lhs.false390
  %call395 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #4
  %65 = bitcast %struct.ossl_param_st* %call395 to i8*
  %call396 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2579, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.588, i64 0, i64 0), i8* noundef %65) #4
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %err, label %lor.lhs.false398

lor.lhs.false398:                                 ; preds = %lor.lhs.false394
  %call399 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.536, i64 0, i64 0)) #4
  %66 = bitcast %struct.ossl_param_st* %call399 to i8*
  %call400 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2580, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.589, i64 0, i64 0), i8* noundef %66) #4
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %err, label %lor.lhs.false402

lor.lhs.false402:                                 ; preds = %lor.lhs.false398
  %call403 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i64 0, i64 0)) #4
  %67 = bitcast %struct.ossl_param_st* %call403 to i8*
  %call404 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2581, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.590, i64 0, i64 0), i8* noundef %67) #4
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %err, label %lor.lhs.false406

lor.lhs.false406:                                 ; preds = %lor.lhs.false402
  %call407 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.534, i64 0, i64 0)) #4
  %68 = bitcast %struct.ossl_param_st* %call407 to i8*
  %call408 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2582, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.591, i64 0, i64 0), i8* noundef %68) #4
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %err, label %lor.lhs.false410

lor.lhs.false410:                                 ; preds = %lor.lhs.false406
  %call411 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.532, i64 0, i64 0)) #4
  %69 = bitcast %struct.ossl_param_st* %call411 to i8*
  %call412 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2583, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.592, i64 0, i64 0), i8* noundef %69) #4
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %err, label %lor.lhs.false414

lor.lhs.false414:                                 ; preds = %lor.lhs.false410
  %call415 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.569, i64 0, i64 0)) #4
  %70 = bitcast %struct.ossl_param_st* %call415 to i8*
  %call416 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2585, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.593, i64 0, i64 0), i8* noundef %70) #4
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %err, label %lor.lhs.false418

lor.lhs.false418:                                 ; preds = %lor.lhs.false414
  %call419 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.579, i64 0, i64 0)) #4
  %71 = bitcast %struct.ossl_param_st* %call419 to i8*
  %call420 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2586, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.594, i64 0, i64 0), i8* noundef %71) #4
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %err, label %lor.lhs.false422

lor.lhs.false422:                                 ; preds = %lor.lhs.false418
  %call423 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.571, i64 0, i64 0)) #4
  %72 = bitcast %struct.ossl_param_st* %call423 to i8*
  %call424 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2587, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.595, i64 0, i64 0), i8* noundef %72) #4
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %err, label %lor.lhs.false426

lor.lhs.false426:                                 ; preds = %lor.lhs.false422
  %call427 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.573, i64 0, i64 0)) #4
  %73 = bitcast %struct.ossl_param_st* %call427 to i8*
  %call428 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2588, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.596, i64 0, i64 0), i8* noundef %73) #4
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %err, label %lor.lhs.false430

lor.lhs.false430:                                 ; preds = %lor.lhs.false426
  %call431 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.575, i64 0, i64 0)) #4
  %74 = bitcast %struct.ossl_param_st* %call431 to i8*
  %call432 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2589, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.597, i64 0, i64 0), i8* noundef %74) #4
  %tobool433.not = icmp eq i32 %call432, 0
  br i1 %tobool433.not, label %err, label %lor.lhs.false434

lor.lhs.false434:                                 ; preds = %lor.lhs.false430
  %call435 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call371, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.577, i64 0, i64 0)) #4
  %75 = bitcast %struct.ossl_param_st* %call435 to i8*
  %call436 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 2590, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.598, i64 0, i64 0), i8* noundef %75) #4
  %tobool437.not = icmp ne i32 %call436, 0
  %spec.select = zext i1 %tobool437.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false434, %if.end370, %lor.lhs.false374, %lor.lhs.false378, %lor.lhs.false382, %lor.lhs.false386, %lor.lhs.false390, %lor.lhs.false394, %lor.lhs.false398, %lor.lhs.false402, %lor.lhs.false406, %lor.lhs.false410, %lor.lhs.false414, %lor.lhs.false418, %lor.lhs.false422, %lor.lhs.false426, %lor.lhs.false430, %if.else334, %lor.lhs.false340, %lor.lhs.false346, %lor.lhs.false349, %lor.lhs.false355, %lor.lhs.false358, %lor.lhs.false364, %if.then305, %lor.lhs.false311, %lor.lhs.false314, %lor.lhs.false320, %lor.lhs.false326, %if.else279, %lor.lhs.false285, %lor.lhs.false289, %lor.lhs.false296, %if.then240, %lor.lhs.false246, %lor.lhs.false252, %lor.lhs.false258, %lor.lhs.false264, %lor.lhs.false270, %if.then221, %lor.lhs.false228, %if.then205, %lor.lhs.false211, %if.end163, %lor.lhs.false169, %lor.lhs.false172, %lor.lhs.false178, %lor.lhs.false181, %lor.lhs.false187, %lor.lhs.false190, %lor.lhs.false196, %if.end148, %lor.lhs.false155, %if.end136, %lor.lhs.false143, %if.end124, %lor.lhs.false131, %if.end117, %if.end100, %lor.lhs.false104, %lor.lhs.false108, %lor.lhs.false112, %if.end85, %lor.lhs.false92, %if.then76, %if.then62, %if.end27, %lor.lhs.false33, %lor.lhs.false39, %lor.lhs.false45, %lor.lhs.false51, %if.else18, %if.then11, %entry, %lor.lhs.false
  %params.0 = phi %struct.ossl_param_st* [ %call101, %lor.lhs.false430 ], [ %call101, %lor.lhs.false426 ], [ %call101, %lor.lhs.false422 ], [ %call101, %lor.lhs.false418 ], [ %call101, %lor.lhs.false414 ], [ %call101, %lor.lhs.false410 ], [ %call101, %lor.lhs.false406 ], [ %call101, %lor.lhs.false402 ], [ %call101, %lor.lhs.false398 ], [ %call101, %lor.lhs.false394 ], [ %call101, %lor.lhs.false390 ], [ %call101, %lor.lhs.false386 ], [ %call101, %lor.lhs.false382 ], [ %call101, %lor.lhs.false378 ], [ %call101, %lor.lhs.false374 ], [ %call101, %if.end370 ], [ %call101, %lor.lhs.false270 ], [ %call101, %lor.lhs.false264 ], [ %call101, %lor.lhs.false258 ], [ %call101, %lor.lhs.false252 ], [ %call101, %lor.lhs.false246 ], [ %call101, %if.then240 ], [ %call101, %lor.lhs.false326 ], [ %call101, %lor.lhs.false320 ], [ %call101, %lor.lhs.false314 ], [ %call101, %lor.lhs.false311 ], [ %call101, %if.then305 ], [ %call101, %lor.lhs.false364 ], [ %call101, %lor.lhs.false358 ], [ %call101, %lor.lhs.false355 ], [ %call101, %lor.lhs.false349 ], [ %call101, %lor.lhs.false346 ], [ %call101, %lor.lhs.false340 ], [ %call101, %if.else334 ], [ %call101, %lor.lhs.false296 ], [ %call101, %lor.lhs.false289 ], [ %call101, %lor.lhs.false285 ], [ %call101, %if.else279 ], [ %call101, %lor.lhs.false228 ], [ %call101, %if.then221 ], [ %call101, %lor.lhs.false211 ], [ %call101, %if.then205 ], [ %call101, %lor.lhs.false196 ], [ %call101, %lor.lhs.false190 ], [ %call101, %lor.lhs.false187 ], [ %call101, %lor.lhs.false181 ], [ %call101, %lor.lhs.false178 ], [ %call101, %lor.lhs.false172 ], [ %call101, %lor.lhs.false169 ], [ %call101, %if.end163 ], [ %call101, %lor.lhs.false155 ], [ %call101, %if.end148 ], [ %call101, %lor.lhs.false143 ], [ %call101, %if.end136 ], [ %call101, %lor.lhs.false131 ], [ %call101, %if.end124 ], [ %call101, %if.end117 ], [ %call101, %lor.lhs.false112 ], [ %call101, %lor.lhs.false108 ], [ %call101, %lor.lhs.false104 ], [ %call101, %if.end100 ], [ null, %lor.lhs.false92 ], [ null, %if.end85 ], [ null, %if.then76 ], [ null, %if.then62 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false39 ], [ null, %lor.lhs.false33 ], [ null, %if.end27 ], [ null, %if.then11 ], [ null, %if.else18 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call101, %lor.lhs.false434 ]
  %bld.0 = phi %struct.ossl_param_bld_st* [ %call4, %lor.lhs.false430 ], [ %call4, %lor.lhs.false426 ], [ %call4, %lor.lhs.false422 ], [ %call4, %lor.lhs.false418 ], [ %call4, %lor.lhs.false414 ], [ %call4, %lor.lhs.false410 ], [ %call4, %lor.lhs.false406 ], [ %call4, %lor.lhs.false402 ], [ %call4, %lor.lhs.false398 ], [ %call4, %lor.lhs.false394 ], [ %call4, %lor.lhs.false390 ], [ %call4, %lor.lhs.false386 ], [ %call4, %lor.lhs.false382 ], [ %call4, %lor.lhs.false378 ], [ %call4, %lor.lhs.false374 ], [ %call4, %if.end370 ], [ %call4, %lor.lhs.false270 ], [ %call4, %lor.lhs.false264 ], [ %call4, %lor.lhs.false258 ], [ %call4, %lor.lhs.false252 ], [ %call4, %lor.lhs.false246 ], [ %call4, %if.then240 ], [ %call4, %lor.lhs.false326 ], [ %call4, %lor.lhs.false320 ], [ %call4, %lor.lhs.false314 ], [ %call4, %lor.lhs.false311 ], [ %call4, %if.then305 ], [ %call4, %lor.lhs.false364 ], [ %call4, %lor.lhs.false358 ], [ %call4, %lor.lhs.false355 ], [ %call4, %lor.lhs.false349 ], [ %call4, %lor.lhs.false346 ], [ %call4, %lor.lhs.false340 ], [ %call4, %if.else334 ], [ %call4, %lor.lhs.false296 ], [ %call4, %lor.lhs.false289 ], [ %call4, %lor.lhs.false285 ], [ %call4, %if.else279 ], [ %call4, %lor.lhs.false228 ], [ %call4, %if.then221 ], [ %call4, %lor.lhs.false211 ], [ %call4, %if.then205 ], [ %call4, %lor.lhs.false196 ], [ %call4, %lor.lhs.false190 ], [ %call4, %lor.lhs.false187 ], [ %call4, %lor.lhs.false181 ], [ %call4, %lor.lhs.false178 ], [ %call4, %lor.lhs.false172 ], [ %call4, %lor.lhs.false169 ], [ %call4, %if.end163 ], [ %call4, %lor.lhs.false155 ], [ %call4, %if.end148 ], [ %call4, %lor.lhs.false143 ], [ %call4, %if.end136 ], [ %call4, %lor.lhs.false131 ], [ %call4, %if.end124 ], [ %call4, %if.end117 ], [ %call4, %lor.lhs.false112 ], [ %call4, %lor.lhs.false108 ], [ %call4, %lor.lhs.false104 ], [ %call4, %if.end100 ], [ %call4, %lor.lhs.false92 ], [ %call4, %if.end85 ], [ %call4, %if.then76 ], [ %call4, %if.then62 ], [ %call4, %lor.lhs.false51 ], [ %call4, %lor.lhs.false45 ], [ %call4, %lor.lhs.false39 ], [ %call4, %lor.lhs.false33 ], [ %call4, %if.end27 ], [ %call4, %if.then11 ], [ %call4, %if.else18 ], [ %call4, %lor.lhs.false ], [ null, %entry ], [ %call4, %lor.lhs.false434 ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %call105, %lor.lhs.false430 ], [ %call105, %lor.lhs.false426 ], [ %call105, %lor.lhs.false422 ], [ %call105, %lor.lhs.false418 ], [ %call105, %lor.lhs.false414 ], [ %call105, %lor.lhs.false410 ], [ %call105, %lor.lhs.false406 ], [ %call105, %lor.lhs.false402 ], [ %call105, %lor.lhs.false398 ], [ %call105, %lor.lhs.false394 ], [ %call105, %lor.lhs.false390 ], [ %call105, %lor.lhs.false386 ], [ %call105, %lor.lhs.false382 ], [ %call105, %lor.lhs.false378 ], [ %call105, %lor.lhs.false374 ], [ %call105, %if.end370 ], [ %call105, %lor.lhs.false270 ], [ %call105, %lor.lhs.false264 ], [ %call105, %lor.lhs.false258 ], [ %call105, %lor.lhs.false252 ], [ %call105, %lor.lhs.false246 ], [ %call105, %if.then240 ], [ %call105, %lor.lhs.false326 ], [ %call105, %lor.lhs.false320 ], [ %call105, %lor.lhs.false314 ], [ %call105, %lor.lhs.false311 ], [ %call105, %if.then305 ], [ %call105, %lor.lhs.false364 ], [ %call105, %lor.lhs.false358 ], [ %call105, %lor.lhs.false355 ], [ %call105, %lor.lhs.false349 ], [ %call105, %lor.lhs.false346 ], [ %call105, %lor.lhs.false340 ], [ %call105, %if.else334 ], [ %call105, %lor.lhs.false296 ], [ %call105, %lor.lhs.false289 ], [ %call105, %lor.lhs.false285 ], [ %call105, %if.else279 ], [ %call105, %lor.lhs.false228 ], [ %call105, %if.then221 ], [ %call105, %lor.lhs.false211 ], [ %call105, %if.then205 ], [ %call105, %lor.lhs.false196 ], [ %call105, %lor.lhs.false190 ], [ %call105, %lor.lhs.false187 ], [ %call105, %lor.lhs.false181 ], [ %call105, %lor.lhs.false178 ], [ %call105, %lor.lhs.false172 ], [ %call105, %lor.lhs.false169 ], [ %call105, %if.end163 ], [ %call105, %lor.lhs.false155 ], [ %call105, %if.end148 ], [ %call105, %lor.lhs.false143 ], [ %call105, %if.end136 ], [ %call105, %lor.lhs.false131 ], [ %call105, %if.end124 ], [ %call105, %if.end117 ], [ %call105, %lor.lhs.false112 ], [ %call105, %lor.lhs.false108 ], [ %call105, %lor.lhs.false104 ], [ null, %if.end100 ], [ null, %lor.lhs.false92 ], [ null, %if.end85 ], [ null, %if.then76 ], [ null, %if.then62 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false39 ], [ null, %lor.lhs.false33 ], [ null, %if.end27 ], [ null, %if.then11 ], [ null, %if.else18 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call105, %lor.lhs.false434 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false430 ], [ 0, %lor.lhs.false426 ], [ 0, %lor.lhs.false422 ], [ 0, %lor.lhs.false418 ], [ 0, %lor.lhs.false414 ], [ 0, %lor.lhs.false410 ], [ 0, %lor.lhs.false406 ], [ 0, %lor.lhs.false402 ], [ 0, %lor.lhs.false398 ], [ 0, %lor.lhs.false394 ], [ 0, %lor.lhs.false390 ], [ 0, %lor.lhs.false386 ], [ 0, %lor.lhs.false382 ], [ 0, %lor.lhs.false378 ], [ 0, %lor.lhs.false374 ], [ 0, %if.end370 ], [ 0, %lor.lhs.false270 ], [ 0, %lor.lhs.false264 ], [ 0, %lor.lhs.false258 ], [ 0, %lor.lhs.false252 ], [ 0, %lor.lhs.false246 ], [ 0, %if.then240 ], [ 0, %lor.lhs.false326 ], [ 0, %lor.lhs.false320 ], [ 0, %lor.lhs.false314 ], [ 0, %lor.lhs.false311 ], [ 0, %if.then305 ], [ 0, %lor.lhs.false364 ], [ 0, %lor.lhs.false358 ], [ 0, %lor.lhs.false355 ], [ 0, %lor.lhs.false349 ], [ 0, %lor.lhs.false346 ], [ 0, %lor.lhs.false340 ], [ 0, %if.else334 ], [ 0, %lor.lhs.false296 ], [ 0, %lor.lhs.false289 ], [ 0, %lor.lhs.false285 ], [ 0, %if.else279 ], [ 0, %lor.lhs.false228 ], [ 0, %if.then221 ], [ 0, %lor.lhs.false211 ], [ 0, %if.then205 ], [ 0, %lor.lhs.false196 ], [ 0, %lor.lhs.false190 ], [ 0, %lor.lhs.false187 ], [ 0, %lor.lhs.false181 ], [ 0, %lor.lhs.false178 ], [ 0, %lor.lhs.false172 ], [ 0, %lor.lhs.false169 ], [ 0, %if.end163 ], [ 0, %lor.lhs.false155 ], [ 0, %if.end148 ], [ 0, %lor.lhs.false143 ], [ 0, %if.end136 ], [ 0, %lor.lhs.false131 ], [ 0, %if.end124 ], [ 0, %if.end117 ], [ 0, %lor.lhs.false112 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false104 ], [ 0, %if.end100 ], [ 0, %lor.lhs.false92 ], [ 0, %if.end85 ], [ 0, %if.then76 ], [ 0, %if.then62 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false33 ], [ 0, %if.end27 ], [ 0, %if.then11 ], [ 0, %if.else18 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false434 ]
  %76 = load %struct.bignum_st*, %struct.bignum_st** %order_out, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %76) #4
  %77 = load %struct.bignum_st*, %struct.bignum_st** %cofactor_out, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %77) #4
  %78 = load %struct.bignum_st*, %struct.bignum_st** %a_out, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %78) #4
  %79 = load %struct.bignum_st*, %struct.bignum_st** %b_out, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %79) #4
  %80 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !7
  call void @BN_free(%struct.bignum_st* noundef %80) #4
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #4
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0) #4
  %81 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparam, align 8, !tbaa !7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %81) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_trinomial_basis(%struct.ec_group_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_pentanomial_basis(%struct.ec_group_st* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @EVP_PKEY_gettable_params(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !8, i64 8}
!11 = !{!"int", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !8, i64 8}
!17 = !{!"c2_curve_test", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !8, i64 56, !8, i64 64, !11, i64 72}
!18 = !{!17, !8, i64 16}
!19 = !{!17, !8, i64 24}
!20 = !{!17, !8, i64 32}
!21 = !{!17, !8, i64 40}
!22 = !{!17, !8, i64 56}
!23 = !{!17, !8, i64 64}
!24 = !{!17, !8, i64 0}
!25 = !{!17, !11, i64 72}
!26 = !{!27, !11, i64 4}
!27 = !{!"nistp_test_params", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!28 = !{!27, !11, i64 0}
!29 = !{!27, !8, i64 8}
!30 = !{!27, !8, i64 16}
!31 = !{!27, !8, i64 24}
!32 = !{!27, !8, i64 32}
!33 = !{!27, !8, i64 40}
!34 = !{!27, !8, i64 48}
!35 = !{!27, !8, i64 56}
!36 = !{!27, !8, i64 64}
!37 = !{!27, !8, i64 72}
!38 = distinct !{!38, !14}
!39 = !{!11, !11, i64 0}
