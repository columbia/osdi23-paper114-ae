; ModuleID = 'test/evp_extra_test2.c'
source_filename = "test/evp_extra_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.APK_DATA_st = type { i8*, i64, i32 }
%struct.evp_md_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.rsa_st = type opaque
%struct.bio_method_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@mainctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@nullprov = internal global %struct.ossl_provider_st* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"test_alternative_default\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"test_d2i_AutoPrivateKey_ex\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test_d2i_PrivateKey_ex\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test_dsa_todata\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"test_pkey_todata_null\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"test_pkey_export_null\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"test_pkey_export\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test_pkcs8key_nid_bio\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"test_PEM_read_bio_negative\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"test/evp_extra_test2.c\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"sha256 = EVP_MD_fetch(NULL, \22SHA2-256\22, NULL)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"oldctx = OSSL_LIB_CTX_set0_default(mainctx)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"OSSL_LIB_CTX_set0_default(oldctx)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mainctx\00", align 1
@keydata = internal unnamed_addr constant [6 x %struct.APK_DATA_st] [%struct.APK_DATA_st { i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i32 0, i32 0), i64 608, i32 6 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([634 x i8], [634 x i8]* @kExampleRSAKeyPKCS8, i32 0, i32 0), i64 634, i32 6 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @kExampleECXKey2DER, i32 0, i32 0), i64 48, i32 1034 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([121 x i8], [121 x i8]* @kExampleECKeyDER, i32 0, i32 0), i64 121, i32 408 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([80 x i8], [80 x i8]* @kExampleECKey2DER, i32 0, i32 0), i64 80, i32 408 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([554 x i8], [554 x i8]* @kExampleDHPrivateKeyDER, i32 0, i32 0), i64 554, i32 28 }], align 16
@.str.15 = private unnamed_addr constant [65 x i8] c"pkey = d2i_AutoPrivateKey_ex(NULL, &p, input_len, mainctx, NULL)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"input + input_len\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get_id(pkey)\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"expected_id\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_RSA_D, &priv_bn)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.22 = private unnamed_addr constant [94 x i8] c"EVP_PKEY_get_octet_string_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, buffer, sizeof(buffer), &len)\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, &priv_bn)\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_FFC_P, &p_bn)\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_FFC_G, &g_bn)\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@kExampleRSAKeyDER = internal constant [608 x i8] c"0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@kExampleRSAKeyPKCS8 = internal constant [634 x i8] c"0\82\02v\02\01\000\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04\82\02`0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@kExampleECXKey2DER = internal constant [48 x i8] c"0.\02\01\000\05\06\03+en\04\22\04 \C8\A9\D5\A9\10\91\AD\85\1Cf\8B\076\C1\C9\A0)6\C0\D3\ADbg\08X\08\80G\BA\05tu", align 16
@kExampleECKeyDER = internal constant [121 x i8] c"0w\02\01\01\04 \07\0F\08rz\D4\A0J\9C\DDY\C9M\89hw\08\B5o\C9]0w\0E\E8\D1\C9\CE\0A\8B\B4j\A0\0A\06\08*\86H\CE=\03\01\07\A1D\03B\00\04\E6+i\E2\BFe\9F\97\BE/\1E\0D\94\8AL\D5\97k\B7\A9\1E\0DF\FB\DD\A9\A9\1E\9D\DC\BAZ\01\E7\D6\97\A8\0A\18\F9\C3\C4\A3\1EV\E2|\83H\DB\16\1A\1C\F5\1D~\F1\94-K\CFr\22\C1", align 16
@kExampleECKey2DER = internal constant [80 x i8] c"0N\02\01\000\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\22\04705\02\01\01\040s\E3:\05\F2\B6\99m\0C3\7F\15\9E\10\A9\17L\0A\82Wq\13z\ACF\A2^\1C\E0\C7\B2\F8 @\C2'\C8\BE\02~\96i\E0\04\CB\89\0BB", align 16
@kExampleDHPrivateKeyDER = internal constant [554 x i8] c"0\82\02&\02\01\000\82\01\17\06\09*\86H\86\F7\0D\01\03\010\82\01\08\02\82\01\01\00\D8K\0F\0Eky\E9#N\E4\BE\9A\8Fz\\\A3 \D0\86k\95x9Yz\11*[\87\A4\FB/\99\D0W\F5\E1\A3\AFA\D1\CD\A3\94\BB\E5Zh\E2\EEiVQ\B2\EE\F2\FE\10\C9U\E3\82<P\0D\F5\82s\E4\D6>E\B4\89\80\E4\F0\99\85+K\F9\B8\FD,<I.\B3V~\99\07\D3\F7\D9\E4\0Cd\C5}\03\8E\05<\0A@\17\AD\A8\0F\9B\F4\8B\A7\DB\16OJW\0B\89\80\0B\9F&V?\1D\FAR-\1A\9E\DCB\A3.\A9\87\E3\8BE^\EE\99\B80\15X\A3_\B5i\D8\0C\E8k6\D8\AB\D8\E4wF\13\A2\15\B3\9C\AD\99\91\E5\A30}@p\B32^\AF\96\8D\E6?G\A3\18\DA\E1\9A \11\E1IQE\E3\8C\A5V9g\CB\9D\CF\BA\F4FN\0A\B6\0B\A9\B4\F6\F1j\C8c\E2\B4\B2\9FD\AA\0A\DAS\F7R\14W\EE,]1\9C'\03d\9E\C0\1EK\1BO\EE\A6?\C1>a\93\02\01\02\04\82\01\04\02\82\01\00~\C2\04\F9\95\C7\EF\96\BE\A0\9D-\C3\0C:g\02|};\C9\B1\DE\13\97d\EF\87\80O\BF\A2\AC\18k\D5\B2B\0F\DA(@\93@\B2\1E\80\B0l\DE\9CT\A4\B4h)\E0\13W\1D\C9\87\C0\DE/\1Dr\F0\C0\E4N\04H\F5-\8D\9A\1B\E5\EB\06\AB|t\10<\A8-9\BC\E3\15>c7\8C\1B\F1\B3\99\B6\AEZ\EB\B3=09i\DB\F2O\94\B7q\AF\BA\\\1F\F8k\E5\D1\B1\00\81\E2m\ECe\F7~\CE\03\84hBj\8BG\8EJ\88\DE\82\DD\AF\A9o\18\F7\C6\E2\B9\97\CEG\8F\85\19aBg!}\13n\B5Zb\F3\08\E2p;\0E\85<\A1\D3\EDzC\D6\DE0\\H\B2\99\AB>e\A6f\80\22\FF\92\C1B\1C0\87t\1ESW|\F8wQ\F1t\16\F4E&w\0A\05\96\13\12\06\86+\B8I\82iC\0AW\A70\19L\B8G\82ndz\06\13Z\82\98\D6z\09\EC\03\8D\03", align 16
@.str.28 = private unnamed_addr constant [47 x i8] c"provider = OSSL_PROVIDER_load(NULL, \22default\22)\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"key_bio = BIO_new_mem_buf(keydata[id].kder, keydata[id].size)\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"pkey = PEM_read_bio_PrivateKey(key_bio, NULL, NULL, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"BIO_seek(key_bio, 0)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"pkey = d2i_PrivateKey_bio(key_bio, NULL)\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"ERR_peek_error()\00", align 1
@dsa_key = internal constant [850 x i8] c"0\82\03N\02\01\00\02\82\01\01\00\DA\B3FMTW\C7\B4a\A0of\17\DA\EB\90\F0\A3\D1)\C9_\F2!=\85\A3J\F0\F869\1B\E3\EE7p\06\9B\E8\E3\0A\D2\F1\F6\C4B#\1Ftx\C2\16\F5\CE\D6\AB\A0\C6\E8\99=\F8\8B\FBG\F8^\05hm\8B\A8\AD\A1\C2:N\E0\AD\EC8u!U\22\CE\A2\E9\E5;\D7D\EBZ\03Y\A0\C5z\92Y}z\07\80\FCN\F8V~\F1\06\E0\BA\B2\E7[\22U\EEKBag,C\9A8+\17\C2b\12\8B\0B\22\8C\0C\1C\1C\92\B1\ECp\CE\0F\8C\FF\8D!\F9\19hM2YxB\1D\0C\C5\1A\CB(\E2\C1\1A5\F1B\0A\199\FA\83\D1\B4\AAi\0F\C2\8E\F9Y,\EE\11\FC>KD\FB\9A2\C8x#V\85I!C\12y\BD\A0pG/\AE\B6\D7l\C6\07v\A9\8A\A2\16\02\89\1F\1A\D1\A2\96V\D1\1F\10\E1\E5\9F?\DD\09\0C@\90q\EF\14A\02\82:k\E1\F8,]\BE\FD\1B\02\1D\00\E0 \E0|\02\16\A7lj\19\BA\D5\83s\F3}1\EF\A7\E1][\7F\F3\FC\DA\841\02\82\01\01\00\83\DB\A1\BC>\C7)\A5j\\,\E8z\8C~\E8\B8>\13G\CD6~y0z(\03\D3\D4\D2\E3\EE;F\DA\E0q\E6\CFF\86\0A7W\B6\E9\CF\A1x\19\B8r\9F0\8C*\04|/\0C'\A7\B3#\E0F\F2u\0C\03L\AD\FB\C1\CB(\CD\A0c\DBD\88\E0\DAl[\89\B2[@m\EBxz\D5\AF@RFc\92\13\0D\EE\EE\F9S\CA-N;\13\D8\0FP\D0DWg\0FE\8F!0\97\9E\80\D9\D0\91\B7\C9Zi\DA\EB\D5\EA7\F6\B3\BE\1F$\F1U\14(\05\B5\D8\84\0Fb\85\AA\ECwd\FD\80|A\00\88\A3y}Oo\E3v\F4\B5\97\B7\EBg(\BA\07\1AY2\C1S\D9\05kc\93\CE\A1\D9z\B2\FF\1C\12\0A\9A\E5Q\1E\BA\FC\95.(\A9\FCL\ED{\05\CAg\E0-\D7T\B3\05\1C#+5.\19HY\0EX\A8\01V\FBx\90\BA\08w\94E\05\13\C7k\96\D2\A3\A6\01\9F4\02\82\01\00\16\1A\B4m\9F\16l\CC\91f\FE0\EB\8ED\BA+z\C9\A8\95\F2\A68\D8\AF>\91h\E8R\F3\977p\F2G\A3\F4b&\F5;qRP\15\9Cm\A6m\92LHv1TH\A5\99z\D4a\F7!D\E7\D8\82\C3P\D3\D9\D4f \ABpL\97\9B\8D\AC\1Fx'\1EG\F8;\D1Us\F3\B4\8EmE@T\C6\D8\95\15'\B7_e\AA\CB$\C9I\872\AD\CB\F85cVr|Nl\AD_&\8C\D2\80A\AF\88# \03\A4\D5<ST\B0=\ED\0E\9ES\0Ac_\FD(W\09\07s\F4\0C\D4q]k\A0\D7\86\99)\9B\CA\FB\CC\D6/\FE\BE\94\EF\1A\0EU\84\A7\AF{\FA\EDwa(\22\EEk\11\DD\B0\17\1E\06\E4)L\C2?\D6u\B6\08\04U\13HOD\EA\8D\AF\CB\AC\22\C4j\B3\86\E5G\A9\B5r\17#\11\81\7F\00\00g\\\F4X\CC\E2F\CE\F5m\D8\18\91\C4 \BF\07HE\FD\02\1C/hD\CB\FBk\CB\8D\02I|\EE\D2\A6\D3C\B8\A4\09\B7\C1\D4K\C3f\A7\E0!", align 16
@__const.test_dsa_todata.dsa_seed = private unnamed_addr constant [28 x i8] c"\BC\8A\81d\9E\9Dc\A7\A3]\87\DD2\F3\C1\9F\18\22\EBsc\AD^{\90\C1\E3\E0", align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"pcounter\00", align 1
@.str.39 = private unnamed_addr constant [78 x i8] c"pkey = d2i_AutoPrivateKey_ex(NULL, &pkeydata, sizeof(dsa_key), mainctx, NULL)\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_todata(pkey, EVP_PKEY_KEYPAIR, &to_params)\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@dsa_p = internal constant [257 x i8] c"\00\DA\B3FMTW\C7\B4a\A0of\17\DA\EB\90\F0\A3\D1)\C9_\F2!=\85\A3J\F0\F869\1B\E3\EE7p\06\9B\E8\E3\0A\D2\F1\F6\C4B#\1Ftx\C2\16\F5\CE\D6\AB\A0\C6\E8\99=\F8\8B\FBG\F8^\05hm\8B\A8\AD\A1\C2:N\E0\AD\EC8u!U\22\CE\A2\E9\E5;\D7D\EBZ\03Y\A0\C5z\92Y}z\07\80\FCN\F8V~\F1\06\E0\BA\B2\E7[\22U\EEKBag,C\9A8+\17\C2b\12\8B\0B\22\8C\0C\1C\1C\92\B1\ECp\CE\0F\8C\FF\8D!\F9\19hM2YxB\1D\0C\C5\1A\CB(\E2\C1\1A5\F1B\0A\199\FA\83\D1\B4\AAi\0F\C2\8E\F9Y,\EE\11\FC>KD\FB\9A2\C8x#V\85I!C\12y\BD\A0pG/\AE\B6\D7l\C6\07v\A9\8A\A2\16\02\89\1F\1A\D1\A2\96V\D1\1F\10\E1\E5\9F?\DD\09\0C@\90q\EF\14A\02\82:k\E1\F8,]\BE\FD\1B", align 16
@.str.42 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@dsa_q = internal constant [29 x i8] c"\00\E0 \E0|\02\16\A7lj\19\BA\D5\83s\F3}1\EF\A7\E1][\7F\F3\FC\DA\841", align 16
@dsa_g = internal constant [257 x i8] c"\00\83\DB\A1\BC>\C7)\A5j\\,\E8z\8C~\E8\B8>\13G\CD6~y0z(\03\D3\D4\D2\E3\EE;F\DA\E0q\E6\CFF\86\0A7W\B6\E9\CF\A1x\19\B8r\9F0\8C*\04|/\0C'\A7\B3#\E0F\F2u\0C\03L\AD\FB\C1\CB(\CD\A0c\DBD\88\E0\DAl[\89\B2[@m\EBxz\D5\AF@RFc\92\13\0D\EE\EE\F9S\CA-N;\13\D8\0FP\D0DWg\0FE\8F!0\97\9E\80\D9\D0\91\B7\C9Zi\DA\EB\D5\EA7\F6\B3\BE\1F$\F1U\14(\05\B5\D8\84\0Fb\85\AA\ECwd\FD\80|A\00\88\A3y}Oo\E3v\F4\B5\97\B7\EBg(\BA\07\1AY2\C1S\D9\05kc\93\CE\A1\D9z\B2\FF\1C\12\0A\9A\E5Q\1E\BA\FC\95.(\A9\FCL\ED{\05\CAg\E0-\D7T\B3\05\1C#+5.\19HY\0EX\A8\01V\FBx\90\BA\08w\94E\05\13\C7k\96\D2\A3\A6\01\9F4", align 16
@.str.43 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@dsa_pub = internal constant [256 x i8] c"\16\1A\B4m\9F\16l\CC\91f\FE0\EB\8ED\BA+z\C9\A8\95\F2\A68\D8\AF>\91h\E8R\F3\977p\F2G\A3\F4b&\F5;qRP\15\9Cm\A6m\92LHv1TH\A5\99z\D4a\F7!D\E7\D8\82\C3P\D3\D9\D4f \ABpL\97\9B\8D\AC\1Fx'\1EG\F8;\D1Us\F3\B4\8EmE@T\C6\D8\95\15'\B7_e\AA\CB$\C9I\872\AD\CB\F85cVr|Nl\AD_&\8C\D2\80A\AF\88# \03\A4\D5<ST\B0=\ED\0E\9ES\0Ac_\FD(W\09\07s\F4\0C\D4q]k\A0\D7\86\99)\9B\CA\FB\CC\D6/\FE\BE\94\EF\1A\0EU\84\A7\AF{\FA\EDwa(\22\EEk\11\DD\B0\17\1E\06\E4)L\C2?\D6u\B6\08\04U\13HOD\EA\8D\AF\CB\AC\22\C4j\B3\86\E5G\A9\B5r\17#\11\81\7F\00\00g\\\F4X\CC\E2F\CE\F5m\D8\18\91\C4 \BF\07HE\FD", align 16
@dsa_priv = internal constant [28 x i8] c"/hD\CB\FBk\CB\8D\02I|\EE\D2\A6\D3C\B8\A4\09\B7\C1\D4K\C3f\A7\E0!", align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"hindex\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"validate-pq\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"validate-g\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"validate-legacy\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"OSSL_PARAM_locate(to_params, OSSL_PKEY_PARAM_FFC_SEED)\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"all_params = OSSL_PARAM_merge(to_params, gen_params)\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"p = OSSL_PARAM_locate(params, key)\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"OSSL_PARAM_get_BN(p, &bn)\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"len = BN_bn2binpad(bn, buffer, expected_len)\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"OSSL_PARAM_get_int(p, &val)\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"ctx = EVP_PKEY_CTX_new_from_name(mainctx, type, NULL)\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_fromdata_init(ctx)\00", align 1
@.str.60 = private unnamed_addr constant [70 x i8] c"EVP_PKEY_fromdata(ctx, &pkey, EVP_PKEY_KEYPAIR, (OSSL_PARAM *)params)\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_eq(pkey, expected)\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"gen_ctx = EVP_PKEY_CTX_new_from_name(mainctx, \22DSA\22, NULL)\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_fromdata_init(gen_ctx)\00", align 1
@.str.64 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_fromdata(gen_ctx, &pkey, EVP_PKEY_KEYPAIR, key_params)\00", align 1
@.str.65 = private unnamed_addr constant [60 x i8] c"check_ctx = EVP_PKEY_CTX_new_from_pkey(mainctx, pkey, NULL)\00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_param_check(check_ctx)\00", align 1
@.str.67 = private unnamed_addr constant [75 x i8] c"pkey = d2i_AutoPrivateKey_ex(NULL, &pdata, keydata[0].size, mainctx, NULL)\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_todata(NULL, EVP_PKEY_KEYPAIR, &params)\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"EVP_PKEY_todata(pkey, EVP_PKEY_KEYPAIR, NULL)\00", align 1
@.str.70 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_export(NULL, EVP_PKEY_KEYPAIR, test_pkey_export_cb, NULL)\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, NULL, NULL)\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.73 = private unnamed_addr constant [69 x i8] c"pkey = d2i_AutoPrivateKey_ex(NULL, &pdata, pdata_len, mainctx, NULL)\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, test_pkey_export_cb, pkey)\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_export(pkey, EVP_PKEY_KEYPAIR, test_pkey_export_cb, NULL)\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"rsa = d2i_RSAPrivateKey(NULL, &pdata, pdata_len)\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"pkey = EVP_PKEY_new()\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_assign_RSA(pkey, rsa)\00", align 1
@test_pkcs8key_nid_bio.pwd = internal constant [9 x i8] c"PASSWORD\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"enc_bio = BIO_new(BIO_s_mem())\00", align 1
@.str.80 = private unnamed_addr constant [71 x i8] c"in = BIO_new_mem_buf(kExampleRSAKeyPKCS8, sizeof(kExampleRSAKeyPKCS8))\00", align 1
@.str.81 = private unnamed_addr constant [51 x i8] c"pkey = d2i_PrivateKey_ex_bio(in, NULL, NULL, NULL)\00", align 1
@.str.82 = private unnamed_addr constant [82 x i8] c"i2d_PKCS8PrivateKey_nid_bio(enc_bio, pkey, nid, pwd, sizeof(pwd) - 1, NULL, NULL)\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"enc_datalen = BIO_get_mem_data(enc_bio, &enc_data)\00", align 1
@.str.84 = private unnamed_addr constant [69 x i8] c"pkey_dec = d2i_PKCS8PrivateKey_bio(enc_bio, NULL, NULL, (void *)pwd)\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_eq(pkey, pkey_dec)\00", align 1
@.str.86 = private unnamed_addr constant [70 x i8] c"key_bio = BIO_new_mem_buf(keydata[testid].kder, keydata[testid].size)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @mainctx, %struct.ossl_provider_st** noundef nonnull @nullprov, i8* noundef null, %struct.ossl_provider_st** noundef null, i8* noundef null) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %0) #4
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_alternative_default) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_d2i_AutoPrivateKey_ex, i32 noundef 6, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_d2i_PrivateKey_ex, i32 noundef 2, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_dsa_todata) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_pkey_todata_null) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_pkey_export_null) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_pkey_export) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_pkcs8key_nid_bio) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @test_PEM_read_bio_negative, i32 noundef 6, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_alternative_default() #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef null) #4
  %0 = bitcast %struct.evp_md_st* %call to i8*
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call2 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %1) #4
  %2 = bitcast %struct.ossl_lib_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef null) #4
  %3 = bitcast %struct.evp_md_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call5) #4
  %call10 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call2) #4
  %4 = bitcast %struct.ossl_lib_ctx_st* %call10 to i8*
  %5 = load i8*, i8** bitcast (%struct.ossl_lib_ctx_st** @mainctx to i8**), align 8, !tbaa !3
  %call11 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end9
  %call14 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef null) #4
  %6 = bitcast %struct.evp_md_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* noundef %6) #4
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false13, %if.end9, %if.end, %lor.lhs.false, %entry
  %sha256.0 = phi %struct.evp_md_st* [ null, %if.end9 ], [ %call5, %lor.lhs.false ], [ %call, %if.end ], [ %call, %entry ], [ %call14, %lor.lhs.false13 ]
  %ok.0 = phi i32 [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false13 ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.0) #4
  ret i32 %ok.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_d2i_AutoPrivateKey_ex(i32 noundef %i) #0 {
entry:
  %p = alloca i8*, align 8
  %p_bn = alloca %struct.bignum_st*, align 8
  %g_bn = alloca %struct.bignum_st*, align 8
  %priv_bn = alloca %struct.bignum_st*, align 8
  %buffer = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %idxprom = sext i32 %i to i64
  %kder = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %kder, align 8, !tbaa !7
  %size = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 1
  %2 = load i64, i64* %size, align 8, !tbaa !11
  %evptype = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 2
  %3 = load i32, i32* %evptype, align 8, !tbaa !12
  %4 = bitcast %struct.bignum_st** %p_bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  store %struct.bignum_st* null, %struct.bignum_st** %p_bn, align 8, !tbaa !3
  %5 = bitcast %struct.bignum_st** %g_bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  store %struct.bignum_st* null, %struct.bignum_st** %g_bn, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %priv_bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  store %struct.bignum_st* null, %struct.bignum_st** %priv_bn, align 8, !tbaa !3
  store i8* %1, i8** %p, align 8, !tbaa !3
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %2, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef null) #4
  %8 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 276, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0), i8* noundef %8) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i8*, i8** %p, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %call2 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* noundef %9, i8* noundef %add.ptr) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %done, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %call) #4
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call5, i32 noundef %3) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %done, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %10 = icmp ult i32 %i, 2
  br i1 %10, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st** noundef nonnull %priv_bn) #4
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %done, label %if.end55

if.else:                                          ; preds = %if.end
  %cmp17 = icmp eq i32 %i, 2
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.else
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #5
  %12 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  %call20 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 32, i64* noundef nonnull %len) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #5
  br i1 %tobool24.not, label %done, label %if.end55

if.else28:                                        ; preds = %if.else
  %call29 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %struct.bignum_st** noundef nonnull %priv_bn) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %done, label %if.end37

if.end37:                                         ; preds = %if.else28
  %cmp39 = icmp eq i32 %i, 5
  br i1 %cmp39, label %if.then41, label %if.end55

if.then41:                                        ; preds = %if.end37
  %call42 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p_bn) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %done, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.then41
  %call48 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.bignum_st** noundef nonnull %g_bn) #4
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %done, label %if.end55

if.end55:                                         ; preds = %if.then9, %if.then19, %lor.lhs.false47, %if.end37
  br label %done

done:                                             ; preds = %if.then19, %if.then41, %lor.lhs.false47, %if.else28, %if.then9, %entry, %lor.lhs.false, %lor.lhs.false4, %if.end55
  %ret.0 = phi i32 [ 1, %if.end55 ], [ 0, %lor.lhs.false47 ], [ 0, %if.then41 ], [ 0, %if.then9 ], [ 0, %if.then19 ], [ 0, %if.else28 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p_bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %13) #4
  %14 = load %struct.bignum_st*, %struct.bignum_st** %g_bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %14) #4
  %15 = load %struct.bignum_st*, %struct.bignum_st** %priv_bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %15) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_d2i_PrivateKey_ex(i32 noundef %testid) #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #4
  %0 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %testid, 0
  %cond = select i1 %cmp, i64 0, i64 2
  %kder = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %cond, i32 0
  %1 = load i8*, i8** %kder, align 16, !tbaa !7
  %size = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %cond, i32 1
  %2 = load i64, i64* %size, align 8, !tbaa !11
  %conv = trunc i64 %2 to i32
  %call4 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %1, i32 noundef %conv) #4
  %3 = bitcast %struct.bio_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.30, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call4, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %4 = bitcast %struct.evp_pkey_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i64 0, i64 0), i8* noundef %4) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  tail call void @ERR_clear_error() #4
  %call14 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call4, i32 noundef 128, i64 noundef 0, i8* noundef null) #4
  %conv15 = trunc i64 %call14 to i32
  %call16 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv15, i32 noundef 0) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  %call20 = tail call %struct.evp_pkey_st* @d2i_PrivateKey_bio(%struct.bio_st* noundef %call4, %struct.evp_pkey_st** noundef null) #4
  %5 = bitcast %struct.evp_pkey_st* %call20 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* noundef %5) #4
  %call22 = tail call i64 @ERR_peek_error() #4
  %conv23 = trunc i64 %call22 to i32
  %call24 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv23, i32 noundef 0) #4
  tail call void @test_openssl_errors() #4
  br label %err

err:                                              ; preds = %if.end13, %if.end8, %if.end, %entry, %if.end19
  %key_bio.0 = phi %struct.bio_st* [ %call4, %if.end19 ], [ %call4, %if.end13 ], [ %call4, %if.end8 ], [ %call4, %if.end ], [ null, %entry ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call20, %if.end19 ], [ %call9, %if.end13 ], [ %call9, %if.end8 ], [ null, %if.end ], [ null, %entry ]
  %ok.0 = phi i32 [ %call21, %if.end19 ], [ 0, %if.end13 ], [ 0, %if.end8 ], [ 0, %if.end ], [ 0, %entry ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #4
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %key_bio.0) #4
  %call26 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #4
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_dsa_todata() #0 {
entry:
  %to_params = alloca %struct.ossl_param_st*, align 8
  %gen_params = alloca [4 x %struct.ossl_param_st], align 16
  %pkeydata = alloca i8*, align 8
  %dsa_seed = alloca [28 x i8], align 16
  %dsa_pcounter = alloca i32, align 4
  %dsa_gindex = alloca i32, align 4
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp62 = alloca %struct.ossl_param_st, align 8
  %tmp64 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.ossl_param_st** %to_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %1 = bitcast [4 x %struct.ossl_param_st]* %gen_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %1) #5
  %2 = bitcast i8** %pkeydata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* getelementptr inbounds ([850 x i8], [850 x i8]* @dsa_key, i64 0, i64 0), i8** %pkeydata, align 8, !tbaa !3
  %3 = getelementptr inbounds [28 x i8], [28 x i8]* %dsa_seed, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %3) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(28) %3, i8* noundef nonnull align 16 dereferenceable(28) getelementptr inbounds ([28 x i8], [28 x i8]* @__const.test_dsa_todata.dsa_seed, i64 0, i64 0), i64 28, i1 false)
  %4 = bitcast i32* %dsa_pcounter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  store i32 319, i32* %dsa_pcounter, align 4, !tbaa !13
  %5 = bitcast i32* %dsa_gindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5
  store i32 5, i32* %dsa_gindex, align 4, !tbaa !13
  %arrayidx = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %gen_params, i64 0, i64 0
  %gen_params89 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %gen_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %gen_params89, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 28) #4
  %arrayidx1 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %gen_params, i64 0, i64 1
  %6 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32* noundef nonnull %dsa_gindex) #4
  %7 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #5
  %arrayidx3 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %gen_params, i64 0, i64 2
  %8 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32* noundef nonnull %dsa_pcounter) #4
  %9 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #5
  %arrayidx5 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %gen_params, i64 0, i64 3
  %10 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #5
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6) #4
  %11 = bitcast %struct.ossl_param_st* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #5
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %pkeydata, i64 noundef 850, %struct.ossl_lib_ctx_st* noundef %12, i8* noundef null) #4
  %13 = bitcast %struct.evp_pkey_st* %call to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 692, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.39, i64 0, i64 0), i8* noundef %13) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call8 = call i32 @EVP_PKEY_todata(%struct.evp_pkey_st* noundef %call, i32 noundef 135, %struct.ossl_param_st** noundef nonnull %to_params) #4
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call8, i32 noundef 1) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call12 = call fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @dsa_p, i64 0, i64 0), i64 noundef 257) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %15 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call15 = call fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @dsa_q, i64 0, i64 0), i64 noundef 29) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %16 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call18 = call fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @dsa_g, i64 0, i64 0), i64 noundef 257) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %17 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call21 = call fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @dsa_pub, i64 0, i64 0), i64 noundef 256) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %18 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call24 = call fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @dsa_priv, i64 0, i64 0), i64 noundef 28) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %19 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call27 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %19, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 noundef -1) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %20 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call30 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32 noundef -1) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %21 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call33 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i32 noundef 0) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %22 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call36 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %22, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 noundef 1) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %23 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call39 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 noundef 1) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %24 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call42 = call fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i32 noundef 0) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %25 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call45 = call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #4
  %26 = bitcast %struct.ossl_param_st* %call45 to i8*
  %call46 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 707, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.48, i64 0, i64 0), i8* noundef %26) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false44
  %27 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call48 = call fastcc i32 @do_fromdata_key_is_equal(%struct.ossl_param_st* noundef %27, %struct.evp_pkey_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end
  %28 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  %call53 = call %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %28, %struct.ossl_param_st* noundef nonnull %arrayidx) #4
  %29 = bitcast %struct.ossl_param_st* %call53 to i8*
  %call54 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i64 0, i64 0), i8* noundef %29) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end51
  %call57 = call fastcc i32 @do_check_params(%struct.ossl_param_st* noundef %call53, i32 noundef 1) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %if.end60

if.end60:                                         ; preds = %lor.lhs.false56
  %30 = bitcast %struct.ossl_param_st* %tmp62 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %30) #5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp62, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32* noundef nonnull %dsa_gindex) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %30, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %30) #5
  %31 = bitcast %struct.ossl_param_st* %tmp64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %31) #5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp64, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32* noundef nonnull %dsa_pcounter) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %31) #5
  %32 = load i32, i32* %dsa_gindex, align 4, !tbaa !13
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %dsa_gindex, align 4, !tbaa !13
  %call65 = call fastcc i32 @do_check_params(%struct.ossl_param_st* noundef %call53, i32 noundef 0) #6
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end68

if.end68:                                         ; preds = %if.end60
  %33 = load i32, i32* %dsa_gindex, align 4, !tbaa !13
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %dsa_gindex, align 4, !tbaa !13
  %34 = load i32, i32* %dsa_pcounter, align 4, !tbaa !13
  %inc69 = add nsw i32 %34, 1
  store i32 %inc69, i32* %dsa_pcounter, align 4, !tbaa !13
  %call70 = call fastcc i32 @do_check_params(%struct.ossl_param_st* noundef %call53, i32 noundef 0) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %if.end68
  %35 = load i32, i32* %dsa_pcounter, align 4, !tbaa !13
  %dec74 = add nsw i32 %35, -1
  store i32 %dec74, i32* %dsa_pcounter, align 4, !tbaa !13
  store i8 -80, i8* %3, align 16, !tbaa !16
  %call76 = call fastcc i32 @do_check_params(%struct.ossl_param_st* noundef %call53, i32 noundef 0) #6
  %tobool77.not = icmp ne i32 %call76, 0
  %spec.select = zext i1 %tobool77.not to i32
  br label %err

err:                                              ; preds = %if.end73, %if.end68, %if.end60, %if.end51, %lor.lhs.false56, %if.end, %entry, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false14, %lor.lhs.false17, %lor.lhs.false20, %lor.lhs.false23, %lor.lhs.false26, %lor.lhs.false29, %lor.lhs.false32, %lor.lhs.false35, %lor.lhs.false38, %lor.lhs.false41, %lor.lhs.false44
  %all_params.0 = phi %struct.ossl_param_st* [ %call53, %if.end68 ], [ %call53, %if.end60 ], [ %call53, %lor.lhs.false56 ], [ %call53, %if.end51 ], [ null, %if.end ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false35 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call53, %if.end73 ]
  %ret.0 = phi i32 [ 0, %if.end68 ], [ 0, %if.end60 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end51 ], [ 0, %if.end ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end73 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %all_params.0) #4
  %36 = load %struct.ossl_param_st*, %struct.ossl_param_st** %to_params, align 8, !tbaa !3
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %36) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_todata_null() #0 {
entry:
  %params = alloca %struct.ossl_param_st*, align 8
  %pdata = alloca i8*, align 8
  %0 = bitcast %struct.ossl_param_st** %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %params, align 8, !tbaa !3
  %1 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i64 0, i64 0), i8** %pdata, align 8, !tbaa !3
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %pdata, i64 noundef 608, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef null) #4
  %3 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.67, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @EVP_PKEY_todata(%struct.evp_pkey_st* noundef null, i32 noundef 135, %struct.ossl_param_st** noundef nonnull %params) #4
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 755, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_PKEY_todata(%struct.evp_pkey_st* noundef %call, i32 noundef 135, %struct.ossl_param_st** noundef null) #4
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #4
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_export_null() #0 {
entry:
  %pdata = alloca i8*, align 8
  %0 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i64 0, i64 0), i8** %pdata, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %pdata, i64 noundef 608, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #4
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef null, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @test_pkey_export_cb, i8* noundef null) #4
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %call, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef null, i8* noundef null) #4
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #4
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_export() #0 {
entry:
  %pdata = alloca i8*, align 8
  %0 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i64 0, i64 0), i8** %pdata, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %pdata, i64 noundef 608, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #4
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 796, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.73, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %call, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @test_pkey_export_cb, i8* noundef %2) #4
  %cmp = icmp ne i32 %call3, 0
  %conv4 = zext i1 %cmp to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 798, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %call, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @test_pkey_export_cb, i8* noundef null) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 800, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv10) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %ret.0 = phi i32 [ 1, %lor.lhs.false7 ], [ 0, %if.then ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  store i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i64 0, i64 0), i8** %pdata, align 8, !tbaa !3
  %call15 = call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef nonnull %pdata, i64 noundef 608) #4
  %3 = bitcast %struct.rsa_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 808, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i64 0, i64 0), i8* noundef %3) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then40, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end
  %call19 = call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %4 = bitcast %struct.evp_pkey_st* %call19 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 809, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i64 0, i64 0), i8* noundef %4) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then40, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call19, i32 noundef 6, i8* noundef %3) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 810, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then40, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %call19, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @test_pkey_export_cb, i8* noundef %4) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then40, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %call19, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @test_pkey_export_cb, i8* noundef null) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv37) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false34, %lor.lhs.false28, %lor.lhs.false22, %lor.lhs.false18, %if.end
  %pkey.0 = phi %struct.evp_pkey_st* [ %call19, %lor.lhs.false34 ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ %call, %if.end ]
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false34
  %pkey.1 = phi %struct.evp_pkey_st* [ %call19, %lor.lhs.false34 ], [ %pkey.0, %if.then40 ]
  %ret.1 = phi i32 [ %ret.0, %lor.lhs.false34 ], [ 0, %if.then40 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkcs8key_nid_bio() #0 {
entry:
  %enc_data = alloca i8*, align 8
  %0 = bitcast i8** %enc_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %enc_data, align 8, !tbaa !3
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #4
  %1 = bitcast %struct.ossl_provider_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #4
  %2 = bitcast %struct.bio_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i64 0, i64 0), i8* noundef %2) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([634 x i8], [634 x i8]* @kExampleRSAKeyPKCS8, i64 0, i64 0), i32 noundef 634) #4
  %3 = bitcast %struct.bio_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.80, i64 0, i64 0), i8* noundef %3) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %call11 = tail call %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef %call7, %struct.evp_pkey_st** noundef null, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  %4 = bitcast %struct.evp_pkey_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.81, i64 0, i64 0), i8* noundef %4) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %call15 = tail call i32 @i2d_PKCS8PrivateKey_nid_bio(%struct.bio_st* noundef %call3, %struct.evp_pkey_st* noundef %call11, i32 noundef 146, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_pkcs8key_nid_bio.pwd, i64 0, i64 0), i32 noundef 8, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call15, i32 noundef 1) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %call19 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #4
  %conv = trunc i64 %call19 to i32
  %call20 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.end, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %call23 = call %struct.evp_pkey_st* @d2i_PKCS8PrivateKey_bio(%struct.bio_st* noundef %call3, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @test_pkcs8key_nid_bio.pwd, i64 0, i64 0)) #4
  %5 = bitcast %struct.evp_pkey_st* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.84, i64 0, i64 0), i8* noundef %5) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true22
  %call26 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %call11, %struct.evp_pkey_st* noundef %call23) #4
  %cmp = icmp ne i32 %call26, 0
  %conv27 = zext i1 %cmp to i32
  %call28 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv27) #4
  %tobool29 = icmp ne i32 %call28, 0
  %phi.cast = zext i1 %tobool29 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true22, %land.lhs.true18, %land.lhs.true14, %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %entry
  %pkey.0 = phi %struct.evp_pkey_st* [ %call11, %land.rhs ], [ %call11, %land.lhs.true22 ], [ %call11, %land.lhs.true18 ], [ %call11, %land.lhs.true14 ], [ %call11, %land.lhs.true10 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ], [ null, %entry ]
  %pkey_dec.0 = phi %struct.evp_pkey_st* [ %call23, %land.rhs ], [ %call23, %land.lhs.true22 ], [ null, %land.lhs.true18 ], [ null, %land.lhs.true14 ], [ null, %land.lhs.true10 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ], [ null, %entry ]
  %in.0 = phi %struct.bio_st* [ %call7, %land.rhs ], [ %call7, %land.lhs.true22 ], [ %call7, %land.lhs.true18 ], [ %call7, %land.lhs.true14 ], [ %call7, %land.lhs.true10 ], [ %call7, %land.lhs.true6 ], [ null, %land.lhs.true ], [ null, %entry ]
  %enc_bio.0 = phi %struct.bio_st* [ %call3, %land.rhs ], [ %call3, %land.lhs.true22 ], [ %call3, %land.lhs.true18 ], [ %call3, %land.lhs.true14 ], [ %call3, %land.lhs.true10 ], [ %call3, %land.lhs.true6 ], [ %call3, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true22 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey_dec.0) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #4
  %call30 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #4
  %call31 = call i32 @BIO_free(%struct.bio_st* noundef %enc_bio.0) #4
  %call32 = call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PEM_read_bio_negative(i32 noundef %testid) #0 {
entry:
  %idxprom = sext i32 %testid to i64
  %kder = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %kder, align 8, !tbaa !7
  %size = getelementptr inbounds [6 x %struct.APK_DATA_st], [6 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 1
  %1 = load i64, i64* %size, align 8, !tbaa !11
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %0, i32 noundef %conv) #4
  %2 = bitcast %struct.bio_st* %call to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.86, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ERR_clear_error() #4
  %call4 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %3 = bitcast %struct.evp_pkey_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i64 @ERR_peek_error() #4
  %conv10 = trunc i64 %call9 to i32
  %call11 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv10, i32 noundef 0) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end8
  %call15 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #4
  %4 = bitcast %struct.ossl_provider_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i8* noundef %4) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 128, i64 noundef 0, i8* noundef null) #4
  %conv21 = trunc i64 %call20 to i32
  %call22 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv21, i32 noundef 0) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %if.end19
  tail call void @ERR_clear_error() #4
  %call26 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %5 = bitcast %struct.evp_pkey_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i64 0, i64 0), i8* noundef %5) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = tail call i64 @ERR_peek_error() #4
  %conv32 = trunc i64 %call31 to i32
  %call33 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv32, i32 noundef 0) #4
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %err

err:                                              ; preds = %if.end30, %if.end25, %if.end19, %if.end14, %if.end8, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end25 ], [ 0, %if.end19 ], [ 0, %if.end14 ], [ 0, %if.end8 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end30 ]
  %provider.0 = phi %struct.ossl_provider_st* [ %call15, %if.end25 ], [ %call15, %if.end19 ], [ %call15, %if.end14 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call15, %if.end30 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call26, %if.end25 ], [ %call4, %if.end19 ], [ %call4, %if.end14 ], [ %call4, %if.end8 ], [ %call4, %if.end ], [ null, %entry ], [ %call26, %if.end30 ]
  tail call void @test_openssl_errors() #4
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #4
  %call37 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  %call38 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %provider.0) #4
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %0) #4
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !3
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #4
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_pkey_st* @d2i_AutoPrivateKey_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #1

declare dso_local void @test_openssl_errors() local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_todata(%struct.evp_pkey_st* noundef, i32 noundef, %struct.ossl_param_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_check_bn(%struct.ossl_param_st* noundef %params, i8* noundef %key, i8* noundef %expected, i64 noundef %expected_len) unnamed_addr #0 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %buffer = alloca [257 x i8], align 16
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !3
  %1 = getelementptr inbounds [257 x i8], [257 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %1) #5
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef %key) #4
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 648, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %call, %struct.bignum_st** noundef nonnull %bn) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  %conv6 = trunc i64 %expected_len to i32
  %call7 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %3, i8* noundef nonnull %1, i32 noundef %conv6) #4
  %call8 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %conv11 = sext i32 %call7 to i64
  %call12 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8* noundef %expected, i64 noundef %expected_len, i8* noundef nonnull %1, i64 noundef %conv11) #4
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %5) #4
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_check_int(%struct.ossl_param_st* noundef %params, i8* noundef %key, i32 noundef %expected) unnamed_addr #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %val, align 4, !tbaa !13
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef %params, i8* noundef %key) #4
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 661, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %call, i32* noundef nonnull %val) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 662, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %val, align 4, !tbaa !13
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 663, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i32 noundef %2, i32 noundef %expected) #4
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %3
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_fromdata_key_is_equal(%struct.ossl_param_st* noundef %params, %struct.evp_pkey_st* noundef %expected, i8* noundef %type) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %type, i8* noundef null) #4
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #4
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef %params) #4
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %call9 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %3, %struct.evp_pkey_st* noundef %expected) #4
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv) #4
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %4
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_check_params(%struct.ossl_param_st* noundef %key_params, i32 noundef %expected) unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef null) #4
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.62, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #4
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 628, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef %key_params) #4
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 630, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @mainctx, align 8, !tbaa !3
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %call10 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %3, %struct.evp_pkey_st* noundef %4, i8* noundef null) #4
  %5 = bitcast %struct.evp_pkey_ctx_st* %call10 to i8*
  %call11 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.65, i64 0, i64 0), i8* noundef %5) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true9
  %call13 = call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef %call10) #4
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i32 noundef %call13, i32 noundef %expected) #4
  %tobool15 = icmp ne i32 %call14, 0
  %phi.cast = zext i1 %tobool15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %check_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call10, %land.rhs ], [ %call10, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %check_ctx.0) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %6
}

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_export_cb(%struct.ossl_param_st* noundef %params, i8* noundef %arg) #0 {
entry:
  %cmp = icmp eq i8* %arg, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to %struct.evp_pkey_st*
  %call = tail call fastcc i32 @do_fromdata_key_is_equal(%struct.ossl_param_st* noundef %params, %struct.evp_pkey_st* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_PKCS8PrivateKey_nid_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_PKCS8PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"APK_DATA_st", !4, i64 0, !9, i64 8, !10, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !10, i64 16}
!13 = !{!10, !10, i64 0}
!14 = !{i64 0, i64 8, !3, i64 8, i64 4, !13, i64 16, i64 8, !3, i64 24, i64 8, !15, i64 32, i64 8, !15}
!15 = !{!9, !9, i64 0}
!16 = !{!5, !5, i64 0}
