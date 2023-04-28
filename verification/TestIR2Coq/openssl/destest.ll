; ModuleID = 'test/destest.c'
source_filename = "test/destest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }
%struct.evp_cipher_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"test_des_ecb\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"test_des_cbc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"test_ede_cbc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"test_des_ede_ecb\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"test_des_ede_cbc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"test_des_pcbc\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"test_des_cfb8\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"test_des_cfb16\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"test_des_cfb32\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"test_des_cfb48\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"test_des_cfb64\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"test_des_ede_cfb64\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"test_des_ofb\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"test_des_ofb64\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"test_des_ede_ofb64\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"test_des_cbc_cksum\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"test_des_quad_cksum\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"test_des_crypt\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"test_input_align\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"test_output_align\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"test_des_key_wrap\00", align 1
@key_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"test/destest.c\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"cipher_data[i]\00", align 1
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"sY\B2\16>N\DCX", [8 x i8] c"\95\8Enbz\05U{", [8 x i8] c"\F4\03y\AB\9E\0E\C53", [8 x i8] c"\17f\8D\FCr\92S-", [8 x i8] c"\8AZ\E1\F8\1A\B8\F2\DD", [8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"\ED9\D9P\FAt\BC\C4", [8 x i8] c"i\0F[\0D\9A&\93\9B", [8 x i8] c"z8\9D\105K\D2q", [8 x i8] c"\86\8E\BBQ\CA\B4Y\9A", [8 x i8] c"qx\87n\01\F1\9B*", [8 x i8] c"\AF7\FBB\1F\8C@\95", [8 x i8] c"\86\A5`\F1\0E\C6\D8[", [8 x i8] c"\0C\D3\DA\02\00!\DC\09", [8 x i8] c"\EAgk,\B7\DB+z", [8 x i8] c"\DF\D6J\81\\\AF\1A\0F", [8 x i8] c"\\Q<\9CH\86\C0\88", [8 x i8] c"\0A*\EE\AE?\F4\ABw", [8 x i8] c"\EF\1B\F0>]\FAWZ", [8 x i8] c"\88\BF\0D\B6\D7\0D\EEV", [8 x i8] c"\A1\F9\91UA\02\0BV", [8 x i8] c"o\BF\1C\AF\CF\FD\05V", [8 x i8] c"/\22\E4\9B\AB|\A1\AC", [8 x i8] c"Zka,\C2l\CEJ", [8 x i8] c"_L\03\8E\D1+.A", [8 x i8] c"c\FA\C0\D04\D9\F7\93", [8 x i8] c"a{:\0C\E8\F0q\00", [8 x i8] c"\DB\95\86\05\F8\C8\C6\06", [8 x i8] c"\ED\BF\D1\C6l)\CC\C7", [8 x i8] c"5UP\B2\15\0E$Q", [8 x i8] c"\CA\AA\AFM\EA\F1\DB\AE", [8 x i8] c"\D5\D4O\F7 h=\0D", [8 x i8] c"*+\B0\08\DF\97\C2\F2"], align 16
@.str.24 = private unnamed_addr constant [31 x i8] c"Encryption error %2d k=%s p=%s\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"outin\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Decryption error %2d k=%s p=%s\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"DES_set_key_checked(&cbc_key, &ks)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@cbc_key = internal global [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"cbc_out\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"cbc_ok\00", align 1
@cbc_ok = internal global [32 x i8] c"\CC\D1s\FF\AB 9\F4\AC\D8\AE\FD\DF\D8\A1\EBF\8E\91\15x\88\BAh\1D&\93\97\F7\FEb\B4", align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"cbc_in\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"cbc_data\00", align 1
@cbc_data = internal global <{ [30 x i8], [10 x i8] }> <{ [30 x i8] c"7654321 Now is the time for \001", [10 x i8] zeroinitializer }>, align 16
@.str.36 = private unnamed_addr constant [37 x i8] c"DES_set_key_checked(&cbc2_key, &ks2)\00", align 1
@cbc2_key = internal global [8 x i8] c"\F1\E0\D3\C2\B5\A4\97\86", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"DES_set_key_checked(&cbc3_key, &ks3)\00", align 1
@cbc3_key = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"cbc3_ok\00", align 1
@cbc3_ok = internal global [32 x i8] c"?\E3\01\C9b\AC\01\D0\22\13v<\1C\BDL\DCy\96W\C0d\EC\F5\D4\1Cg8\12\CF\DE\96u", align 16
@.str.39 = private unnamed_addr constant [15 x i8] c"cipher_ecb2[i]\00", align 1
@cipher_ecb2 = internal global [33 x [8 x i8]] [[8 x i8] c"\92\95\B5\9B\B3\84sn", [8 x i8] c"\19\9E\9Dm\F3\9A\A8\16", [8 x i8] c"*KM$RC\84'", [8 x i8] c"5\84<\01\9D\18\C5\B6", [8 x i8] c"J[/B\AAw\19%", [8 x i8] c"\A0k\A9\B8\CA[\17\8A", [8 x i8] c"\AB\9D\B7\FB\ED\95\F2t", [8 x i8] c"=%l#\A7%/\D6", [8 x i8] c"\B7o\ABO\BD\BD\B7g", [8 x i8] c"\8Fh'\D6\9C\F4\1A\10", [8 x i8] c"\82W\A1\D6P^\81\85", [8 x i8] c"\A2\0F\0A\CD\80\89}\FA", [8 x i8] c"\CD*S:\DB\0D~\F3", [8 x i8] c"\D2\C2\BE'\E8\1Bh\E3", [8 x i8] c"\E9$\CFO\89<[\0A", [8 x i8] c"\A7\18\C3\9F\FA\9F\D7i", [8 x i8] c"w,y\B1\D21~\B1", [8 x i8] c"I\AB\92\7F\D0\22\00\B7", [8 x i8] c"\CE\1Cl}\85\E3Jo", [8 x i8] c"\BE\91\D6\E1'\B2\E9\87", [8 x i8] c"p(\AE\8F\D1\F5t\1A", [8 x i8] c"\AA7\80\BB\F3\22\1D\DE", [8 x i8] c"\A6\C4\D2^(\93\AC\B3", [8 x i8] c"\22\07\81Z\E4\B7\1A\AD", [8 x i8] c"\DC\CE\05\E7\07\BD\F5\84", [8 x i8] c"&\1D9,\B3\BA\A5\85", [8 x i8] c"\B4\F7\0Fr\FB\04\F0\DC", [8 x i8] c"\95\BA\A9N\876\F2\89", [8 x i8] c"\D4\07:\F1Z\17\82\0E", [8 x i8] c"\EFo\AF\A7f\1A~\89", [8 x i8] c"\C1\97\F5Xt\8A \E7", [8 x i8] c"C4\CF\DA\22\C4\86\C8", [8 x i8] c"\08\D7\B4\FBb\9D\08\85"], align 16
@.str.40 = private unnamed_addr constant [32 x i8] c"Decryption error %2d k=%s p=%s \00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"xcbc_ok\00", align 1
@xcbc_ok = internal global [32 x i8] c"\84k)\14\85\1E\9A)Ts/\8A\A0\A6\11\C1\15\CD\C2\D7\95\1B\10S\A6<^\03\B2\1A\A3\C4", align 16
@.str.42 = private unnamed_addr constant [8 x i8] c"pcbc_ok\00", align 1
@pcbc_ok = internal global [32 x i8] c"\CC\D1s\FF\AB 9\F4m\EC\B4p\A0\E5k\15\AE\A6\BFa\ED}\9C\9F\F7\17F;\8A\B3\CC\88", align 16
@cfb_cipher8 = internal global [24 x i8] c"\F3\1F\DA\07\01\14b\EE\18\7FC\D8\0A|\D9\B5\B0\D2\90\DAn[\9A\87", align 16
@cfb_key = internal global [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@cfb_tmp = internal global [8 x i8] zeroinitializer, align 1
@cfb_iv = internal global [8 x i8] c"\124Vx\90\AB\CD\EF", align 1
@plain = internal global [24 x i8] c"Now is the time for all ", align 16
@cfb_buf1 = internal global [40 x i8] zeroinitializer, align 16
@.str.43 = private unnamed_addr constant [11 x i8] c"cfb_cipher\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"cfb_buf1\00", align 1
@cfb_buf2 = internal global [40 x i8] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"cfb_buf2\00", align 1
@cfb_cipher16 = internal global [24 x i8] c"\F3\09\87\87\7FW\F7<6\B6\DBp\D8\D54\19\D3\86\B2#\B7\B2\AD\1B", align 16
@cfb_cipher32 = internal global [24 x i8] c"\F3\09bI\A4\DF\A4\9F3\DC{\ADL\C8\9Fd\E4S\E5\ECg \DA\B6", align 16
@cfb_cipher48 = internal global [24 x i8] c"\F3\09bI\C7\F40\B5\15\EC\BB\85\97Z\13\8Ch`\E284<\DC\1F", align 16
@cfb_cipher64 = internal global [24 x i8] c"\F3\09bI\C7\F4nQ\A6\9E\83\9B\1A\92\F7\84\03Fq3\89\8E\A6\22", align 16
@.str.47 = private unnamed_addr constant [13 x i8] c"cfb_cipher64\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"cfb_cipher8\00", align 1
@ofb_key = internal global [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@ofb_tmp = internal global [8 x i8] zeroinitializer, align 1
@ofb_iv = internal global [8 x i8] c"\124Vx\90\AB\CD\EF", align 1
@ofb_buf1 = internal global [24 x i8] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [11 x i8] c"ofb_cipher\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ofb_buf1\00", align 1
@ofb_cipher = internal global [24 x i8] c"\F3\09bI\C7\F4nQ5\F2J$.\EB=?=m[\E3%Z\F8\C3", align 16
@ofb_buf2 = internal global [24 x i8] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [9 x i8] c"ofb_buf2\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"cbc_cksum_ret\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"cret\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"cbc_cksum_data\00", align 1
@cbc_cksum_data = internal global [8 x i8] c"\1D&\93\97\F7\FEb\B4", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"0x70d7a63aL\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"lqret[0]\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"0x327eba8dL\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"lqret[1]\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"0x201a49ccL\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"lqret[2]\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"lqret[3]\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"0x501c2c26L\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"\22efGnQx2725bI2\22\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"DES_crypt(\22testing\22, \22ef\22)\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"efGnQx2725bI2\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"\22yA1Rp/1hZXIJk\22\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"DES_crypt(\22bca76;23\22, \22yA\22)\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"yA1Rp/1hZXIJk\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"bca76;23\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"yA\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"DES_crypt(\22testing\22, \22y\\202\22)\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"y\82\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"DES_crypt(\22testing\22, \22\\0A\22)\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\00A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"DES_crypt(\22testing\22, \22A\22)\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@test_des_key_wrap_sizes = internal unnamed_addr constant [6 x i32] [i32 8, i32 16, i32 24, i32 32, i32 64, i32 80], align 16
@.str.80 = private unnamed_addr constant [9 x i8] c"in_bytes\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"sizeof(in)\00", align 1
@.str.82 = private unnamed_addr constant [51 x i8] c"cipher = EVP_CIPHER_fetch(NULL, \22DES3-WRAP\22, NULL)\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"DES3-WRAP\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"bs = EVP_CIPHER_get_block_size(cipher)\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"bs * 3u\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"sizeof(key)\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"in_bytes % bs == 0\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"EVP_EncryptInit(ctx, cipher, key, NULL)\00", align 1
@.str.91 = private unnamed_addr constant [55 x i8] c"EVP_EncryptUpdate(ctx, c_txt, &clen_upd, in, in_bytes)\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"clen_upd\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.94 = private unnamed_addr constant [51 x i8] c"EVP_EncryptFinal(ctx, c_txt + clen_upd, &clen_fin)\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"clen_fin\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"EVP_DecryptInit(ctx, cipher, key, NULL)\00", align 1
@.str.97 = private unnamed_addr constant [54 x i8] c"EVP_DecryptUpdate(ctx, p_txt, &plen_upd, c_txt, clen)\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"EVP_DecryptFinal(ctx, p_txt + plen_upd, &plen_fin)\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"p_txt\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_des_ecb, i32 noundef 34, i32 noundef 1) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cbc) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_ede_cbc) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_des_ede_ecb, i32 noundef 32, i32 noundef 1) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_des_ede_cbc) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_des_pcbc) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cfb8) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cfb16) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cfb32) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cfb48) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cfb64) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_des_ede_cfb64) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_des_ofb) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_des_ofb64) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_des_ede_ofb64) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 ()* noundef nonnull @test_des_cbc_cksum) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_des_quad_cksum) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_des_crypt) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_input_align, i32 noundef 4, i32 noundef 1) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_output_align, i32 noundef 4, i32 noundef 1) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 (i32)* noundef nonnull @test_des_key_wrap, i32 noundef 6, i32 noundef 1) #7
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ecb(i32 noundef %i) #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %in = alloca [8 x i8], align 1
  %out = alloca [8 x i8], align 1
  %outin = alloca [8 x i8], align 1
  %b1 = alloca [20 x i8], align 16
  %b2 = alloca [20 x i8], align 16
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %outin, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %b1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #8
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %b2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #8
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %idxprom
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %arrayidx, %struct.DES_ks* noundef nonnull %ks) #7
  %arraydecay3 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %idxprom, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %arraydecay3, i64 noundef 8) #7
  %call5 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 8) #7
  %call7 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 8) #7
  call void @DES_ecb_encrypt([8 x i8]* noundef nonnull %in, [8 x i8]* noundef nonnull %out, %struct.DES_ks* noundef nonnull %ks, i32 noundef 1) #7
  call void @DES_ecb_encrypt([8 x i8]* noundef nonnull %out, [8 x i8]* noundef nonnull %outin, %struct.DES_ks* noundef nonnull %ks, i32 noundef 0) #7
  %arraydecay11 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %idxprom, i64 0
  %call12 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 8, i8* noundef nonnull %arraydecay11, i64 noundef 8) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %i, 1
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %call17 = call fastcc i8* @pt(i8* noundef nonnull %arraydecay15, i8* noundef nonnull %4) #9
  %call20 = call fastcc i8* @pt(i8* noundef nonnull %1, i8* noundef nonnull %5) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 noundef %add, i8* noundef nonnull %4, i8* noundef nonnull %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call23 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef nonnull %3, i64 noundef 8) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.end
  %add26 = add nsw i32 %i, 1
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %call31 = call fastcc i8* @pt(i8* noundef nonnull %arraydecay29, i8* noundef nonnull %4) #9
  %call34 = call fastcc i8* @pt(i8* noundef nonnull %2, i8* noundef nonnull %5) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 noundef %add26, i8* noundef nonnull %4, i8* noundef nonnull %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then25, %if.then
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cbc() #0 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %iv3 = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %3 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %call1 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #7
  %call5 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #7
  %call7 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  %add = add i64 %call, 1
  call void @DES_ncbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i8* noundef nonnull %1, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv3, i32 noundef 1) #7
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 0), i64 noundef 32) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %call15 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_ncbc_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv3, i32 noundef 0) #7
  %call20 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %call, i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i64 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %call20, %if.end13 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ede_cbc() #0 {
entry:
  %iv3 = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %ks2 = alloca %struct.DES_ks, align 4
  %ks3 = alloca %struct.DES_ks, align 4
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %iv3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #8
  %2 = bitcast %struct.DES_ks* %ks2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #8
  %3 = bitcast %struct.DES_ks* %ks3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #8
  %4 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #8
  %5 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %add = add i64 %call, 1
  %add1 = add i64 %call, 8
  %div = and i64 %add1, -8
  %call2 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc2_key, %struct.DES_ks* noundef nonnull %ks2) #7
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc3_key, %struct.DES_ks* noundef nonnull %ks3) #7
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 40) #7
  %call16 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 40) #7
  %call18 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_ede3_cbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i8* noundef nonnull %5, i64 noundef 16, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks2, %struct.DES_ks* noundef nonnull %ks3, [8 x i8]* noundef nonnull %iv3, i32 noundef 1) #7
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 16
  %sub = add i64 %call, -15
  call void @DES_ede3_cbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 16), i8* noundef nonnull %arrayidx, i64 noundef %sub, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks2, %struct.DES_ks* noundef nonnull %ks3, [8 x i8]* noundef nonnull %iv3, i32 noundef 1) #7
  %call21 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* noundef nonnull %5, i64 noundef %div, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @cbc3_ok, i64 0, i64 0), i64 noundef %div) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end13
  %call26 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_ede3_cbc_encrypt(i8* noundef nonnull %5, i8* noundef nonnull %4, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks2, %struct.DES_ks* noundef nonnull %ks3, [8 x i8]* noundef nonnull %iv3, i32 noundef 0) #7
  %call30 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %add, i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i64 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8, %if.end, %entry, %if.end24
  %retval.0 = phi i32 [ %call30, %if.end24 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ede_ecb(i32 noundef %i) #0 {
entry:
  %in = alloca [8 x i8], align 1
  %out = alloca [8 x i8], align 1
  %outin = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %ks2 = alloca %struct.DES_ks, align 4
  %ks3 = alloca %struct.DES_ks, align 4
  %b1 = alloca [20 x i8], align 16
  %b2 = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %outin, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %3 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #8
  %4 = bitcast %struct.DES_ks* %ks2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #8
  %5 = bitcast %struct.DES_ks* %ks3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #8
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %b1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #8
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %b2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #8
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %idxprom
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %arrayidx, %struct.DES_ks* noundef nonnull %ks) #7
  %add = add nsw i32 %i, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %idxprom1
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %arrayidx2, %struct.DES_ks* noundef nonnull %ks2) #7
  %add3 = add nsw i32 %i, 2
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %idxprom4
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %arrayidx5, %struct.DES_ks* noundef nonnull %ks3) #7
  %arraydecay8 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %idxprom, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %arraydecay8, i64 noundef 8) #7
  %call10 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 8) #7
  %call12 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 8) #7
  call void @DES_ecb3_encrypt([8 x i8]* noundef nonnull %in, [8 x i8]* noundef nonnull %out, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks2, %struct.DES_ks* noundef nonnull %ks, i32 noundef 1) #7
  call void @DES_ecb3_encrypt([8 x i8]* noundef nonnull %out, [8 x i8]* noundef nonnull %outin, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks2, %struct.DES_ks* noundef nonnull %ks, i32 noundef 0) #7
  %arraydecay16 = getelementptr inbounds [33 x [8 x i8]], [33 x [8 x i8]]* @cipher_ecb2, i64 0, i64 %idxprom, i64 0
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef nonnull %arraydecay16, i64 noundef 8) #7
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay21 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %call23 = call fastcc i8* @pt(i8* noundef nonnull %arraydecay21, i8* noundef nonnull %6) #9
  %call26 = call fastcc i8* @pt(i8* noundef nonnull %0, i8* noundef nonnull %7) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 noundef %add, i8* noundef nonnull %6, i8* noundef nonnull %7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call29 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 8, i8* noundef nonnull %2, i64 noundef 8) #7
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end
  %arraydecay35 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %call37 = call fastcc i8* @pt(i8* noundef nonnull %arraydecay35, i8* noundef nonnull %6) #9
  %call40 = call fastcc i8* @pt(i8* noundef nonnull %1, i8* noundef nonnull %7) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i32 noundef %add, i8* noundef nonnull %6, i8* noundef nonnull %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then31, %if.then
  %retval.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ede_cbc() #0 {
entry:
  %iv3 = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %iv3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #8
  %2 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8
  %3 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %add = add i64 %call, 1
  %call1 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 40) #7
  %call5 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 40) #7
  %call7 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_xcbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i8* noundef nonnull %3, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv3, [8 x i8]* noundef nonnull @cbc2_key, [8 x i8]* noundef nonnull @cbc3_key, i32 noundef 1) #7
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @xcbc_ok, i64 0, i64 0), i64 noundef 32) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %call15 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_xcbc_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %2, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv3, [8 x i8]* noundef nonnull @cbc2_key, [8 x i8]* noundef nonnull @cbc3_key, i32 noundef 0) #7
  %call18 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i64 noundef %add, i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i64 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %call18, %if.end13 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_pcbc() #0 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %ks = alloca %struct.DES_ks, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8
  %2 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %call1 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 40) #7
  %call5 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #7
  %conv = shl i64 %call, 32
  %sext = add i64 %conv, 4294967296
  %conv7 = ashr exact i64 %sext, 32
  call void @DES_pcbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv7, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cbc_iv, i32 noundef 1) #7
  %call9 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @pcbc_ok, i64 0, i64 0), i64 noundef 32) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @DES_pcbc_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef %conv7, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cbc_iv, i32 noundef 0) #7
  %call19 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv7, i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i64 noundef %conv7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end12
  %retval.0 = phi i32 [ %call19, %if.end12 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cfb8() #0 {
entry:
  %call = tail call fastcc i32 @cfb_test(i32 noundef 8, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher8, i64 0, i64 0)) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cfb16() #0 {
entry:
  %call = tail call fastcc i32 @cfb_test(i32 noundef 16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher16, i64 0, i64 0)) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cfb32() #0 {
entry:
  %call = tail call fastcc i32 @cfb_test(i32 noundef 32, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher32, i64 0, i64 0)) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cfb48() #0 {
entry:
  %call = tail call fastcc i32 @cfb_test(i32 noundef 48, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher48, i64 0, i64 0)) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cfb64() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %n = alloca i32, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %call = tail call fastcc i32 @cfb_test(i32 noundef 64, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher64, i64 0, i64 0)) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cfb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call2 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @DES_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 12, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 1) #7
  call void @DES_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 12), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 12), i64 noundef 12, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 1) #7
  %call3 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher64, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @DES_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 17, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 0) #7
  call void @DES_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 17), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 17), i64 noundef 7, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 0) #7
  %call8 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 24) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  br label %for.body

for.body:                                         ; preds = %if.end11, %for.body
  %i.038 = phi i64 [ 0, %if.end11 ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* @plain, i64 0, i64 %i.038
  %arrayidx13 = getelementptr inbounds [40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 %i.038
  call void @DES_cfb_encrypt(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arrayidx13, i32 noundef 8, i64 noundef 1, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32 noundef 1) #7
  %inc = add nuw nsw i64 %i.038, 1
  %exitcond.not = icmp eq i64 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %for.body
  %call14 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher8, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %for.end
  %call18 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  br label %for.body21

for.body21:                                       ; preds = %if.end17, %for.body21
  %i.139 = phi i64 [ 0, %if.end17 ], [ %inc25, %for.body21 ]
  %arrayidx22 = getelementptr inbounds [40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 %i.139
  %arrayidx23 = getelementptr inbounds [40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 %i.139
  call void @DES_cfb_encrypt(i8* noundef nonnull %arrayidx22, i8* noundef nonnull %arrayidx23, i32 noundef 8, i64 noundef 1, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32 noundef 0) #7
  %inc25 = add nuw nsw i64 %i.139, 1
  %exitcond40.not = icmp eq i64 %inc25, 24
  br i1 %exitcond40.not, label %for.end26, label %for.body21, !llvm.loop !9

for.end26:                                        ; preds = %for.body21
  %call27 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6, %if.end, %entry, %for.end26
  %retval.0 = phi i32 [ %call27, %for.end26 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ede_cfb64() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %n = alloca i32, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cfb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @DES_ede3_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 12, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 1) #7
  call void @DES_ede3_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 12), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 12), i64 noundef 12, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 1) #7
  %call2 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher64, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @DES_ede3_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 17, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 0) #7
  call void @DES_ede3_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 17), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 17), i64 noundef 7, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32* noundef nonnull %n, i32 noundef 0) #7
  %call4 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ofb() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @ofb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_ofb_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i32 noundef 64, i64 noundef 3, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp) #7
  %call2 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_cipher, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_ofb_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i32 noundef 64, i64 noundef 3, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp) #7
  %call4 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 618, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ofb64() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %num = alloca i32, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @ofb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  %call2 = call i8* @memset(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i32 noundef 0, i64 noundef 24) #7
  %call3 = call i8* @memset(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i32 noundef 0, i64 noundef 24) #7
  store i32 0, i32* %num, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* @plain, i64 0, i64 %i.014
  %arrayidx4 = getelementptr inbounds [24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 %i.014
  call void @DES_ofb64_encrypt(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arrayidx4, i64 noundef 1, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp, i32* noundef nonnull %num) #7
  %inc = add nuw nsw i64 %i.014, 1
  %exitcond.not = icmp eq i64 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body
  %call5 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_cipher, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %call6 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %num, align 4, !tbaa !3
  call void @DES_ofb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i64 noundef 24, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp, i32* noundef nonnull %num) #7
  %call7 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 641, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_ede_ofb64() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %num = alloca i32, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @ofb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  %call2 = call i8* @memset(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i32 noundef 0, i64 noundef 24) #7
  %call3 = call i8* @memset(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i32 noundef 0, i64 noundef 24) #7
  store i32 0, i32* %num, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* @plain, i64 0, i64 %i.014
  %arrayidx4 = getelementptr inbounds [24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 %i.014
  call void @DES_ede3_ofb64_encrypt(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arrayidx4, i64 noundef 1, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp, i32* noundef nonnull %num) #7
  %inc = add nuw nsw i64 %i.014, 1
  %exitcond.not = icmp eq i64 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  %call5 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_cipher, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %call6 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @ofb_iv, i64 0, i64 0), i64 noundef 8) #7
  store i32 0, i32* %num, align 4, !tbaa !3
  call void @DES_ede3_ofb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i64 noundef 24, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @ofb_tmp, i32* noundef nonnull %num) #7
  %call7 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @ofb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_cbc_cksum() #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %cret = alloca [8 x i8], align 1
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %cret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %call2 = call i32 @DES_cbc_cksum(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), [8 x i8]* noundef nonnull %cret, i64 noundef %call1, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cbc_iv) #7
  %call3 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 677, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i32 noundef %call2, i32 noundef -134323532) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_cksum_data, i64 0, i64 0), i64 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_quad_cksum() #0 {
entry:
  %lqret = alloca [4 x i32], align 16
  %0 = bitcast [4 x i32]* %lqret to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %1 = bitcast [4 x i32]* %lqret to [8 x i8]*
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %call1 = call i32 @DES_quad_cksum(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), [8 x i8]* noundef nonnull %1, i64 noundef %call, i32 noundef 2, [8 x i8]* noundef nonnull @cbc_iv) #7
  %call2 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 noundef %call1, i32 noundef 1893180986) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %lqret, i64 0, i64 0
  %2 = load i32, i32* %arraydecay, align 16, !tbaa !3
  %call3 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 691, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 noundef %2, i32 noundef 847166093) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %lqret, i64 0, i64 1
  %3 = load i32, i32* %arrayidx7, align 4, !tbaa !3
  %call8 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i32 noundef %3, i32 noundef 538593740) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %lqret, i64 0, i64 2
  %4 = load i32, i32* %arrayidx12, align 8, !tbaa !3
  %call13 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 695, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 noundef %4, i32 noundef 1893180986) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %lqret, i64 0, i64 3
  %5 = load i32, i32* %arrayidx17, align 4, !tbaa !3
  %call18 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 697, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 noundef %5, i32 noundef 1344023590) #7
  %tobool19.not = icmp ne i32 %call18, 0
  %. = zext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end11 ], [ %., %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_crypt() #0 {
entry:
  %call = tail call i8* @DES_crypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0)) #7
  %call1 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8* noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @DES_crypt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)) #7
  %call3 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0), i8* noundef %call2) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @DES_crypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0)) #7
  %call8 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call7) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i8* @DES_crypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0)) #7
  %call13 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), i8* noundef %call12) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i8* @DES_crypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #7
  %call18 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call17) #7
  %tobool19.not = icmp ne i32 %call18, 0
  %. = zext i1 %tobool19.not to i32
  br label %return

return:                                           ; preds = %if.end16, %if.end11, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end11 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_input_align(i32 noundef %i) #0 {
entry:
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #8
  %idx.ext = sext i32 %i to i64
  %add.ptr = getelementptr inbounds <{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 %idx.ext
  %call = tail call i64 @strlen(i8* noundef nonnull %add.ptr) #10
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #7
  %call3 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  %call4 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %call, 1
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* bitcast (<{ [30 x i8], [10 x i8] }>* @cbc_data to [40 x i8]*), i64 0, i64 %idx.ext
  call void @DES_ncbc_encrypt(i8* noundef %arrayidx, i8* noundef nonnull %0, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_output_align(i32 noundef %i) #0 {
entry:
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #8
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0)) #10
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #7
  %call3 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 noundef 8) #7
  %call4 = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cbc_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %call, 1
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i64 0, i64 %idxprom
  call void @DES_ncbc_encrypt(i8* noundef getelementptr inbounds (<{ [30 x i8], [10 x i8] }>, <{ [30 x i8], [10 x i8] }>* @cbc_data, i64 0, i32 0, i64 0), i8* noundef nonnull %arrayidx, i64 noundef %add, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull %iv, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_des_key_wrap(i32 noundef %idx) #0 {
entry:
  %in = alloca [100 x i8], align 16
  %c_txt = alloca [200 x i8], align 16
  %p_txt = alloca [200 x i8], align 16
  %key = alloca [24 x i8], align 16
  %clen_upd = alloca i32, align 4
  %clen_fin = alloca i32, align 4
  %plen_upd = alloca i32, align 4
  %plen_fin = alloca i32, align 4
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @test_des_key_wrap_sizes, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !3
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #8
  %2 = getelementptr inbounds [200 x i8], [200 x i8]* %c_txt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #8
  %3 = getelementptr inbounds [200 x i8], [200 x i8]* %p_txt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #8
  %4 = getelementptr inbounds [24 x i8], [24 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8
  %5 = bitcast i32* %clen_upd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8
  %6 = bitcast i32* %clen_fin to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  %7 = bitcast i32* %plen_upd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #8
  %8 = bitcast i32* %plen_fin to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #8
  %conv = sext i32 %0 to i64
  %call = tail call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i64 0, i64 0), i64 noundef %conv, i64 noundef 100) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0), i8* noundef null) #7
  %9 = bitcast %struct.evp_cipher_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i64 0, i64 0), i8* noundef %9) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef %call1) #7
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), i32 noundef %call5, i32 noundef 8) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %mul = mul i32 %call5, 3
  %conv9 = zext i32 %mul to i64
  %call10 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i64 noundef %conv9, i64 noundef 24) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %rem = srem i32 %0, %call5
  %cmp = icmp eq i32 %rem, 0
  %conv13 = zext i1 %cmp to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 725, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv13) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #7
  %10 = bitcast %struct.evp_cipher_ctx_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i64 0, i64 0), i8* noundef %10) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false18
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count = zext i32 %smax to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %call24 = tail call i32 @test_random() #7
  %conv25 = trunc i32 %call24 to i8
  %arrayidx27 = getelementptr inbounds [100 x i8], [100 x i8]* %in, i64 0, i64 %indvars.iv
  store i8 %conv25, i8* %arrayidx27, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.body
  %call28 = call i8* @memcpy(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_key, i64 0, i64 0), i64 noundef 8) #7
  %add.ptr = getelementptr inbounds [24 x i8], [24 x i8]* %key, i64 0, i64 8
  %call30 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc2_key, i64 0, i64 0), i64 noundef 8) #7
  %add.ptr33 = getelementptr inbounds [24 x i8], [24 x i8]* %key, i64 0, i64 16
  %call34 = call i8* @memcpy(i8* noundef nonnull %add.ptr33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_key, i64 0, i64 0), i64 noundef 8) #7
  store i32 200, i32* %clen_upd, align 4, !tbaa !3
  %call36 = call i32 @EVP_EncryptInit(%struct.evp_cipher_ctx_st* noundef %call19, %struct.evp_cipher_st* noundef %call1, i8* noundef nonnull %4, i8* noundef null) #7
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 740, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv38) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %for.end
  %call44 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call19, i8* noundef nonnull %2, i32* noundef nonnull %clen_upd, i8* noundef nonnull %1, i32 noundef %0) #7
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv46) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false41
  %sub = add i32 %0, -1
  %add = add i32 %sub, %call5
  %11 = srem i32 %add, %call5
  %mul52 = shl nsw i32 %call5, 1
  %mul51 = add i32 %add, %mul52
  %add53 = sub i32 %mul51, %11
  %12 = load i32, i32* %clen_upd, align 4, !tbaa !3
  %call54 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i32 noundef %12, i32 noundef %add53) #7
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %if.end50
  %13 = load i32, i32* %clen_upd, align 4, !tbaa !3
  %sub59 = sub i32 200, %13
  store i32 %sub59, i32* %clen_fin, align 4, !tbaa !3
  %idx.ext = sext i32 %13 to i64
  %add.ptr62 = getelementptr inbounds [200 x i8], [200 x i8]* %c_txt, i64 0, i64 %idx.ext
  %call63 = call i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef %call19, i8* noundef nonnull %add.ptr62, i32* noundef nonnull %clen_fin) #7
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv65) #7
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end57
  %14 = load i32, i32* %clen_fin, align 4, !tbaa !3
  %call69 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %14, i32 noundef 0) #7
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false68
  %15 = load i32, i32* %clen_upd, align 4, !tbaa !3
  %16 = load i32, i32* %clen_fin, align 4, !tbaa !3
  store i32 200, i32* %plen_upd, align 4, !tbaa !3
  %call75 = call i32 @EVP_DecryptInit(%struct.evp_cipher_ctx_st* noundef %call19, %struct.evp_cipher_st* noundef %call1, i8* noundef nonnull %4, i8* noundef null) #7
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 757, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv77) #7
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end72
  %add73 = add nsw i32 %16, %15
  %call83 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call19, i8* noundef nonnull %3, i32* noundef nonnull %plen_upd, i8* noundef nonnull %2, i32 noundef %add73) #7
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv85) #7
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %if.end89

if.end89:                                         ; preds = %lor.lhs.false80
  %17 = load i32, i32* %plen_upd, align 4, !tbaa !3
  %sub91 = sub i32 200, %17
  store i32 %sub91, i32* %plen_fin, align 4, !tbaa !3
  %idx.ext94 = sext i32 %17 to i64
  %add.ptr95 = getelementptr inbounds [200 x i8], [200 x i8]* %p_txt, i64 0, i64 %idx.ext94
  %call96 = call i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef %call19, i8* noundef nonnull %add.ptr95, i32* noundef nonnull %plen_fin) #7
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv98) #7
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end89
  %18 = load i32, i32* %plen_upd, align 4, !tbaa !3
  %19 = load i32, i32* %plen_fin, align 4, !tbaa !3
  %add103 = add nsw i32 %19, %18
  %conv107 = sext i32 %add103 to i64
  %call108 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv, i8* noundef nonnull %3, i64 noundef %conv107) #7
  %tobool109.not = icmp ne i32 %call108, 0
  %spec.select = zext i1 %tobool109.not to i32
  br label %err

err:                                              ; preds = %if.end102, %if.end89, %if.end72, %lor.lhs.false80, %if.end57, %lor.lhs.false68, %if.end50, %for.end, %lor.lhs.false41, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false18
  %cipher.0 = phi %struct.evp_cipher_st* [ %call1, %if.end89 ], [ %call1, %lor.lhs.false80 ], [ %call1, %if.end72 ], [ %call1, %lor.lhs.false68 ], [ %call1, %if.end57 ], [ %call1, %if.end50 ], [ %call1, %lor.lhs.false41 ], [ %call1, %for.end ], [ %call1, %lor.lhs.false18 ], [ %call1, %lor.lhs.false12 ], [ %call1, %lor.lhs.false8 ], [ %call1, %lor.lhs.false4 ], [ %call1, %lor.lhs.false ], [ null, %entry ], [ %call1, %if.end102 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call19, %if.end89 ], [ %call19, %lor.lhs.false80 ], [ %call19, %if.end72 ], [ %call19, %lor.lhs.false68 ], [ %call19, %if.end57 ], [ %call19, %if.end50 ], [ %call19, %lor.lhs.false41 ], [ %call19, %for.end ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false4 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %if.end102 ]
  %res.0 = phi i32 [ 0, %if.end89 ], [ 0, %lor.lhs.false80 ], [ 0, %if.end72 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end57 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false41 ], [ 0, %for.end ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end102 ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0) #7
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #8
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @DES_ecb_encrypt([8 x i8]* noundef, [8 x i8]* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i8* @pt(i8* nocapture noundef readonly %p, i8* noundef returned writeonly %buf) unnamed_addr #4 {
entry:
  %0 = load i8, i8* %p, align 1, !tbaa !12
  %1 = lshr i8 %0, 4
  %2 = zext i8 %1 to i64
  %arrayidx3 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !12
  store i8 %3, i8* %buf, align 1, !tbaa !12
  %4 = load i8, i8* %p, align 1, !tbaa !12
  %5 = and i8 %4, 15
  %6 = zext i8 %5 to i64
  %arrayidx11 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx11, align 1, !tbaa !12
  %arrayidx14 = getelementptr inbounds i8, i8* %buf, i64 1
  store i8 %7, i8* %arrayidx14, align 1, !tbaa !12
  %arrayidx1.1 = getelementptr inbounds i8, i8* %p, i64 1
  %8 = load i8, i8* %arrayidx1.1, align 1, !tbaa !12
  %9 = lshr i8 %8, 4
  %10 = zext i8 %9 to i64
  %arrayidx3.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx3.1, align 1, !tbaa !12
  %arrayidx5.1 = getelementptr inbounds i8, i8* %buf, i64 2
  store i8 %11, i8* %arrayidx5.1, align 1, !tbaa !12
  %12 = load i8, i8* %arrayidx1.1, align 1, !tbaa !12
  %13 = and i8 %12, 15
  %14 = zext i8 %13 to i64
  %arrayidx11.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx11.1, align 1, !tbaa !12
  %arrayidx14.1 = getelementptr inbounds i8, i8* %buf, i64 3
  store i8 %15, i8* %arrayidx14.1, align 1, !tbaa !12
  %arrayidx1.2 = getelementptr inbounds i8, i8* %p, i64 2
  %16 = load i8, i8* %arrayidx1.2, align 1, !tbaa !12
  %17 = lshr i8 %16, 4
  %18 = zext i8 %17 to i64
  %arrayidx3.2 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx3.2, align 1, !tbaa !12
  %arrayidx5.2 = getelementptr inbounds i8, i8* %buf, i64 4
  store i8 %19, i8* %arrayidx5.2, align 1, !tbaa !12
  %20 = load i8, i8* %arrayidx1.2, align 1, !tbaa !12
  %21 = and i8 %20, 15
  %22 = zext i8 %21 to i64
  %arrayidx11.2 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %22
  %23 = load i8, i8* %arrayidx11.2, align 1, !tbaa !12
  %arrayidx14.2 = getelementptr inbounds i8, i8* %buf, i64 5
  store i8 %23, i8* %arrayidx14.2, align 1, !tbaa !12
  %arrayidx1.3 = getelementptr inbounds i8, i8* %p, i64 3
  %24 = load i8, i8* %arrayidx1.3, align 1, !tbaa !12
  %25 = lshr i8 %24, 4
  %26 = zext i8 %25 to i64
  %arrayidx3.3 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %26
  %27 = load i8, i8* %arrayidx3.3, align 1, !tbaa !12
  %arrayidx5.3 = getelementptr inbounds i8, i8* %buf, i64 6
  store i8 %27, i8* %arrayidx5.3, align 1, !tbaa !12
  %28 = load i8, i8* %arrayidx1.3, align 1, !tbaa !12
  %29 = and i8 %28, 15
  %30 = zext i8 %29 to i64
  %arrayidx11.3 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %30
  %31 = load i8, i8* %arrayidx11.3, align 1, !tbaa !12
  %arrayidx14.3 = getelementptr inbounds i8, i8* %buf, i64 7
  store i8 %31, i8* %arrayidx14.3, align 1, !tbaa !12
  %arrayidx1.4 = getelementptr inbounds i8, i8* %p, i64 4
  %32 = load i8, i8* %arrayidx1.4, align 1, !tbaa !12
  %33 = lshr i8 %32, 4
  %34 = zext i8 %33 to i64
  %arrayidx3.4 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %34
  %35 = load i8, i8* %arrayidx3.4, align 1, !tbaa !12
  %arrayidx5.4 = getelementptr inbounds i8, i8* %buf, i64 8
  store i8 %35, i8* %arrayidx5.4, align 1, !tbaa !12
  %36 = load i8, i8* %arrayidx1.4, align 1, !tbaa !12
  %37 = and i8 %36, 15
  %38 = zext i8 %37 to i64
  %arrayidx11.4 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %38
  %39 = load i8, i8* %arrayidx11.4, align 1, !tbaa !12
  %arrayidx14.4 = getelementptr inbounds i8, i8* %buf, i64 9
  store i8 %39, i8* %arrayidx14.4, align 1, !tbaa !12
  %arrayidx1.5 = getelementptr inbounds i8, i8* %p, i64 5
  %40 = load i8, i8* %arrayidx1.5, align 1, !tbaa !12
  %41 = lshr i8 %40, 4
  %42 = zext i8 %41 to i64
  %arrayidx3.5 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %42
  %43 = load i8, i8* %arrayidx3.5, align 1, !tbaa !12
  %arrayidx5.5 = getelementptr inbounds i8, i8* %buf, i64 10
  store i8 %43, i8* %arrayidx5.5, align 1, !tbaa !12
  %44 = load i8, i8* %arrayidx1.5, align 1, !tbaa !12
  %45 = and i8 %44, 15
  %46 = zext i8 %45 to i64
  %arrayidx11.5 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx11.5, align 1, !tbaa !12
  %arrayidx14.5 = getelementptr inbounds i8, i8* %buf, i64 11
  store i8 %47, i8* %arrayidx14.5, align 1, !tbaa !12
  %arrayidx1.6 = getelementptr inbounds i8, i8* %p, i64 6
  %48 = load i8, i8* %arrayidx1.6, align 1, !tbaa !12
  %49 = lshr i8 %48, 4
  %50 = zext i8 %49 to i64
  %arrayidx3.6 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %50
  %51 = load i8, i8* %arrayidx3.6, align 1, !tbaa !12
  %arrayidx5.6 = getelementptr inbounds i8, i8* %buf, i64 12
  store i8 %51, i8* %arrayidx5.6, align 1, !tbaa !12
  %52 = load i8, i8* %arrayidx1.6, align 1, !tbaa !12
  %53 = and i8 %52, 15
  %54 = zext i8 %53 to i64
  %arrayidx11.6 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %54
  %55 = load i8, i8* %arrayidx11.6, align 1, !tbaa !12
  %arrayidx14.6 = getelementptr inbounds i8, i8* %buf, i64 13
  store i8 %55, i8* %arrayidx14.6, align 1, !tbaa !12
  %arrayidx1.7 = getelementptr inbounds i8, i8* %p, i64 7
  %56 = load i8, i8* %arrayidx1.7, align 1, !tbaa !12
  %57 = lshr i8 %56, 4
  %58 = zext i8 %57 to i64
  %arrayidx3.7 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %58
  %59 = load i8, i8* %arrayidx3.7, align 1, !tbaa !12
  %arrayidx5.7 = getelementptr inbounds i8, i8* %buf, i64 14
  store i8 %59, i8* %arrayidx5.7, align 1, !tbaa !12
  %60 = load i8, i8* %arrayidx1.7, align 1, !tbaa !12
  %61 = and i8 %60, 15
  %62 = zext i8 %61 to i64
  %arrayidx11.7 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.28, i64 0, i64 %62
  %63 = load i8, i8* %arrayidx11.7, align 1, !tbaa !12
  %arrayidx14.7 = getelementptr inbounds i8, i8* %buf, i64 15
  store i8 %63, i8* %arrayidx14.7, align 1, !tbaa !12
  %arrayidx15 = getelementptr inbounds i8, i8* %buf, i64 16
  store i8 0, i8* %arrayidx15, align 1, !tbaa !12
  ret i8* %buf
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DES_set_key_checked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #1

declare dso_local void @DES_ncbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_ede3_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_ecb3_encrypt([8 x i8]* noundef, [8 x i8]* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_xcbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, [8 x i8]* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_pcbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cfb_test(i32 noundef %bits, i8* noundef %cfb_cipher) unnamed_addr #0 {
entry:
  %ks = alloca %struct.DES_ks, align 4
  %0 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %call = call i32 @DES_set_key_checked([8 x i8]* noundef nonnull @cfb_key, %struct.DES_ks* noundef nonnull %ks) #7
  %call1 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_cfb_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i32 noundef %bits, i64 noundef 24, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32 noundef 1) #7
  %call2 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 515, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i8* noundef %cfb_cipher, i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 24) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_iv, i64 0, i64 0), i64 noundef 8) #7
  call void @DES_cfb_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i32 noundef %bits, i64 noundef 24, %struct.DES_ks* noundef nonnull %ks, [8 x i8]* noundef nonnull @cfb_tmp, i32 noundef 0) #7
  %call4 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @DES_cfb_encrypt(i8* noundef, i8* noundef, i32 noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_ede3_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @DES_ofb_encrypt(i8* noundef, i8* noundef, i32 noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef) local_unnamed_addr #1

declare dso_local void @DES_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @DES_ede3_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @DES_cbc_cksum(i8* noundef, [8 x i8]* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DES_quad_cksum(i8* noundef, [8 x i8]* noundef, i64 noundef, i32 noundef, [8 x i8]* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @DES_crypt(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_random() local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptInit(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptInit(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !8}
