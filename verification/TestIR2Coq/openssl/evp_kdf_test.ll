; ModuleID = 'test/evp_kdf_test.c'
source_filename = "test/evp_kdf_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kdf_ctx_st = type opaque
%struct.asn1_object_st = type opaque
%struct.evp_kdf_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"test_kdf_pbkdf1\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test_kdf_kbkdf_6803_128\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"test_kdf_kbkdf_6803_256\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"test_kdf_kbkdf_invalid_digest\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"test_kdf_kbkdf_invalid_mac\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"test_kdf_kbkdf_zero_output_size\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"test_kdf_kbkdf_empty_key\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"test_kdf_kbkdf_1byte_key\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"test_kdf_kbkdf_8009_prf1\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"test_kdf_kbkdf_8009_prf2\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"test_kdf_kbkdf_fixedinfo\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"test_kdf_get_kdf\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"test_kdf_tls1_prf\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"test_kdf_tls1_prf_invalid_digest\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"test_kdf_tls1_prf_zero_output_size\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"test_kdf_tls1_prf_empty_secret\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"test_kdf_tls1_prf_1byte_secret\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"test_kdf_tls1_prf_empty_seed\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"test_kdf_tls1_prf_1byte_seed\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"test_kdf_hkdf\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"test_kdf_hkdf_invalid_digest\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"test_kdf_hkdf_zero_output_size\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"test_kdf_hkdf_empty_key\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"test_kdf_hkdf_1byte_key\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"test_kdf_hkdf_empty_salt\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"test_kdf_hkdf_gettables\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"test_kdf_hkdf_gettables_expandonly\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"test_kdf_hkdf_gettables_no_digest\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"test_kdf_hkdf_derive_set_params_fail\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"test_kdf_hkdf_set_invalid_mode\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"test_kdf_hkdf_set_ctx_param_fail\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test_kdf_pbkdf2\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"test_kdf_pbkdf2_small_output\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"test_kdf_pbkdf2_large_output\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"test_kdf_pbkdf2_small_salt\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"test_kdf_pbkdf2_small_iterations\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"test_kdf_pbkdf2_small_salt_pkcs5\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"test_kdf_pbkdf2_small_iterations_pkcs5\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"test_kdf_pbkdf2_invalid_digest\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"test_kdf_scrypt\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"test_kdf_ss_hash\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"test_kdf_ss_hmac\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"test_kdf_ss_kmac\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"test_kdf_sshkdf\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"test_kdf_x963\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"test_kdf_x942_asn1\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"test_kdf_krb5kdf\00", align 1
@__const.test_kdf_pbkdf1.expected = private unnamed_addr constant [25 x i8] c"\FB\83M6m\BCS\875\1B4u\95\882O>\82\81\01!\93d\00\CC", align 16
@.str.47 = private unnamed_addr constant [20 x i8] c"test/evp_kdf_test.c\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"libctx = OSSL_LIB_CTX_new()\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"PBKDF1 only available in legacy provider\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"passwordPASSWORDpassword\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"saltSALTsaltSALTsaltSALTsaltSALTsalt\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"kctx = get_kdfbyname_libctx(libctx, OSSL_KDF_NAME_PBKDF1)\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"PBKDF1\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"EVP_KDF_CTX_set_params(kctx, params)\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"EVP_KDF_derive(kctx, out, sizeof(out), NULL)\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@test_kdf_kbkdf_6803_128.input_key = internal global [16 x i8] c"W\D0)r\98\FF\D9\D3]\E5\A4\7F\B4\BD\E2K", align 16
@test_kdf_kbkdf_6803_128.constants = internal global [3 x [5 x i8]] [[5 x i8] c"\00\00\00\02\99", [5 x i8] c"\00\00\00\02\AA", [5 x i8] c"\00\00\00\02U"], align 1
@test_kdf_kbkdf_6803_128.outputs = internal global [3 x [16 x i8]] [[16 x i8] c"\D1UwZ \9D\05\F0+8\D4*8\9EZV", [16 x i8] c"d\DF\83\F8ZS/\17W}\8C7\03W\96\AB", [16 x i8] c">O\BD\F3\0F\B8%\9CB\\\B6\C9o\1FF5"], align 16
@test_kdf_kbkdf_6803_128.iv = internal global [16 x i8] zeroinitializer, align 16
@.str.66 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"CAMELLIA-128-CBC\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"FEEDBACK\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"KBKDF\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"kctx\00", align 1
@.str.76 = private unnamed_addr constant [53 x i8] c"EVP_KDF_derive(kctx, result, sizeof(result), params)\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"outputs[i]\00", align 1
@test_kdf_kbkdf_6803_256.input_key = internal global [32 x i8] c"\B9\D6\82\8B V\B7\BEem\88\A1#\B1\FA\C6\82\14\AC+r~\CF_i\AF\E0\C4\DF*m,", align 16
@test_kdf_kbkdf_6803_256.constants = internal global [3 x [5 x i8]] [[5 x i8] c"\00\00\00\02\99", [5 x i8] c"\00\00\00\02\AA", [5 x i8] c"\00\00\00\02U"], align 1
@test_kdf_kbkdf_6803_256.outputs = internal global [3 x [32 x i8]] [[32 x i8] c"\E4g\F9\A9U+\C7\D3\15Zb \AF\9C\19\22\0E\EE\D4\FFx\B0\D1\E6\A1TI\91F\1A\9EP", [32 x i8] c"A*\EF\C3b\A7(_\C3\96ljQ\81\E7`Z\E6u#[mT\9F\BF\C9\ABf0\A4\C6\04", [32 x i8] c"\FAbO\A0\E5#\99?\A3\88\AE\FD\C6~g\EB\CD\8C\08\E8\A0$k\1Ds\B0\D1\DD\9F\C5\82\B0"], align 16
@test_kdf_kbkdf_6803_256.iv = internal global [16 x i8] zeroinitializer, align 16
@.str.79 = private unnamed_addr constant [17 x i8] c"CAMELLIA-256-CBC\00", align 1
@test_kdf_kbkdf_invalid_digest.key = internal global [1 x i8] c"\01", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"blah\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"COUNTER\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@test_kdf_kbkdf_invalid_mac.key = internal global [1 x i8] c"\01", align 1
@test_kdf_kbkdf_zero_output_size.key = internal global [1 x i8] c"\01", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"EVP_KDF_derive(kctx, result, 0, NULL)\00", align 1
@test_kdf_kbkdf_empty_key.key = internal global [1 x i8] c"\01", align 1
@.str.87 = private unnamed_addr constant [51 x i8] c"EVP_KDF_derive(kctx, result, sizeof(result), NULL)\00", align 1
@test_kdf_kbkdf_1byte_key.key = internal global [1 x i8] c"\01", align 1
@test_kdf_kbkdf_8009_prf1.input_key = internal global [16 x i8] c"7\05\D9`\80\C1w(\A0\E8\00\EA\B6\E0\D2<", align 16
@test_kdf_kbkdf_8009_prf1.output = internal global [32 x i8] c"\9D\18\86\16\F68R\FE\86\91[\B8@\B4\A8\86\FF>k\B0\F8\19\B4\9B\893\93\D3\93\85B\95", align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@test_kdf_kbkdf_8009_prf2.input_key = internal global [32 x i8] c"m@M7\FA\F7\9F\9D\F0\D35h\D3 f\98\00\EBH6G.\A8\A0&\D1kq\82F\0CR", align 16
@test_kdf_kbkdf_8009_prf2.output = internal global [48 x i8] c"\98\01\F6\9A6\8C+\F6u\E5\95!\E1w\D9\A0\7Fg\EF\E1\CF\DE\8D<\8Doj\02V\E3\B1}\B3\C1\B6*\D1\B8U3`\D1sg\EB\15\14\D2", align 16
@.str.90 = private unnamed_addr constant [7 x i8] c"AES128\00", align 1
@test_kdf_kbkdf_fixedinfo.input_key = internal global [16 x i8] c"\C1\0B\15.\8C\97\B7~\18pN\0F\0B\D3\83\05", align 16
@test_kdf_kbkdf_fixedinfo.fixed_input = internal global [60 x i8] c"\98\CDL\BB\BE\BE\15\D1}\C8nm\BA\D8\00\A2\DC\BDd\F7\C7\AD\0Ex\E9\CF\94\FF\DB\A8\9D\03\E9~\AD\F6\C4\F7\B8\06\CA\F5*\A3\8F\09\D0\EBq\D7\1FI{\CCi\06\B4\8D6\C4", align 16
@test_kdf_kbkdf_fixedinfo.output = internal global [16 x i8] c"&\FA\F6\19\08\AD\9E\E8\81\B80\\\22\1D\B5?", align 16
@.str.91 = private unnamed_addr constant [6 x i8] c"use-l\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"use-separator\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"obj = OBJ_nid2obj(NID_id_pbkdf2)\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"kdf1 = EVP_KDF_fetch(NULL, OSSL_KDF_NAME_PBKDF2, NULL)\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"PBKDF2\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"kdf2 = EVP_KDF_fetch(NULL, OBJ_nid2sn(OBJ_obj2nid(obj)), NULL)\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"kdf1 = EVP_KDF_fetch(NULL, SN_tls1_prf, NULL)\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"TLS1-PRF\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"kdf2 = EVP_KDF_fetch(NULL, LN_tls1_prf, NULL)\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"tls1-prf\00", align 1
@.str.101 = private unnamed_addr constant [59 x i8] c"kdf2 = EVP_KDF_fetch(NULL, OBJ_nid2sn(NID_tls1_prf), NULL)\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"EVP_KDF_get0_provider(kdf1)\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"EVP_KDF_get0_provider(kdf2)\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"EVP_KDF_get0_name(kdf1)\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"EVP_KDF_get0_name(kdf2)\00", align 1
@test_kdf_tls1_prf.expected = internal constant [16 x i8] c"\8EM\93%0\D7e\A0\AA\E9t\C3\04s^\CC", align 16
@.str.106 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.107 = private unnamed_addr constant [45 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_TLS1_PRF)\00", align 1
@.str.108 = private unnamed_addr constant [47 x i8] c"EVP_KDF_derive(kctx, out, sizeof(out), params)\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"EVP_KDF_derive(kctx, out, 0, NULL)\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@test_kdf_hkdf.expected = internal constant [10 x i8] c"*\C46\9FRY\96\F8\DE\13", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.113 = private unnamed_addr constant [41 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_HKDF)\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"HKDF\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@.str.116 = private unnamed_addr constant [113 x i8] c"params = construct_hkdf_params( has_digest ? \22sha256\22 : NULL, \22secret\22, 6, \22salt\22, expand_only ? NULL : \22label\22)\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"gettables = EVP_KDF_CTX_gettable_params(kctx)\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"p = OSSL_PARAM_locate_const(gettables, OSSL_KDF_PARAM_SIZE)\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.120 = private unnamed_addr constant [41 x i8] c"EVP_KDF_CTX_get_params(kctx, params_get)\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"expand_only ? SHA256_DIGEST_LENGTH : SIZE_MAX\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"BADMODE\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@__const.test_kdf_pbkdf2.expected = private unnamed_addr constant [25 x i8] c"4\8C\89\DB\CB\D3+/2\D8\14\B8\11n\84\CF+\174~\BC\18\00\18\1C", align 16
@.str.126 = private unnamed_addr constant [43 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_PBKDF2)\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"pkcs5\00", align 1
@.str.128 = private unnamed_addr constant [45 x i8] c"EVP_KDF_derive(kctx, out, 112 / 8 - 1, NULL)\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"saltSALT\00", align 1
@.str.131 = private unnamed_addr constant [42 x i8] c"EVP_KDF_CTX_set_params(kctx, mode_params)\00", align 1
@test_kdf_scrypt.expected = internal constant [64 x i8] c"\FD\BA\BE\1C\9D4r\00xV\E7\19\0D\01\E9\FE|j\D7\CB\C8#x0\E7svcK71b.\AF0\D9.\22\A3\88o\F1\09'\9D\980\DA\C7'\AF\B9J\83\EEm\83`\CB\DF\A2\CC\06@", align 16
@.str.132 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"NaCl\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1
@.str.138 = private unnamed_addr constant [43 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_SCRYPT)\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"SCRYPT\00", align 1
@.str.140 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_set_uint(p - 1, 10 * 1024 * 1024)\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"EVP_KDF_CTX_set_params(kctx, p - 1)\00", align 1
@test_kdf_ss_hash.z = internal global [56 x i8] c"m\BD\C2?\04T\88\E4\06'W\B0k\9E\BA\E1\83\FCZYF\D8\0D\B9?\ECob\EC\07\E3r\7F\01&\AE\D1,\E4\B2b\F4}H\D5B\87\F8\1DGL|;\18P\E9", align 16
@test_kdf_ss_hash.other = internal global [47 x i8] c"\A1\B2\C3\D4\E5CAVSid<\83.\98I\DC\DB\A7\1E\9A19\E6\06\E0\95\DE<&Jf\E9\8A\16XT\CD\07\98\9B\1E\E0\EC?\8D\BE", align 16
@test_kdf_ss_hash.expected = internal constant [14 x i8] c"\A4b\DE\16\A8\9D\E8Fn\F5F\0BG\B8", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.143 = private unnamed_addr constant [42 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_SSKDF)\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"SSKDF\00", align 1
@test_kdf_ss_hmac.z = internal global [14 x i8] c"\B7J\14\9A\16\15F\F8\C2\0B\06\ACN\D4", align 1
@test_kdf_ss_hmac.other = internal global [12 x i8] c"4\8A7\A2~\F1(/_\02\0D\CC", align 1
@test_kdf_ss_hmac.salt = internal global [16 x i8] c"68'\1C\CDh\A2]\C2N\CD\DD9\EF?\89", align 16
@test_kdf_ss_hmac.expected = internal constant [16 x i8] c"D\F6v\E8\\\1B\1A\8B\BC=1\92\18c\1C\A3", align 16
@test_kdf_ss_kmac.z = internal global [14 x i8] c"\B7J\14\9A\16\15F\F8\C2\0B\06\ACN\D4", align 1
@test_kdf_ss_kmac.other = internal global [12 x i8] c"4\8A7\A2~\F1(/_\02\0D\CC", align 1
@test_kdf_ss_kmac.salt = internal global [16 x i8] c"68'\1C\CDh\A2]\C2N\CD\DD9\EF?\89", align 16
@test_kdf_ss_kmac.expected = internal constant [64 x i8] c"\E9\C1\84S\A0b\B5;\DB\FC\BBZ4\BD\B8\E5\E7\07\EE\BB]\D14BC\D8\CF\C2\C2\E63/\91\BD\A5\86\F3}\E4\8Ae\D4\C5\14\FD\EF\AA\1EgT\F3s\D28\E1\95\AE\15~\1D\E8\14\98\03", align 16
@.str.145 = private unnamed_addr constant [8 x i8] c"KMAC128\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"maclen\00", align 1
@test_kdf_sshkdf.key = internal global [133 x i8] c"\00\00\00\81\00\87\\U\1C\EFRjJ\8B\E1\A7\DF'\E9\ED5K\AC\9A\FBq\F5=\BA\E9\05g\9D\14\F9\FA\F2F\9CSE|\F8\0A6k\E2x\96[\A6%Rv\CA-\9FJ\97\D2q\F7\1EP\D8\A9\ECF%:j\90j\C2\C5\E4\F4\8B'\A6<\E0\8D\809\0AI*\A4;\AD\9D\88,\CA\C2=\AC\88\BC\AD\A4\B4\D4&\A3b\08=\ABei\C5L\22M\D2\D8vC\AA\22v\93\E1A\AD\160\CE\13\14N", align 16
@test_kdf_sshkdf.xcghash = internal global [32 x i8] c"\0Eh?\C8\A9\ED|/\F0-\EF#\B2t^\BC\99\B2g\DA\A8jJ\A7ir9\08\82S\F6B", align 16
@test_kdf_sshkdf.sessid = internal global [32 x i8] c"\0Eh?\C8\A9\ED|/\F0-\EF#\B2t^\BC\99\B2g\DA\A8jJ\A7ir9\08\82S\F6B", align 16
@test_kdf_sshkdf.expected = internal constant [8 x i8] c"A\FF.\AD\16\83\F1\E6", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"xcghash\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.150 = private unnamed_addr constant [43 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_SSHKDF)\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"SSHKDF\00", align 1
@test_kdf_x963.z = internal global [66 x i8] c"\00\AA[\B7\9B3\E3\89\FAX\CE\AD\C0G\19\7F\14\E77\12\F4R\CA\A9\FCL\9A\DB6\93H\B8\15\079/\1A\86\DD\FD\B7\C4\FF\821\C4\BD\0FD\E4J\1BU\B1@GG\A9\E2\E7S\F5^\F0Z-", align 16
@test_kdf_x963.shared = internal global [16 x i8] c"\E3\B5\B4\C1\B0\D5\CF\1D+:/\997\89]1", align 16
@test_kdf_x963.expected = internal constant [128 x i8] c"Dc\F8i\F3\CC\18v\9BR&K\01\12\B5\85\8Fz\D3*Z-\96\D8\CF\FA\BF\7F\A73c=nM\D2\A5\99\AC\CE\B3\EAT\A6!|\E0\B5\0E\EFOk@\A5\C3\02P\A5\A8\EE\EE \80\02&p\89\DB\F3Q\F3\F5\02*\A9c\8B\F1\EEA\9D\EA\9CO\F7E\A2Z\C2{\DA3\CA\08\BDV\DD\1AY\B4\10l\F2\DB\BC\0A\B2\AA\8E.\FA{\17\90-4'iQ\CE\CC\AB\87\F9f\1C>\88\16", align 16
@.str.152 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.153 = private unnamed_addr constant [44 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_X963KDF)\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"X963KDF\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"id-smime-alg-CMS3DESwrap\00", align 1
@test_kdf_x942_asn1.z = internal global [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@test_kdf_x942_asn1.expected = internal constant [24 x i8] c"\A0\96a9#v\F7\04M\90R\A3\97\882F\B6\7F_\1E\F6>\B5\FB", align 16
@.str.156 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"cekalg\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_X942KDF_ASN1)\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"X942KDF-ASN1\00", align 1
@test_kdf_krb5kdf.key = internal global [16 x i8] c"B&<n\89\F4\FC(\B8\DFh\EE\09y\9F\15", align 16
@test_kdf_krb5kdf.constant = internal global [5 x i8] c"\00\00\00\02\99", align 1
@test_kdf_krb5kdf.expected = internal constant [16 x i8] c"4(\0A8+\C9'i\B2\DA/\9E\F0f\85K", align 16
@.str.160 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.162 = private unnamed_addr constant [44 x i8] c"kctx = get_kdfbyname(OSSL_KDF_NAME_KRB5KDF)\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"KRB5KDF\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_6803_128) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_6803_256) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_invalid_digest) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_invalid_mac) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_zero_output_size) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_empty_key) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_1byte_key) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_8009_prf1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_8009_prf2) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_kbkdf_fixedinfo) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_get_kdf) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_invalid_digest) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_zero_output_size) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_empty_secret) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_1byte_secret) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_empty_seed) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf_1byte_seed) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_invalid_digest) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_zero_output_size) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_empty_key) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_1byte_key) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_empty_salt) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_gettables) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_gettables_expandonly) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_gettables_no_digest) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_derive_set_params_fail) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_set_invalid_mode) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf_set_ctx_param_fail) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_small_output) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_large_output) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_small_salt) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_small_iterations) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_small_salt_pkcs5) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_small_iterations_pkcs5) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_pbkdf2_invalid_digest) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_scrypt) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_ss_hash) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_ss_hmac) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_ss_kmac) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_sshkdf) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_x963) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_x942_asn1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_krb5kdf) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf1() #0 {
entry:
  %out = alloca [25 x i8], align 16
  %iterations = alloca i32, align 4
  %expected = alloca [25 x i8], align 16
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #7
  %1 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %2 = getelementptr inbounds [25 x i8], [25 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %2) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(25) %2, i8* noundef nonnull align 16 dereferenceable(25) getelementptr inbounds ([25 x i8], [25 x i8]* @__const.test_kdf_pbkdf1.expected, i64 0, i64 0), i64 25, i1 false)
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  %3 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #6
  %call4 = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i64 0, i64 0)) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc %struct.ossl_param_st* @construct_pbkdf1_params(i32* noundef nonnull %iterations) #8
  %4 = bitcast %struct.ossl_param_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname_libctx(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #8
  %5 = bitcast %struct.evp_kdf_ctx_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.55, i64 0, i64 0), i8* noundef %5) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call9, %struct.ossl_param_st* noundef %call6) #6
  %cmp14 = icmp ne i32 %call13, 0
  %conv = zext i1 %cmp14 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 528, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %call18 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call9, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef null) #6
  %call19 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call24 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 25, i8* noundef nonnull %2, i64 noundef 25) #6
  %tobool25.not = icmp ne i32 %call24, 0
  %spec.select = zext i1 %tobool25.not to i32
  br label %err

err:                                              ; preds = %entry, %lor.lhs.false21, %if.end5, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false17
  %ret.0 = phi i32 [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ %spec.select, %lor.lhs.false21 ], [ 0, %entry ]
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call9, %lor.lhs.false17 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false ], [ null, %if.end5 ], [ %call9, %lor.lhs.false21 ], [ null, %entry ]
  %params.0 = phi %struct.ossl_param_st* [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false12 ], [ %call6, %lor.lhs.false ], [ %call6, %if.end5 ], [ %call6, %lor.lhs.false21 ], [ null, %entry ]
  %prov.0 = phi %struct.ossl_provider_st* [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false12 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end5 ], [ %call2, %lor.lhs.false21 ], [ null, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  %6 = bitcast %struct.ossl_param_st* %params.0 to i8*
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 536) #6
  %call28 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov.0) #6
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_6803_128() #0 {
entry:
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %result = alloca [16 x i8], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp25 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #7
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %2 = bitcast %struct.ossl_param_st* %tmp to i8*
  %arrayidx3 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  %4 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  %arrayidx7 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  %6 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  %arrayidx11 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %7 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  %8 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  %arrayidx15 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %9 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  %10 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  %arrayidx21 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %11 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  %12 = bitcast %struct.ossl_param_st* %arrayidx21 to i8*
  %arrayidx24 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %13 = bitcast %struct.ossl_param_st* %tmp25 to i8*
  %14 = bitcast %struct.ossl_param_st* %arrayidx24 to i8*
  %arrayidx = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  br label %for.body

for.cond:                                         ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !7

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_6803_128.input_key, i64 0, i64 0), i64 noundef 16) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  %arraydecay = getelementptr inbounds [3 x [5 x i8]], [3 x [5 x i8]]* @test_kdf_kbkdf_6803_128.constants, i64 0, i64 %indvars.iv, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %arraydecay, i64 noundef 5) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_6803_128.iv, i64 0, i64 0), i64 noundef 16) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp25) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %15 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 985, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %15) #6
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call29 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 16, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call30 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 987, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call29, i32 noundef 0) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %arraydecay35 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @test_kdf_kbkdf_6803_128.outputs, i64 0, i64 %indvars.iv, i64 0
  %call36 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 989, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef nonnull %arraydecay35, i64 noundef 16) #6
  %tobool37.not = icmp eq i32 %call36, 0
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  br i1 %tobool37.not, label %cleanup, label %for.cond

cleanup.sink.split:                               ; preds = %for.body, %land.lhs.true
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %land.rhs, %cleanup.sink.split
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ 1, %for.cond ], [ 0, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_6803_256() #0 {
entry:
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %result = alloca [32 x i8], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp25 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #7
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %2 = bitcast %struct.ossl_param_st* %tmp to i8*
  %arrayidx3 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  %4 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  %arrayidx7 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  %6 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  %arrayidx11 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %7 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  %8 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  %arrayidx15 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %9 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  %10 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  %arrayidx21 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %11 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  %12 = bitcast %struct.ossl_param_st* %arrayidx21 to i8*
  %arrayidx24 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %13 = bitcast %struct.ossl_param_st* %tmp25 to i8*
  %14 = bitcast %struct.ossl_param_st* %arrayidx24 to i8*
  %arrayidx = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  br label %for.body

for.cond:                                         ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !14

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_kbkdf_6803_256.input_key, i64 0, i64 0), i64 noundef 32) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  %arraydecay = getelementptr inbounds [3 x [5 x i8]], [3 x [5 x i8]]* @test_kdf_kbkdf_6803_256.constants, i64 0, i64 %indvars.iv, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %arraydecay, i64 noundef 5) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_6803_256.iv, i64 0, i64 0), i64 noundef 16) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #7
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp25) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %15 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1051, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %15) #6
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call29 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 32, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call30 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1053, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call29, i32 noundef 0) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup.sink.split, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %arraydecay35 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @test_kdf_kbkdf_6803_256.outputs, i64 0, i64 %indvars.iv, i64 0
  %call36 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1055, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 32, i8* noundef nonnull %arraydecay35, i64 noundef 32) #6
  %tobool37.not = icmp eq i32 %call36, 0
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  br i1 %tobool37.not, label %cleanup, label %for.cond

cleanup.sink.split:                               ; preds = %for.body, %land.lhs.true
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %land.rhs, %cleanup.sink.split
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ 1, %for.cond ], [ 0, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_invalid_digest() #0 {
entry:
  %call = tail call fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @test_kdf_kbkdf_invalid_digest.key, i64 0, i64 0), i64 noundef 1) #8
  %0 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %1 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1105, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1106, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %2 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #6
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1109) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %2, %land.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_invalid_mac() #0 {
entry:
  %call = tail call fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @test_kdf_kbkdf_invalid_mac.key, i64 0, i64 0), i64 noundef 1) #8
  %0 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1122, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %1 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1127, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1128, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %2 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #6
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1131) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %2, %land.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_zero_output_size() #0 {
entry:
  %result = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %call = tail call fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @test_kdf_kbkdf_zero_output_size.key, i64 0, i64 0), i64 noundef 1) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1191, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1196, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1197, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call8 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1198, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #6
  %tobool10 = icmp ne i32 %call9, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1201) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %3, %land.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_empty_key() #0 {
entry:
  %result = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %call = tail call fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @test_kdf_kbkdf_empty_key.key, i64 0, i64 0), i64 noundef 0) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1145, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1150, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1151, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call8 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 32, %struct.ossl_param_st* noundef null) #6
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1152, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #6
  %tobool10 = icmp ne i32 %call9, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1155) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %3, %land.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_1byte_key() #0 {
entry:
  %result = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %call = tail call fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @test_kdf_kbkdf_1byte_key.key, i64 0, i64 0), i64 noundef 1) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1169, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1173, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 32, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1174, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %3 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1177) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %3, %land.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_8009_prf1() #0 {
entry:
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %result = alloca [32 x i8], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #7
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %params46 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 0) #6
  %arrayidx3 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %2 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 noundef 0) #6
  %3 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %arrayidx7 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %4 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_8009_prf1.input_key, i64 0, i64 0), i64 noundef 16) #6
  %5 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %arrayidx11 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %6 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  %call = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i64 noundef %call) #6
  %7 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %arrayidx15 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %8 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  %call17 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call17) #6
  %9 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %arrayidx19 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %10 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20) #6
  %11 = bitcast %struct.ossl_param_st* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %call21 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %12 = bitcast %struct.evp_kdf_ctx_st* %call21 to i8*
  %call22 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1239, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %12) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call24 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call21, i8* noundef nonnull %1, i64 noundef 32, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call25 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1240, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call24, i32 noundef 0) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call28 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1241, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_kbkdf_8009_prf1.output, i64 0, i64 0), i64 noundef 32) #6
  %tobool29 = icmp ne i32 %call28, 0
  %phi.cast = zext i1 %tobool29 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call21) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #7
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_8009_prf2() #0 {
entry:
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %result = alloca [48 x i8], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #7
  %1 = getelementptr inbounds [48 x i8], [48 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %params46 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i64 noundef 0) #6
  %arrayidx3 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %2 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 noundef 0) #6
  %3 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %arrayidx7 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %4 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_kbkdf_8009_prf2.input_key, i64 0, i64 0), i64 noundef 32) #6
  %5 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %arrayidx11 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %6 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  %call = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i64 noundef %call) #6
  %7 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %arrayidx15 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %8 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  %call17 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call17) #6
  %9 = bitcast %struct.ossl_param_st* %arrayidx15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %arrayidx19 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %10 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20) #6
  %11 = bitcast %struct.ossl_param_st* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %call21 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %12 = bitcast %struct.evp_kdf_ctx_st* %call21 to i8*
  %call22 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1283, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %12) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call24 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call21, i8* noundef nonnull %1, i64 noundef 48, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call25 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1284, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call24, i32 noundef 0) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call28 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1285, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 48, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @test_kdf_kbkdf_8009_prf2.output, i64 0, i64 0), i64 noundef 48) #6
  %tobool29 = icmp ne i32 %call28, 0
  %phi.cast = zext i1 %tobool29 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call21) #6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #7
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_kbkdf_fixedinfo() #0 {
entry:
  %params = alloca [8 x %struct.ossl_param_st], align 16
  %use_l = alloca i32, align 4
  %use_separator = alloca i32, align 4
  %result = alloca [16 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [8 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #7
  %1 = bitcast i32* %use_l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %use_l, align 4, !tbaa !3
  %2 = bitcast i32* %use_separator to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %use_separator, align 4, !tbaa !3
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %incdec.ptr = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params35 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params35, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %4 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i64 noundef 0) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr3 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %6 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i64 noundef 0) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %incdec.ptr5 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %8 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_fixedinfo.input_key, i64 0, i64 0), i64 noundef 16) #6
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %incdec.ptr7 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %10 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @test_kdf_kbkdf_fixedinfo.fixed_input, i64 0, i64 0), i64 noundef 60) #6
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %incdec.ptr9 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %12 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i32* noundef nonnull %use_l) #6
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #7
  %incdec.ptr11 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 7
  %14 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i64 0, i64 0), i32* noundef nonnull %use_separator) #6
  %15 = bitcast %struct.ossl_param_st* %incdec.ptr9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #7
  %16 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #6
  %17 = bitcast %struct.ossl_param_st* %incdec.ptr11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0)) #8
  %18 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %18) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call17 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %3, i64 noundef 16, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call18 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1344, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1345, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_kbkdf_fixedinfo.output, i64 0, i64 0), i64 noundef 16) #6
  %tobool22 = icmp ne i32 %call21, 0
  %phi.cast = zext i1 %tobool22 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %19 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #7
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_get_kdf() #0 {
entry:
  %call = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 69) #6
  %0 = bitcast %struct.asn1_object_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1515, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8* noundef null) #6
  %1 = bitcast %struct.evp_kdf_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1516, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.94, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #6
  %call7 = tail call i8* @OBJ_nid2sn(i32 noundef %call6) #6
  %call8 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %call7, i8* noundef null) #6
  %2 = bitcast %struct.evp_kdf_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1518, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.96, i64 0, i64 0), i8* noundef %2) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = tail call fastcc i32 @test_kdfs_same(%struct.evp_kdf_st* noundef %call2, %struct.evp_kdf_st* noundef %call8) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false5, %lor.lhs.false, %entry
  %kdf2.0 = phi %struct.evp_kdf_st* [ %call8, %lor.lhs.false11 ], [ %call8, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %kdf1.0 = phi %struct.evp_kdf_st* [ %call2, %lor.lhs.false11 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false11
  %kdf2.1 = phi %struct.evp_kdf_st* [ %call8, %lor.lhs.false11 ], [ %kdf2.0, %if.then ]
  %kdf1.1 = phi %struct.evp_kdf_st* [ %call2, %lor.lhs.false11 ], [ %kdf1.0, %if.then ]
  %ok.0 = phi i32 [ 1, %lor.lhs.false11 ], [ 0, %if.then ]
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %kdf1.1) #6
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %kdf2.1) #6
  %call14 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0), i8* noundef null) #6
  %3 = bitcast %struct.evp_kdf_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1526, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.97, i64 0, i64 0), i8* noundef %3) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then24, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end
  %call18 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i64 0, i64 0), i8* noundef null) #6
  %4 = bitcast %struct.evp_kdf_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1527, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i64 0, i64 0), i8* noundef %4) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call fastcc i32 @test_kdfs_same(%struct.evp_kdf_st* noundef %call14, %struct.evp_kdf_st* noundef %call18) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false17, %if.end
  %kdf2.2 = phi %struct.evp_kdf_st* [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false17 ], [ null, %if.end ]
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false21
  %kdf2.3 = phi %struct.evp_kdf_st* [ %call18, %lor.lhs.false21 ], [ %kdf2.2, %if.then24 ]
  %ok.1 = phi i32 [ %ok.0, %lor.lhs.false21 ], [ 0, %if.then24 ]
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %kdf2.3) #6
  %call26 = tail call i8* @OBJ_nid2sn(i32 noundef 1021) #6
  %call27 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %call26, i8* noundef null) #6
  %5 = bitcast %struct.evp_kdf_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.101, i64 0, i64 0), i8* noundef %5) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end25
  %call31 = tail call fastcc i32 @test_kdfs_same(%struct.evp_kdf_st* noundef %call14, %struct.evp_kdf_st* noundef %call27) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false30, %if.end25
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %lor.lhs.false30
  %ok.2 = phi i32 [ %ok.1, %lor.lhs.false30 ], [ 0, %if.then33 ]
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call14) #6
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call27) #6
  ret i32 %ok.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 16, %struct.ossl_param_st* noundef %call) #6
  %call7 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_tls1_prf.expected, i64 0, i64 0), i64 noundef 16) #6
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 78) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_invalid_digest() #0 {
entry:
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8
  %0 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %1 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %2 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 95) #6
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_zero_output_size() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 115) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_empty_secret() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 16, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 133) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_1byte_secret() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 16, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 151) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_empty_seed() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 16, %struct.ossl_param_st* noundef null) #6
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 171) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf_1byte_seed() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 16, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 189) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 10, %struct.ossl_param_st* noundef %call) #6
  %call7 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_kdf_hkdf.expected, i64 0, i64 0), i64 noundef 10) #6
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 238) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_invalid_digest() #0 {
entry:
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %0 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %1 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %1) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %2 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 315) #6
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_zero_output_size() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 418) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_empty_key() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 10, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 436) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_1byte_key() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0), i64 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 449, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 10, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 454) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_empty_salt() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #7
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 10, %struct.ossl_param_st* noundef %call) #6
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 472) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #7
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_gettables() #0 {
entry:
  %call = tail call fastcc i32 @do_kdf_hkdf_gettables(i32 noundef 0, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_gettables_expandonly() #0 {
entry:
  %call = tail call fastcc i32 @do_kdf_hkdf_gettables(i32 noundef 1, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_gettables_no_digest() #0 {
entry:
  %call = tail call fastcc i32 @do_kdf_hkdf_gettables(i32 noundef 1, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_derive_set_params_fail() #0 {
entry:
  %i = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %out = alloca [10 x i8], align 1
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %i, align 4, !tbaa !3
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %2) #7
  %call = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params13 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %i) #6
  %arrayidx2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3) #6
  %5 = bitcast %struct.ossl_param_st* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %call5 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %2, i64 noundef 10, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #6
  %tobool7.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool7.not to i32
  br label %end

end:                                              ; preds = %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_set_invalid_mode() #0 {
entry:
  %bad_mode = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i32* %bad_mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 100, i32* %bad_mode, align 4, !tbaa !3
  %1 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %call = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i64 noundef 0) #6
  %arrayidx2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3) #6
  %4 = bitcast %struct.ossl_param_st* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %call4 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end8

if.end8:                                          ; preds = %if.end
  %5 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i32* noundef nonnull %bad_mode) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %1, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %call12 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call13 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call12, i32 noundef 0) #6
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = zext i1 %tobool14.not to i32
  br label %end

end:                                              ; preds = %if.end8, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end8 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf_set_ctx_param_fail() #0 {
entry:
  %call = tail call fastcc i32 @do_kdf_hkdf_set_invalid_param(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i32 noundef 5) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @do_kdf_hkdf_set_invalid_param(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i32 noundef 4) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @do_kdf_hkdf_set_invalid_param(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 noundef 4) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true3
  %call6 = tail call fastcc i32 @do_kdf_hkdf_set_invalid_param(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i32 noundef 4) #8
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2() #0 {
entry:
  %out = alloca [25 x i8], align 16
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %expected = alloca [25 x i8], align 16
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #7
  %1 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %2 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %3 = getelementptr inbounds [25 x i8], [25 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %3) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(25) %3, i8* noundef nonnull align 16 dereferenceable(25) getelementptr inbounds ([25 x i8], [25 x i8]* @__const.test_kdf_pbkdf2.expected, i64 0, i64 0), i64 25, i1 false)
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %4 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %5 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %5) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef %call) #6
  %call7 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call12 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 25, i8* noundef nonnull %3, i64 noundef 25) #6
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false9, %entry, %lor.lhs.false, %lor.lhs.false5
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false9 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false9 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 592) #6
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_small_output() #0 {
entry:
  %out = alloca [25 x i8], align 16
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #7
  %1 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %2 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %3 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 609, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %4 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %4) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 13, %struct.ossl_param_st* noundef null) #6
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #6
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false9, %entry, %lor.lhs.false, %lor.lhs.false5
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false9 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false9 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 619) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_large_output() #0 {
entry:
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %0 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 640, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 641, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %3) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false5, %entry, %lor.lhs.false
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false5 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 650) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_small_salt() #0 {
entry:
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %0 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 666, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 667, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %3) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false5, %entry, %lor.lhs.false
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false5 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 675) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_small_iterations() #0 {
entry:
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %0 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 1, i32* %iterations, align 4, !tbaa !3
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 692, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %3) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false5, %entry, %lor.lhs.false
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false5 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 700) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_small_salt_pkcs5() #0 {
entry:
  %out = alloca [25 x i8], align 16
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %mode_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #7
  %1 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %2 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 1, i32* %mode, align 4, !tbaa !3
  %3 = bitcast [2 x %struct.ossl_param_st]* %mode_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #7
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.130, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %4 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 718, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %5 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 719, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %5) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef null) #6
  %call11 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  store i32 0, i32* %mode, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 0
  %mode_params37 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %mode_params37, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i32* noundef nonnull %mode) #6
  %arrayidx13 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 1
  %6 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #6
  %7 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call16 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i64 0, i64 0), i32 noundef %conv18) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end
  %call23 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef null) #6
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call23, i32 noundef 0) #6
  %tobool25.not = icmp ne i32 %call24, 0
  %spec.select = zext i1 %tobool25.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false21, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false21 ]
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false21 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 737) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_small_iterations_pkcs5() #0 {
entry:
  %out = alloca [25 x i8], align 16
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %mode_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %0 = getelementptr inbounds [25 x i8], [25 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %0) #7
  %1 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 1, i32* %iterations, align 4, !tbaa !3
  %2 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 1, i32* %mode, align 4, !tbaa !3
  %3 = bitcast [2 x %struct.ossl_param_st]* %mode_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #7
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %4 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 755, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %5 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %5) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef null) #6
  %call11 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  store i32 0, i32* %mode, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 0
  %mode_params37 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %mode_params37, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i32* noundef nonnull %mode) #6
  %arrayidx13 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %mode_params, i64 0, i64 1
  %6 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #6
  %7 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call16 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.131, i64 0, i64 0), i32 noundef %conv18) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end
  %call23 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call2, i8* noundef nonnull %0, i64 noundef 25, %struct.ossl_param_st* noundef null) #6
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 768, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call23, i32 noundef 0) #6
  %tobool25.not = icmp ne i32 %call24, 0
  %spec.select = zext i1 %tobool25.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false21, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %if.end ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false21 ]
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false21 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 774) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_pbkdf2_invalid_digest() #0 {
entry:
  %iterations = alloca i32, align 4
  %mode = alloca i32, align 4
  %0 = bitcast i32* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 4096, i32* %iterations, align 4, !tbaa !3
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %mode, align 4, !tbaa !3
  %call = call fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i32* noundef nonnull %iterations, i32* noundef nonnull %mode) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 790, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 791, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i8* noundef %3) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 793, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false5, %entry, %lor.lhs.false
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false5 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false5 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 799) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_scrypt() #0 {
entry:
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %out = alloca [64 x i8], align 16
  %nu = alloca i32, align 4
  %ru = alloca i32, align 4
  %pu = alloca i32, align 4
  %maxmem = alloca i32, align 4
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp11 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %2 = bitcast i32* %nu to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 1024, i32* %nu, align 4, !tbaa !3
  %3 = bitcast i32* %ru to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i32 8, i32* %ru, align 4, !tbaa !3
  %4 = bitcast i32* %pu to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i32 16, i32* %pu, align 4, !tbaa !3
  %5 = bitcast i32* %maxmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  store i32 16, i32* %maxmem, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params52 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0), i64 noundef 8) #6
  %incdec.ptr1 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %6 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 noundef 4) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %incdec.ptr3 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %8 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i64 0, i64 0), i32* noundef nonnull %nu) #6
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %incdec.ptr5 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %10 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0), i32* noundef nonnull %ru) #6
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %incdec.ptr7 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %12 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i32* noundef nonnull %pu) #6
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #7
  %incdec.ptr9 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %14 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i64 0, i64 0), i32* noundef nonnull %maxmem) #6
  %15 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #7
  %16 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11) #6
  %17 = bitcast %struct.ossl_param_st* %incdec.ptr9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i64 0, i64 0)) #8
  %18 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 833, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.138, i64 0, i64 0), i8* noundef %18) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call14 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 834, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %call18 = call i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef nonnull %incdec.ptr7, i32 noundef 10485760) #6
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 837, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.140, i64 0, i64 0), i32 noundef %conv20) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %call25 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %incdec.ptr7) #6
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 838, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.141, i64 0, i64 0), i32 noundef %conv27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true23
  %call32 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 64, %struct.ossl_param_st* noundef null) #6
  %call33 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 839, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call32, i32 noundef 0) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true30
  %call36 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 840, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 64, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_kdf_scrypt.expected, i64 0, i64 0), i64 noundef 64) #6
  %tobool37 = icmp ne i32 %call36, 0
  %phi.cast = zext i1 %tobool37 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true30, %land.lhs.true23, %land.lhs.true17, %land.lhs.true, %entry
  %19 = phi i32 [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #7
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_ss_hash() #0 {
entry:
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %out = alloca [14 x i8], align 1
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #7
  %1 = getelementptr inbounds [14 x i8], [14 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 14, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params22 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @test_kdf_ss_hash.z, i64 0, i64 0), i64 noundef 56) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @test_kdf_ss_hash.other, i64 0, i64 0), i64 noundef 47) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %6 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0)) #8
  %8 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 877, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.143, i64 0, i64 0), i8* noundef %8) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 14, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call10 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 878, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 879, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @test_kdf_ss_hash.expected, i64 0, i64 0), i64 noundef 14) #6
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #7
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_ss_hmac() #0 {
entry:
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %out = alloca [16 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp9 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #7
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params28 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 0) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @test_kdf_ss_hmac.z, i64 0, i64 0), i64 noundef 14) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr5 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %6 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @test_kdf_ss_hmac.other, i64 0, i64 0), i64 noundef 12) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %incdec.ptr7 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %8 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_ss_hmac.salt, i64 0, i64 0), i64 noundef 16) #6
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %10 = bitcast %struct.ossl_param_st* %tmp9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp9) #6
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0)) #8
  %12 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.143, i64 0, i64 0), i8* noundef %12) #6
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call13 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 16, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1386, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1387, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_ss_hmac.expected, i64 0, i64 0), i64 noundef 16) #6
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #7
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_ss_kmac() #0 {
entry:
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %out = alloca [64 x i8], align 16
  %mac_size = alloca i64, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp9 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %2 = bitcast i64* %mac_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i64 20, i64* %mac_size, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params28 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %3 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @test_kdf_ss_kmac.z, i64 0, i64 0), i64 noundef 14) #6
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %incdec.ptr3 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %5 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @test_kdf_ss_kmac.other, i64 0, i64 0), i64 noundef 12) #6
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %incdec.ptr5 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %7 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_ss_kmac.salt, i64 0, i64 0), i64 noundef 16) #6
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  %incdec.ptr7 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %9 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64* noundef nonnull %mac_size) #6
  %10 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  %11 = bitcast %struct.ossl_param_st* %tmp9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp9) #6
  %12 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0)) #8
  %13 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1429, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.143, i64 0, i64 0), i8* noundef %13) #6
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call13 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 64, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1430, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1431, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 64, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_kdf_ss_kmac.expected, i64 0, i64 0), i64 noundef 64) #6
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #7
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_sshkdf() #0 {
entry:
  %params = alloca [6 x %struct.ossl_param_st], align 16
  %kdftype = alloca i8, align 1
  %out = alloca [8 x i8], align 1
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp9 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [6 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %kdftype) #7
  store i8 65, i8* %kdftype, align 1, !tbaa !15
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params28 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @test_kdf_sshkdf.key, i64 0, i64 0), i64 noundef 133) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_sshkdf.xcghash, i64 0, i64 0), i64 noundef 32) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr5 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %6 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_kdf_sshkdf.sessid, i64 0, i64 0), i64 noundef 32) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %incdec.ptr7 = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %8 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i8* noundef nonnull %kdftype, i64 noundef 1) #6
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %10 = bitcast %struct.ossl_param_st* %tmp9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp9) #6
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i64 0, i64 0)) #8
  %12 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1486, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.150, i64 0, i64 0), i8* noundef %12) #6
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [6 x %struct.ossl_param_st], [6 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call13 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 8, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1487, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1488, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_kdf_sshkdf.expected, i64 0, i64 0), i64 noundef 8) #6
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %kdftype) #7
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #7
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_x963() #0 {
entry:
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %out = alloca [128 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #7
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params22 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @test_kdf_x963.z, i64 0, i64 0), i64 noundef 66) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_x963.shared, i64 0, i64 0), i64 noundef 16) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %6 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i64 0, i64 0)) #8
  %8 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 930, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.153, i64 0, i64 0), i8* noundef %8) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 128, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call10 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 931, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 932, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 128, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @test_kdf_x963.expected, i64 0, i64 0), i64 noundef 128) #6
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #7
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_x942_asn1() #0 {
entry:
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %out = alloca [24 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #7
  %1 = getelementptr inbounds [24 x i8], [24 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params23 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @test_kdf_x942_asn1.z, i64 0, i64 0), i64 noundef 20) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.155, i64 0, i64 0), i64 noundef 0) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %6 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i64 0, i64 0)) #8
  %8 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1573, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.158, i64 0, i64 0), i8* noundef %8) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 24, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call10 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1574, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1575, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @test_kdf_x942_asn1.expected, i64 0, i64 0), i64 noundef 24) #6
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #7
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_krb5kdf() #0 {
entry:
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %out = alloca [16 x i8], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %0) #7
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  %incdec.ptr = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params22 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i64 0, i64 0), i64 noundef 0) #6
  %incdec.ptr1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_krb5kdf.key, i64 0, i64 0), i64 noundef 16) #6
  %3 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_kdf_krb5kdf.constant, i64 0, i64 0), i64 noundef 5) #6
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %6 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5) #6
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call = call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i64 0, i64 0)) #8
  %8 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call6 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1609, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.162, i64 0, i64 0), i8* noundef %8) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call9 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %call, i8* noundef nonnull %1, i64 noundef 16, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %call10 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1610, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1611, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_kdf_krb5kdf.expected, i64 0, i64 0), i64 noundef 16) #6
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %0) #7
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @construct_pbkdf1_params(i32* noundef %iter) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp9 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 200, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 479) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i64 noundef %call1) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7
  %incdec.ptr2 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  %call4 = call i64 @strlen(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i64 noundef %call4) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr5 = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32* noundef %iter) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr2, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %incdec.ptr7 = getelementptr inbounds i8, i8* %call, i64 160
  %4 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %5 = bitcast %struct.ossl_param_st* %tmp9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp9) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr7, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname_libctx(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i8* noundef null) #6
  %call1 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call) #6
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call) #6
  ret %struct.evp_kdf_ctx_st* %call1
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname_libctx(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %name) #8
  ret %struct.evp_kdf_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @construct_kbkdf_params(i8* noundef %digest, i8* noundef %mac, i8* noundef %key, i64 noundef %keylen) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp11 = alloca %struct.ossl_param_st, align 8
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1068) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef %digest, i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7
  %incdec.ptr1 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i8* noundef %mac, i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr3 = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr1, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %incdec.ptr5 = getelementptr inbounds i8, i8* %call, i64 160
  %4 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %key, i64 noundef %keylen) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr3, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr7 = getelementptr inbounds i8, i8* %call, i64 200
  %5 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  %call9 = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i64 noundef %call9) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr5, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %incdec.ptr10 = getelementptr inbounds i8, i8* %call, i64 240
  %6 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  %call12 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i64 noundef %call12) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %7 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr10, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_kdfs_same(%struct.evp_kdf_st* noundef %kdf1, %struct.evp_kdf_st* noundef %kdf2) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kdf_st* %kdf1, %kdf2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef %kdf1) #6
  %0 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef %kdf2) #6
  %1 = bitcast %struct.ossl_provider_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1505, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i64 0, i64 0), i8* noundef %0, i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call3 = tail call i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* noundef %kdf1) #6
  %call4 = tail call i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* noundef %kdf2) #6
  %call5 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1506, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.105, i64 0, i64 0), i8* noundef %call3, i8* noundef %call4) #6
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %return

return:                                           ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @EVP_KDF_get0_provider(%struct.evp_kdf_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @EVP_KDF_get0_name(%struct.evp_kdf_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @construct_tls1_prf_params(i8* noundef %digest, i8* noundef %secret, i8* noundef %seed) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 160, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 40) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef %digest, i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7
  %incdec.ptr1 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  %call3 = call i64 @strlen(i8* noundef %secret) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i8* noundef %secret, i64 noundef %call3) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr4 = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  %call6 = call i64 @strlen(i8* noundef %seed) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef %seed, i64 noundef %call6) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr1, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %4 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr4, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef %digest, i8* noundef %key, i64 noundef %keylen, i8* noundef %salt, i8* noundef %info) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp15 = alloca %struct.ossl_param_st, align 8
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 200, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 196) #6
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %digest, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %incdec.ptr to %struct.ossl_param_st*
  %2 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef nonnull %digest, i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %p.0 = phi %struct.ossl_param_st* [ %1, %if.then2 ], [ %0, %if.end ]
  %incdec.ptr4 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  %call6 = call i64 @strlen(i8* noundef %salt) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %salt, i64 noundef %call6) #6
  %4 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %incdec.ptr7 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %key, i64 noundef %keylen) #6
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %cmp9.not = icmp eq i8* %info, null
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end3
  %7 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #7
  %call13 = call i64 @strlen(i8* noundef nonnull %info) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i8* noundef nonnull %info, i64 noundef %call13) #6
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #7
  br label %if.end16

if.else:                                          ; preds = %if.end3
  %9 = bitcast %struct.ossl_param_st* %tmp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i64 0, i64 0), i64 noundef 0) #6
  %10 = bitcast %struct.ossl_param_st* %incdec.ptr7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  %p.1 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 3
  %11 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17) #6
  %12 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16
  %retval.0 = phi %struct.ossl_param_st* [ %0, %if.end16 ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_kdf_hkdf_gettables(i32 noundef %expand_only, i32 noundef %has_digest) unnamed_addr #0 {
entry:
  %sz = alloca i64, align 8
  %params_get = alloca [2 x %struct.ossl_param_st], align 16
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp43 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %sz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %sz, align 8, !tbaa !12
  %1 = bitcast [2 x %struct.ossl_param_st]* %params_get to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %tobool.not = icmp eq i32 %has_digest, 0
  %cond = select i1 %tobool.not, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0)
  %tobool1.not = icmp eq i32 %expand_only, 0
  %cond2 = select i1 %tobool1.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0), i8* null
  %call = tail call fastcc %struct.ossl_param_st* @construct_hkdf_params(i8* noundef %cond, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %cond2) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.116, i64 0, i64 0), i8* noundef %2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_kdf_ctx_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %3) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call5, %struct.ossl_param_st* noundef %call) #6
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false8
  %call12 = tail call %struct.ossl_param_st* @EVP_KDF_CTX_gettable_params(%struct.evp_kdf_ctx_st* noundef %call5) #6
  %4 = bitcast %struct.ossl_param_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.117, i64 0, i64 0), i8* noundef %4) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %call16 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call12, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0)) #6
  %5 = bitcast %struct.ossl_param_st* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.118, i64 0, i64 0), i8* noundef %5) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false15
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params_get, i64 0, i64 0
  %params_get63 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params_get, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params_get63, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i64* noundef nonnull %sz) #6
  %arrayidx21 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params_get, i64 0, i64 1
  %6 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22) #6
  %7 = bitcast %struct.ossl_param_st* %arrayidx21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %call36 = call i32 @EVP_KDF_CTX_get_params(%struct.evp_kdf_ctx_st* noundef %call5, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0), i32 noundef %call36, i32 noundef 1) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.then24
  %8 = load i64, i64* %sz, align 8, !tbaa !12
  %cond30 = select i1 %tobool1.not, i64 -1, i64 32
  %call31 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.122, i64 0, i64 0), i64 noundef %8, i64 noundef %cond30) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end41

if.else:                                          ; preds = %if.end20
  %call37 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call36, i32 noundef 0) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end41

if.end41:                                         ; preds = %if.else, %lor.lhs.false28
  %9 = bitcast %struct.ossl_param_st* %tmp43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp43) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %1, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  %call45 = call i32 @EVP_KDF_CTX_get_params(%struct.evp_kdf_ctx_st* noundef %call5, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %call46 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i32 noundef %call45, i32 noundef -2) #6
  %tobool47.not = icmp ne i32 %call46, 0
  %spec.select = zext i1 %tobool47.not to i32
  br label %err

err:                                              ; preds = %if.end41, %if.else, %if.then24, %lor.lhs.false28, %if.end, %lor.lhs.false15, %entry, %lor.lhs.false, %lor.lhs.false8
  %ret.0 = phi i32 [ 0, %lor.lhs.false28 ], [ 0, %if.then24 ], [ 0, %if.else ], [ 0, %lor.lhs.false15 ], [ 0, %if.end ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end41 ]
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ %call5, %lor.lhs.false28 ], [ %call5, %if.then24 ], [ %call5, %if.else ], [ %call5, %lor.lhs.false15 ], [ %call5, %if.end ], [ %call5, %lor.lhs.false8 ], [ %call5, %lor.lhs.false ], [ null, %entry ], [ %call5, %if.end41 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #6
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 283) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

declare dso_local %struct.ossl_param_st* @EVP_KDF_CTX_gettable_params(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_KDF_CTX_get_params(%struct.evp_kdf_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_kdf_hkdf_set_invalid_param(i8* noundef %key, i32 noundef %type) unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %buf = alloca [2 x i8], align 1
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %1 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #7
  %call = tail call fastcc %struct.evp_kdf_ctx_st* @get_kdfbyname(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_kdf_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %type, 4
  %params18 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params18, i8* noundef %key, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0), i64 noundef 0) #6
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params18, i8* noundef %key, i8* noundef nonnull %1, i64 noundef 2) #6
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %arrayidx6 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #6
  %4 = bitcast %struct.ossl_param_st* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %arraydecay8 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call9 = call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arraydecay8) #6
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #6
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %end

end:                                              ; preds = %if.end5, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end5 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @construct_pbkdf2_params(i8* noundef %digest, i8* noundef %salt, i32* noundef %iter, i32* noundef %mode) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp3 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %tmp11 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 240, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 noundef 545) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0)) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i64 noundef %call1) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7
  %incdec.ptr2 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast %struct.ossl_param_st* %tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7
  %call4 = call i64 @strlen(i8* noundef %salt) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* noundef %salt, i64 noundef %call4) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7
  %incdec.ptr5 = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32* noundef %iter) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr2, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %incdec.ptr7 = getelementptr inbounds i8, i8* %call, i64 160
  %4 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* noundef %digest, i64 noundef 0) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr9 = getelementptr inbounds i8, i8* %call, i64 200
  %5 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i32* noundef %mode) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr7, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %6 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr9, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare dso_local i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i64 0, i64 8, !10, i64 8, i64 4, !3, i64 16, i64 8, !10, i64 24, i64 8, !12, i64 32, i64 8, !12}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = distinct !{!14, !8}
!15 = !{!5, !5, i64 0}
