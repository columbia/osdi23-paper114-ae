; ModuleID = 'test/pkcs12_format_test.c'
source_filename = "test/pkcs12_format_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.pkcs12_enc = type { i32, i8*, i32 }
%struct.pkcs12_attr = type { i8*, i8* }
%struct.pkcs12_builder = type { i8*, i32, %struct.bio_st*, %struct.stack_st_PKCS7*, i32, %struct.stack_st_PKCS12_SAFEBAG*, i32 }
%struct.bio_st = type opaque
%struct.stack_st_PKCS7 = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.evp_pkey_st = type opaque
%struct.PKCS12_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque

@test_get_options.options = internal constant [12 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@.str.14 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Write PKCS12 objects to file\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Test the legacy APIs\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Explicitly use a non-default library context\00", align 1
@default_libctx = internal unnamed_addr global i1 false, align 4
@testctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@.str.20 = private unnamed_addr constant [26 x i8] c"test/pkcs12_format_test.c\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"testctx\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@nullprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"nullprov\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@deflprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"deflprov\00", align 1
@lgcyprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.26 = private unnamed_addr constant [41 x i8] c"OSSL_PROVIDER_available(NULL, \22default\22)\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"OSSL_PROVIDER_available(NULL, \22fips\22)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"test_single_cert_no_attrs\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"test_single_key_enc_alg\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"test_single_secret_enc_alg\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"pkcs12_create_test\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"test_single_key_enc_pass\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"test_single_key_enc_iter\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"test_single_key_with_attrs\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"test_single_cert_mac_alg\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"test_single_cert_mac_pass\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"test_single_cert_mac_iter\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"test_cert_key_with_attrs_and_mac\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"test_cert_key_encrypted_content\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"test_single_secret_encrypted_content\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"test_multiple_contents\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"1cert.p12\00", align 1
@CERT1 = internal constant [497 x i8] c"0\82\01\ED0\82\01V\A0\03\02\01\02\02\09\00\8BK^l\03(N\E60\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\191\170\15\06\03U\04\03\0C\0EP12Test-Root-A0\1E\17\0D190930004656Z\17\0D290927004656Z0\1B1\190\17\06\03U\04\03\0C\10P12Test-Server-10\81\9F0\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\81\8D\000\81\89\02\81\81\00\BC\DCo\8Cz*K\EAff\04\A9\05\92S\D7\13<I\E1\C8\BB\DF=\CB\881\07 Y\93$\7F}\C6\84\81\16dJR\A60D\DC\1A0\DE\AE)\18\CF\C7\F3\CF\0C\B7\8E+\1E!\01\0B\FB\E5\E6\CF+\84\E13\F8\BA\02\FC0\FA\C43\C77\C6\7Fr1\92\1D\8F\A0\FB\E5J\081x\80\9C#\B4\E9\19V\04\FA\0D\07\04\B7C\ACLI|\C2\A1D\C1H}(\E5#f\07\22\D5\F0\F1\02\03\01\00\01\A3;090\1F\06\03U\1D#\04\180\16\80\14\DB\BB\B8\92N$\0B\1B\BBx3\F9\01\02#\0D\96\180G0\09\06\03U\1D\13\04\020\000\0B\06\03U\1D\0F\04\04\03\02\04\F00\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\81\81\00\1C\13\DC\02\F1D6e\A9\BE0\1Cf\14 \86Z\A8i%\F8\1A\B6\9E^\E9\89\B8gp\19\87`\EBK\11q\85\F8\E9\A7> B\ECC%\01\03\E5M\83\22\F5\8E:\1A\1B\D4\1C\DAk\9D\10\1B\EEgN\1Fi\AB\BC\AAb\8E\9E\C6\EE\D6\09\C0\CA\E0\AA\9F\07\B2\C2\BB1\96\A2\04b\D3\132)gn\AD.\0B\EA\04|\8CZ]\AC\14\AAa\7F(l-d-\C3\AFwR\90\B47\C00", align 16
@enc_nids_no_legacy = internal unnamed_addr constant [5 x i32] [i32 419, i32 427, i32 44, i32 147, i32 146], align 16
@enc_nids_all = internal unnamed_addr constant [16 x i32] [i32 419, i32 427, i32 44, i32 31, i32 5, i32 37, i32 10, i32 169, i32 170, i32 148, i32 149, i32 68, i32 144, i32 145, i32 147, i32 146], align 16
@enc_default = internal constant %struct.pkcs12_enc { i32 146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 1000 }, align 8
@.str.44 = private unnamed_addr constant [10 x i8] c"Password1\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"1key_ciph-%s_iter-%d.p12\00", align 1
@KEY1 = internal constant [609 x i8] c"0\82\02]\02\01\00\02\81\81\00\BC\DCo\8Cz*K\EAff\04\A9\05\92S\D7\13<I\E1\C8\BB\DF=\CB\881\07 Y\93$\7F}\C6\84\81\16dJR\A60D\DC\1A0\DE\AE)\18\CF\C7\F3\CF\0C\B7\8E+\1E!\01\0B\FB\E5\E6\CF+\84\E13\F8\BA\02\FC0\FA\C43\C77\C6\7Fr1\92\1D\8F\A0\FB\E5J\081x\80\9C#\B4\E9\19V\04\FA\0D\07\04\B7C\ACLI|\C2\A1D\C1H}(\E5#f\07\22\D5\F0\F1\02\03\01\00\01\02\81\81\00\A5m\F9\8F\F5Z\A3P\D9\0D7\BB\CE\13\94\B8\EA2\7F\0C\F5F\0B\90\17~^c\BD\A4x\CD\19\97\D4\920x\AA\B4\A7\9C\C6\DF*e\0E\B5\9F\9C\84\0DM:t\FC\D0\B4\09t\C4\B8$\03\A8\F0\F8\0D\\\8E\DFK\E1\0A\8FO\D5\C7\9BTU\8F\00\\\EALs\F9\1B\BF\B8\933 \CEE\D9\03\02\B26\C5\0A0Px\80f\00\228\86\CFcJ\\\BF+\D9n\E6\F09\AD\12%A\B9\02A\00\F3|\07\99d:(\8C\8D\05\FE2\B5L\8Cm\DE=\16\08\A0\01aO\8E\A0\F7&&\B5\8E\C0z\CE\864\DE\B8\EF\86\01\BE$\AA\9B6\93r\9B\F9\C6\CBv\84g\06\060P\DFB\17\E0\A7\02A\00\C6\91\A0A4\11gK\08\0F\DA\A7\99\ECX\11\A5\82\DBP\FEw\E2\D1S\9C}\E8\BF\E7|\A9\01\B1\87\C3Ry\9E,\A7o\0272\EF$1!\0B\86\052J.\0Be\05\D3\D60\B2\FC\A7\02A\00\C2\ED1\DC@\9C:\E8B\E2`^R<\C5T\14\0E\8D|<4\BE\A6\05\86\A26]\D9\0E>\D4RP\A95\01\93h\92.\9A\86'\1A\AB2\9E\E2y\9F[\F3\A5\D2\F1\D3n{>\1B\85\93\02@h\B8\B6~\8C\BA<\F2\8A.\EAO\07\D3hb\EE\1A\04\16D\0D\EF\F6\1B\95e\A5\D1G\81,\14\B3\8E\F9\08\CF\11\07U\CA*\AD\F7\D3\BD\0F\97\F0\DE\DEp\B6DpG\F7\F9\CFua\7F\F3\02@8Jg\AF\AE\B6\B2j\00%Z\A4e \B1\13\BD\83\FF\B4\BC\F4\DD\A1\BB\1C\9675\F4\BF\EDL\ED\92\E8\AC\C9\C1\A5\A3#f@\8A\A1\E6\E3\95\FE\C4S\F5}n\CAEB\E4\C2\9F\E5\1E\B5", align 16
@.str.46 = private unnamed_addr constant [28 x i8] c"1secret_ciph-%s_iter-%d.p12\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"VerySecretMessage\00", align 1
@ATTRS1 = internal constant [4 x %struct.pkcs12_attr] [%struct.pkcs12_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0) }, %struct.pkcs12_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0) }, %struct.pkcs12_attr { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0) }, %struct.pkcs12_attr zeroinitializer], align 16
@mac_default = internal constant %struct.pkcs12_enc { i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 1000 }, align 8
@get_custom_oid.sec_nid = internal unnamed_addr global i32 -1, align 4
@.str.48 = private unnamed_addr constant [67 x i8] c"OBJ_create(\221.3.5.7.9\22, \22CustomSecretOID\22, \22My custom secret OID\22)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"1.3.5.7.9\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"CustomSecretOID\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"My custom secret OID\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"friendlyName\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"george\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"localKeyID\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"1234567890\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"1.2.3.4.5\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"MyCustomAttribute\00", align 1
@pkcs12_create_test.rsa_key = internal constant [609 x i8] c"0\82\02]\02\01\00\02\81\81\00\BB$z\09~\0E\B272\CC9g\AD\F1\9E=k\82\83\D1\D0\AC\A4\C0\18\BE\8D\98\00\C0{\FF\07D\C9\CA\1C\BA6\E1'i\FF\B1\E3\8D\8B\EEW\A9:\AA\16C9T\19|\AEi$\14\F6d\FF\BCt\C6glL\F1\02Ii\C7+\E1\E1\A1\A3C\14\F4w\8F\C8\D0\85Z5\95\ACb\A9\C1!\00w\A0\8B\970\B4Z,\B8\90/H\A0\05(K\F2\0F\8D\EC\8BM\03Bu\D6\AD\81\C0\11\02\03\01\00\01\02\81\80\00\FC\B9J&\07\89Q+Sr\91\E0\18>\A6^1\EF\9C\0C\16$B\D0(3\F9\FA\D0<T\04\06\C0\15\F5\1B\9A\B3$1\AB<kGC\B0\D2\A9\DC\05\E1\81Y\B6\04\E9fa\AA\D7\0B\00\8F=\E5\BF\A2\F8^%l\1E\22\0F\B4\FDA\E2\031_\DA \C5\C0\F3U\0E\E1\C9\EC\D7>*\0C\01\CA{\22\CB\AC\F4+'\F0x_\B5\C2\F9\E8\14Zn~\86\BDj\9B \0C\BA\CC\97 \11\02A\00\C9Y\9F)\8A[\9F\E3*\D8~\C2@\9F\A8E\E5>\11\8D<\EDn\AB\CE\D0eF\D8\C7\07c\B5#4\F4\9F~\1C\C7\C7\F9e\D1\F4\04B8\BE:\0C\9D\08%\FC\A3q\D9\AE\0C9a\F4\89\02A\00\ED\EF\AB\A9\D59\9C\EEY\1B\FF\CFHD\1B\B62\E7F$\F3\04\7F\DE\95\08mu\9Eg\17\BA\\\A4\D4\E2\E2Mw\CE\EBf)\C5\96\E0b\BB\E5\AC\DCDbT\86\EDd\0C\CE\D0`\03\9DI\02@T\D9\18r'\E4\BEv\BB\1Aj(/\95X\12\C4,\A8\B6\CC\E2\FD\0D\17d\C8\18\D7\C6\DF=L\1A\9E\F9*\B0\B9.\12\FD\EC\C3Q\C1\ED\A9\FD\B7v\93A\D8\C8\22\94\1Aw\F6\9C\C3\C3\89\02A\00\8E\F9\A7\08\AD\B5*\04\DB\8D\04\A1\B5\06 4\D2\CF\C0\89\B1r1\B89\8B\CF\E2\8E\A5\DAOE\1ESBf\C40K)\8E\C1i\17)\8C\8A\E6\0F\82h\A1A\B3\B6p\99u\A9'\18\E4\E9\02A\00\89\EAnmp\DF%_\18?H\DAc\10\8B\FE\A8\0C\94\0F\DE\97VS\89\94\E2\1E,t<\91\814\0B\A6@\F8\CB*`\8C\E0\02\B7\89\93\CF\18\9FIT\FD}?\9A\EF\D4\A4O\C1E\99\91", align 16
@.str.58 = private unnamed_addr constant [78 x i8] c"pkey = d2i_PrivateKey_ex(EVP_PKEY_RSA, NULL, &p, sizeof(rsa_key), NULL, NULL)\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"ERR_peek_error()\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"p12\00", align 1
@passwords = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i32 0, i32 0)], align 16
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@iters = internal unnamed_addr constant [2 x i32] [i32 1, i32 1000], align 4
@.str.63 = private unnamed_addr constant [14 x i8] c"1keyattrs.p12\00", align 1
@mac_nids = internal unnamed_addr constant [6 x i32] [i32 64, i32 4, i32 672, i32 674, i32 1097, i32 1099], align 16
@.str.64 = private unnamed_addr constant [25 x i8] c"1cert_mac-%s_iter-%d.p12\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"1cert1key.p12\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"1cert1key_enc.p12\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"1secret.p12\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"multi_contents.p12\00", align 1
@CERT2 = internal constant [497 x i8] c"0\82\01\ED0\82\01V\A0\03\02\01\02\02\09\00\8BK^l\03(N\E70\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\191\170\15\06\03U\04\03\0C\0EP12Test-Root-A0\1E\17\0D190930004656Z\17\0D290927004656Z0\1B1\190\17\06\03U\04\03\0C\10P12Test-Client-10\81\9F0\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\81\8D\000\81\89\02\81\81\00\A8n@\86\9F\98Y\FBW\BF\C1U\128\EB\B3F4\C95M\FD\03\E9:\88\9E\97\8F\F4\EC6{?\BA\B8\A5\960\03\C5\C6\D9\A8N\BC#Q\A1\96\D2\03\98s\B6\17\9Cw\D4\95\1E\1B\B3\1B\C8q\D1.1\C7juW\08\7F\BApv\F7g\F4N\BE\FCpaA\07+|<;\B3\BC\D5\A8\BD(\D8I\D3\E1x\C8\C1B^\186\A8A\F7\C8\AA5\FE-\D1\B4\CC\00g\AEy\D3(\D5[\02\03\01\00\01\A3;090\1F\06\03U\1D#\04\180\16\80\14\DB\BB\B8\92N$\0B\1B\BBx3\F9\01\02#\0D\96\180G0\09\06\03U\1D\13\04\020\000\0B\06\03U\1D\0F\04\04\03\02\04\F00\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\81\81\00;\A6s\BE\E0(\ED\1F)xL\C0\1F\E9\85\C6\8F\E3\87|\D9\E7\0A7\E8\AA\B5\D2\7F\F8\90 \805\A7y+\04\A7\BF\E6{X\CB\EC\0EX\EF*p\8AV\8A\CFkzt\0C\F4\157\93\CD\E6\B2\A1\83\09\DB\9EO\FFj\17O3\C9\CC\90*g\FF\16x\A8,\10\E0R\8C\E6\E9\90\8D\E0b\04\9A\0FD\01\82\14\92D%i\22\B7\B8\C5\94LK\1C\9B\92`f\90N\B9\A8L\89\BB\0F\0B", align 16
@ATTRS2 = internal constant [4 x %struct.pkcs12_attr] [%struct.pkcs12_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0) }, %struct.pkcs12_attr { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0) }, %struct.pkcs12_attr { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0) }, %struct.pkcs12_attr zeroinitializer], align 16
@KEY2 = internal constant [608 x i8] c"0\82\02\\\02\01\00\02\81\81\00\A8n@\86\9F\98Y\FBW\BF\C1U\128\EB\B3F4\C95M\FD\03\E9:\88\9E\97\8F\F4\EC6{?\BA\B8\A5\960\03\C5\C6\D9\A8N\BC#Q\A1\96\D2\03\98s\B6\17\9Cw\D4\95\1E\1B\B3\1B\C8q\D1.1\C7juW\08\7F\BApv\F7g\F4N\BE\FCpaA\07+|<;\B3\BC\D5\A8\BD(\D8I\D3\E1x\C8\C1B^\186\A8A\F7\C8\AA5\FE-\D1\B4\CC\00g\AEy\D3(\D5[\02\03\01\00\01\02\81\81\00\A6\00\83\F8+3\AC\FB\DB\F0RK\D69\E3\94=\8D\A9\01\B0k\BE\7F\10\01\B6\CD\0AE\0A\CAg\8E\D8)D\8AQ\A8f5&0\8B\E9A\A6\22\EC\D2\F0XA3&\F2?\E8uO\C7].Z\A8z\D2\BFY\A0\86y\0B\92l\95]\87c\\\D6\1A\C0\F6z\15\8D\C7<\B6\9E\A6XF\9B\BF>(\8C\DF\1A\87\AA~\F5\F2\CB^\84-\F6\82~\89N\F5\E6<\92\80\1E\98\1Cj{W\01\02A\00\DD`\95\D7\A1\9D\0C\A1\84\C59\CAgL\1C\06q[\\-\8D\CE\CD\E2y\C83\BEP7`\9F;\B9YU\22\1F\A5K\1D\CA8\A0\AB\87\9C\86\0E\DB\1COO\07\ED\18?\05<\ECx\11\F6\99\02A\00\C2\C5\CF\BE\95\91\EB\CFG\F332\C7~\93V\F7\D8\F9\D4\B6\D6 \AC\BA\8A \19\14\AB\C5]\B2\08\CCw|e\A8\DBf\976D,c\C0j~\B0\0B\\\90\12P\B46`\C3\1F\22\0C\C8\13\02@3\C8~\04|\97a\F6\FE9\AC4\FEH\BD]|r\A4s;r\9E\92UnQ<9CZ\E4\A4q\CC\C5\AF?\BB\C8\80eg-\9E2\10\99\03,\99\C8\ABq\ED1\F8\BB\DE\EEi\7F\BA1\02@~\BC`UN\D5\C8n\F4\0EW\BE.\F99\BEY?\A20\BBW\D1\A3\13.U||j\D8\DE\02\BE\9E\ED\10\D0\C5s\1D\EA>\B1U\81\02\EFH\C8\1C\\z\92\B0X\D3\19[]\A2\B6Vi\02@\1E\00j\9F\BA\EEFZ\C5\B5\9F\913\DD\C9\96u\B7\87\CF\18\1C\B7\B9?\04\10\B8u\A9\B8\A015\030\89\C87h 0\999\96\D6+=^E\84\F7\D2aP\C9P\BA\8D\08\AA\D0\08\1E", align 16
@.str.69 = private unnamed_addr constant [22 x i8] c"VeryVerySecretMessage\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"janet\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"987654321\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"1.2.3.5.8.13\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"AnotherCustomAttribute\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #5
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  tail call void @PKCS12_helper_set_write_files(i32 noundef 1) #5
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  tail call void @PKCS12_helper_set_legacy(i32 noundef 1) #5
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  store i1 true, i1* @default_libctx, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %.b43 = load i1, i1* @default_libctx, align 4
  br i1 %.b43, label %if.then, label %if.end13

if.then:                                          ; preds = %while.end
  %call4 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #5
  store %struct.ossl_lib_ctx_st* %call4, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %0 = bitcast %struct.ossl_lib_ctx_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 840, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* noundef %0) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call8 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #5
  store %struct.ossl_provider_st* %call8, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %1 = bitcast %struct.ossl_provider_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 843, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* noundef %1) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end, %while.end
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call14 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #5
  store %struct.ossl_provider_st* %call14, %struct.ossl_provider_st** @deflprov, align 8, !tbaa !5
  %3 = bitcast %struct.ossl_provider_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 848, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* noundef %3) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call19 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #5
  store %struct.ossl_provider_st* %call19, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  tail call void @PKCS12_helper_set_libctx(%struct.ossl_lib_ctx_st* noundef %5) #5
  %.b42 = load i1, i1* @default_libctx, align 4
  br i1 %.b42, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #5
  %cmp23 = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp23 to i32
  %call24 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %call26 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv28) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %if.end18
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_single_cert_no_attrs) #5
  %6 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %cmp34 = icmp eq %struct.ossl_provider_st* %6, null
  %. = select i1 %cmp34, i32 5, i32 16
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_key_enc_alg, i32 noundef %., i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_secret_enc_alg, i32 noundef %., i32 noundef 1) #5
  %.b = load i1, i1* @default_libctx, align 4
  br i1 %.b, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end33
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @pkcs12_create_test) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end33
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_key_enc_pass, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_key_enc_iter, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 ()* noundef nonnull @test_single_key_with_attrs) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_cert_mac_alg, i32 noundef 6, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_cert_mac_pass, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), i32 (i32)* noundef nonnull @test_single_cert_mac_iter, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_cert_key_with_attrs_and_mac) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_cert_key_encrypted_content) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_single_secret_encrypted_content) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_multiple_contents) #5
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then21, %lor.lhs.false, %if.end13, %if.end, %if.then, %if.end40
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %if.end13 ], [ 0, %lor.lhs.false ], [ 0, %if.then21 ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local void @PKCS12_helper_set_write_files(i32 noundef) local_unnamed_addr #3

declare dso_local void @PKCS12_helper_set_legacy(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @PKCS12_helper_set_libctx(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_cert_no_attrs() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)) #5
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef null) #5
  tail call void @end_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @check_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef null) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call1 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_key_enc_alg(i32 noundef %z) #1 {
entry:
  %enc = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %cmp = icmp eq %struct.ossl_provider_st* %1, null
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @enc_nids_no_legacy, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* @enc_nids_all, i64 0, i64 %idxprom
  %.sink.in = select i1 %cmp, i32* %arrayidx, i32* %arrayidx2
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !9
  %2 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  store i32 %.sink, i32* %2, align 8
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %pass, align 8, !tbaa !11
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  store i32 1000, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_key(%struct.pkcs12_enc* noundef nonnull %enc) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_secret_enc_alg(i32 noundef %z) #1 {
entry:
  %enc = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %cmp = icmp eq %struct.ossl_provider_st* %1, null
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @enc_nids_no_legacy, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* @enc_nids_all, i64 0, i64 %idxprom
  %.sink.in = select i1 %cmp, i32* %arrayidx, i32* %arrayidx2
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !9
  %2 = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  store i32 %.sink, i32* %2, align 8
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %pass, align 8, !tbaa !11
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  store i32 1000, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_secret(%struct.pkcs12_enc* noundef nonnull %enc) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkcs12_create_test() #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* getelementptr inbounds ([609 x i8], [609 x i8]* @pkcs12_create_test.rsa_key, i64 0, i64 0), i8** %p, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef 6, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef 609, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  %1 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.58, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @ERR_peek_error() #5
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.PKCS12_st* @PKCS12_create(i8* noundef null, i8* noundef null, %struct.evp_pkey_st* noundef %call, %struct.x509_st* noundef null, %struct.stack_st_X509* noundef null, i32 noundef 146, i32 noundef 146, i32 noundef 2, i32 noundef 1, i32 noundef 0) #5
  %2 = bitcast %struct.PKCS12_st* %call7 to i8*
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i8* noundef %2) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i64 @ERR_peek_error() #5
  %conv13 = trunc i64 %call12 to i32
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 785, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv13, i32 noundef 0) #5
  %tobool15.not = icmp ne i32 %call14, 0
  %spec.select = zext i1 %tobool15.not to i32
  br label %err

err:                                              ; preds = %if.end11, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end11 ]
  %p12.0 = phi %struct.PKCS12_st* [ %call7, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %call7, %if.end11 ]
  call void @PKCS12_free(%struct.PKCS12_st* noundef %p12.0) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_key_enc_pass(i32 noundef %z) #1 {
entry:
  %enc = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  store i32 146, i32* %nid, align 8, !tbaa !14
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @passwords, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  store i8* %1, i8** %pass, align 8, !tbaa !11
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  store i32 1000, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_key(%struct.pkcs12_enc* noundef nonnull %enc) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_key_enc_iter(i32 noundef %z) #1 {
entry:
  %enc = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  store i32 146, i32* %nid, align 8, !tbaa !14
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %pass, align 8, !tbaa !11
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @iters, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  store i32 %1, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_key(%struct.pkcs12_enc* noundef nonnull %enc) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_key_with_attrs() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0)) #5
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @check_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call1 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_cert_mac_alg(i32 noundef %z) #1 {
entry:
  %mac = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @mac_nids, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  store i32 %1, i32* %nid, align 8, !tbaa !14
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %pass, align 8, !tbaa !11
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 2
  store i32 1000, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_cert_mac(%struct.pkcs12_enc* noundef nonnull %mac) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_cert_mac_pass(i32 noundef %z) #1 {
entry:
  %mac = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  store i32 64, i32* %nid, align 8, !tbaa !14
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @passwords, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 1
  store i8* %1, i8** %pass, align 8, !tbaa !11
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 2
  store i32 1000, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_cert_mac(%struct.pkcs12_enc* noundef nonnull %mac) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_cert_mac_iter(i32 noundef %z) #1 {
entry:
  %mac = alloca %struct.pkcs12_enc, align 8
  %0 = bitcast %struct.pkcs12_enc* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  store i32 64, i32* %nid, align 8, !tbaa !14
  %pass = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8** %pass, align 8, !tbaa !11
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @iters, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 2
  store i32 %1, i32* %iter, align 8, !tbaa !13
  %call = call fastcc i32 @test_single_cert_mac(%struct.pkcs12_enc* noundef nonnull %mac) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cert_key_with_attrs_and_mac() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0)) #5
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @add_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @check_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @check_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call1 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cert_key_encrypted_content() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0)) #5
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @add_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @check_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @check_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call1 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_secret_encrypted_content() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0)) #5
  %call1 = tail call fastcc i32 @get_custom_oid() #7
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_secretbag(%struct.pkcs12_builder* noundef %call, i32 noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @check_secretbag(%struct.pkcs12_builder* noundef %call, i32 noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call2 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multiple_contents() #1 {
entry:
  %call = tail call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0)) #5
  %call1 = tail call fastcc i32 @get_custom_oid() #7
  tail call void @start_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @add_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT2, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS2, i64 0, i64 0)) #5
  tail call void @add_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @add_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([608 x i8], [608 x i8]* @KEY2, i64 0, i64 0), i32 noundef 608, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS2, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @add_secretbag(%struct.pkcs12_builder* noundef %call, i32 noundef %call1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  tail call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @check_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @check_certbag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT2, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS2, i64 0, i64 0)) #5
  tail call void @check_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @check_keybag(%struct.pkcs12_builder* noundef %call, i8* noundef getelementptr inbounds ([608 x i8], [608 x i8]* @KEY2, i64 0, i64 0), i32 noundef 608, %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS2, i64 0, i64 0), %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call, %struct.pkcs12_enc* noundef nonnull @enc_default) #5
  tail call void @check_secretbag(%struct.pkcs12_builder* noundef %call, i32 noundef %call1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  tail call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call) #5
  tail call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call) #5
  %call2 = tail call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call) #5
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #5
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @deflprov, align 8, !tbaa !5
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #5
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %2) #5
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #5
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef) local_unnamed_addr #3

declare dso_local void @start_pkcs12(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @start_contentinfo(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @add_certbag(%struct.pkcs12_builder* noundef, i8* noundef, i32 noundef, %struct.pkcs12_attr* noundef) local_unnamed_addr #3

declare dso_local void @end_contentinfo(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @end_pkcs12(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @start_check_pkcs12(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @start_check_contentinfo(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @check_certbag(%struct.pkcs12_builder* noundef, i8* noundef, i32 noundef, %struct.pkcs12_attr* noundef) local_unnamed_addr #3

declare dso_local void @end_check_contentinfo(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local void @end_check_pkcs12(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

declare dso_local i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_single_key(%struct.pkcs12_enc* noundef %enc) unnamed_addr #1 {
entry:
  %fname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %fname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !14
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #5
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  %2 = load i32, i32* %iter, align 8, !tbaa !13
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call, i32 noundef %2) #5
  %call3 = call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef nonnull %0) #5
  call void @start_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  call void @start_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @add_keybag(%struct.pkcs12_builder* noundef %call3, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef null, %struct.pkcs12_enc* noundef %enc) #5
  call void @end_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @end_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  call void @start_check_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @check_keybag(%struct.pkcs12_builder* noundef %call3, i8* noundef getelementptr inbounds ([609 x i8], [609 x i8]* @KEY1, i64 0, i64 0), i32 noundef 609, %struct.pkcs12_attr* noundef null, %struct.pkcs12_enc* noundef %enc) #5
  call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  %call4 = call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call3) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %call4
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local void @add_keybag(%struct.pkcs12_builder* noundef, i8* noundef, i32 noundef, %struct.pkcs12_attr* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

declare dso_local void @check_keybag(%struct.pkcs12_builder* noundef, i8* noundef, i32 noundef, %struct.pkcs12_attr* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_single_secret(%struct.pkcs12_enc* noundef %enc) unnamed_addr #1 {
entry:
  %fname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %fname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !14
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #5
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %enc, i64 0, i32 2
  %2 = load i32, i32* %iter, align 8, !tbaa !13
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call, i32 noundef %2) #5
  %call3 = call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef nonnull %0) #5
  %call4 = call fastcc i32 @get_custom_oid() #7
  call void @start_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  call void @start_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @add_secretbag(%struct.pkcs12_builder* noundef %call3, i32 noundef %call4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  call void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef %enc) #5
  call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef nonnull @mac_default) #5
  call void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef %enc) #5
  call void @check_secretbag(%struct.pkcs12_builder* noundef %call3, i32 noundef %call4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), %struct.pkcs12_attr* noundef getelementptr inbounds ([4 x %struct.pkcs12_attr], [4 x %struct.pkcs12_attr]* @ATTRS1, i64 0, i64 0)) #5
  call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  %call5 = call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call3) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %call5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_custom_oid() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @get_custom_oid.sec_nid, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @OBJ_create(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #5
  %cmp1 = icmp ne i32 %call, 0
  %conv = zext i1 %cmp1 to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @OBJ_txt2nid(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0)) #5
  store i32 %call5, i32* @get_custom_oid.sec_nid, align 4, !tbaa !9
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %0, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare dso_local void @add_secretbag(%struct.pkcs12_builder* noundef, i32 noundef, i8* noundef, %struct.pkcs12_attr* noundef) local_unnamed_addr #3

declare dso_local void @end_contentinfo_encrypted(%struct.pkcs12_builder* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

declare dso_local void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

declare dso_local void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

declare dso_local void @start_check_contentinfo_encrypted(%struct.pkcs12_builder* noundef, %struct.pkcs12_enc* noundef) local_unnamed_addr #3

declare dso_local void @check_secretbag(%struct.pkcs12_builder* noundef, i32 noundef, i8* noundef, %struct.pkcs12_attr* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_create(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local %struct.PKCS12_st* @PKCS12_create(i8* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_single_cert_mac(%struct.pkcs12_enc* noundef %mac) unnamed_addr #1 {
entry:
  %fname = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %fname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %nid = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !14
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #5
  %iter = getelementptr inbounds %struct.pkcs12_enc, %struct.pkcs12_enc* %mac, i64 0, i32 2
  %2 = load i32, i32* %iter, align 8, !tbaa !13
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i8* noundef %call, i32 noundef %2) #5
  %call3 = call %struct.pkcs12_builder* @new_pkcs12_builder(i8* noundef nonnull %0) #5
  call void @start_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  call void @start_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @add_certbag(%struct.pkcs12_builder* noundef %call3, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef null) #5
  call void @end_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @end_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef %mac) #5
  call void @start_check_pkcs12_with_mac(%struct.pkcs12_builder* noundef %call3, %struct.pkcs12_enc* noundef %mac) #5
  call void @start_check_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @check_certbag(%struct.pkcs12_builder* noundef %call3, i8* noundef getelementptr inbounds ([497 x i8], [497 x i8]* @CERT1, i64 0, i64 0), i32 noundef 497, %struct.pkcs12_attr* noundef null) #5
  call void @end_check_contentinfo(%struct.pkcs12_builder* noundef %call3) #5
  call void @end_check_pkcs12(%struct.pkcs12_builder* noundef %call3) #5
  %call4 = call i32 @end_pkcs12_builder(%struct.pkcs12_builder* noundef %call3) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %call4
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

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
!11 = !{!12, !6, i64 8}
!12 = !{!"pkcs12_enc", !10, i64 0, !6, i64 8, !10, i64 16}
!13 = !{!12, !10, i64 16}
!14 = !{!12, !10, i64 0}
