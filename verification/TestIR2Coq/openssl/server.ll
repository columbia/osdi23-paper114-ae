; ModuleID = 'fuzz/server.c'
source_filename = "fuzz/server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.stack_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.rsa_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ec_key_st = type opaque
%struct.dsa_st = type opaque
%struct.ssl_st = type opaque

@.str = private unnamed_addr constant [27 x i8] c"assertion failed: ret == 1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fuzz/server.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ALL:eNULL:@SECLEVEL=0\00", align 1
@kRSAPrivateKeyDER = internal constant [1193 x i8] c"0\82\04\A5\02\01\00\02\82\01\01\00\CEG\CB\11\BB\D2\9D\8E\9E\D2\1E\14\AF\C7\EA\B6\C98*o\B3~\FB\BC\FCYB\B9V\F0L?\F71\84\BE\AC\03\9Eq\91\85\D82\BD\00\EA\ACe\F6\03\C8\0F\8B\FDnX\88\04A\92t\A6W.\8E\88\D5=\DA\14>c\88\22\E3S\E9\BA9\09\AC\FB\D0L\F2< \D6\97\E6\ED\F1b\1E\E5\C9H\A0\CA.<\14Z\82\D4\ED\B1\E3C\C1*Y\A5\B9\C8H\A79#t\A77\B0o\C3d\99l\A2\82\C8\F6\DB\86@\CE\D1\85\9F\CEi\F4\15*#\CA\EA\B7{\DF\FBC_\FFzII\0E\E7\02QE\13\E8\90d!\0C&+]\FC\E4\B5\86\89C\22L\F3;\F3\09\C4\A4\10\80\F2F\E2F\8FvP\BF\AF+\90\1Bx\C7\CF\C1w\D0\FB\A9\FB\C9fZ\C5\9B1Ag\01\BE3\10\BA\05X\EDvS\DE]\C1\E8\BB\9F\F1\CD\FB\DFd\7F\D7\18\AB\0F\94(\95J\CCj\A9P\C7\05G\10A\02\03\01\00\01\02\82\01\01\00\A8G\B9J\06G\93q=\EF{\CA\B4|\0A\E6\82\D0\E7\0D\A9\08\F6\A4\FD\D8s\AEoV)^%r\A80Ds\CFV&\B9a\DEB\81\F4\F0\1F]\CBG\F2&\E9\E0\93(\A3\10;B\1EQ\11\12\06^\AF\CE\B0\A5\14\DD\82X\A1\A4\12\DFe\1DQpd\D5Xh\11\A8j#\C2\BF\A1%$G\B3\A4<\83\96\B7\1F\F4D\D4\D1\E9\FC3h^\E2h\99\9C\91\E8r\C9\D7\8C\80 \8Ew\83M\E4\AB\F9t\A1\DF\D3\C0\0D[\05Q\C2o\B2\91\02\EC\C0\02\1A\\\91\05\F1\E3\FAe\C2\AD$\E6\E5<\B6\16\F1\A1g\1A\9D7V\BF\01\D7;50Ws\F4\F0^\A7\E8\0A\C1\94\17\CF\0A\BD\F51\A7-\F7\F5\D9\8C\C2\01\BD\DA\16\8E\B90@\A6n\BD\CDM\84gN\0B\CE\D5\EF\F8\08c\02\C6\C7\F7g\92\E2#\9D'\22\1D\C6g^f\BF\03\B8\A9g\D49\D8u\FA\E8\EDV\B8\81\02\81\81\00\F7Fh\C6\13\F8\BA\0F\83\DB\05\A8%\00p\9C\9E\8B\124\0D\96\CF\0D\98\9B\8D\9C\96x\D1<\01\8C\B95\\ B\B48\E3\D6T\E7U\D6&\8A\0C\F6\1F\E0\04\C1\22B\19a\C4\94|\07.\80R\FE\8D\E6\92:\91\FEr\99\E1*sv\B1$ g\DE(\CB\0E\E6R\B5\FA\FB\8B\1Ej\1D\09&\B9\A7a\BA\F8y\D2fW(\D71\B5\0B'\19\1EoF\FCT\95\EBx\01\B6\D9yZM\02\81\81\00\D5\8F\16S/W\93\BF\09u\BFc@='\FD#!\DE\9B\E9s?I\02\D28\96\CF\C3\BA\92\07\87R\A95\E3\0C\E4/\05{7\A5@\9C;\94\F7\AD\A0\EE:\A8\FB\1F\11\1F\D8\9A\80B=\7F\A4\B8\9A\AA\EAr\C1\E3\ED\06`\927\F9\BA\FB\9E\ED\05\A6\D4rhOc\FE\D6\10\0DO\0A\93\C6\B9\D7\AF\FD\D9W}\CBu\E8\93+\AEO\EA\D70\0BXD\82\0F\84]b\11x\EA_\C5\02\81\81\00\82\0C\C1\E6\0Br\F1H_\AC\BD\98\E5}\09\BD\15\95G\09\A1l\03\91\BF\05p\C1>Rd\99\0E\A7\98p\FB\F6\EB\9E%\9D\8E\880\F2\F0\22l\D0\CCQ\8F\\p\C77\C4i\AB\1D\FC\ED:\03\BB\A2\AD\B6\EA\89kgK\96\AA\D9\CC\C8K\FA\18!\08\B2\A3\B9>a\99\DCZ\97\9Csj\B9\F9h\03$_Uw\9C\B4\BEzxShHiS\C8\B1\F5\BF\98-\11\1E\98\A86P\A0\B1\02\81\81\00\90\880q\C7\FE\9Bm\957my\FC\85\E7Dx\BCynG\86\C9\F3\DD\C6\EC\A9\94\9F@\EB\87\D0\DB\EE\CD\1B\87#\FFv\D47\8A\CD\B9n\D1\98\F6\97\8D\E3\81m\C3N\D1\A0\C4\9F\BD4\E5\E8SO\CA\10\B5\ED\E7\16\09T\DE`\A7\D1\16n.\B7\BEz\D5\9B&\EF\E4\0Ew\FA\A9\DD\DC\B9\88\19#p\C7\E1`\AF\8Cs\04\F7q\17\816u\BB\97\D7u\B6\8E\BC\AC\9Cj\9B$\89\02\81\80Z+\C7k\8Ce\DB\04s\AB%\E1[\BC<\CFZ<\04\AE\97.\FD\A4\97\1F\05\17'\AC|0\85\B4\82?[\B7\94;\7Fl\0C\C7\16\C6\A0\BD\80\B0\81\DE\A0#\A6\F6u3Q5\A2uUpMB\BB\CFT\E4\DB-\88\A0z\F2\17\A7\DD\13D\9F_k,BB\8B\13M\F9[\F83B\D9\9EP\1C|\BC\FAb\85\0B\CF\99\DA\9E\04\90\B2\C6\B2\0A*|mj@\FC\F5P\98F\89\82@", align 16
@.str.3 = private unnamed_addr constant [34 x i8] c"assertion failed: privkey != NULL\00", align 1
@kCertificateDER = internal constant [771 x i8] c"0\82\02\FF0\82\01\E7\A0\03\02\01\02\02\11\00\B1\84\EE4\99\98v\FBo\B2\15\C8Gy\05\9B0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\000\121\100\0E\06\03U\04\0A\13\07Acme Co0\1E\17\0D151107002456Z\17\0D161106002456Z0\121\100\0E\06\03U\04\0A\13\07Acme Co0\82\01\220\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\03\82\01\0F\000\82\01\0A\02\82\01\01\00\CEG\CB\11\BB\D2\9D\8E\9E\D2\1E\14\AF\C7\EA\B6\C98*o\B3~\FB\BC\FCYB\B9V\F0L?\F71\84\BE\AC\03\9Eq\91\85\D82\BD\00\EA\ACe\F6\03\C8\0F\8B\FDnX\88\04A\92t\A6W.\8E\88\D5=\DA\14>c\88\22\E3S\E9\BA9\09\AC\FB\D0L\F2< \D6\97\E6\ED\F1b\1E\E5\C9H\A0\CA.<\14Z\82\D4\ED\B1\E3C\C1*Y\A5\B9\C8H\A79#t\A77\B0o\C3d\99l\A2\82\C8\F6\DB\86@\CE\D1\85\9F\CEi\F4\15*#\CA\EA\B7{\DF\FBC_\FFzII\0E\E7\02QE\13\E8\90d!\0C&+]\FC\E4\B5\86\89C\22L\F3;\F3\09\C4\A4\10\80\F2F\E2F\8FvP\BF\AF+\90\1Bx\C7\CF\C1w\D0\FB\A9\FB\C9fZ\C5\9B1Ag\01\BE3\10\BA\05X\EDvS\DE]\C1\E8\BB\9F\F1\CD\FB\DFd\7F\D7\18\AB\0F\94(\95J\CCj\A9P\C7\05G\10A\02\03\01\00\01\A3P0N0\0E\06\03U\1D\0F\01\01\FF\04\04\03\02\05\A00\13\06\03U\1D%\04\0C0\0A\06\08+\06\01\05\05\07\03\010\0C\06\03U\1D\13\01\01\FF\04\020\000\19\06\03U\1D\11\04\120\10\82\0Efuzz.boringssl0\0D\06\09*\86H\86\F7\0D\01\01\0B\05\00\03\82\01\01\00\92\DE\EF\96\06{\FFq}N\A0}\AE\B8\22\B4,\F7\96\9C7\1D\8F\E7\D9G\FF?\E95\95\0E\DD\DC\7F\C8\8A\1E6\1D8G\FCv\D2\1F\98\A16\AC\C8p8\0A=Q\8D\0F\03\1B\EFb\A1\CB+J\8C\12+TP\9Ak\FE\AF\D9\F6\BFX\11X^\E5\86\1E;k0~r\89\E8k{\B7\AF\EF\8B\A9>\B0\CD\0B\EF\B0\0C\96+\C5;\D5\F1\C2\AE:`\D9\0Fu7UMb\D2\ED\96\AC0k\DA\A1H\17\96#\85\9AWw\E9\22\A27\03\BAIw@;vK\DA\C1\04WU4\22\83E)\AB.\11\FF\0D\ABU\B1\A7XY\05%\F9\1E=\B7\AC\049,\F9\AF\B8h\FB\8E5q2\FFp\E9Fm\\\06\90\88#H\0CP\EB\0A\A9\AE\E8\FC\BE\A5v\94\D7d\228\98\17\A4:\A7Y\9F\1D;u\90\1A\81\EF\19\FB+\B7\A7da\22\A4o{\FAX\BB\8CNwg\D0]Xv\8A\BB", align 16
@.str.4 = private unnamed_addr constant [31 x i8] c"assertion failed: cert != NULL\00", align 1
@ECDSAPrivateKeyPEM = internal constant [227 x i8] c"-----BEGIN EC PRIVATE KEY-----\0AMHcCAQEEIJLyl7hJjpQL/RhP1x2zS79xdiPJQB683gWeqcqHPeZkoAoGCCqGSM49\0AAwEHoUQDQgAEdsjygVYjjaKBF4CNECVllNf017p5/MxNSWDoTHy9I2GeDwEDDazI\0AD/xy8JiYjtPKVE/Zqwbmivp2UwtH28a7NQ==\0A-----END EC PRIVATE KEY-----\0A", align 16
@.str.5 = private unnamed_addr constant [123 x i8] c"assertion failed: (size_t)BIO_write(bio_buf, ECDSAPrivateKeyPEM, sizeof(ECDSAPrivateKeyPEM)) == sizeof(ECDSAPrivateKeyPEM)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"assertion failed: ecdsakey != NULL\00", align 1
@ECDSACertPEM = internal constant [538 x i8] c"-----BEGIN CERTIFICATE-----\0AMIIBXzCCAQagAwIBAgIJAK6/Yvf/ain6MAoGCCqGSM49BAMCMBIxEDAOBgNVBAoM\0AB0FjbWUgQ28wHhcNMTYxMjI1MTEzOTI3WhcNMjYxMjI1MTEzOTI3WjASMRAwDgYD\0AVQQKDAdBY21lIENvMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEdsjygVYjjaKB\0AF4CNECVllNf017p5/MxNSWDoTHy9I2GeDwEDDazID/xy8JiYjtPKVE/Zqwbmivp2\0AUwtH28a7NaNFMEMwCQYDVR0TBAIwADALBgNVHQ8EBAMCBaAwEwYDVR0lBAwwCgYI\0AKwYBBQUHAwEwFAYDVR0RBA0wC4IJbG9jYWxob3N0MAoGCCqGSM49BAMCA0cAMEQC\0AIEzr3t/jejVE9oSnBp8c3P2p+lDLVRrB8zxLyjZvirUXAiAyQPaE9MNcL8/nRpuu\0A99I1enCSmWIAJ57IwuJ/n1d45Q==\0A-----END CERTIFICATE-----\0A", align 16
@.str.7 = private unnamed_addr constant [105 x i8] c"assertion failed: (size_t)BIO_write(bio_buf, ECDSACertPEM, sizeof(ECDSACertPEM)) == sizeof(ECDSACertPEM)\00", align 1
@DSAPrivateKeyPEM = internal constant [668 x i8] c"-----BEGIN DSA PRIVATE KEY-----\0AMIIBuwIBAAKBgQDdkFKzNABLOha7Eqj7004+p5fhtR6bxpujToMmSZTYi8igVVXP\0AWzf03ULKS5UKjA6WpR6EiZAhm+PdxusZ5xfAuRZLdKy0bgxn1f348Rwh+EQNaEM8\0A0TGcnw5ijwKmSw5yyHPDWdiHzoqEBlhAf8Nl22YTXax/clsc/pu/RRLAdwIVAIEg\0AQqWRf/1EIZZcgM65Qpd65YuxAoGBAKBauV/RuloFHoSy5iWXESDywiS380tN5974\0AGukGwoYdZo5uSIH6ahpeNSef0MbHGAzr7ZVEnhCQfRAwH1gRvSHoq/Rbmcvtd3r+\0AQtQHOwvQHgLAynhI4i73c794czHaR+439bmcaSwDnQduRM85Mho/jiiZzAVPxBmG\0APOIMWNXXAoGAI6Ep5IE7yn3JzkXO9B6tC3bbDM+ZzuuInwZLbtZ8lim7Dsqabg4k\0A2YbE4R95Bnfwnjsyl80mq/DbQN5lAHBvjDrkC6ItojBGKI3+iIrqGUEJdxvl4ulj\0AF0PmSD7zvIG8BfocKOel+EHH0YryExiW6krV1KW2ZRmJrqSFw6KCjV0CFFQFbPfU\0Axy5PmKytJmXR8BmppkIO\0A-----END DSA PRIVATE KEY-----\0A", align 16
@.str.8 = private unnamed_addr constant [117 x i8] c"assertion failed: (size_t)BIO_write(bio_buf, DSAPrivateKeyPEM, sizeof(DSAPrivateKeyPEM)) == sizeof(DSAPrivateKeyPEM)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"assertion failed: dsakey != NULL\00", align 1
@DSACertPEM = internal constant [985 x i8] c"-----BEGIN CERTIFICATE-----\0AMIICqTCCAmegAwIBAgIJAILDGUk37fWGMAsGCWCGSAFlAwQDAjASMRAwDgYDVQQK\0ADAdBY21lIENvMB4XDTE2MTIyNTEzMjUzNloXDTI2MTIyNTEzMjUzNlowEjEQMA4G\0AA1UECgwHQWNtZSBDbzCCAbcwggEsBgcqhkjOOAQBMIIBHwKBgQDdkFKzNABLOha7\0AEqj7004+p5fhtR6bxpujToMmSZTYi8igVVXPWzf03ULKS5UKjA6WpR6EiZAhm+Pd\0AxusZ5xfAuRZLdKy0bgxn1f348Rwh+EQNaEM80TGcnw5ijwKmSw5yyHPDWdiHzoqE\0ABlhAf8Nl22YTXax/clsc/pu/RRLAdwIVAIEgQqWRf/1EIZZcgM65Qpd65YuxAoGB\0AAKBauV/RuloFHoSy5iWXESDywiS380tN5974GukGwoYdZo5uSIH6ahpeNSef0MbH\0AGAzr7ZVEnhCQfRAwH1gRvSHoq/Rbmcvtd3r+QtQHOwvQHgLAynhI4i73c794czHa\0AR+439bmcaSwDnQduRM85Mho/jiiZzAVPxBmGPOIMWNXXA4GEAAKBgCOhKeSBO8p9\0Ayc5FzvQerQt22wzPmc7riJ8GS27WfJYpuw7Kmm4OJNmGxOEfeQZ38J47MpfNJqvw\0A20DeZQBwb4w65AuiLaIwRiiN/oiK6hlBCXcb5eLpYxdD5kg+87yBvAX6HCjnpfhB\0Ax9GK8hMYlupK1dSltmUZia6khcOigo1do0UwQzAJBgNVHRMEAjAAMAsGA1UdDwQE\0AAwIFoDATBgNVHSUEDDAKBggrBgEFBQcDATAUBgNVHREEDTALgglsb2NhbGhvc3Qw\0ACwYJYIZIAWUDBAMCAy8AMCwCFClxInXTRWNJEWdi5ilNr/fbM1bKAhQy4B7wtmfd\0AI+zV6g3w9qBkNqStpA==\0A-----END CERTIFICATE-----\0A", align 16
@.str.10 = private unnamed_addr constant [99 x i8] c"assertion failed: (size_t)BIO_write(bio_buf, DSACertPEM, sizeof(DSACertPEM)) == sizeof(DSACertPEM)\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"assertion failed: (size_t)BIO_write(in, buf, len) == len\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i64 @time(i64* noundef writeonly %t) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64* %t, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 1485898104, i64* %t, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1485898104
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #1 {
entry:
  tail call void @FuzzerSetRand() #6
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 258, %struct.ossl_init_settings_st* noundef null) #6
  %call1 = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, %struct.ossl_init_settings_st* noundef null) #6
  tail call void @ERR_clear_error() #6
  %call2 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #6
  %call3 = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #6
  %call4 = tail call %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() #6
  %cmp.not = icmp eq %struct.stack_st_SSL_COMP* %call4, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %call4) #7
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @FuzzerSetRand() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #3

declare dso_local %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %bufp = alloca i8*, align 8
  %early_buf = alloca [16384 x i8], align 16
  %early_len = alloca i64, align 8
  %tmp = alloca [1024 x i8], align 16
  %0 = bitcast i8** %bufp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %cmp = icmp ult i64 %len, 2
  br i1 %cmp, label %cleanup182, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ssl_method_st* @TLS_method() #6
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call1, i32 noundef 123, i64 noundef 0, i8* noundef null) #6
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545) #9
  unreachable

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %cond.end10, label %cond.false9

cond.false9:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 547) #9
  unreachable

cond.end10:                                       ; preds = %cond.end
  store i8* getelementptr inbounds ([1193 x i8], [1193 x i8]* @kRSAPrivateKeyDER, i64 0, i64 0), i8** %bufp, align 8, !tbaa !7
  %call12 = call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef nonnull %bufp, i64 noundef 1193) #6
  %cmp13.not = icmp eq %struct.rsa_st* %call12, null
  br i1 %cmp13.not, label %cond.false16, label %cond.end17

cond.false16:                                     ; preds = %cond.end10
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 553) #9
  unreachable

cond.end17:                                       ; preds = %cond.end10
  %call19 = call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %1 = bitcast %struct.rsa_st* %call12 to i8*
  %call20 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call19, i32 noundef 6, i8* noundef nonnull %1) #6
  %call21 = call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef %call1, %struct.evp_pkey_st* noundef %call19) #6
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %cond.end26, label %cond.false25

cond.false25:                                     ; preds = %cond.end17
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 557) #9
  unreachable

cond.end26:                                       ; preds = %cond.end17
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call19) #6
  store i8* getelementptr inbounds ([771 x i8], [771 x i8]* @kCertificateDER, i64 0, i64 0), i8** %bufp, align 8, !tbaa !7
  %call28 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef null, i8** noundef nonnull %bufp, i64 noundef 771) #6
  %cmp29.not = icmp eq %struct.x509_st* %call28, null
  br i1 %cmp29.not, label %cond.false32, label %cond.end33

cond.false32:                                     ; preds = %cond.end26
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 563) #9
  unreachable

cond.end33:                                       ; preds = %cond.end26
  %call35 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef %call1, %struct.x509_st* noundef nonnull %call28) #6
  %cmp36 = icmp eq i32 %call35, 1
  br i1 %cmp36, label %cond.end40, label %cond.false39

cond.false39:                                     ; preds = %cond.end33
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 565) #9
  unreachable

cond.end40:                                       ; preds = %cond.end33
  call void @X509_free(%struct.x509_st* noundef nonnull %call28) #6
  %call42 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call43 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call42) #6
  %call44 = call i32 @BIO_write(%struct.bio_st* noundef %call43, i8* noundef getelementptr inbounds ([227 x i8], [227 x i8]* @ECDSAPrivateKeyPEM, i64 0, i64 0), i32 noundef 227) #6
  %cmp46 = icmp eq i32 %call44, 227
  br i1 %cmp46, label %cond.end50, label %cond.false49

cond.false49:                                     ; preds = %cond.end40
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 572) #9
  unreachable

cond.end50:                                       ; preds = %cond.end40
  %call52 = call %struct.ec_key_st* @PEM_read_bio_ECPrivateKey(%struct.bio_st* noundef %call43, %struct.ec_key_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %2) #6
  %cmp53.not = icmp eq %struct.ec_key_st* %call52, null
  br i1 %cmp53.not, label %cond.false56, label %cond.end57

cond.false56:                                     ; preds = %cond.end50
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 575) #9
  unreachable

cond.end57:                                       ; preds = %cond.end50
  %call59 = call i32 @BIO_free(%struct.bio_st* noundef %call43) #6
  %call60 = call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %3 = bitcast %struct.ec_key_st* %call52 to i8*
  %call61 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call60, i32 noundef 408, i8* noundef nonnull %3) #6
  %call62 = call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef %call1, %struct.evp_pkey_st* noundef %call60) #6
  %cmp63 = icmp eq i32 %call62, 1
  br i1 %cmp63, label %cond.end67, label %cond.false66

cond.false66:                                     ; preds = %cond.end57
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 580) #9
  unreachable

cond.end67:                                       ; preds = %cond.end57
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call60) #6
  %call69 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call70 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call69) #6
  %call71 = call i32 @BIO_write(%struct.bio_st* noundef %call70, i8* noundef getelementptr inbounds ([538 x i8], [538 x i8]* @ECDSACertPEM, i64 0, i64 0), i32 noundef 538) #6
  %cmp73 = icmp eq i32 %call71, 538
  br i1 %cmp73, label %cond.end77, label %cond.false76

cond.false76:                                     ; preds = %cond.end67
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 584) #9
  unreachable

cond.end77:                                       ; preds = %cond.end67
  %call79 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call70, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %cmp80.not = icmp eq %struct.x509_st* %call79, null
  br i1 %cmp80.not, label %cond.false83, label %cond.end84

cond.false83:                                     ; preds = %cond.end77
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 586) #9
  unreachable

cond.end84:                                       ; preds = %cond.end77
  %call86 = call i32 @BIO_free(%struct.bio_st* noundef %call70) #6
  %call87 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef %call1, %struct.x509_st* noundef nonnull %call79) #6
  %cmp88 = icmp eq i32 %call87, 1
  br i1 %cmp88, label %cond.end92, label %cond.false91

cond.false91:                                     ; preds = %cond.end84
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 589) #9
  unreachable

cond.end92:                                       ; preds = %cond.end84
  call void @X509_free(%struct.x509_st* noundef nonnull %call79) #6
  %call94 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call95 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call94) #6
  %call96 = call i32 @BIO_write(%struct.bio_st* noundef %call95, i8* noundef getelementptr inbounds ([668 x i8], [668 x i8]* @DSAPrivateKeyPEM, i64 0, i64 0), i32 noundef 668) #6
  %cmp98 = icmp eq i32 %call96, 668
  br i1 %cmp98, label %cond.end102, label %cond.false101

cond.false101:                                    ; preds = %cond.end92
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 596) #9
  unreachable

cond.end102:                                      ; preds = %cond.end92
  %call104 = call %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef %call95, %struct.dsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %4) #6
  %cmp105.not = icmp eq %struct.dsa_st* %call104, null
  br i1 %cmp105.not, label %cond.false108, label %cond.end109

cond.false108:                                    ; preds = %cond.end102
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 599) #9
  unreachable

cond.end109:                                      ; preds = %cond.end102
  %call111 = call i32 @BIO_free(%struct.bio_st* noundef %call95) #6
  %call112 = call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %5 = bitcast %struct.dsa_st* %call104 to i8*
  %call113 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call112, i32 noundef 116, i8* noundef nonnull %5) #6
  %call114 = call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef %call1, %struct.evp_pkey_st* noundef %call112) #6
  %cmp115 = icmp eq i32 %call114, 1
  br i1 %cmp115, label %cond.end119, label %cond.false118

cond.false118:                                    ; preds = %cond.end109
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 604) #9
  unreachable

cond.end119:                                      ; preds = %cond.end109
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call112) #6
  %call121 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call122 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call121) #6
  %call123 = call i32 @BIO_write(%struct.bio_st* noundef %call122, i8* noundef getelementptr inbounds ([985 x i8], [985 x i8]* @DSACertPEM, i64 0, i64 0), i32 noundef 985) #6
  %cmp125 = icmp eq i32 %call123, 985
  br i1 %cmp125, label %cond.end129, label %cond.false128

cond.false128:                                    ; preds = %cond.end119
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 608) #9
  unreachable

cond.end129:                                      ; preds = %cond.end119
  %call131 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call122, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %cmp132.not = icmp eq %struct.x509_st* %call131, null
  br i1 %cmp132.not, label %cond.false135, label %cond.end136

cond.false135:                                    ; preds = %cond.end129
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 610) #9
  unreachable

cond.end136:                                      ; preds = %cond.end129
  %call138 = call i32 @BIO_free(%struct.bio_st* noundef %call122) #6
  %call139 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef %call1, %struct.x509_st* noundef nonnull %call131) #6
  %cmp140 = icmp eq i32 %call139, 1
  br i1 %cmp140, label %cond.end144, label %cond.false143

cond.false143:                                    ; preds = %cond.end136
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 613) #9
  unreachable

cond.end144:                                      ; preds = %cond.end136
  call void @X509_free(%struct.x509_st* noundef nonnull %call131) #6
  %call146 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #6
  %call147 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call148 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call147) #6
  %call149 = call %struct.bio_method_st* @BIO_s_mem() #6
  %call150 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call149) #6
  call void @SSL_set_bio(%struct.ssl_st* noundef %call146, %struct.bio_st* noundef %call148, %struct.bio_st* noundef %call150) #6
  call void @SSL_set_accept_state(%struct.ssl_st* noundef %call146) #6
  %sub = add i64 %len, -1
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv151 = trunc i64 %sub to i32
  %call152 = call i32 @BIO_write(%struct.bio_st* noundef %call148, i8* noundef %buf, i32 noundef %conv151) #6
  %conv153 = sext i32 %call152 to i64
  %cmp154 = icmp eq i64 %sub, %conv153
  br i1 %cmp154, label %cond.end158, label %cond.false157

cond.false157:                                    ; preds = %cond.end144
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 626) #9
  unreachable

cond.end158:                                      ; preds = %cond.end144
  %7 = and i8 %6, 1
  %cmp161.not = icmp eq i8 %7, 0
  br i1 %cmp161.not, label %if.end170, label %do.body.preheader

do.body.preheader:                                ; preds = %cond.end158
  %8 = getelementptr inbounds [16384 x i8], [16384 x i8]* %early_buf, i64 0, i64 0
  %9 = bitcast i64* %early_len to i8*
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %8) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8
  %call164 = call i32 @SSL_read_early_data(%struct.ssl_st* noundef %call146, i8* noundef nonnull %8, i64 noundef 16384, i64* noundef nonnull %early_len) #6
  %cmp165.not = icmp eq i32 %call164, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %8) #8
  br i1 %cmp165.not, label %do.body, label %if.end170

if.end170:                                        ; preds = %do.body, %cond.end158
  %call171 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call146) #6
  %cmp172 = icmp eq i32 %call171, 1
  br i1 %cmp172, label %if.then174, label %if.end181

if.then174:                                       ; preds = %if.end170
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %10) #8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then174
  %call176 = call i32 @SSL_read(%struct.ssl_st* noundef %call146, i8* noundef nonnull %10, i32 noundef 1024) #6
  %cmp177 = icmp slt i32 %call176, 1
  br i1 %cmp177, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %10) #8
  br label %if.end181

if.end181:                                        ; preds = %for.end, %if.end170
  call void @SSL_free(%struct.ssl_st* noundef %call146) #6
  call void @ERR_clear_error() #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #6
  br label %cleanup182

cleanup182:                                       ; preds = %entry, %if.end181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 0
}

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #3

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ec_key_st* @PEM_read_bio_ECPrivateKey(%struct.bio_st* noundef, %struct.ec_key_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_read_early_data(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #1 {
entry:
  tail call void @FuzzerClearRand() #6
  ret void
}

declare dso_local void @FuzzerClearRand() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

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
!9 = !{!5, !5, i64 0}
