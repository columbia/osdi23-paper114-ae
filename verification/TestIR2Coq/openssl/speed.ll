; ModuleID = 'apps/speed.c'
source_filename = "apps/speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.openssl_speed_sec_st = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i8*, i32, i32 }
%struct.ffdh_params_st = type { i8*, i32, i32 }
%struct.ec_curve_st = type { i8*, i32, i32, i64 }
%struct.string_int_pair_st = type { i8*, i32 }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_cipher_st = type opaque
%struct.loopargs_st = type { %struct.async_job_st*, %struct.async_wait_ctx_st*, i8*, i8*, i8*, i8*, i8*, i64, [7 x %struct.evp_pkey_ctx_st*], [7 x %struct.evp_pkey_ctx_st*], [3 x %struct.evp_pkey_ctx_st*], [3 x %struct.evp_pkey_ctx_st*], [22 x %struct.evp_pkey_ctx_st*], [22 x %struct.evp_pkey_ctx_st*], [24 x %struct.evp_pkey_ctx_st*], [2 x %struct.evp_md_ctx_st*], [2 x %struct.evp_md_ctx_st*], [1 x %struct.evp_md_ctx_st*], [1 x %struct.evp_md_ctx_st*], [1 x %struct.evp_pkey_st*], i8*, i8*, [24 x i64], [5 x %struct.evp_pkey_ctx_st*], i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_mac_st = type opaque
%struct.evp_md_st = type opaque
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM = type { i8*, i8*, i64, i32 }

@dsa512_priv = internal global [20 x i8] c"e\E5\C78`$\B5\89\D4\9C\EBL\9C\1Dz\22\BD\D1\C2\D2", align 16
@dsa512_pub = internal global [65 x i8] c"\00\95\A7\0D\EC\93h\BA_\F7_\07\F2;\ADk\01\DC\BE\EC\DE\04z:'\B3\ECI\FD\08C=~\A8,^{\BB\FC\F4n\EBl\B0n\F8\02\12\8C8]\83V}\EES\05>$\84\BE\BA\0Ak\C8", align 16
@dsa512_p = internal global [64 x i8] c"\9D\1Bi\8E&\DB\F2+\11p\19\86\F6\19\C8\F8\19\F2\18S\94F\06\D0bP3K\02<R0\03\8B;\F9_\D1$\06O{L\BA\AA@\9B\FD\96\E473\BB-Z\D7Z\11@f\A2v}1", align 16
@dsa512_g = internal global [64 x i8] c"\83>\88\E5\C5\89s\CE;l\01I\BF\B3\C7\9F\0A\EAD\91\E50\AA\D9\BE[_\B7\10\D7\89\B7\8Et\FB\CF)\1E\EB\A8,TQ\B8\10\DE\A0\CE/\CC$k\90w\DE\A2h\A6R\12\A2\03\9D ", align 16
@dsa512_q = internal global [20 x i8] c"\FBS\EFP\B4@\921V\86Sz\E8\8B\22\9AI\FBq\8F", align 16
@dsa1024_priv = internal global [20 x i8] c"}!\DA\BBb\15G6\07g\12\E8\8C\AA\1C\CD8\12a\18", align 16
@dsa1024_pub = internal global [128 x i8] c"<N\9C*\7F\16\C1%\EB\ACxc\90\14\8C\8B\F4hC<-\EEeP}\9C\8F\8C\8AQ\D6\11+\99\AF\1E\90\97\B5\D3\A6 %\D6\FEC\02\D5\91}\A7\8C\DB\C9\85\A36H\F7h\AA`\B1\F7\05h:\A3?\D3\19\82\D8\82zw\FB\EF\F4\15\0A\EB\06\04\7FS\07\0C\BC\CB-\83\DB>\D1(\A5\A11\E0g\FAP\DE\9B\07\83~,\0B\C3\13Pa\E5\AD\BD6\B8\97N@}\E8\83\0D\BCK", align 16
@dsa1024_p = internal global [128 x i8] c"\A7?n\85\BFAj)}\F0\9FG\190\90\9A\09\1D\DAj3\1E\C5=\86\96\B3\15\E0S.\8F\E0Y\82s\90>u1\99GzR\FB\85\E4\D9\A6{8\9Bh\8A\84\9B\87\C6\1E\B5~\86KS[Y\CFqe\19\88n\CEf\AEk\886\FB\EC(\DC\C2\D7\A5\BB\E5,9&K\DA\9Ap\18\957\95\10V#\F6\15\ED\BA\04^\DE9O\FD\B7C\1F\B5\A4eo\CD\80\11\E4p\95[P\CDI", align 16
@dsa1024_g = internal global [128 x i8] c"M\DFL\03\A6\91\8A\F5\19oPF%\99\E5ho0\E3i\E1\E5\B3]\98\BB(\86H\FC\DE\99\04?_\88\0C\9Cs$\0D ]\B9*\9A?\18\96'\E4b\87\C1{tbS\FCa'\A8z\91\09\9D\B6\F1M\9CT\0FX\06\EEIt\07\CEU~#\CE\16\F6\CA\DCZa\01~\C9q\B5M\F6\DC4)\87h\F6^ \93\B3\DB\F5\E4\09lA\17\95\92\EB\01\B5s\A5j~\D82\ED\0E\02\B8", align 16
@dsa1024_q = internal global [20 x i8] c"\F7\071\ED\FAl\06\03\D5\85\8A\1C\AC\9Ce\E7Pfeo", align 16
@dsa2048_priv = internal global [20 x i8] c"2g\92\F6\C4\E2\E2\E8\A0\8BkE\0C\8Av\B0\EE\CF\91\A7", align 16
@dsa2048_pub = internal global [256 x i8] c"\17\8F\A8\11\84\92\EC\83G\C7j\B0\92\AFZ 7\A3dy\D2\D0=\CD\E0a\88\88!\CCt]\CELQG\F0\C5\\L\82z\AFr\AD\B9\E0S\F2x\B7\F0\B5H\7F\8A:\18\D1\9F\8B}\A5G\B7\95\AB\98\F8{tPV\8EW\F0\EE\F5\B7\BA\AB\85\86\F9+\EFAV\A0\A4\9F\B78\00F\0A\A6\F1\FC\1F\D8N\85D\92C!]n\CC\C2\CB&1\0D!\C4\BD\8D$\BC\D9\18\19\D7\DC\F1\E7\93PH\03,\AE.\E7I\88_\93W'\996\B4 \AB\FC\A7+\F2\D9\98\D7\D44\9D\96PX\9A\EAT\F3\EE\F5c\14\EE\85\83tv\E1R\95\C3\F7\EB\04\04{\A7(\1B\CC\EAJN\84\DA\D8\9Cy\D8\9Bf\89/\CF\AC\D7y\F9\A9\D8E\13x\B9\00\14\C9~\22Q\86g\B0\9F&\11#\C88\D7p\1D\15\8EMO\95\97@\A1\C2~\01\18r\F4\10\E6\8DR\16\7F\F2\C9\F83\8B3\B7\CE", align 16
@dsa2048_p = internal global [256 x i8] c"\A0%\FA\AD\F4\8E\B9\E5\99\F3]oO\834\E2~\CFo\BF0\AFo\81\EB\F8\C4\13\D9\A0]\8B\\\8E\DC\C2\1D\0BA2\B0\1F\FE\EF\0C\C2\A2~h\\(!\E9\F5\B1X\12cL\19N\FF\02K\92\ED\D2\07\11M\8CX\16\\U\8E\AD\A3g}\B9\86n\0B\E6To@\AE\0EgL\F9\12[<\08z\F7\FCg\86i\E7\0A\94@\BF\8Bv\FE&\D1\F2\A1\1A\84\A1CV(\BC\9A_\D7;i\89\8A6,Q\DF\12w/W{\A0\AA\DD\7F\A1b;@{h\1A\8F\0D8\BB!]\18\FC\0FF\F7\A3\B0\1D#\C3\D2\C7rQ\18\DFF\95y\D9\BD\B5\19\02,\87\DC\E7W\82~\F1\8B\06=\00\A5{k&'\91\0Fjw\E4\D5\04\E4\12,B\FF\D2\88\BB\D3\92\A0\F9\C8Qd\14\\\D8\F9lG\82\B4\1C\7F\09\B8\F0%\83\1D??\05\B3!\0A]\A7\D8T\C3e}\C3\B0\1D\BF\AE\F8h\CF\9B", align 16
@dsa2048_g = internal global [256 x i8] c",x\16Y4c\F4\F3\92\FC\B5\A5O\13\DE/\1C\A4<\AE\AD8?~\90\BF\96\A6\AE%\90r\F5\8E\80\0C9\1C\D9\EC\BA\90[:\E8Xl\9E0B7\021\82\BCj\DFj\09)\E3\C0F\D1\CB\85\EC\0C0^\EA\C89\8E\22\9F\22\10\D24ah7=.J[\9A\F5\C1H\C6\F6\DCc\1A\D3\96d\BA4\C9\D1\A0\D1\AEl/H\17\93\14C\ED\F0!0\19\C3\1B_\DE\A3\F0px\18\E1\A8\E4\EE.\00\A5\E4\B3\17\C8\0C}nB\DC\B7F\006M\D4F\AA=<F\89@\BF\1D\84w\0Au\F3\87\1D\08L\A6\D1\A9\1C\1E\12\1E\E1\C70(v\A5\7Fl\85\96+o\DB\80f&\AE\F5\93\C7\8E\AE\9A\ED\E4\CA\04\EA;r\EF\DC\87\ED\0D\A5LJ\DDq\22dYiN\8E\BFC\DC\AB\8Ef\BB\01\B6\F4\E7\FD\D2\AD\9F6\C1\A0)\99\D1\96pY\06x5\BDeUR\9E\F8\B2\E58", align 16
@dsa2048_q = internal global [20 x i8] c"\97\E73M\D3\94>\0B\DBbt\C6\A1\08\DD\19\A3u\17\1B", align 16
@.str = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Usage: %s [options] [algorithm...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"mb\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Enable (tls1>=1) multi-block mode on EVP-named cipher\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"mr\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Produce machine readable output\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Run benchmarks in parallel\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"async_jobs\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Enable async mode and start specified number of jobs\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Specify number of primes (for RSA only)\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Selection options:\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"evp\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Use EVP-named cipher or digest\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"hmac\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"HMAC using EVP-named digest\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"cmac\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"CMAC using EVP-named cipher\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"Time decryption instead of encryption (only EVP)\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"aead\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"Benchmark EVP-named AEAD cipher in TLS-like sequence\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Timing options:\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"elapsed\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"Use wall-clock time instead of CPU user time as divisor\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Run benchmarks for specified amount of seconds\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"Run [non-PKI] benchmarks on custom-sized buffer\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"misalign\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Use specified offset to mis-align buffers\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.44 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"Algorithm(s) to test (optional; otherwise tests all)\00", align 1
@speed_options = dso_local constant [30 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 7, i32 112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 11, i32 112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 1605, i32 112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 1609, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1608, i32 45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 1606, i32 112, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 1607, i32 112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 10, i32 112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.56, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@__const.speed_main.seconds = private unnamed_addr constant %struct.openssl_speed_sec_st { i32 3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10 }, align 4
@speed_main.key32 = internal constant [32 x i8] c"\124Vx\9A\BC\DE\F04Vx\9A\BC\DE\F0\12Vx\9A\BC\DE\F0\124x\9A\BC\DE\F0\124V", align 16
@speed_main.deskey = internal constant [24 x i8] c"\124Vx\9A\BC\DE\F04Vx\9A\BC\DE\F0\12Vx\9A\BC\DE\F0\124", align 16
@speed_main.rsa_keys = internal unnamed_addr constant [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([318 x i8], [318 x i8]* @test512, i32 0, i32 0), i32 318, i32 512 }, %struct.anon { i8* getelementptr inbounds ([608 x i8], [608 x i8]* @test1024, i32 0, i32 0), i32 608, i32 1024 }, %struct.anon { i8* getelementptr inbounds ([1191 x i8], [1191 x i8]* @test2048, i32 0, i32 0), i32 1191, i32 2048 }, %struct.anon { i8* getelementptr inbounds ([1767 x i8], [1767 x i8]* @test3072, i32 0, i32 0), i32 1767, i32 3072 }, %struct.anon { i8* getelementptr inbounds ([2349 x i8], [2349 x i8]* @test4096, i32 0, i32 0), i32 2349, i32 4096 }, %struct.anon { i8* getelementptr inbounds ([4365 x i8], [4365 x i8]* @test7680, i32 0, i32 0), i32 4365, i32 7680 }, %struct.anon { i8* getelementptr inbounds ([8684 x i8], [8684 x i8]* @test15360, i32 0, i32 0), i32 8684, i32 15360 }], align 16
@test512 = internal global [318 x i8] c"0\82\01:\02\01\00\02A\00\D63\B9\C8\FBO<}\C0\01\86\D0\E7\A0U\F2\95\93\CCO\B7[g[\94h\C94\15\DE\A5.\1C3\C2n\FC4^q\13\B7\D6\EE\D8\A5e\05r\87\A8\B0w\FEW\F5\FC_U\83\87\DDWI\02\03\01\00\01\02A\00\A7\F7\91\C5\0F\84W\DC\07\F7j\7F`R\B3r\F1f\1F}\97;\9E\B6\0A\8F\8C\CFB#\00\04\D4(\0E\1C\90\C4\11%%\A5\93\A5/p\02\DF\81\9CI\03\A0\F8mT.&\DE\AA\85Y\A81\02!\00\EBG\D7;\F6\C3\DDZF\C5\B9+\9A\A0\09\8F\A6\FB\F3xz3p\9D\0FBk\13h$\D3\15\02!\00\E9\10\B0\B3\0D\E2\82hw\8An|\DA\BC>S\83\FB\D6\22\E7\B5\AEn\80\DA\00U\97\C1\D0e\02 L\F8s\B1jI)a\1FF\10\0D\F3\C7\E7X\D7\88\15^\94\9B\BF{\A2BXEA\0C\CB\01\02 \12\11\BA1W\9D=\11\0E[\8C/_\E2\02O\05G\8C\15\8E\B3V?\B8\FB\AD\D4\F4\FC\10\C5\02 \18\A1)\99[\D9\C8\D4\FCIz*!,I\E4O\EB\EFQ\F1\ABm\FBK\14\E9KR\B5\82,", align 16
@test1024 = internal global [608 x i8] c"0\82\02\\\02\01\00\02\81\81\00\DC\98C\E8=C[\E4\05\CD\D0\A9>\CB\83u\F6\B5\A5\9Fk\E94A)\18\FAjUMp\FC\EC\AE\878\0A \A9\C0EwnW`W\F4\ED\96\22\CB\8F\E13:\17\1F\ED7\A5o\EB\A6\BC\12\80\1DS\BDp\EB!v>\C9/\1AE$\82\FF\CDY2\06.\12;#x\ED\12=\E0\8D\F9gO7NG\02L-\C0O\1F\B3\94\E1A.-\90\10\FC\82\91\8B\0F\22\D4\F2\FC,\ABSU\02\03\01\00\01\02\81\80+\CC?\8FX\BA\8B\00\16\F6\EA:\F00\D0\05\17\DA\B0\EB\9A-O&\B0\D68\C1\EB\F5\D8=\1Fp\F7\7F\F4\E2\CFQQy\88\FA\E82\0E{-\97\F2\FA\BA'\C5\9C\D9\C5\EB\8AyR<d4}\C2\CF(\C7N\D5C\0B\D1\A6\CAm\03-r#\BCm\05\FA\16\09/.\\\B6\EEt\DD\D2H\8E6\0C\06=M\E5\10\82\EBj\F3K\9F\D6\ED\11\B1n\EC\F4\FE\8Eu\94 /\CB\ACF\F1\02A\00\F9\8C\A3\85\B1\DD)\AFe\C13\F3\95\C5Rh\0B\D4\F1\E5\0E\02\9FO\FAw\DCF\9E\C7\A6\E4\16)\DA\B0\07\CF[\A9\12\8A\DDc\0A\DE.\8Cf\8B\8C\DC\19\A3~\F4;\D0\1A\8C\A4\C2\E1\D3\02A\00\E2L\05\F2\04\86NaC\DB\B0\B9\96\86R,\CA\8D{\AB\0B\13\0D~8[\E2.{\0E\E7\19\998\E7\F2!\BD\85\85\E3\FD(w 1q,\D0\FF\FB.\AF\85\B4\86\CA\F3\BB\CA\AA\0F\957\02@\0EA\9A\95\E8\B3Y\CEKa\DE5\EC8y\9C\B8\10RAc\AB\82\AEo\00\A9\F4\DE\DDI\0B~\B8\A5e\A9\0C\8F\8F\F9\1F5\C6\92\B8^\B0f\ABR@\C0\B66j}\80F\04\02\E5\9FA\02A\00\C0\AD\CCN!\EE\1D$\91\FB\A7\80\8D\9A\B6\B3.\8F\C2\E1\82\DFi\18\B4q\FF\A6e\DE\ED\84\8DB\B7\B3!iV\1C\07`Q)\04\FF4\06\DD\B9g,|\04\93\0EF\15\BB*\B7\1B\E7\87\02@x\DA]\07Q\0C\16z\9F) \84\0DB\FA\D7\00\D8w~\B0\B0k\D6[S\B8\9Bz\CD\C7+\B8jc\A9\FBo\A4r\BFL]\00\14\BA\FAY\88\ED\E4\E0\8C\A2\EC\14~-\E2\F0FI\95E", align 16
@test2048 = internal global [1191 x i8] c"0\82\04\A3\02\01\00\02\82\01\01\00\C0\C0\CE><Sg?O\C5/\A4\C2Z/X\FD'Rj\E8\CFJsG\8D%\0F_\03&x\EF\F0\22\12\D3\DEG\B2\1C\0B8c\1Al\85z\80\C6\8F\A0A\AFb\C4g2\88\F8\A6\9C\F5#\1D\E4\AC?)\F9\EC\E1\8B&\03,\B2\AB\F3}\B5\CAI\C0\8F\1C\DF3:`\DA<\B0\16\F8\A9\12\8Fd\AC#\0Cid\97]\99\D4\09\83\9Ba\D3\AC\F0\DE\DD^\9FD\94\DB:M\97\E8R)\F7\DB\94\07E\90x\1E1\0B\80\F7W\AD\1Cy\C5\CB2\B0\CE\CDt\B3\E2\94\C5x/4\1AE\F7\8CR\A5\BC\8D\EC\D1/1;\F0IY^\88\9D\15\9252\C1\E7a\ECPH|\BA\05\F9\F8\F8\A7\8C\83\E8f[\EB\FE\D8O\DDm6\C0\B2\90\0F\B8R\F9\04\9B@,'\D66\8E\C2\1BD\F3\92\D5\15\9E\9A\BC\F3}\03\D7\02\14 \E9\10\92\FD\F9\FC\8F\E5\18\E1\95\CC\9E`\A6\FA8M\02\03\01\00\01\02\82\01\00\00\C3\C3\0D\B4'\90\8DK\BF\B8\84\AA\D0\B8\C7]\99\BEU\F6>|I \CB\8A\8E\19\0Ef$\AC\AF\033\97\EB\95\D5;\0F@V\04P\D1\E6\BE\84\0B%\D3\9C\E2\83l\F5b]\BA+}=zl\E1\D2\0ET\93\80\01\91Q\09\E8[\8EG\BDd\E4\0E\03\83U\CFZ7\F0%\B5}!\D7i\DFo\C2\CF\10\C9\8A@\9Fzp\C0\E8\E8\C0\E6\9A\15\0A\8DNF\CBz\DB\B3\CB\83\02\C4\F0\AB\EB\02\01\0E#\FC\1D\C4\BD\D4\AA]1F\99\CE\9E\F8\04u\10g\C4SGD\FA\C2%s~\D0\8EY\D1\B2Z\F4\C7\18\92/9\AB\CD\A3\B5\C2\B9\C7\B9\1B\9FH\FA\13\C6\98M\CA\84\9C\06\CA\E7\89\01\04\C4l\FD)Y5\E7\F3\DD\CEdY\BF!\13\A9\9F\0E\C5\FF\BD3\00\EC\ACk\11\EFQ^\AD\07\15\DE\B8_\C6\B9\A3\22eF\83\14\DF\D0\F1D\8A\E1\9C#3\B4\973\E6k\81\02\81\81\00\EC\12\A7Ytj\DE>\AD\D86\80P\A2\D5!\81\07\F1\D0\91\F2l\12/\9D\1A&\F80e\DF\E8\C0\9Bj0\98\82\87\EC\A2V\87bo\E7\9F\F6V\E6q\8FI\86\93ZM4X\FE\D9\04\13\AFy\B7\AD\11\D10\9A\14\06\A0\FA\B7U\DClZL,YV\F6\E8\9D\AF\0Ax\99\06\06\9E\E7\9CQUC\FC;l\0B\BF-A\A7\AF\B7\E0\E8(\18\B4\13\D1\E6\97\D0\9Fj\80\CA\DD\1A~\15\02\81\81\00\D1\06\0C\1F\E3\D0\AB\D6\CA|\BC}\135\CE'\CD\D8IQcd\0F\CA\06\12\FC\07>\AFam\E2S9'\AE\C3\11\9E\94\01O\E3\F3g\F9w\F9\E7\95:o\E2 s>\A4z(\D4a\97\F6\17\A0#\10+\CE\84W~%\1F\F4\A8T\D2e\94\CC\95\0A\AB0\C1Y\1Fa\8E\B9k\D7N\B9\83Cy\85\11\BC\0F\AE% \05\BC\D2H\A1h\09\84\F6\12\9Af\B9+\BBv\03\17FN\97Y\02\81\80\09L\FA\D6\E5eHxC\B5\1F\00\93,\B7$\E8\C6}ZpE\92\C8l\A3\CD\E1\F7)@\FA?[GD9\C1\E8r\9Ez\0E\DA\AA\A0*\09\FDT\93#\AA7\85[\CC\D4\F9\D8\FF\C1a\0D\BD~\18$sm@r\F1\93\09H\97l\84\90\A8F\14\019\11\E5<A'2u$\ED\A1\D9\12)\8A(q\89\8D\CA0\B0\01\C4/\82\19\14Lp\1C\B8#.\E8\90I\97\92\97kz\9D\B9\02\81\80\0F\0E\A1v\F6\A1D\8F\AF|v\D3\87\BB\BB\83\10\88\01\18\14\D1\D3uY$\AA\F5\16\A5\E9\9D\D1\CC\EE\F4\15\D9\C5~'\E9DI\06r\B9\FC\D3\8A\C4,6}\12\9BZ\AA\DC\85\EEn\ADT\B3\F4\FC1\A1\06:pW\0C\F3\95[>\E8\FD\1AO\F6x\93Fj\D71\B4\84d\85\098\89\92\94\1C\BF\E2<*\E0\FF\99\A3\F0+1\C26\CD`\BF\9D-t2\E8\9C\93n\BB\91{\FD\D9\02\81\81\00\A2q%8\EB*\E97\CD\FED\CE\90?R\87\84R\1B\AE\8D\22\94\CE8\E6\04\88v\85\9A\D3\14\09\E5i\9A\FFX\92\02j}|\1E,\FD\A8\CA2\14O\0D\84\0D7C\BF\E4]\12\C8$\91'\8DF\D9TS\E7bq\A8+qA\8Du\F8:\A0a)F\A6\E5\82\FA:\D9\08\FA\FCc\FDk0\BC\F4N\9E\8C%\0C\B6U\E7<\D4N\0B\FD\8B\C3\0E\1D\9CDW\8F\1F\86\F7\D5\1B\E4\95", align 16
@test3072 = internal global [1767 x i8] c"0\82\06\E3\02\01\00\02\82\01\81\00\BC;#\C03\A7\8B\AA\CA\A3\8C\94\F2LR\08\85\80\FC6\15\FA\03\06\B6\D6?`\8A\89\0D\BA\1AQ\0B\12\EAqw\F6:0!=$\F8.\D0\17:\85\94%B\89\FFjh\DF\1F\86\AE\A5\BB\9Ay\F6i\94\FE\DE\FE\CE\1B.\AE\1D\91\CB\B9\F1-\D8\00\82Q\8E\F9\FD\AC\F1\0E\7F\B7\95\855\F9\CB\BE_\D3X\E3\A1T\9E0\B1\8D\01\97\82\06\8Ew\FB\CEP/\BF\F1\FFW\0AB\03\FD\0E\BA\1E\CA\85\C1\9B\A5\9D\09\0E\E9\BB\C5sG\0D9<d\06\9Ay?P\87\9C\18-b\01\FC\ED\C1X(!\94\1E\F9-\96O\D0\BC\F1\E0\8A\FAM\B6xJ\DE\17Y\B0\22\A0\9A\D3p\B6\C2\BE\BC\96\CAA_XN\CE\EFdE\DD?\81\92\CC@y\FC\19\E2\BCw/C\FB\8E\AD\82J\0B\B1\BC\09\8A\80\C3\0F\EF\D2\06\D3K\0C\7F\AE`?.R\B4\E4\C2\\\A6q\C0\13\9C\CA\A6\0D\13\D7\B7\14\94?\0D\8B\06p/\15\82\8DGE\A6\00\8A\14\91\DE/P\17\E3\1D4)\8C\E4Wt*:\82e&\F7\8D\CC\1B\8F\AF\E5\85\E5\BE\85\D6\B7\04\E8\F5\D4t\E2T\14\DDX\CF\1F\11\8A\9F\82\A2\01\F9\C2\DF{\84\B1\D8[p\BB$\E7\D0*u=U\ACE\E9\AB\C6\84\8A\E7m&\12\89\B5g\E8F\9DF\1A\FA-\C0[`F\8B\B72\03\FFu\EE\9F<\DD\B65N\82\BD\99sQ\02\03\01\00\01\02\82\01\80B\EE\A4\9F\CB\BE`#\B3:\C4\DA\91\EE!\9Dv\1B\8F\93\8B\ED\02\F6x=f\FB\E5G&\E2nI3.\DE\BE\CAq{\EFqbT\AB\0B\BAc\08$G\B1\98\1F\89\FBD\9FR\8E\89\BB\D5!\F1\0Cv.\CD\12nx\CB\A1\A5\B8N\07\ABn\DFfW\87\FF\88_\CC\9C\9A{\15_*\83\DB\D5\9Fej\9D\B4\95\FC\E0\22\00\1E\A2\8DVZ\9E\0A;\10\07$\ECU\CC\AF\87;\D6\8D\A4\86\80\18B\DB\9D$\C3\97;\89Z\03\B3\0Ar\D1x\F0\C8\80\B0\9D<\AE^\0A[n\87\D3=%.\033\01\FD\B1\A5\D9X\01\B9\AF\F62j8\E79c<\FC\0CA\90(@\03\CD\FB\DE\80t!\AA\AEX\E9\97\18\85X=+\D6a\F6\E8\BCm*\F3\B8\EA\8CdD\C6\D3\9F\00{\B2R\18\11\04\96\B7\05\BB\C28[\A7\0A\84\B6O\02c\A4W\00\E3\DE\E4\F2\B3U\D9\00\A9\D2\\i\9F\E5\80O#|\D9\A7wJ\BB\09mE\02\CF2\90\FD\10\B6\B3\93\D9;\1DWf\B5\B3\B1nS_\04`)\CD\E8\B8\ABb\823@\C7\F8d`\0E\AB\06>\A0\A3b\11?g]$\9E`)\DCL\D5\13\EE=\B7\84\93'\B5j\F9\F0\DDP\ACF<\E6\D5\EC\F7\B7\9F#9\9C\88\8CZb?\8DJ\D7\EB^\1EI\F8\A9S\11u\D0C\1E\C7)\22\80\1F\C5\83\8D \04\87\7FW\8C\F5\A1\02\81\C1\00\F7\AA\F5\A5\00\DB\D6\11\FC\07m\22$+K\C5g\0F7\A5\DB\8F8\E2\05C\9AD\05?\A9\ACL\98<r8\C3\893XsQ\CC]/\8Fm?\A1\22\9E\FB\9A\B4\B8y\95\AF\83\CFZ\B7\14\14\0CQ\8A\11\E6\D6!\1E\17\13\D3iz:\D5\AF?\B8%\01\CB+\E6\FC\03\D8\D4\F7 \E0!\EF\1A\CAa\EB\8E\96E\8E\\\E6\81\0B-\052\F9Ab\B43\98\10:\CD\F0z\8B\1AH\D7;\01\F5\18e\8F<\C21;\D3\A7\17_|\0C\E7%\18Z\08\E1\09\89\13\A7\C5\12\AB\880\CD\06\F9\BAo\CA\9C\8A\DA>S\90\D7\16.\FC\BC\AD\D6=\C0fL\02=1\FDl\DB\1C\DF\963#\02\81\C1\00\C2\90G\C4\FBY\F0\C5\14u)\FAw\A1\8D\D4\90\A1\0D?\16\88\E3L\8F\8F\18\8C\9C\8A\D5\A7A\99\F3\80\8E\B1\B8c\D8?\95\D0\D0+\F5\E6\93\E8\FE\D0s\D5\BD\B4\EEQ\19j\10\CA\C8\BA\A4M\84T8\17\B5\D0\A8u\22\C5\1Ba\A6Q\88c\F0O\D1\88\D9\16I0\E1\A8G\C90\1D\\u\D8\89\B6\1DE\D8\0F\94\89\B3\E4Q\FA!\FFo\B60o3$\BC\09\98\E9 \02\0B\DE\FF\C5\06\B6(\A3\A1\07\E8\E1\D2\C2\F1\D1#kL:\AE\85\EC\F9\FF\A7\9B%\B8\95\1D\A8\14\81OyO\D69]\E6_\D24T\8B\1E@L\15ZE\CE\0C\B0\DF\A1\17\B8\B0j\82\A5\97\92p\FB\02\81\C0wFD+\04\F0\DAu\AA\D4\C0\C02\7F\0Fl\B0'i\FB\\s\EBG\1E\95\E2\13d\1B\B6\D1\1D\CA+B/\08,i'\ED\D1\B5\04#\C5\85-\A1\A2\94\C2CMI\92t~$\92\95\F3\99\9D\D6\18\E6\CF\9CE\FF\89\08@*\0E\A0(\F9\83\FE\C1\E6@\A8\E2)\C9\B0\E8\9A\17\B2#~\F42\08\C9\83\B2\15\B8\C5\C9\03\D1\9D\DA>\A8\BF\D5\B7}ec\94]]\94\B4\CF\8D\07\0Bp\85\8E\CE\03\0B*\8D\B3<F\C0/\C7rl\9C]\07\0FE;kf2\AB\17\83\D8L,\84q\19\8F\AA\0A\FF\BC\F7B\10\E8\AEM&\AF\DD\063)f!]\F5\AE\17\07\1F\87\9E\AE'\1D\D5\02\81\C0V\17O\9A\8A\F9\DE>\E6q}\94\B5\B0\C7\B8b\12\D1p\B4\00\F8J\DDO\1D6\C2\E1\EF\EE%j\00\C4F\DF\BE\CEwV\93m%_\FE[\FB\E0\E27\CC\B9\ACJ\CE\15\16\A0\C73c\A4\AA\A5\1EC\C1\DAC\FAC@)\95|+6S\E7}\09M\D8R\ACt_\08\81!\\:Z\CE\F3%\B6\1E!vL|qPq\AA'\02[#\06\0B![\C7(\A3=\8D%\9B*-\9D\A1\1C\1D\CB}x\F8\06~ \7F$*\\\A4\04\FF*h\E0\E6\A3\D8oVs\A1:N\C9#\A1\87\22jtx?D\1Cw\13\E5Q\EF\89\00<jJZ\8E\F50\A2\93~\92\9B\85U\AF\FE$\AFW\02\81\C1\00\A4\C2jYE\EAq}L\AF\AF\D6U\97s\C5\A1<\F6Y#\B6\1F^\9C\96\0F\97f\82\91H6p\02g\DE4\A6\95{QCf\A4\16EY\12\DB5\19K\BF\1D\AB\F3?\B4\B4of\B0g\C6w,F\A8\03d\9A\13\9D@\22Vv\1A|\1E\E2\DA\7F\09\CF\10\E3\F2\F4*;F\C7a\9B\EFJ\18`\8C2q\B9\DD\AC\A0\C6\8D?\AB\C3!,\EB\91\8F\C7C\0D\0Cg\9E\AB\E6\8D\B6-A\CAC\D8\CB0\FB;@\0D\10\9B\B1U\93s\8B`\EF\C0\EE\C0\A6zy\90\FDL%\D4Og\BE\F7\86<]+}\97=\A2\91\A5\06i\F6z\B8w\E6p\A9\D8\86K\A6\CFg\1D3\CF\FE>", align 16
@test4096 = internal global [2349 x i8] c"0\82\09)\02\01\00\02\82\02\01\00\C0q\AC\1A\13\88\82C;QWq\8D\B6+\82e!S_()O\8D|\8A\B9D\B3(AO\D3\FAj\F8\B9(P9gS,<\D7\CB\96A@2\BB\EBp\AE\1F\B0e\F7:\D9\22\FD\10\AE\BD\02\E2\DD\F3\C2y<\C6\FCu\BB\AFN:6\C2O\EA%\DF\13\16K \FEKi\16\C4\7F\1AC\A6\17\1B\B9\0A\F3\09\86(\89\CF,\D0\D4\81\AF\C6m\E6!\8D\EE\EF\EA\DC\B7\C6;c\9F\0E\AD\89x#\18\BFp~\84\E07\EC\DB\8E\9C>j\19\CC\99r\E6\B5}m\FA\E5\D3\E4\90\B5\B2\B2\12pN\CA\F8\10\F8\A3\14\C2H\19\EB`\99\BB*\1F\B1z\B1=$\FB\A0)\DA\BD\1B\D7\A4\BF\EF`-\22\CAe\98\F1\C4\E1\C9\02k\16(/\A1\AAy\00\DA\DC|C\F7B<\A0\EFh\F7\DF\B9i\FB\8E\01\ED\01B\B5NW\A6&\B8\D0{Vm\03\C6@\8C\8C*U\D7\9C5\00\94\93\EC\03\EB\22\EFw\BBy\13?\15\A1\8F\CA\DF\FD\D3\B8\E1\D4\CC\09?<,\DB\D1I\7F8\07\83m\EB\08f\E9\06D\12\AC\95\22\90#g\D4\08\CC\F4\B7\DC\CC\87\D4\ACi5L\B596\CD\A4\D2\95\CA\0D\C5\DA\C2\C5\222(\08\E3\D2\8B80\DC\8CuOj\ECz\AC\16>\A8\D4jE\E1\A8O.\804\AAT\1B\02\95}\8Am\CCy\CA\F2\A4.\8D\FB\FE\15Q\10\0EM\88\B1\C7\F4y\DB\F0\B4VD7\CAZ\C1\8CH\AC\AEH\80\83\01?\DE\D9\D3,QF\B1A\B6\C6\91r\F9\83U\1B\8C\BA\F3s\E5,tP:\BE\C5/\A7\B2m\8C\9E\13w\A3\13\CDm\8CE\E1\FC\0B\B7i\E9'\BCe\C3\FA\9B\D0\EF\FE\E8\1F\B3^4\F4\8C\EA\FC\D3\81\BF=0\B2\B4\01\E8C\0F\BA\02#Bv\821s\91\ED\07Fa\0D9\83@\CEz\D4\DB\80,\1F\0D\D14\D4\92\E3\D4\F1\C2\01\02\03\01\00\01\02\82\02\01\00\97l\DAn\EAO\CF\AF\F7L\D9\F1\90\00w\DB\F2\97vr\B9\B7G\D1\9C\DD\CBJ3n\C9uv\E6\E4\A51\8Cw\13\B4)\CD\F5R\17\EF\F3\08\00\E3\BD.\BC\D4R\88\E90u\0B\02\F5\CD\89\0ClW\19'=\1E\85\B4\C1/\1D\92\00\\v)K\A4\E1\12\B3\C8\09\FE\0Exra\CBao9\91\95N\D5>\C7\8F\B8\F66\FE\9C\93\9A8%z\F4J\12\D4\A0\13\BD\F9\1D\12>!9\FBr\E0\05=\C3\E5P\A8]\85\A3\EA_\1C\B2?\EAm\03\91U\D8\19\0A!\12\16\D9\12\C4\E6\07\18[&\A4\AE\ED+\B7\A6\ED\F8\AD\ECw\E6\7FOv\00\C0\FA\15\92\B4,\22\C2\EBj\AD\14\05\B2\E5\8A\9E\85\83\CC\04\F1VxD^\DE\E0`\1Aey1#\05\BB\01\FF\DD.\B7\B3\AAt\E0\A5\94\AFK\DEX\0FU\DE3\F6\E3\D646W\D6y\91.\BE;\D9N\B6\9D!\\\D3H\14\7FJ\C4`\A9)\F8S\7F\88\11-\B5\C5-o\EE\85\0B\F7\8D\9A\BE\B0B\F2.q\AF\191m\EC\CDo+#\DF\B4@\AF,\0A\C3\1B}}\03\1DK\F3\B5\E0\85\D8\DF\91k\0Ai\F7\F2if[\F1\CFF}\E9p\FAm~uN\A9w\E6\8C\02\F7\14M\A5A\8F?\C1b\1Eq^8\B4\D6\E6\E1K\C2,0\83\81oI.\96\E6\C9\9A\F7]\09\A0U\02\A5:%#\D0\92\C3\A3\E3\0E\12/M\EF\F3UZ\BE\E6\19\861\ABu\9A\D3\F0,\C5A\92\D9\1F_\11\8Cu\1Cc\D0\02\80,h\CB\93\FBQsI\B4`\DA\E2&\AF\A9F\12\B8\ECP\DD\12\06_\CEY\E6\F6\1C\E0T\10\AD\F6\CD\98\CC\0F\FB\CBA\14\9D\ED\E4\B4t_\09`\C7\12\F6{<\8F\A7 \BC\E4\B1\EF\EB\A4\93\C5\06\CA\9A'\9D\87\F3\DE\CA\E5\E7\F6\1C\01e[\FB\19yn\08&\C5\C8(\0E\B6;\07\08\C1\02\82\01\01\00\E8\1Cs\A6\B8\E0\0Em\8D\1B\B9S\EDX\94\E6\1D`\14\\vC\C4X\19\C4$\E8\BC\1B;\0B\13$ET\0E\CC7\F0\E0c}\C3\F7\FB\81t\81\C4\0F\1A!H\AF\CE\C1\C4\94\18\06D\8D\D3\D2\22-->Z1\DC\95\8E\F4A\FCX\C9@\92\17_\E3\DA\AC\9E?\1C*kX_Hx \B1\AF$\9B< \8B\93%\9E\E6k\BC\13B\14l61\FFz\D1\C1\1A&\14\7F\A9v\A7\0C\F8\CC\ED\07j\D2\DFb\EE\0A|\84\CBI\90\B2\03\0D\A2\82\06w\F1\CDg\F2G!\02?C!\F0F0bQr\B1\E7H\C6g\12\CD\9E\D6\15\E5!\ED\FA\8F0\A6A\FE\B6\FA\8F4\14\19\E8\11\F7\A5w>\B7\F99\07\8Cg*\AB{\08\F8\B0\06\A8\EA/\8F\FA\CC\CC@\CE\F3pO?\7F\E2\0C\EAvJ5NG\AD+\A7\97]tC\97\90\D2\FB\D9\F9\96\013\05\ED{\03\05\AD\F8I\03\02\82\01\01\00\D4@\17f\10\92\95\C8\ECb\A9z\CB\93\8E\E6S\D4\80H'KA\CEa\DF\BF\94\A4=q\03\0B\ED%q\98\A4\D6\D5JW\F5l\1B\DA!}5E\B3\F3j\D9\D3C\E8\\T\1C\83\1B\B4_\F2\97$.\DC@\DE\92#Y\8E\BC\D2\A1\F2\E0L\DD\0B\D1\E7\AEe\BC\B5\F5[\98\E9\D7\C2\B7\0EUq\0E<\0A$k\A6\E6\14a\11\FD3B\99+\84wt\92\91\F5yy\CF\AD\8E\04\EF\80\1EW\F4\14\F55\09t\B2\13qXk\EA2]\F3\D3vH9\10#\84\9D\BE\92wJ\EDp>\1A\A2l\B3\81\00\C3\C9\E4R\C8$\88\0CA\AD\87Z\EA\A3z\85\1C^1\7F\C35\C6\FA\10\C8u\10\C4\96\99\E7\FE\01\B4t\DB\B4\11\C3\C8\8C\F6\F7;fP\FC\DB\EB\CAG\85\89\E1e\D9b4<p\D8.\B4/e<J\A6*\E7\C7\D8A\8F\8AC\BFB\F2M\BC\FC\9E'\95\FBu\FF\AB\02\82\01\00A/DWm\12\17[2\C6\B7lWz\8A\0Ey\EFr\A8h\DA-8\E4\BB\8D\F6\02e\CFV\13\E1\1A\CB9\80\A6\B12\03\1E\DD\BB5\D9\ACC\891\08\90\92^5={\9Co\86\CB\17\DD\85\E4\ED5\08\8E\C1\F4\05\D8h\C6c<\F7\FF\F7G39\C5>\B7\0EX5\9D\81\EA\F8j,\1CZhxd\11k\C1>Nz\BD\84\CB\0F\C2\B6\85\1D\D3v\C5\93ji\89V4\DCJ\9B\BC\FF\A8\0Dn5\9C`\A7#0\C7\06d9\8B\94\89\EE\BA\7F`\8D\FA\B6\97v\DCQJ<\EB:\14, `iJ\86\FE\8C!\84IT\B3 \E1\01\7FX\DF\7F\B5!Q\8CG\9F\91\EB\97>\F2T\CF\16F\F9\D9\B6\E7d\C9\D0T\EA/\A1\CF\A5\7F(\8D\84\EC\D59\03v[-\8EC\F2\01$\C9o\C0\F5io}\B5\85\D2_\7Fx@\07\7F\09\15\B5\1F(e\10\E4\19\A8\C6\9E\8D\DC\CB\02\82\01\00\13\01\EEV\80\93p\00\7FR\D2\94\A1\98\84J\92%L\9B\A9\91.\C2y\B7\\\E3\C5\D5\8E\C2T\16\17\ADU\9B%v\12cP\22/XXyk\04\E3\F9\9F\8F\04Ag\94\A5\1F\AC\8A\15\9C&\10l\F8\19Wa\D7:}1\B0-8\BD\94b\AD\C4\FA6BB\F0$ge\9D\8B\0B|o\82D\1A\8C\C8\C9\AB\BBLE\FC{8\EE0\E1\FC\EF\8D\BCX\DF+]\0DT\E0IM\97\99\8F\22\A8\83\BE@\BBP.x(\0F\95x\8C\8F\98$V\C2\97\F3,C\D2\03\82f\81r_S\16\EC\B1\B1\04^@ H{?\02\97j\EB\96\12!5\FE\1FG\C0\95\EA\C5\8A\08\84O^c\94`\0Fq[\7FJ\ECO`\C6\BAJ$\F1 \8B\A7.:\CE\8D\E0'\1D\B5\8E\B4!\C5\E2\A6\16\0AQ\83U\88\D10\11c\D5\D7\8D\AE\16\12\82\C4\85\00N'\83\A5|\90.\E5\A2\A3\D3Lc\02\82\01\01\00\86\08\98\98\A5\00\059w\D9f\B3\CF\CA\A0q\B3P\CE=\B1\93\955\C4\D4.\90\DF\0F\FC`\C1\94haC\CA\9A#J\1EEr\99\B5\1Ea\8Dw\0F\A0\BB\D7w\B4*\15\11\88-\B3Va^j\ED\A4FJ?P\11\D6\BA\B6\D7\95eS\C3\A1\8F\E0\A3\F5\1C\FD\AFnC\D7\17\A7\D3\81\1B\A4\DF\E0\97\8AF\03\D3F\0E\83HN\D2\02\CB\C0\ADy\95\8C\96\BA@4\11q^\E9\11\F9\C5J^\91\9D\F5\92O\EB\C6p\02-=\04\AA\E9:\8E\D5\A8\AD\F7\CE\0D\16\B2\EC\0A\9C\F5\949\B9\8A\FC\1E\F9\CC\F2_!1trkd\AE5a\8D\0D\CB\E7\DA9\CA\F3!f\0B\95\D7\0A|\CA\A1\A9Z\E8\AC\E0qT\AF(\CF\D5p\89\E0\F3\9ECl\8D{\99\01hM\A1EF\0CC\BC\CC,\DD\C5F\C8N\0E\BE\ED\B9&\AB.\DB\EB\8F\FF\DB\B0\C6U\AF\F8*\91\9DPD!\17", align 16
@test7680 = internal global [4365 x i8] c"0\82\11\09\02\01\00\02\82\03\C1\00\E3'F\99\B5\17\AB\FAe\05z\06\81\14\CEC!I\0F\08\F1p\B4\C1\10\D1\87\F8)\916f-\BE{\1D\A2\0B 8\D9\8Ex'\CF\B5EX=\F4\DA\F0\DC!\17R\CDh\E2\81\AC\88a\10\BC\B0\7F\E4\F3x\B7(l_\\\C2\8D=\B0\87A\15.\09_\EA\06\7F\E95\18\90P\AD\F6\B9\FD3\02\1A\99\9E\A5},;$\E715s\9A\B0\FE\03\FC\C6\98x\D9f\95\A5\12\BC\1E\82\BC\F1\C51\CD\A6\B1\0C\02\BF\7F\B7\AF_\D6\ED\F7\C1Y\86:5\95T!\8Dj\B3\D1+q\F5\F1f\00\B1\88\EE;\A4AR\1A\F5\0E2\B6\BFR\ABQU\912O\AF\91\AC\F7\FF\8E;+a\E9m\1Dh\80\90y4\96\CAIC|\89N^1\B5\CE\01\9B\09\AF\92\06$\E7\225\CC\A2\0B\FB[\87eq\FFd>\F9\E83\A0\C3N\B2A\98T\EB\13\99\FB2x~\DAO\D3Fj\B5x\81?\04\13_g\AF\88\A5\9E\0D\C5\F3\E7LQ\F5QJ\A4Xd\D9\A22T6\CE8\D8\C2\0E\0D`\8E2\7F\90\8A\BC\88\BEj\C0G\0F\02A\FF;~\C5\A63\1D\19\D1\D5gl\BF\16\B0~\80\10\BF\7F\DD\D0\F4\C3\94,\9A,\DAiN\D6{@M*'\CBZ\E5-?}Q\9D\9Fp\DEP\B1\D3\D28M\1C\CA\C2\1E\80\D06\82\04\E6\17y\9F.\C9\ED+\D5\1B\FA}\1A\80\B5\0E/\05\BEJ\1B\FE\0A\AD\01\DE\91\C8\F9\81\BE\C7\AF\E7\87\ED\9D\B8l\ADe\ED^\D3g\8Cb:\E7\FDg\E0\BBW\AFV\EBJXn\AD\F2\BE\C3p)\F8\EBhE\A0\BD\CD\A5\B4\D9\01\B7D\EB\97\F3\0CV\E4&\D0\A5\B1\A3In\88\F2\22\E2{X:\D9R\A4\B1L\\|\F0\88{\9F\06\E92N\F2d\83\8B\A2\EA\1D%\F1\8D\16\8B\E0\AB\D2\E9\E4k}v\98\22S1k\CC\F1\E5\1D\D7\A5\B0\EAk8\14\0C\06\10'\D83\F3\9A\AE\94\DD\0B\B4m\E5\91\DD\F1\0F'\A4\94U\F0\DE\07)\E6?&\19\A1\DD\D1\06\99\DAT#<\F5\\.\96\A9!#%.o\F1\F9\11T\E5{\B9\1F\11\E2\9Eka\8B\A3\8B\C1 \9B\FBQ\EF\BB\B9\F6\AFf\B3,%\EFv\CB\BFz\93/\E1\17V\C1\003\B5\D9\91\051\CCr\CDJ\93\9A\E3!B\9E\B8Nl'\93\F0\7F\22\DB\E5\B3\A3\F7\E7\80\BB\91\CA\F7\E8R\B8\11df%\94\F8o\0B;\B7\FF\80\9E6\E9\88.\AB\05\BF\99\9F+O\C6\B1\13[\06\FF\0A{\BC\7F\07\A05\C2-D>\ADD\CBG\18&q{\17\C9m\B5K\CF\DF\14,l\DF!\CE\93I4iI\FD>q[\FA\07\C5~^T\1A<\A6)\B5\BF\0D\F1\C6\A4a\D6\17\1D\F0\A2x\8F\BC~\0C\B4\F0\1E\05\EA\B5\ADh\95\0B'\B4)|p*\9A\0A9\D4v\B7r0^\AE\9CJU\C7F\D7_\BE\10a%\18z\9F\D3\05=o\9A\1E\EC+\03\E0Ij\9C\D6\DB\C2\A1\E1\0A\BB1B\C8CN|\A9|`\EA\BE\F1\8B\E8\B2\90\83\14!\E4\B3\0D|c<\98U\C6D\A6\A8\1EB\B7\89\A8\BD\B84=\09\80\99s\9F\AF\17V\F2s>\1En\E9\18\A0[i\CE\FD=w\81\95;\F1\DE&\E9'\EF\92*\97\DC\95\A5\A3\B0\FB\96\89O\E6\C1B\0B\FD\B4m\0A\9F\9B1\D8!8\8A\EE\B6\\\12\A8\B4\07yA\A7\7F\13t\AD\0B\EE(R\AC/M0\1C\C5\A6\A5aB\BD\E1O\D3\ECf\F2c\F4\93\DB5-;q%\09\DE\DAF\DA\E2\A7\A3\DF\CD\BFX\05%\02\03\01\00\01\02\82\03\C0_\D5\15\1B\09\E4\A7\C0\A6\D8\0D\A8*\D3\1DF\03\07\F0\98\E4K\99f\8Er\E7\BBQ\C6\1A\BE6\F4R\BA\A8\BF\AA\E3q\1D\83!\C0\A6\88O\F7+\93&\E4\A7\EDP\18\AA\F4L\A2\FE\92|\DE.Tv\C2%\1E\98\A6H\019o\1F$\97\9Bd\95\1C\8Dc\8DDo\9D\DF\F4\1A\A5\9A\1E\D3l\AE\A9\8C?\FB/x\F6\A6\D6\06\D3\B7&\FF\1E\DB\8D\CC7M\\\E2\C3\A5u\E6\F9\B4L\84o\9EXU\C8\01\FA2\D2n+E\F2\C6H\AD@\D8\B9<\1B\F8\F7\82\D3\0Es\E3\B1[\82qw?o6\9A\E0\ECQ\F8_\84\92\EE\B8~\E7\1A\14P\82zM\E6\D6\A3v$\8A_\FE\19\DD\D7\F7[\AE\18\04\90\CD\\\E5d\E8\04\B1\06\A5\DD\F8\9Dq\13\AA6\7Fa'\F4\AC\95}\1A\99}\E0\D5\9CZ\AD\9A\FFT\B0\B1UE-\19XR(\DD\E0\B5eR\97E\F0+\98\1Fal\9D\AAY\85\F9\97{\BD\EB\95\81\FB)\8C\F0R\DF\ED\EE\B2\0025\14\A8\A4\CA\91\FF\18\B7\96\FB2b\A9\A0\D0wC\F5\99\D1\EE\E8\AD\1A,\D4\EB\E1\F5\01Ax\C0'\19P.\BA\22\D1\EB\B3\A5'\0B\EC\F9&~\1F\E7\17\9F9\A8r\22cyj\9C\89U\9A\B4aA\BC\AA\147)\03\C0RN1D\8F.\17\81\88\F4\CE\DAA\B8\D5\14\91\8C\CA\D2\0D\99\06\09\C2\B7\E8\AE\FA\01\EA\99bh\B6\DF\C8'\AE\BF\B0\9B[\1A\A2\E2Zz\E5K\92\1F\FFs\AE\16@xB(\BB\13^\BCqzx>\D8\1B\C2,\D6\DC\FA9r\F8\A2,\8B\1C]\AB\B8\07\C7\AE)\93h\BFa\E9\A47\83}\13\C7\18\F0}\A4 G\14h\95FVm\D5{\E1Q\8F\96\C1{5\09z\89\0E\DF\12\D5\E1\9C*\94\95C\93H\A6#\E6\D8\F2\B8\0E\BAma\03\AF@c+/\EEaL\C4p=x\C1O\8E\0B\9B\065mm\837\BB9}\7F3\93\C4\EB\8E\FC\DA\F0T\FE\1D\C4\D3\83\99\DFe\EE\00}\86'\D4:k\E6\82\8EX-\038\EFl\82\87\18;G\E7\BC\E1XpMF\964`\96\15\09<\84@\AF\802u\C7#l\FB\1DWs\19\09\E8\1AL\02\\~N\BEu\F8s\FF-T\19U\F5\F4\1B\C9\BC\C2\19\CB\B7Nj\0D\FF\CA}\D0\88\91\8B\9B!\A4\A2C\0D\BC\9Es}T}\95\CCc^\C1\B8\E6'\FF \07\E8n~\F2\0FZ\09\EF\E5M\809\95\D5\F4\EE;\CA|s\F89Z\C1\1D}\94r2\ADX\E2\FCqnf\AA\A1Y\D6\AC\AB\BE\8CS\99\CD\E8-\B5\B3FX.\16\D7M\8B}J\B1L\85\91\1BWT\F8\14Y\DB\C4,\9C\08m=\D7\F6\A6\E6\B3*\E7)\1C\AB\B4\ED\13\19\F8\B6`\92DS\D4\A9~\BA!\A2\DCn\A5^SY<Ra{_\19\AD\C8mh\8Dz\C9\D6\EF\EBgO\CA\E7\F6)6\97\FB>7\95\85qp\F6c\86*)\D7\9A\96v\A7G\98N\061\AF\F3O*e\90jK\8ECy\E2\DD\CE\08\1C\01\EC8A\DD\19\D8\F36\035\03\AF\1CE<\AC\13\AA6\16Hw\B3\BE\A3\B3\9D\7F \CAte\AC\93\A7T\AD\C8h\0E\F8D\1F\AD,\B7\9A\9A\07\E5\CD\87\E0\14\B5\AF\D3\D7\CF\13\9F;\BD\FE)\0Br\F5LT\94\C7f\EC\A8A\96=\17\ED\19\C0\82>_\9A\91\FE\D1/\B8\94\AAXh\951\87W\9Au\94M8}V\82\81\9C\B94+\E7@\D9<w[\95Q\06\11A\E3\8B\B72\EB\E1\05\1B\10\A8\0E\A1\02\82\01\E1\00\FA84\FEU\87qbG\003dgpyv\DF\FE\C3(8\DF\90\D4\C0\EE\98\BF\9D\9B\85\D8ae\A5p\F5\D2,\BF/\B5Uy\92\13\BAM<9\BF\D51\13z1\F4\8B\CE\F8\D0\D3\9B\E2\EE1\DB\BA\CC\1A\BA\1C\8D\EE\EA\CB\D3Z\AD\87\D6\F9\15/n\00\06t%\8D\FF\C8\A6\11\1C\E8\16\1A\DES\05\B9SU(\83=\BEa\0C\C4\98}\F6\EC6\C3\E5\E7\1D\14d\CB\0Db]z\CD\88\FCfN\F96G\95\18:H*\FFb\8Fl\E2\C2\E9\D3jE\\\F5\89S\\\BE\CF\AD\87\22\9C1H\DB\D8\E4\E58\AE\C2\B0\D2\BA\B70S-\B15\F1X\0F\8A\06Qv\B9,2\E0\D1\AA\824iq\1C_5\A8\9D\11\AC\13\DB{\F6\93\E3\B9\BD\D9\B2\86\FFa\88+r\\\84\E1\0Cr\ABD\FF#\13\AF\D1Z\D3\EAs\FE\D5\A4}\9EN\AC\03\93r\14-\96o\EE\B4\CDN\AB\EAq\93\81\E0=\CDa\96%v\BD\C4\B5\DD|\F1\B9\E1,X\1B\A4FK\12WX\AA:\AE\89\A3\B3\CF\1F\8Dg\DFm~\8E\FA\C5\09sFVU\90\EBwN\16Oh{\1Fa#\EC\A9q03%\C7N&.N+\C2d_\F5\8FzK\1C\06\B3\91\F6\9BQ\B7\B0dr\04\E5\FA\14/\EDa)\03s\19\15n,\8B\0E\ECM\F1\E3oX|\C9Hg?Q\B5\B7&F\A7%yU\FE:D\B4D\FC\B8\144G\D7\A3\0Ev\E7\83\9A\02\C3\CF+\D9\83\93\D5\EE\99tEb#\A6\02\C9\C0\10p\0A\99)\0Cy\04Lw!\96\F0\A5\17\22\BE\AB\9B\D7B\D3\E9\C0BD}\9D\C9=\F96\97\1BuR\8F\E9\B9\8C\A7d\19[]`\B4B\95\C9\DB\82\03\C6\B0(rd\03AM\8F\C6\D0\CD\02\82\01\E1\00\E8f\A7\F9\0FZ!\FC\88N\91\D5J\F0\F42\E5\0D\F3\06\95\D0NG\0C\04fw\FD\B8\93\0D\FF\8F\97\A0J67\A6^\95y\C8\B2!\98\81\F1\B8\F4R\AF<\8C\86\85UV\FC\90\E32P|T\07\9E\ED\FC\D4\B9\\\98\22\FBr\D7\83\F0\D1a\10\BDh]r\C1\CE\92Cw\9F\B8\8D\8E\F2\E3bJ\93\03\D3\D9\01\A8\99o\A3Lmz\F2\9E\8Ek\BC\E4\9D\8E\E7%\86\A4\A9\C2\EF\DF\BBn=KW\95\81oh?\19\A8\FFZ\08z\E4LN\B4\EA\F4\C8/\EF\8C^\CDb\1C\8C\93`]\A3\11d\0B\EBm!\BC:[\\\0C\A7\8A\C6\A8\E1H\81\01\B5e\AB.\BE8\94\F7\A63\C1n\0B\888\E7\1B\04\9A\10-\1D?__\C8\EF\CD\C5\16\DC\84\C0f\E0\A3\FC\FA\96\C7\B7\ECO@\0A\C5\BEm9J~\91O\E1\03\D29\BC\87i\A1\F0m\11\F5\B4\9D\AEvk\C6\BF\E4G\BCM\13\88\A8\83\F5\AE\1D\FBMLD\03\D8\A4.M\F8_E\94X\D7\D9KG\D8\FC5\05\ED\B4\B6\C26.\BA\D2z\BAi4\BF\F1\A1^\17q\89\D3TW\05+\82\E3\0Ad\\;\8Ck\C7\10\8A\B5\D3\D7\90\EB\DB\1D\A0\BFk\EA\CD1z\8Dd\CCX\C0\07\A4n\14\0B\F3\EA>\87\9F|\B8\1C\22&\8A}\90\DDW(8\CC\0Eq\92\89\EEy\88\BC\05!\DAB\92Rf\ACJ\E5\F5nG\D5\BA7\D3|\89\D4\D8o\DEcD\B5\88\DD\B10\B4m\CD\BF\C84'Y}y\DC\96[\8E\C0\87\C0N@\07\13\91k:\12\03dp\AF\80$\1C\\\FB\F5\C0t^\AF\06\18\04gJ\BD\AC\D7\CA\BEN\A1\19H}\A6Y\F6\1AbPSF\A4[\9CZ\FD\89\9D\D4\DE\F4\A7=\88s\A5\B9\02\82\01\E1\00\E7pY\C3\ED\C4k\A1\A5^\90*\8Cj\C2N\AB\FC\EE\F2#8\D6\B3\93\08\9E\0C\8Eq-\A9\E8\DC\A5\DC\07\E3\B13\DD\A2\F2>\92X\E0\F7S\7Fn\EAx\8C5xCc\95\BB\1B\1C\BF\91u\14t\D3 \BA\8F\EE\9Dq\A1\87\8A$\D3aS\FB\EC\16\84\BEM9\DD\0A\AC\CE \9C\AF\8A\13\F8\22/\D4\99\88t\BA\16:c\FFLZ\03Zo\AC)3\A5P\D1\DA\ED'\CBgrc\85\FC\F0\C8\88\BF\85\EFK\FE\AE\D9\D5\BB\86\A4v\E8\7F\B4\DB\B1\EE\1A\7F\99\D7\9Boz\94\\\EC,`\81\AD\A7\BE\80.\9F\A6\C0\FB\09m+\AB\A4\15\C7yF$\89\\2\B9\87\A9T\1E\12\90\8E\02\80\8C\F8\DB/\BC\98\1B\A2xs\89\03\97\E3\09\08\8Bu\CF\DC#\90Y\EF[\98$\B8\E8\CFu\F0/\B7\A3\E6\17\06\F0R\FE!\0A\16\8E\F8\E1\AE%\11]\8C\95\1BOE\B8\A8\CD\E6\F9\CA\A0T\93\95\86o\E4\93\22\0F\F2\CF\BD#\B0\F4\8F\99\A7g\99\05\13\1F\EB\88\F8\E2;\B9I5\89O\B8\0676\DAu%\0F\0A\AA\C2l>\B1-\16\F3\17\DB\E2\1629\92K_\C0_n\D0\1C~\C0Q\D9\B3\E27\C7\E0@\13}\06\CD\CDr\B6S-~`I\FE1\E1\D0\0EL\98\93\E0\F6\F2\FA\99\7Fe\D8\15\C6:\B8Mc!x\E4\19k\BD\DE@[\8C\FAIu#\8F\14\C2;\A3\9B\C5\80\1A\A3`\D7\17'\F0\18\0F\BA\02\F7z\ED\A4\00w\DEK\DD\F9\D7>u\ED\1AC&q\1B\BCr\F5pr\03p%\87\81j\92-\B7\02\F0\10ye\9DN\11}\\[7\AA\B4\FACfHlgd\9E\15u6\E7%U\07\7Ft\1F,(v\E7\9B=\91\0B\CDj\1DZ\EAc\D0\F9\02\82\01\E0>1\F2\F4)\92\A2\93\D5\DA\C9\16~\F6\DB3\9F\AFK\01\D1(-:\C0Q\91&\BD\A5\1E\DD\D9.\11\93\19)G]c\E4\B6\F1\EA\12)\A1e\12mx\8Fc1\ECrTsr&HWW\C8\DE('\F5b\FB\7F\1B\F3\AF1\01\FC\01Xz\80r\9Dn\07\CCEg\C6&\FE%\A5\9Bd\CDE\E318\05\076\05F\9C\C1\8E\BFNq_\EA\E5\0C\9AA\C8\94\CC\F1s\060Tv#\B7\22z\8E\E6B\A1\A02\12\E9\08\1CFy\0C\82z\95y\BF\83\80\EB\AB=2\C5\DEb\EB\90)s\05\C8\0A\B1Q\F1#\DD\1E\F5\02>t\BC$\0C`6*(M\E6\86\98|\D9\E1\AC!3\AA\A9\8B\B6\8A\1B\F7T\14\F3\0DO\CD|\F5\C2m\C2\F0\E2\FCc\1E\A6\A9\A9\D9s*\D5\0A8\D8\C0\B7\E1Q\E4#7\F7\85f\0E?\1A\8C\CF\12\A2Gos\91!\E3\93ktO\C5\A1\E72\F7\86\DD\1An\96\DA2\1D\DD\FAB\D5\D4\FD\AEz\A1\ED=y\FE\88\84C\A7\EC\F3z\13\AA\A1\82\02\83\19C\0AFx\07\D9M\FF\ACg\D6)\89\FE+\AB_\9A\87\99\80\AFpJj\B9Z\C2\AC\7F\A2\C7\AD\E2\1F\EC\C5\12\17\08\87\8F \95\BE\AFb,\C2?\89V\D8P\96\97r\E2\92\E1*\D8\84\9F1\E3\06\D8\E5\91c\19\E1'\AD\E2\F2\0A^x\8B\1B\131K\BDw\B2\D6\\\92\81P\027\D2\E6\EBfk\AA\FC\CDT]\B8\03\87\E8\FA\B2\DE\CB\F8nX\DE\CB\09T\8A\9FF\A3~\8D\15\FF\1B\0D\89\C4\1A!1^\ED\0Bg<p\ED\92H\EF\EC\F0w\C2yl\06\09\AA\AB\F6L\CD\FA~J\88\DC\A8\9B\D3i\94\88\09\1D0C\9E,\CB\01\1DJ;\04\EC\0E\B1\DE\09\AD)\02\82\01\E1\00\9F\02\13z\D0\A9\8Az\A0\05\BBDo\AF\F7\E3\D45\EFs9\D5\E0\A2\0F\1A%\A8\F7\C2\A5\ECW\F8\0D*\B6d\03\8C\22\0F\E7\98\A1\12\FE$\EFa(\9F\A7\22km\AB\8D}*\8B\AE\8B\FD\CB\D5\0By\1B\89\CB[z\8C\DC\E8\8D\DD5\9F\06id\12\EBFy\DF\82,\89u\9Ez\EC\AD\E5\881\FA\86\93\CA\F1-\9BbZ\E9C\09\F3\8C\E5\C7\C0\CE\86\E7\DB\C7M'\D5\EEv\CE50G\EF\00\1Bi\9A?\A5*\C9\07\AB\99\BA*\E7\FB\A9N\B9\AE,P\FC5I\E6\97x<\B1Y\D7\1DNN\EA\DE\A0\D0\C4\1D\B1\D3S\1E\F9\BF\B3j\17\B4\DA\CC'\19\C65\E8(\D3\E3v:\DC\D0u\C8\B4l\BE\84*E\D1C\22T\D7\C5\D0\D7s5k\A8\FA\AD`\C0d\C1X\89\09\81\0A\0B\EA3\91\B0\EFSPA\AE\D9\EE\BE\9E\F0\0B\A0|\BF?\C9K\E0H\D8\10\D5.\CE\F0|\D8\05\DE\09~\8CcL\DB\8B\91\CD\7F\B6k\AD\CE\B1\17l\F7\08\0D|\DAO\0A\07\D0\AEr<gJDTG\CE\E1\17\07\12\DER\EF\EFL+B}\09\8064\DCEo\B0-\AB\A0\0CX\AE5\D3\9B7\C1\1D\EB\FE\C3\04\C9\1D\E7=\16d\ED\F5\E8\DF\99\A4\FB\ADy\88\D5\8Cb3\9E5\A6\7F\9D\B6\1A@m\C3\89]{\E2\C8\D3\16\13\07\9A8\223\03\ACp>\CE2V\0BXV\B8\E9\D8B5l\B9\02\B3d\EB\AA\09?\ACf\08\B4_>\B4\EC9\B1\99\E4]\1D2\14\C1H\8Fle\874P\A4\F4\9B[.\B5y\0D\11b\A45\9Co\92\D0h\07\DDi\85H\E3]\104\AF\EAArZq\00\F8\E6G\7F\A0o\91\96@\00@p\FBc\CF\C96\04\1C;\11\08)\81\9F", align 16
@test15360 = internal global [8684 x i8] c"0\82!\E8\02\01\00\02\82\07\81\00\AD?\AA\DC\8C\85\CB`\D2\F50\A1\0F&\EC\DF\FC\919\BD>\8F\99d\1EQ\D2'^v\CD\863\07\F9\BD;\06\C3<\85\CB~\91\14\B0\0Bw\220q\B8\BBt035V4G\10\8F\88\E2o\DC;\E9X\9D\0C\DC\8FpAz\12\D2\9A5\BE\0AW\13\0C\E9\BFwT\00t\B7\1A>\A7\E9\B6\E7O\1E\A4\C0|Lf\C5\CE\AD\96\1B\E2\1A\F1=\8BP\CF\E2\15!m\83\95\00\EE\97\C4\AE\C98bl\B2\E7\7F\15\0A\AB\86\B9\D9\8A\F8\EB\88]\DC\0C\1E\C5\E6\A1{\BF\F1\02\E3\AD\F8\ED\17\9F\83\111;\AD\B4\F9\8D\1DV\9B\AChU\0At \EEW\E7\1Cm\05\A1N\A5\11\99\B4\86\DBX\E7\F6\B6O\92XW\9Bt\04\E5\D1\1D|K\B8\1F]\0E\93\EED\18\B6X\0E\A1\0B\8E.\99Lr\91\FA\FA\E2\22\05]+-\D8`\D5\1B\08V+\B5!\DB\1A\E6\A89\A2\F4X\CB\D2\F9\CE\C0\1E\1B\F9\A77\CA\A3wn\B1\AF3\B5m_3.\1A4\DBB\BE_\F9\09\B7\9F\D4\09\FB\87\13<\E2'\B8\F3\1D~\92\DD\87\86Ui\9BU\CD\EFzq]\81:\D9\F7\7F\DE\E0\92\D9x\0F\1DC\B1\1E)\C1I\B6^\85\83\D9\04\FDy\D8G\03.\85\19\FDc\E7\A4\8B\C0\94\0E\B7T\97\D6D]c\12\FF\DD\DE,\00\0E\C9\CA~\A2e%\B0\1D\A9 O\DD\EA:\B5\E8\0F\F3\B2\B7\00J\E8\A4\83I\BDx\DF\AC,7\81\B3\F3\B7\13\93>\B2yU\F2\D8\9C\F7\F2\F1\D5l\9C\FF\EC\F4\EA\08<e5\B7\09\03m\99\1D[s\06a\B4\F0\C5\DB>\E0\1D\A8[z[[\9C\11u\83\1D\F4s'\F3y\F2\82\D6(EX#l)\D3PQ\1B8\EF\89\90\84\A2L5{0^\BD\1A\D5\DF\CD\CDt?.\01\EA3\07t\FB\86u \0EO\BFe\D4\15\19o\8D7\CD\B6oP\9D^\04\81}\EC\D6\BB@\1B\E0\F5\D5\86&\C5A\84\0E>s\B7\A4\BE*\FE\D7\E4M\\-j\04\E6\DD(\A0uL\E0#,\AD\EC\AAr\FD\03\C0e\FA\C4<%\10\AE?\09\96N\FF\FE\C7\E4\9E\EC\B5n\EC\F3z\83z\8B\BB\91\8D\AB<M\7F4w\BE\0C\87\F2\C3\D6\CB\CC\FA\1E\AF!$\E9\AA\89a\0Cz\1C}\00\87i0\A0\B4;\96\1C\00\14\07\B8?Yb:?\FBh\B8\81}J\9D\1C\A2\07\A3\B1B{\FA\9B\BC\940~\EA\E7@~\D4\0F3;W\DA\8Bmd\D5\E4\91\83\F0=\AE\8B\91\F0\CD\B1\A0\E0\0D\E1\BB\22x\1F:\E5S(\F05\AEq\E6\FDc\B2\9C?\DD\95{\C4\E9/\D9\93:\10B\1C\90\AB\FB\D3\02\E9Y\BCS~\F3\E1R\15\A6X\9E\C1\A6\0E.5\07:\C3\1F\AAX\E7\C63j9K!\15=\92N^\F9\01\D6\0F(a\15\DF\EDou\C4\8F\CB\16U\09\C7$\B2\0CI%\8D^\F1\0E\E0\E2\C4\CC\1FN`\\^\C6\7Fh\7F\DB\1A\01g\07\B1V\93\F2&\81\C03\B8H\F9,\\\18)\ED\E0l\A0\AC\D2\90KR\87\BB\B5\05\D8V\C5\B8\8F?IR\9A\A2\D0@\80[\16\15\BCt\8E\00\10\AF\FBm\BA\CB\BC\E6\13u\CE'\AE\85Wl\C0\8A\84o4\16\D45\D2\CCU\00\C1\D8(,\9C\84x\BF\F0;\0D\9F\81\D4\EF\99wS\D2\8ECR\F02~\BA\BF\B6\0E\9D\9B\00\D0PUgZ,\8B\9B)\FBAtL\B7\D8\98\A2\FBs\07\96\EF\CDG\13\1D\E2\B1\AC\F3\CFG\98{o\F62DAx\09\8Ed\0C\BF\E2\0F\8CD/NU\E0\C6\FD\05t\18\1A\B9\FA\CB\D3\FAiPc\CE+\EF\92\0F\11\D4\9BSl\ED\C5\0B|\BD\A1]\DF\AB\CF\AA\83^\A8\C5\FE\91+#\1F9=qt\BF\A2\F1\DA/)\02\9B\EAH,\AF\E7\A9\F5h\AB\8F\18\B9{(\F0\92\FB\07\D7\BDC\CD\7F\FC\B9_$\F8H.\BEB\87\808x\9E\8CRm\FA.F5zY\88\B9>\CBy\B4\8A\9E\D5\D00\8C\B2\0C\9D\8D-d\0B\F6\EB\F1\DE\EAt\FC\BC\01\18HN5\02\83\01\B2P\A0D\190\00\12J\A0mk\8B\F1\CE\DA.\165R&\F9\BE\B17\FC\0A\8Bo\06\11{\F7\A8@\BD\8D\94\A4\A2\E0\B6\DFb\C0o\B3]\84\B9\AA/\C1;\CB \C6hi\15t\BC\DBC\9CJ\FCr\C1\F5\87\80\E8l\D5\C1.4^\96v\08>E\E4\A0Jz\C1g8\F21\1F{\0FT\BD\0D\1F\9E\8E\99\8BX\D9\94\87\AA\8B\82]^\E8P\F4\F2\C7\E9\85k\D2\EF\13\C1\EDW*\C5\D6]\A4;)\BA\AB\1B\AA!A\E9\DCG\88\EF\0C\FC\B2\DC\F7\DBUMp\C7\E2\8A\8A\E1\DE\CF\E5\CA#6)\E5\FCTf\DA\E9\ABX \B2\8E\B2}]\B8\C7lHS+G\E0\12\00\0E\FE\A5\934\F9>\A6?V\AACe\BBZp>b\AC?[\90\02P]\05\A8\D5g\1Ab\EC\D4\DE)\04\ACm\15]\A0\EC\F2W\13\0E\17\96\0C2j\C5\E0\A8\FF\85\A4\A3\E3\0E5]\D1(\84\AA\C4\84\CD%c\85\82>\120\17WE\B8\B44\01:\A2wa\C8=\1F\C5\0EJ\BB\F6\A0]yK\C8\F3\9C\87\05/\EA%(\91iw|\BA\EAJu.+\17\83P2CO\CD\F1w\B1\22\0A\8BiX\095\07maJ\8D\18en\9Bb\07\D0j\929\05\80\14\FA\1C\93\84\0C\B5\8CA\91NH\F0\F2\BA\1Ds/\1E\A1U\C3\02\8C\B1\F27\A6\9Ak\CDE.\08\90&c\91\FF\22^\CD\AE\9B\19\1E\10bN\1F-\81iOA\E5\94\FF~\CC\156\1E)Y7\E7d@\17\1A2\BA\01&0\80`\07\86n\D4\B3\E2D\163\F2L\84\0E\B1J\C7\92\A6\A3B6\05>t\A8\B1\C5cY\0D\1E6E+6^\CA\AB\97I\D3\AB\AEc\0A\D1\03W\88\A4\A4<\DA\15I\1A]\E6^\B9\82#\C0\83\96\FE8\0B\80\0E\DE\22\EB]\E4V2\BE\E0\C0nic'N\00X\80p\D9\CCN\AEl^jC\81\FDE\B2\A4l\F0\9Cf\\}\\xU3K<;\1D\18Xyj\02\EC\CESi\C0\17\EDW\AFq[B\1BI\D8\E8\96\80\B6H\1B|\F8t\1C\B1\C4\10\B7\F4\97~k\8FT\BA7\B95\9E{\17\16\9B\899\AEO.\18e\B4v \9AX\E2Wn\1C?\8E\9A\BB\D8\FCL\D6-\C1\A6F\AC\13\1E\A7\F7\1D(:\F4\D6H\FB\E5\B3\84\94G\92\AE\9AX\C5\AC#\1B\B5\CD\96\D2^\B2A\FC\9A\AE\19\F1{KS\1B\FA\A5\0CIm\FF\F4Q\88\19\04\D9\85\8E\E2:b1\\n\E8M\04\1D\D8\C2{Q\E7Y\BC\85\\\C4\CC\AD\CB\93i\18\E4q\9Ec3\99\B6;#\11\17z=o\B9k\F1\F2\A7\03\FD\F0\CD[\B5\DA\9A\D9\95\02v\D88\D3\BD\A0J\9A\ABp\DE\C6\F9\A5\19\9C\C4\F9\07M\EA\15\C2\91MT\A9,\CA\DF\AA\D1\C4\C0\18w(*,\C3|&\BD\D8\0DQ\A1M\ADvv\AA\A9E\82Ov\FB\1A\D3q<U\A2\\\E0\D6\DA5\BE%#&Q\C6\B4\F3>,T\09\C7o\A5\08\81\BAu\DA\CBM\05\DD\CA\93H0\E8J\1F\FD\02\03\01\00\01\02\82\07\80%/\BCI\F8\B3\A32\D65 \CA\01I\96\A0\81B\DE\C4\DB\0F\D1\99\E6\D4#*\A6!\13\FEQ'\CE\18*\FAI\9F\CD\0C\1F\CF\9ED'A\DC\09\CF\EF\19\F5W\7F6\\\99~\03t\FB\A9\B6\DE\EB\D1+_\12j\A93,*\BA\AD\8F\C2'Wj\D7@\F7OL\9A\B0:].\F9\F1\EA\BD\82\AA\BD\E6\19\16\D5\03^C\FD\88q\D5\B7x\BE\80\0F\C9\7F:\8F\E1D\D4\0F\CE&\AFe\E0\F5\04SV\97O\F4\C1D\8D\F7\88UG\16\AF?\8EB\DF\BC\14\C3\E6\9F\0DiT[|I\CF\BFBO\C7d\8A\E5\84\87 \9B\FDp%8\D3\B4\97x\F1O?\0F\BB\9C\A3\17\D5NK\AC\82\9As\B7\C5\EC\10z{\DBw,\B1\F3\8F\C3\A51\112U5\B5w\D2b\19F\92\94\BBa\0F0\94\8A\F6\F70\E0\A2\8C\1B\FF\8C)D\B4\B7\B6_MR\C6\07\E1(\8C\AE\88\8A\22\BD\D76\E4\8F\D1\EBeT\19_\BA\FB\FC\91\A1\A4\B8\A4-\85 \C4\E5\A7N\DB\A4\C5\CC/7A)G\15\FF\04\80\087\CE\C5\E3Z?\83\BB\03\9E\FE\EC\E4\11A\12\13\F2\00\E5\1A\02I\EB\DBW\E4\CE\A0?\FD<s+\92Dy\9E\12O\FA\E4Sb\F2\B0\E2\8A\F0\93\A8\1D\EE\8DXzL)\91)\C1\A4\D5\E67\1Bu[\B6kv.\CB\BD\A9\BEL.!\A68\DEf/Q\EAL\BA?J\FEz\15\B3r&\BA\CF\9E\1B\03\A6\AAeh\D3\8C\15\17\E9\11\18<\B6\F8\02T\98I\FA5<\CD\AC\C8+\1Ac\93\03\05\A1A\BE\12\CA\15Grcw&\D0\E7\8F\0Dn\9C\AC\07\BE\03\22\D09c\8D\9B\C6 \81\B5g\15\F6\B0\E3\B9>\B7?\8FF\C9t\10\1ES\F1\D40Mnr\B4s\1C\B6y\82`.*}\82\95\B5|MD\CB\D8\8A\17\E8P)\D8:\EB)\C1\83\0F\D9\AF\CC\FA\EA:G]3\1F\E83[\88\8E\DB\D5\1E\AFJ_\C0\FA\F0\B5\A3[\DA8\B78^\CE\81D\F7fbd\1D\04\F0\8AO\A2\80v\83#\89ak\C3\B7\EE\B5\063\ADc\04x\C9\DE2\DE\CF\18\B9\B0;\EE\0AX\EA\AD\BC\1Ew\A0\93\F7\AE\9E\B61Y\8E\B1\03\8F\BB\A4%\0C.\D7\E2b\\\F1h\E9v\D7#\14E\AF\CB\09P\05?\A0\F9\C3\9E\89\05\A8;TU2t\91F\C1,\96~`\AD\FA\BB\CD\09{9\10\82\8A\C0Z\0D\AB\B3qE\AD9\8E\ECM\91\8D\DA\8D\FA\B0\ADD<\C9!V\22\FC\D3\BA\B7<\E3\8D\DAY4B\DD\04[\8E+\C7\94\D5B\E0Jo5Z'\82\D8\82@\EE\0F\A6\EF\E4p\E30\B7-\D4\BB'\B2\BF\ADIE\BC\EB\BE\B7\D8\E3\B1\F3\EBA \9B!T\C3\A8\AF\9F \\\15\8E%\BC\BCi\91\FE\DA\AD\E57}\B0Q\14\AE\8F5\15\0A\D4I\A7\D9 p\A4\F2\F4$fR\D1\A5\22\EA)\D9\B2\82\8D6fun\D5\8CT\08!\F2\EEx\C7\1F\9Cc]\88V\D1\A0\803`U#r\D6\B0\1AP\DE%p\B5wB\F8\19\18\15\8F\FD\0CjF\1F\BF\E7`\91\E7\BB%cf\FF\11\97\BB\FD:\17\94w\B4\C5!\BA0\94\DD\E5\EB\1D\01\BA\F9\B00\DB\11\93\B7\FAy\E8^\B39\F4Qh1\CE\E9\0E\93\DE\FF\EC'\BD\A6\1AL\E0\92\\\D4\07\D2\A1\DD\12\83\D2\9Ay\B3<\FB\07\E3\18\1A\A3$\80\B4\CC\F4\C6\A5l%\D7\99\1A0\F0\A9\FC.\83D\ACdv4\B0\A6o Z\14\F2\07\A7oM\AB\F5\FC\9D\D6>\82H1%G\C9\0E\1D\DB\98\91V\F5\FEf\8DH\F0Ll,\96TC\ECv\F2\E1vh\C8\E1\DE\0D\8Eo\FC\15\D5\93\92\FE\CA\9B0a\03\0B\CA\99/\D3\15\E9f\81\BDV\17\14J.\F14\84U\9D\C0+\A7J\EE\F1|g\C7\F3\08\1Emk[\CC\81\91\\\94\1A\80\DA:\CE6\05\B0z\E8\D0\B4W\9C\F9\EA\F3&\1D\CB\F8\DDe\AF\F7\CD\F7\A1=\FC\9A;\08\B9\FA<\16IJ\F1\BAM1\DD^O=f\22\1B\08\91}\C6\AF\15\07<\A1\F7\07\FD>\90\BBoz\E9\E1/\B9\EE\91\8E\18\CC\8D\1D\22\A0\A0(%\FC\D4\94\D3\AA\CF\CE\D0\85\82o \9FU\0E\E5r\0D\17>4\C7,\0A\14E'\E2\C7/\86\A1U>x\03\E9x.\D3\99\EE\A0\14\F8\E3l\EB?\9A\F3\15\CE\D5v\F6:\860v\F9\880\F5JPX\80\E9\D9\D4\B94B\A6N\9C\1A\07\16\9E\EE\E4\88\04\8E\A8\E7\CD\E8G\1ETE\D2e\D8\EEK\BD\D0\85\AA\FB\06S\91~\E0Y Wj\EE\D8\9Fw\7F\D7@c\BB!uv\11'\CF\05\BBA0\98\BF\DC_\C6\A4\1E0\A1S\D46\7F.\86\D7\D9\95)\D5F\18`'\E4o\CB\F4\E2\FE\FF>\FF\15\C6\F21\F9*\C8\05N|.\92\C8AO\9E#!Mt\F8\C3D9\C2iK.v^D\12e1\98\BE\0A\10\11\12,g=\85.\D3\97T\1E\B6\AD\D9E\11S\04|?\F4\C9\AC\82\1B\84\F4 k\F1\F5r\04$\C1\D3BCR\9D-\D3\89\8E\D8(\B9\A2\B4\ED\BCv\87Ug9\D9\B7 j\EC\EC\B8\14Q\91\B9\96\0Fz:\12\DE\14;\83\CFA[]\FF3h\DBSd\93\B1\C3\8AF\A8D\9C\14\12l\92o\AE\C3E\B2\A1g\81<\22G\FD\A4zy\A8\0A\FBz\91n\E9S\EC\98\82W\AD\058U\C1\CE:\04M\12r7J6T?g\8A\EE\D9\F3\80\D5\D7\B8\FCnO`+Z\A4\C5\05\DB\E5\09\E3\EB\A2Q30\96F\01&\8F8\C9\972-\B4Y\15\158ff\FE\CB\EE\C1\F6N\B7\DF{c\E6?\E0\1C\97\ED\86\F3\D2\ADB) (\A6YX}\8F\\C\07\D1~\83\BA\9C\1B\FE\17\9E\C8\09c\9A-a3QF\01\A8\E9C\1EN\FEa\1A(\11epC\9F\FC!\1Dv{@\08\18\D3\E8\C2\E3\8C\E7'\C2\EC\B0\08>k\8Fwm\9E\A6\AB\CE\9A\F8\8Fw\B3\F4\E8\8B\E7\D9\A1\95@k\CA!\98\FF\DC\DC\96\C3\08\81r\9A\DD\E2\CF\95\99\A6\A3^\9E%`\A3\C39\F7Tl\F2u\A98\128MB\E8\EC\13%\A0\F8\04\B8\F6f\0BV\E1\FB&\03\E6\A5\F1M\7F\A5\9DXq\D8\C7j\BE\DC\90\89\B16\B4\B6\B4\BB\AFnC\10\A6\EA\EE\12\CB\08,Nf\F0\1F\F4\BF\D3\EBcH\D0\BE\8A\ED$\DB\0F#\1D.0\97\0F\D8\C6;\04/3x n\B13\03'\AC\0A7\151\EFMC\CC\A0I\80\E3\8C\C0\F3\F7-7\1D\D3\90_\AD1\B5\95\17iK\EC\84\9D+\8D\DD\9BX\04\BA(\0E(\C1Tl\B0%\0CO\98G\F7\93\C2\AE/m)\9C=\E3\B5\E3(C\14\E6\92Ly\90YuwVC\DA\AC\A9B\D7\CA\95s&T\1F:\8A7d\D7\CF\E11\F7@Y\FD\FF\EAr\FD\C4\DE\E3M\8A\F5\80\C0a!\BD\BD\8EB\D5L\E4\F4x1\CA\F1\EC|{\85j\05T\BE8T/\1F\DA\9F\98\E2y\D7B\CA\BA\85!\E2\CB+\AEJN5\FB\CF=\C5\AE'0\A9E\E6;C>5\E3\F2\0DS2+\F6\E6\C7\D5\02\82\03\C1\00\D4\04\9B\EF]X\B0\A3\AA\D2\ABSe\99\03IHM\F5\DF]\16\14\11`E\1B\FFJ`+7c\F6\A7\8A\A8\FF\08\97\08\FC\BB\B3 \A3\CD\D9X\DB\16\1B\88\02\1E\0FC\9B\16~\BE\B1\9C\13\10\DC\A1V\FF\A3\FF^i0\EE~v_\84\94\EB\8FX\F8\CF\BB\99n\F0\D82\F6\CEHo|\C8\8F\D3\86\22I\9F\DE\11\05\A4\DC\92\FB\0F\FA\09M\17\1A\E2vg@\A9[\1BTfH\F7\C3Y\D4\CFU\D0\7F;\B0\A2\D8\EC\B7\88\E7\B00rBe\E2\91\A7\9B\F6\07ERQ\AA\BE25\E4\88#\E7\CB<\1C\FB\0B\96\D5\B3\92\86y[G\93\D6\BD\C7!\17\D0\C9\C7i\84\80\98\AF,c\D1\EFn\CA\8402\83-I\BB\1F*\FE@|\03\D4E\DC\FE\94\F9\E46G\FA~.\93\03\F8\15\F9\CE\C3[v\10\EC\89\8C\CE%\A5w\9A\C5\1E\DD\07\1B[\ACo\DB\94\85\DF\02\22\D1\A9\01\8Ec\A1\EE\94\9C\DB\B4\1AC\E1\1FN/hP\0C/[\C5\1B\E1\8DK\E0c\8Dz0\BE\B7.\02\C6\02\AC\A8\B8e\C6(\EE\E4\EC\99\A1\9A\FD\1F\B5\85z\94\16\E2\E7t\06T\1B\D0\AFXNP~\D6\E41\D2\0C\D7\9D\E2\000\BE&0H\99\98XTZ\C4\0Al\A1\06\E98\E6y9\00\9E\B6\E3\F7\01\CF/\82^\C3!\1By\93\B5\E49\9D2\9Dr\A4\A8\C9\90\CE\AF\C0\00\AD \87&\C7\D3_.\F0^\F8\8B\85\A3\C6f\D8/\86\FE}\8D\22\A5mh>\87n\F7\F1\F0\07\C4\E3\F1\84\C4\93B\06 \80d\B3R\\\A5\CF\EE\FE\A4\09A\BE\AAxRv?\F7\E8\A1k\0A\BC\22\BE\DFr{\EA\90C\EE\C2\0B&\DC\02&\A7P\04z\06\91\AE\93\D5\D2\C9\A1\E1\FC\B9\8C\94\CA\A8\1C,W\97>P\ED\93Ez,Y{4\8F\CD\D6\17\93\D8\DE\E8\B0\9E'\15\C5\BB\A5\BB\C20\9B\C7'\02\18\D8\DB\A4\847d\F7\F7\F1\C8\86Ld\97\08\E9N\0E\B6\92\E9L{\7F\E1\CC\A0q\A74HF\BB7\CE\B0M9\A8\0E\AB\F6/|\88\AE\CF\90\C6\01\D3[7\E9\B1(B\14\BFY5\04\ABFn\A8)\E2zw\0E\07g\E4+\03\D2\026\16\D7\81]8\9Ch\9C\F5\9EI}\99\FD\CD\1D\D2\DF<6\19\85\AA\B10z!\B1\83\16\CF\D1u\A5\9D\D7\C1`\A8\DB\1E\B9>\9C\12B\E8GI\18\9F\\\12\D1i\D5}\A8<\DA5\8Alc\B8b\8Aa\FA\F2a\11\1E\B6\F3\\b\9D\A7b\0C\87\93\E2#l=\A9,K\D5\7F\FEr'6\06\CBe8\EF\13Wj\C9\C6OQ\D0\90\06\A0#e\95\CE\16\8F\8D\B2\F9\7F<,0Z8\F1byK\E5\D7\0A?\83_F&\97\B7\08\8C[\B8\02(\F2M\DF\93\97\C5\94K\0EB\C35\91kiav\7F\94\CF\0B\813\FF\F3\0C\C7\01\94\94\A9\ED\CDK\C8\CB\91\F9zG\CDy<\A6\DER\D2G\\\10b\BB\E52\DE\83\CF\A8R\B3\E7\F9\EC\174\BF3]\B2NV\F7)\D9\\\1B\83\01\BB\B9+\95R\08\AB\A4Q\03\A1\FBjP\CD\A8\9D\95o~\B1\80\1E\9D\81\01&Ax6<\8AD\F4\98\88\1C]\06\D3\D2\B2X}\A1E\1B\BF\8C\F6j\FA\FD\08)>\91W\F1= \EDIn\9CF\D5\08\8D\9B\F8\EF\A3:\98\CB\B4\CB[0% \CC\04\A1\EB\EB\EE\1B6\85\C1\93\16Z1\DF\D6\0Es\9Ecn\96\90T\D2\C2Si\93\D5T\CA\D8\84\F7\8F\9A\D1\80\0DW\A8&\BEEd\D5+\BBE\B5\08\B97W\02\82\03\C1\00\D10.\B7\9B\E7]\13t\1FR\F2\02\18\E9\07\87\9E\ED\DE\83\92\CFsa!\C4b0l\A26\BD\E2\C5\19\F6\DFQ{\CA\D4\E4Q\83I'\DD\BD\B0\10y9\DD\0E=e\ADm\A3\95R\85\DB\18\94`\AA\C0\C8\8B\DB\FE\F9\F0\86\F93\8A\D7\BE\8DC\83M\E4\17+FTD\1B\BERdG\02lJd\B4?!/\BB\E3r|&\14\DF\80P\D4\94\E9\C6}q\D8\AF\FBt63\BEXc\AD\CB\DF\C0s\9E\19\B0e\E1\D1\10D\F1\F0\08\A3\09%\EB\D5\CB\DD\98\DD\BC\09,\EF\C1\8DC\15A\C2\A1\847pZ\D5\F5\B2j\1F\BB\CC0\B9\D9\C76!\F3i>\918M\A5\C4\F7\84\904\0EG~&\F2\98%&\DA\F0NU\EAM\9B\8AJ\E1\1F\A0\07\90\9EYd\AE\D9\D6~r\A1\C4\EA}\BD\1F}+\D9,\DC\8B\C0\DAR\0C\D1\D0V\B7\93\C7&yq\D0\0D\AE\AA\A7\E4\C1Y'h\97\9A\FF=6\07Uw\07\97i\F3\99\91?c\FDp\8C\A1\EB\C5!\A3\FE\99\96\117\B9\E6\93\F8\D0\B1\A3Wz\A8c\DD\09V\B0;\A6Y\C7\89T\16\E9-x}\AFN\0A[b;\0B\CB$\89N\1C=\E1\BDZ>\C5\FD\15=\0883^7L\E3\E3\E9\C4\1D+\D4X%X#\8E\C6\83\9A\F3\9Ax\E9\A7\CA\D7\DD\89 n\02\EAk7t\DA\A0\C2Z+\80\1C(\91\0DPd\F0\12\E7\C4~\DD(;&\9A\F49V\A4rM\CBg<h\B2o\F0\D0\15\90\C8\08\BB\0B\08k\8A\DEAW\BCc\0E\00\8D\F8\DD\93\CEX{\A8\B9d&\06\E7q#\0FA\F1\B7\AEY.\D0s\C5\D9\DC\0E\1C\02Xi\B3\15m\96+\DB{;l82k\D8\08\B2\BD\A7IC\EB\90Bp\C5\BA\CDJD\8F\83\0D\17QZ\95\A2W\9A\16\19\91\BB\90\\*\16\E8&\10<\B7\10\\\F8\C5\15+pui\BA{=\0BW\AC9\12.\D6\D9\13t\8E\A8\0B\17\E1\03z\BA\1D\07\91\8C*:\8D\E0*\94\D4\165d\8B\92,/\A4\18\FE?\02\19\8C\B9\EB\AF\01\06\A87\7F\E2D\10\CE\EB\8D\D0s\C4\1E=,\AFw\B2\EF\E5\95\8B\DF\02\FC\93\B8\A9'\88\1D\1D\82\9F\B6\E4\12\05y\B6\1CA\0D\C1SI\8F=\C9\AD\84\CB\0B\88~\FEsY!d\C5PS\DC\98\C6C\B8\F5\C3\A1\F5\B2\D8\86\E9\AE\98\F9;\99\C0\E7\D7J\ED\AC\89\84\B0\8E\D3\AB\EC\03\02\12KD\17M\98&\1EQ\C5\BB\CD\DCP\AB\837I\90\1E4\AD\81\22l\E4\DD\19\01\09%-\9ER\90r\A1h=\0CI\99\19uZ\CA\08i\A1\D2\88\8C\EA\CF\9C\BC#\AD?\B9\FC\B90\0D\D6\D9e\0C~\99h5&\07\D1U\BF\8E\DE\E7\E7\01\CB\CA\0A9.\CC\19\ECw\F3\AB\B2\E6\0ET\06\01Pw\D3a6\05\90\E4\D8\C4\1D\F5\C7\FAe\F0Fj_\A7\C3\8Co\04\7F\CF\97\B9h\921\09\02\9F\22\C9\F8\E6~\A8\95[k\FE\9CNc-\8C\1AL\8B\14y\08\D5\96v\D1\B4/\AE]\91\88|\DD\D2\06\86\CF\0A\83o\DA\CAq|\E7\E54\A8\9AS\8D\A5\AA]\B5\17\814o\BE\BB\B6X\22\90\80\F6\9C\1C\B0y\8F\92[}\1Cq_\B4\876\BE\81\8DJ\FC(r\81\AF_\BD_\99\E3\C97\B0n\ADp\96\FA\E3\99\F7\08\14!!\B7\1A\AA\E8\07\B6\FD\A3z-\93d\8F\89,qIq\B8E\CA\E0|\00\8D\BD\B8\1C:\94\A2\A7m\0A.\84\AF\BD\AB\05\95d\8B\05\C8\C9N\EA\B5\96JG\DD\F2\CB\02\82\03\C0Y\B3\D9\85\DC\A8\B9\93\85\A2\BCy\FCrP\C1\A0\A5\DBq5\A11\BChN\D5\19\9E\0E2:\AD@\9E\82<\1E+4;\C92a\07^F\A9\BE\BEs\0C\12\EFRh\82\E2\0B\12t\FC\10\\\C0\B5\98M\86\BB\8C@\15\A1nFs.\D6\99kP\AB\04\1A_\F4\FA\CBK\AD\C4^b\A7H\D4R\85\DC*\85\9B\EE\08\A5\AA\AA\E8D\F0\ED\89!\E4\B4\AB<\0DS~S\DD\ACG\DAwy_xz\80\84FP\AA\DB;\8Ck\DA\B0\AC\0A\D3L\E4n\87\D1\B2Z\D5\98\AE\CB~\C2\19\DCSd\86L{\E0c\22\944\AD\15\DC\D8\A8_\C6X\F6r4\DD\FB\85\8A\D9\A3\FB;\AD]\F0\1A\0B\A8\91\E7}&'8\F8\E0I\1BV\C5[\E3\1C{\A3Sm\22\FA\D7c_\F0\CB\92I\01T\E5w[\D3\AB\CE\B8:[\B8\07@FQ\E4Y\A2EA\CC\81l\E3\A6\B3\A00Jg\10\ED\C0\8A\CD\FC\A5D\9BY\19JC\8D\EC\00\D8m\F9\F0-\D9U\FC\05\E2\12HM\D6}\ECA\C4\9E\E2\ED\84\14)\0E[\81\0B\B0\87\8A\D35\\\AD\DB\CC\A1<\CB\8B#Ui\F1\83\84\816\AE\D5\F3\98\B6\B2\B5\A1ym\80\8F.%qN\16\FF\A0|\A4b\8CD\85d\90|\AC\106\F2\F2\FB +\A1'\D0\CC'\FD\B0\BA>7\B1\A8\9D<\82c\D0\16mz\DD.\EA\E5\87\D6dr\DB`S8\18f\1D%\F6\08\92\7Fh[y\07\DE\93\EE\F8\8F\CE(\CF\B1[CQ\DF\F5\AC\E8\9C\95\14\8Ag\E1%\FE\11\A2@\F8\DD\CF\F5\17\94\B6\88\10\A2\90X\EF\AFs\F8|\9B 0y\CA?\A9\22@\FD\CC\B0]\0D\97k\C0u53\C5vEn\9Bx\E7\B4\04\B3\BA;\93\B1\A9\8F\A1$]\1C\0Ef\C0\C6\CC\D6\B7\88\9D\B8E\E3\AA\C9l\FD7\DC\85\D5I\FD\EF\EB\F9z?zO\86I\AA\9F\08\12\0B\115\\\D5\D3\DA\14P\03,$&\0E)\18\CC\1D\0A|\94\8B\C0\A0?\EA\F8\F8\A9\1De1o;\A6\D0\FC&\B0N:f\E72\10.\84G\AD\A9\18\FC\A3\8Bt\84O\D4%\93\0F\DB.\AE\88\8E(\F8\0F\AA`\D4\BE\ADf\0C\0D\01\BD\8D\C4\FCH\EFx\144\EE\B3\BC\D4\BB\1F|\12\\\9B\EBw>,n1Y\E6x\C5\E8\A4\DD\F1\EF]'E1\13\D0!\A1\13\CE\AC~\BB\FB2\EBv1\C4\BA\DF\FBZ\1B\C9\9Et\A0\9E&\82\D5n\1D\C3\0E\D1m\DBC\B3\0B\14\CB\F1\ADb4I\B8\D3\08\CA\93\F1B\B2K#y\93\DE\18X\F3f\FA\DC\AB\CA3\22+\\\8C\12\C1{.Rr\A7xJI\A1S\02v-.\F8C<\E8\FA\B7\FF9\EDt\9E\11a3\DE*U\E6J\E7\97\A6\B2\C3@ARf\CF\BF\F8\8E\08\EA\96M\03\C9\BE<N6\8CoM\1E\CD1mS\EA\9E\F0\8E5\977T\E9\0F\B8#%i[\B5\FF\C3Z-\10j\C0\B8\EE\0D1[\E4i@b\A7\1B\16\FA\D6\B8\BA\C8j\A3)\DD\9BM\D7\96\EF1t\AC7\10\910\0C\15?\09\B6}\22\FB\8Co\C3\93\A3\98\A6#\A4U\E0\9E#\06\A9x\E9\B3\88\C9\B7\83\05F\11:\0A\B9t[\A0\B5\06\96\86\B6\F4\9D\0D\86C\A8@K\08\93|\AD\B0P\B4\D0\E7\AD\D0T^\15\AF\AD4\12\86\B3); \C9\AD\EB\C2e\F3\\-\E5\FF\FD\81y\F5\11o\F7\CA\0Cv\F0\D4\02\9D\B7v9m2j\B80\A4\01\CC\10\EF\B1\0EA\22\82[\22\CB2\19.\A3\0A\CE\05\DD\E8JX\92\E1\02\82\03\C0\22\0F\95[\C2\1F\DE\F0\DE\F4\86\BD\EF\07}R\03\8C&1\17\FD\\\97\ED\D5\E0\B3\18-h\10?\C4\DF\D1\05x\81=\05\DE\BA:g\85\0E\DF\B5\16(\E8\84:q* \17(\05\FD\B7M\22J\93FV'C\C0:\16\FF=a\CC\CB\CE\AC\A8S:\0D\F4-\D2s\F2d\A0\1E`S\EC\0D\FF\E0\00\10\FB\A4W\D3\FC\E4\E0\ECD\0B\1C\059\A4\13\87)\11\9D\EA\E9d\A9\1Cv:e\0B\FD\EDwFO\CD\0Bc\C4\83\0BVy\D3g\01\11\02\D9P\D8#\F4\B6\02L\AE\B5\C9h\1B\873\BB\DCd\0E24\B2%\AAv\DD~\C3FQ\1C\C1\D0\05\09l'\D3\CF3z\B9&$#J\93\9FK\96\C7\E2\B2QBM]\D9su\CE#(V^\E7\96X\04\FD3\93\08Ab\02~\C9\C6Ud\19\DA9\B8]\09G\F3\DDw\EE\EA5s\95\DB\18M\D1\FE\EE@1*\22\91i\D6\ED\9CT\14saa\E7\1D4\96G\FF(zH\A3\F4\CDd#\E2R/ \8F\04\B3\DC\F0)g\88vy\DB\86\A7\95\F0\15\81\BB\98\EE\FFU|\B0\EEge\FD\F2)\0F\85Q\F9\AC\\UZ\DE@bXU\9F\09L.(u\BCH\E2\97\85\B3\83\EB!I!\D4\EDtO\C1l4\8C\11\B0\93A\99#.\A4\C1\9F4td\BB\D7O\8F\9F:\0CO^\DDA\07\F1\FDZ\9D\E6w\D8~q{\AD\F7v\13q\90\B3\0FF\8E\EE{3\97]!;\A0X\9E\B7\870\8F\C1#,\DE\F7\0D\A9\D6P\EB5z\82\AB\22I\86\D4a\C7\C2Nw\FC\16\0B\AF\81jG\EA\AC~QLV0!FA\C3\92`\99O\886;'\B4\B2~D/\DD\95\E4^\16\1F\A72k`$\0F\F2\E65<\0C>\B5\D6\DDc\E2v58y\BF\A5#\A4\DD\EB\01H\D0`\86\118_\9Ek\00g\D2[A\0A^\13\0F\A1\9E\90\85\A6\7F\E5K\9E\93N[\1FGb\B0#\BE\82\A9\D9\B6.\FD\B1\10\CA\E0\C9]\F6\85\18l\9C\1D\1F|\F6U\09\80\CF\AC\FE7jO\96\AA@y\8BJ\F2\96y\12\1A&\87\065M\D4>\149\E5l9\0F\84\B3_\ED\F4\FF\89R\05\00\F1\D1\C3\CFT\10$|\A6\B5\95\A8n\13>J@l\F9c\90DR\07S\B7Q\D9\18G.\B0N\0F\09\99:\97&S\A6\02\06\0E\93\E1\0B\C5\A9\14\D3\D6\8A)u\CD\B6{d|\DD~\B4\0A\87HJ\1B\0EtL\D3\0E\96\0ES\C4={\1C\87j\15\D8w\BA\E6\A0/,\1A\9D\DEy\FD\ABD\80\F07\9A;\F8\DE=)\CB\89dKW\E7k\84\09'\17/\B2\BA=\09\C9<\89\E6\19s\83\F7\C6\19\18\96\B2}\1E\9Fp\1F\FC\1F\E2\B5i\1E\F4e\91\CEK\DCtI!d\8B3P\D2\C13b[\DE\0Ar\BE\C0\05Q\15\80\ED2:d\A2sh[\16\CFp\\\98\E5gE`W+G\0A\22s\C3V3>\14\1D\0C\D1\03\08\92!+\A9nk\F9\0C\1E\86\DD\B5\BB\A4\A5\82\99\98I6\EC\98\98\95\AC\C2\A0\1F\A5~g\D1\CFj\F4\16\08z\8D\0B\AE\12Q\E6\8E\E6\CD\A1\AAm\E4T\D4i\1B\09j\BA^\0B\11\9C\83\B3\\g\BB-\F8f\1C3\B8\22X\10\96\E9\99\AF\0B*\F1\E0\CBV\FBm\04@\EC7g\1E\08z\1C\E9\D8T\F7\D4\C7<E#+v\D2b\C2S\CE\FE\02\C4\D9\F6<\EDIG!\F9\03:\A0\16:\FE\0C/T~\85){\C0\AF\A8]1%\DA\A7\E3\92\1Bd\01\1B?nG\C5Z\84R\17\02\82\03\C1\00\81\99.rAn\86\EBoB\D18n\AA\1A\D5\0A\ADQ\B1\CE\D65\BE4\D8\C1\E4_\DF.\E4\90\F2a!F\C6\FE\AB\0Fl\97x\CDU\86\83a\99I\14\86\C6\86\F1Af\C99R\99I\07\D6\9D\B7@4_\E7:\FA\95\EB\A1\03\B7Rq\930\0BQX\82\07/D\A9O\9B\1B\F3\D6!=h\EF?\AF\C2o\A0\D5+\B8s\84g6\8B\A4%\E0\86\D9\14\\l\D8a\E1\0Al\AF\BB\9C\F6t\CAZ\04\AC\85\C1\1BM\F2\07\B6\1E\97{u\DF\9B\8A1\C6\90\D5\8D9\C2T\F4\E2\83W\12\19\F5\B2\D2S\81m\F0\09\C9\80\8B\07|Y\CDx\00\D6D\7F\E4\DBw\02\00%y\91\C9\DE\D0\ED?\FC76\EA\F0VP\E78\CA\E1g\12\96U>\FF\97\E5\A7\03[r\80\D6\A5#9x\07\C8\83\19t\FBy\C2\9E\BD\F9\AF\09\0F\BD=4\E8D\89\B1\F1+\A5\FF\22\C9G\E21\B5k\8Ae_\81_\89\B0\03]S\0E\DD\FB\E5p\AA\D27M\A1|\F2\E4\7F\F1J\AF\12\D1\83\DC\B2\9E\C1\95=\04\9F\A3\AD\CCx\14\9A\F9X9\08\15\DA\1B\94P-D\C0#\1C6_\16\08\A3\DF\9EO\BB\07\CD\E3\8C\BF\F1\C3>\98\F8IyX\C9\0FG\C0\AB/!c\F6\E6\FE\8A\EA\BC2c\CAu\F8\A4\1Bl\FE\9Anh\1FHY\FB4C\10\D5\0D\80T\CBg!\C7\13\858\0C\F9@..J\05\9EQ\AE\DD\BA#\83f*\BF\7F\CA\9Cl-k}hR\81V/\EA\F9\E7\F1U\16\FC)\E2\A5\1E\0A\06\E0\85N\A6] \9D+\A2\AD\AA\D6\9B\D2\98)E\\U\C0\91\A2e\CD\AC\C6\1AS\A1F\13\F9\FE\1A\F6\DF\A5\1AX|\81.FF\F7/\D6\AA!\B0\0E~\AC\B8\C6vb\82;\0A6\BE\97\16\D5yU\15d*\BE\19N\93;D|\E2\FC\18N\837\FB&xm$kH!g\DE\F5\00\22\9A\EC@\16\96\8A?\D5\A6^\03\84\BB\15MUq\00\90\C2\96%\01\AB\E6GDo\F9S\80+\A8\83\C8\14w\13\00f\EE~z\A0(e\F31\B6\AC\D7\87\84)\ED[\CDt\C0\89Q\11\9A\D5{\E0\9C\D0\8Dr\E3w\DA\0A\C2\DCo\ADI\03\FA\E6~\A6$2\E6\8F\D9p\FAYp\A9\A3\08}\89\C4\96a\C2\F5\E5\B5;\0D\EC\B8\9C\EE\09w'\BD5f\90\9EF\F7\BD\A6\C51\D4jR\17]\0A\0E,4zj!\ACB\F01\DEH\E0'\D0y\C9\06\94{QK[\02j\19\BAqE\9C\DF\E60\9E\AA\AD\A1\87\F67\DE\A2\97h -Z\DC\DD\91c_y\DA\99 :K\E5C\0E\12pW\91\FA\EE\C4\B6\B6\B1\F1\06\BD\CF\8D*\05\C0\07#\84\85\EF\9C\BBo_J\9A'\9F\9F2\97\E8$\B9d,9\FF/K\C4~e\FE\BB\\\A0\B2n\C4\B6\93+Q\9E.\1F\D8\CF`\E0u\15\F9\A0g\99\88+v\CEAB\10)\89\BF\CA\B7a\08\94\EE\A0\B3:\09\C5o\04\F9\1B\B5d\99\08\E4\CC\CE\DFqe\8Amb\DEv\1Dmkx\222c\DDS}\EC\ED\9D\82\A9,\\\8A\17\DD\85\F9\D2\ACn\98`.\08\D4\06v\F4\97\CA\B1rP[\83\EA\BB9\0F\18\B3\B8\03\EE|\84\A9i\CD\1D\BD\E2\B7\CE\E2o\03IRg\A0\1B#C\92,|;e\E8a\99\DE\B5\F1cs\92lp\8B\83\10\B4\06,\99\12s\EC\87\92\09g\96\D6\9C\9F5HH;D\00s\1CY\EB\81{\D1\DAv\CF\C2M\F1\A2[/_\91)n\087\D6\AA\D2\F8O^\00\16R", align 16
@speed_main.ffdh_params = internal unnamed_addr constant [5 x %struct.ffdh_params_st] [%struct.ffdh_params_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1126, i32 2048 }, %struct.ffdh_params_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 1127, i32 3072 }, %struct.ffdh_params_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 1128, i32 4096 }, %struct.ffdh_params_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 1129, i32 6144 }, %struct.ffdh_params_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 1130, i32 8192 }], align 16
@.str.57 = private unnamed_addr constant [9 x i8] c"ffdh2048\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"ffdh3072\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"ffdh4096\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ffdh6144\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"ffdh8192\00", align 1
@speed_main.dsa_bits = internal unnamed_addr constant [3 x i32] [i32 512, i32 1024, i32 2048], align 4
@speed_main.ec_curves = internal constant [24 x %struct.ec_curve_st] [%struct.ec_curve_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 709, i32 160, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 409, i32 192, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 713, i32 224, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 415, i32 256, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 715, i32 384, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 716, i32 521, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 721, i32 163, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i32 726, i32 233, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 729, i32 283, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 731, i32 409, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 733, i32 571, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 723, i32 163, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 727, i32 233, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i32 730, i32 283, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i32 732, i32 409, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 734, i32 571, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i32 927, i32 256, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i32 928, i32 256, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i32 931, i32 384, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i32 932, i32 384, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i32 933, i32 512, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i32 934, i32 512, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 1034, i32 253, i64 0 }, %struct.ec_curve_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 1035, i32 448, i64 0 }], align 16
@.str.62 = private unnamed_addr constant [10 x i8] c"secp160r1\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"nistp192\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"nistp224\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"nistp256\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"nistp384\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"nistp521\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"nistk163\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"nistk233\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"nistk283\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"nistk409\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"nistk571\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"nistb163\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"nistb233\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"nistb283\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"nistb409\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"nistb571\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"brainpoolP256t1\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"brainpoolP384t1\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"brainpoolP512t1\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@speed_main.ed_curves = internal unnamed_addr constant [2 x %struct.ec_curve_st] [%struct.ec_curve_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 1087, i32 253, i64 64 }, %struct.ec_curve_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 1088, i32 456, i64 114 }], align 16
@.str.86 = private unnamed_addr constant [8 x i8] c"Ed25519\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Ed448\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"CurveSM2\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"apps/speed.c\00", align 1
@eddsa_choices = internal constant [2 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.248, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 1 }], align 16
@.str.91 = private unnamed_addr constant [6 x i8] c"ed448\00", align 1
@.str.92 = private unnamed_addr constant [74 x i8] c"assertion failed: strcmp(eddsa_choices[EdDSA_NUM - 1].name, \22ed448\22) == 0\00", align 1
@ecdh_choices = internal constant [24 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.250, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.251, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.252, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.253, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.254, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.255, i32 0, i32 0), i32 6 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.256, i32 0, i32 0), i32 7 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.257, i32 0, i32 0), i32 8 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.258, i32 0, i32 0), i32 9 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.259, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.260, i32 0, i32 0), i32 11 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.261, i32 0, i32 0), i32 12 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.262, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.263, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.264, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), i32 17 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i32 19 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), i32 20 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.270, i32 0, i32 0), i32 21 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.271, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i32 23 }], align 16
@.str.94 = private unnamed_addr constant [9 x i8] c"ecdhx448\00", align 1
@.str.95 = private unnamed_addr constant [73 x i8] c"assertion failed: strcmp(ecdh_choices[EC_NUM - 1].name, \22ecdhx448\22) == 0\00", align 1
@ecdsa_choices = internal constant [22 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.272, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.273, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.274, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.275, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.276, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.277, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.278, i32 0, i32 0), i32 6 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.279, i32 0, i32 0), i32 7 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.280, i32 0, i32 0), i32 8 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.281, i32 0, i32 0), i32 9 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.282, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.283, i32 0, i32 0), i32 11 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.284, i32 0, i32 0), i32 12 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.285, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.287, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.289, i32 0, i32 0), i32 17 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.290, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.291, i32 0, i32 0), i32 19 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.292, i32 0, i32 0), i32 20 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i32 21 }], align 16
@.str.97 = private unnamed_addr constant [14 x i8] c"ecdsabrp512t1\00", align 1
@.str.98 = private unnamed_addr constant [82 x i8] c"assertion failed: strcmp(ecdsa_choices[ECDSA_NUM - 1].name, \22ecdsabrp512t1\22) == 0\00", align 1
@sm2_choices = internal constant [1 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i32 0 }], align 16
@.str.100 = private unnamed_addr constant [9 x i8] c"curveSM2\00", align 1
@.str.101 = private unnamed_addr constant [73 x i8] c"assertion failed: strcmp(sm2_choices[SM2_NUM - 1].name, \22curveSM2\22) == 0\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.102 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@usertime = internal unnamed_addr global i1 false, align 4
@.str.103 = private unnamed_addr constant [47 x i8] c"%s: -evp option cannot be used more than once\0A\00", align 1
@evp_md_name = internal unnamed_addr global i8* null, align 8
@.str.104 = private unnamed_addr constant [39 x i8] c"%s: %s is an unknown cipher or digest\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"%s: %s is an unknown digest\0A\00", align 1
@evp_mac_mdname = internal unnamed_addr global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i64 0, i64 0), align 8
@.str.106 = private unnamed_addr constant [29 x i8] c"%s: %s is an unknown cipher\0A\00", align 1
@evp_mac_ciphername = internal unnamed_addr global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.294, i64 0, i64 0), align 8
@decrypt = internal unnamed_addr global i1 false, align 4
@.str.107 = private unnamed_addr constant [50 x i8] c"%s: async_jobs specified but async not supported\0A\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"%s: too many async_jobs\0A\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"%s: Maximum offset is %d\0A\00", align 1
@mr = internal unnamed_addr global i1 false, align 4
@lengths = internal unnamed_addr global i32* getelementptr inbounds ([6 x i32], [6 x i32]* @lengths_list, i64 0, i64 0), align 8
@doit_choices = internal constant [37 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.295, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.296, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 9 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.299, i32 0, i32 0), i32 6 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0), i32 7 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.301, i32 0, i32 0), i32 8 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.302, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.303, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.305, i32 0, i32 0), i32 12 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i32 10 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.306, i32 0, i32 0), i32 11 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.294, i32 0, i32 0), i32 19 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.307, i32 0, i32 0), i32 20 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.308, i32 0, i32 0), i32 21 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.309, i32 0, i32 0), i32 22 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.310, i32 0, i32 0), i32 23 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.311, i32 0, i32 0), i32 24 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.312, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.313, i32 0, i32 0), i32 15 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.314, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.315, i32 0, i32 0), i32 16 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.316, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.317, i32 0, i32 0), i32 13 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.318, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.319, i32 0, i32 0), i32 14 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.320, i32 0, i32 0), i32 17 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0), i32 17 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.322, i32 0, i32 0), i32 17 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.323, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.324, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.325, i32 0, i32 0), i32 18 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.326, i32 0, i32 0), i32 26 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 27 }], align 16
@.str.110 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"sha\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"openssl\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@rsa_choices = internal constant [7 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.327, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.328, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.329, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.330, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.331, i32 0, i32 0), i32 4 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.332, i32 0, i32 0), i32 5 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.333, i32 0, i32 0), i32 6 }], align 16
@.str.114 = private unnamed_addr constant [5 x i8] c"ffdh\00", align 1
@ffdh_choices = internal constant [5 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 2 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 3 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 4 }], align 16
@.str.115 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@dsa_choices = internal constant [3 x %struct.string_int_pair_st] [%struct.string_int_pair_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.334, i32 0, i32 0), i32 0 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.335, i32 0, i32 0), i32 1 }, %struct.string_int_pair_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.336, i32 0, i32 0), i32 2 }], align 16
@.str.116 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"camellia\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"ecdsa\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"eddsa\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"%s: Unknown algorithm %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"-aead can be used only with an AEAD cipher\0A\00", align 1
@.str.124 = private unnamed_addr constant [26 x i8] c"%s is not an AEAD cipher\0A\00", align 1
@.str.125 = private unnamed_addr constant [56 x i8] c"-mb can be used only with a multi-block capable cipher\0A\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"%s is not a multi-block capable\0A\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"Async mode is not supported with -mb\00", align 1
@.str.128 = private unnamed_addr constant [35 x i8] c"Error creating the ASYNC job pool\0A\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"array of loopargs\00", align 1
@.str.130 = private unnamed_addr constant [35 x i8] c"Error creating the ASYNC_WAIT_CTX\0A\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"input buffer\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"ECDH secret a\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"ECDH secret b\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"FFDH secret a\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"FFDH secret b\00", align 1
@names = internal unnamed_addr global [29 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)], align 16
@.str.136 = private unnamed_addr constant [5 x i8] c"GMAC\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.138 = private unnamed_addr constant [67 x i8] c"You have chosen to measure elapsed time instead of user CPU time.\0A\00", align 1
@testnum = internal unnamed_addr global i32 0, align 4
@speed_main.hmac_key = internal constant [17 x i8] c"This is a key...\00", align 16
@.str.139 = private unnamed_addr constant [10 x i8] c"HMAC name\00", align 1
@evp_hmac_name = internal unnamed_addr global i8* null, align 8
@.str.140 = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"des-cbc\00", align 1
@algindex = internal unnamed_addr global i32 0, align 4
@.str.144 = private unnamed_addr constant [13 x i8] c"des-ede3-cbc\00", align 1
@speed_main.gmac_iv = internal constant [13 x i8] c"0123456789ab\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"aes-128-gcm\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@lengths_list = internal constant [6 x i32] [i32 16, i32 64, i32 256, i32 1024, i32 8192, i32 16384], align 16
@aead_lengths_list = internal constant [6 x i32] [i32 2, i32 31, i32 136, i32 1024, i32 8192, i32 16384], align 16
@.str.148 = private unnamed_addr constant [29 x i8] c"\0AEVP_CIPHER_CTX_new failure\0A\00", align 1
@iv = internal global [32 x i8] zeroinitializer, align 16
@.str.149 = private unnamed_addr constant [28 x i8] c"\0AEVP_CipherInit_ex failure\0A\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"evp_cipher key\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@.str.152 = private unnamed_addr constant [53 x i8] c"\0ARequested CMAC cipher with unsupported key length.\0A\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"CMAC name\00", align 1
@evp_cmac_name = internal unnamed_addr global i8* null, align 8
@.str.154 = private unnamed_addr constant [9 x i8] c"cmac(%s)\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.156 = private unnamed_addr constant [52 x i8] c"RSA sign setup failure.  No RSA sign will be done.\0A\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"+R1:%ld:%d:%.2f\0A\00", align 1
@.str.159 = private unnamed_addr constant [36 x i8] c"%ld %u bits private RSA's in %.2fs\0A\00", align 1
@rsa_results = internal unnamed_addr global [7 x [2 x double]] zeroinitializer, align 16
@.str.160 = private unnamed_addr constant [56 x i8] c"RSA verify setup failure.  No RSA verify will be done.\0A\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"+R2:%ld:%d:%.2f\0A\00", align 1
@.str.163 = private unnamed_addr constant [35 x i8] c"%ld %u bits public RSA's in %.2fs\0A\00", align 1
@.str.164 = private unnamed_addr constant [52 x i8] c"DSA sign setup failure.  No DSA sign will be done.\0A\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"+R3:%ld:%u:%.2f\0A\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"%ld %u bits DSA signs in %.2fs\0A\00", align 1
@dsa_results = internal unnamed_addr global [3 x [2 x double]] zeroinitializer, align 16
@.str.168 = private unnamed_addr constant [56 x i8] c"DSA verify setup failure.  No DSA verify will be done.\0A\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"+R4:%ld:%u:%.2f\0A\00", align 1
@.str.171 = private unnamed_addr constant [33 x i8] c"%ld %u bits DSA verify in %.2fs\0A\00", align 1
@.str.172 = private unnamed_addr constant [56 x i8] c"ECDSA sign setup failure.  No ECDSA sign will be done.\0A\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"+R5:%ld:%u:%.2f\0A\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"%ld %u bits ECDSA signs in %.2fs\0A\00", align 1
@ecdsa_results = internal unnamed_addr global [22 x [2 x double]] zeroinitializer, align 16
@.str.175 = private unnamed_addr constant [60 x i8] c"ECDSA verify setup failure.  No ECDSA verify will be done.\0A\00", align 1
@.str.176 = private unnamed_addr constant [17 x i8] c"+R6:%ld:%u:%.2f\0A\00", align 1
@.str.177 = private unnamed_addr constant [35 x i8] c"%ld %u bits ECDSA verify in %.2fs\0A\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"ECDH key generation failure.\0A\00", align 1
@.str.179 = private unnamed_addr constant [27 x i8] c"ECDH computation failure.\0A\00", align 1
@.str.180 = private unnamed_addr constant [32 x i8] c"ECDH computations don't match.\0A\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.182 = private unnamed_addr constant [17 x i8] c"+R7:%ld:%d:%.2f\0A\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"%ld %u-bits ECDH ops in %.2fs\0A\00", align 1
@ecdh_results = internal unnamed_addr global [24 x [1 x double]] zeroinitializer, align 16
@.str.184 = private unnamed_addr constant [16 x i8] c"EdDSA failure.\0A\00", align 1
@.str.185 = private unnamed_addr constant [50 x i8] c"EdDSA sign failure.  No EdDSA sign will be done.\0A\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"+R8:%ld:%u:%s:%.2f\0A\00", align 1
@.str.187 = private unnamed_addr constant [32 x i8] c"%ld %u bits %s signs in %.2fs \0A\00", align 1
@eddsa_results = internal unnamed_addr global [2 x [2 x double]] zeroinitializer, align 16
@.str.188 = private unnamed_addr constant [54 x i8] c"EdDSA verify failure.  No EdDSA verify will be done.\0A\00", align 1
@.str.189 = private unnamed_addr constant [20 x i8] c"+R9:%ld:%u:%s:%.2f\0A\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"%ld %u bits %s verify in %.2fs\0A\00", align 1
@.str.191 = private unnamed_addr constant [24 x i8] c"TLSv1.3+GM+Cipher+Suite\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"SM2 init failure.\0A\00", align 1
@.str.193 = private unnamed_addr constant [46 x i8] c"SM2 sign failure.  No SM2 sign will be done.\0A\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"+R10:%ld:%u:%s:%.2f\0A\00", align 1
@sm2_results = internal unnamed_addr global [1 x [2 x double]] zeroinitializer, align 16
@.str.195 = private unnamed_addr constant [50 x i8] c"SM2 verify failure.  No SM2 verify will be done.\0A\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"+R11:%ld:%u:%s:%.2f\0A\00", align 1
@.str.197 = private unnamed_addr constant [62 x i8] c"WARNING: the error queue contains previous unhandled errors.\0A\00", align 1
@.str.198 = private unnamed_addr constant [53 x i8] c"Error while initialising EVP_PKEY (out of memory?).\0A\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"Error while allocating EVP_PKEY_CTX.\0A\00", align 1
@.str.200 = private unnamed_addr constant [40 x i8] c"Error while initialising EVP_PKEY_CTX.\0A\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"Error setting DH key size for keygen.\0A\00", align 1
@.str.202 = private unnamed_addr constant [30 x i8] c"FFDH key generation failure.\0A\00", align 1
@.str.203 = private unnamed_addr constant [39 x i8] c"FFDH derivation context init failure.\0A\00", align 1
@.str.204 = private unnamed_addr constant [43 x i8] c"Assigning peer key for derivation failed.\0A\00", align 1
@.str.205 = private unnamed_addr constant [40 x i8] c"Checking size of shared secret failed.\0A\00", align 1
@.str.206 = private unnamed_addr constant [45 x i8] c"Assertion failure: shared secret too large.\0A\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"Shared secret derive failure.\0A\00", align 1
@.str.208 = private unnamed_addr constant [27 x i8] c"FFDH computation failure.\0A\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"FFDH computations don't match.\0A\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"+R12:%ld:%d:%.2f\0A\00", align 1
@.str.211 = private unnamed_addr constant [31 x i8] c"%ld %u-bits FFDH ops in %.2fs\0A\00", align 1
@ffdh_results = internal unnamed_addr global [5 x [1 x double]] zeroinitializer, align 16
@.str.212 = private unnamed_addr constant [13 x i8] c"version: %s\0A\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"built on: %s\0A\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"options:\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"+H\00", align 1
@.str.219 = private unnamed_addr constant [59 x i8] c"The 'numbers' are in 1000s of bytes per second processed.\0A\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"type        \00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"%7d bytes\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"+F:%u:%s\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"%-13s\00", align 1
@results = internal unnamed_addr global [29 x [6 x double]] zeroinitializer, align 16
@.str.226 = private unnamed_addr constant [9 x i8] c" %11.2fk\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c" %11.2f \00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c"%18ssign    verify    sign/s verify/s\0A\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"+F2:%u:%u:%f:%f\0A\00", align 1
@.str.232 = private unnamed_addr constant [40 x i8] c"rsa %4u bits %8.6fs %8.6fs %8.1f %8.1f\0A\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"+F3:%u:%u:%f:%f\0A\00", align 1
@.str.234 = private unnamed_addr constant [40 x i8] c"dsa %4u bits %8.6fs %8.6fs %8.1f %8.1f\0A\00", align 1
@.str.235 = private unnamed_addr constant [39 x i8] c"%30ssign    verify    sign/s verify/s\0A\00", align 1
@.str.236 = private unnamed_addr constant [17 x i8] c"+F4:%u:%u:%f:%f\0A\00", align 1
@.str.237 = private unnamed_addr constant [47 x i8] c"%4u bits ecdsa (%s) %8.4fs %8.4fs %8.1f %8.1f\0A\00", align 1
@.str.238 = private unnamed_addr constant [18 x i8] c"%30sop      op/s\0A\00", align 1
@.str.239 = private unnamed_addr constant [17 x i8] c"+F5:%u:%u:%f:%f\0A\00", align 1
@.str.240 = private unnamed_addr constant [33 x i8] c"%4u bits ecdh (%s) %8.4fs %8.1f\0A\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"+F6:%u:%u:%s:%f:%f\0A\00", align 1
@.str.242 = private unnamed_addr constant [47 x i8] c"%4u bits EdDSA (%s) %8.4fs %8.4fs %8.1f %8.1f\0A\00", align 1
@.str.243 = private unnamed_addr constant [20 x i8] c"+F7:%u:%u:%s:%f:%f\0A\00", align 1
@.str.244 = private unnamed_addr constant [45 x i8] c"%4u bits SM2 (%s) %8.4fs %8.4fs %8.1f %8.1f\0A\00", align 1
@.str.245 = private unnamed_addr constant [17 x i8] c"%23sop     op/s\0A\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"+F8:%u:%u:%f:%f\0A\00", align 1
@.str.247 = private unnamed_addr constant [28 x i8] c"%4u bits ffdh %8.4fs %8.1f\0A\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"ecdhp160\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"ecdhp192\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"ecdhp224\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"ecdhp256\00", align 1
@.str.253 = private unnamed_addr constant [9 x i8] c"ecdhp384\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"ecdhp521\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"ecdhk163\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"ecdhk233\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"ecdhk283\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"ecdhk409\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"ecdhk571\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"ecdhb163\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"ecdhb233\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"ecdhb283\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"ecdhb409\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"ecdhb571\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"ecdhbrp256r1\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"ecdhbrp256t1\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"ecdhbrp384r1\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"ecdhbrp384t1\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"ecdhbrp512r1\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"ecdhbrp512t1\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"ecdhx25519\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"ecdsap160\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"ecdsap192\00", align 1
@.str.274 = private unnamed_addr constant [10 x i8] c"ecdsap224\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"ecdsap256\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"ecdsap384\00", align 1
@.str.277 = private unnamed_addr constant [10 x i8] c"ecdsap521\00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c"ecdsak163\00", align 1
@.str.279 = private unnamed_addr constant [10 x i8] c"ecdsak233\00", align 1
@.str.280 = private unnamed_addr constant [10 x i8] c"ecdsak283\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"ecdsak409\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"ecdsak571\00", align 1
@.str.283 = private unnamed_addr constant [10 x i8] c"ecdsab163\00", align 1
@.str.284 = private unnamed_addr constant [10 x i8] c"ecdsab233\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"ecdsab283\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"ecdsab409\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"ecdsab571\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"ecdsabrp256r1\00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"ecdsabrp256t1\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"ecdsabrp384r1\00", align 1
@.str.291 = private unnamed_addr constant [14 x i8] c"ecdsabrp384t1\00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"ecdsabrp512r1\00", align 1
@.str.293 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.294 = private unnamed_addr constant [12 x i8] c"aes-128-cbc\00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c"md2\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"mdc2\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c"whirlpool\00", align 1
@.str.302 = private unnamed_addr constant [7 x i8] c"ripemd\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"ripemd160\00", align 1
@.str.305 = private unnamed_addr constant [4 x i8] c"rc4\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"des-ede3\00", align 1
@.str.307 = private unnamed_addr constant [12 x i8] c"aes-192-cbc\00", align 1
@.str.308 = private unnamed_addr constant [12 x i8] c"aes-256-cbc\00", align 1
@.str.309 = private unnamed_addr constant [17 x i8] c"camellia-128-cbc\00", align 1
@.str.310 = private unnamed_addr constant [17 x i8] c"camellia-192-cbc\00", align 1
@.str.311 = private unnamed_addr constant [17 x i8] c"camellia-256-cbc\00", align 1
@.str.312 = private unnamed_addr constant [8 x i8] c"rc2-cbc\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"rc2\00", align 1
@.str.314 = private unnamed_addr constant [8 x i8] c"rc5-cbc\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"rc5\00", align 1
@.str.316 = private unnamed_addr constant [9 x i8] c"idea-cbc\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"idea\00", align 1
@.str.318 = private unnamed_addr constant [9 x i8] c"seed-cbc\00", align 1
@.str.319 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"bf-cbc\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"blowfish\00", align 1
@.str.322 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.323 = private unnamed_addr constant [9 x i8] c"cast-cbc\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"cast5\00", align 1
@.str.326 = private unnamed_addr constant [6 x i8] c"ghash\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"rsa512\00", align 1
@.str.328 = private unnamed_addr constant [8 x i8] c"rsa1024\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"rsa2048\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"rsa3072\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"rsa4096\00", align 1
@.str.332 = private unnamed_addr constant [8 x i8] c"rsa7680\00", align 1
@.str.333 = private unnamed_addr constant [9 x i8] c"rsa15360\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"dsa512\00", align 1
@.str.335 = private unnamed_addr constant [8 x i8] c"dsa1024\00", align 1
@.str.336 = private unnamed_addr constant [8 x i8] c"dsa2048\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1
@run = internal global i32 0, align 4
@.str.338 = private unnamed_addr constant [20 x i8] c"Failure in the job\0A\00", align 1
@.str.339 = private unnamed_addr constant [32 x i8] c"Too many fds in ASYNC_WAIT_CTX\0A\00", align 1
@.str.340 = private unnamed_addr constant [91 x i8] c"Error: max_fd (%d) must be smaller than FD_SETSIZE (%d). Decrease the value of async_jobs\0A\00", align 1
@.str.341 = private unnamed_addr constant [23 x i8] c"Failure in the select\0A\00", align 1
@__const.EVP_Update_loop_aead.aad = private unnamed_addr constant <{ i8, [12 x i8] }> <{ i8 -52, [12 x i8] zeroinitializer }>, align 1
@__const.EVP_Update_loop_aead.faketag = private unnamed_addr constant <{ i8, [15 x i8] }> <{ i8 -52, [15 x i8] zeroinitializer }>, align 16
@.str.342 = private unnamed_addr constant [18 x i8] c"RSA sign failure\0A\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"RSA verify failure\0A\00", align 1
@.str.344 = private unnamed_addr constant [18 x i8] c"DSA sign failure\0A\00", align 1
@.str.345 = private unnamed_addr constant [20 x i8] c"DSA verify failure\0A\00", align 1
@.str.346 = private unnamed_addr constant [57 x i8] c"Unhandled error in the error queue during EC key setup.\0A\00", align 1
@.str.347 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.348 = private unnamed_addr constant [25 x i8] c"EC params init failure.\0A\00", align 1
@.str.349 = private unnamed_addr constant [28 x i8] c"EC key generation failure.\0A\00", align 1
@.str.350 = private unnamed_addr constant [20 x i8] c"ECDSA sign failure\0A\00", align 1
@.str.351 = private unnamed_addr constant [22 x i8] c"ECDSA verify failure\0A\00", align 1
@.str.352 = private unnamed_addr constant [20 x i8] c"EdDSA sign failure\0A\00", align 1
@.str.353 = private unnamed_addr constant [22 x i8] c"EdDSA verify failure\0A\00", align 1
@.str.354 = private unnamed_addr constant [23 x i8] c"SM2 init sign failure\0A\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"SM2 sign failure\0A\00", align 1
@.str.356 = private unnamed_addr constant [25 x i8] c"SM2 verify init failure\0A\00", align 1
@.str.357 = private unnamed_addr constant [20 x i8] c"SM2 verify failure\0A\00", align 1
@.str.358 = private unnamed_addr constant [14 x i8] c"+DT:%s:%d:%d\0A\00", align 1
@.str.359 = private unnamed_addr constant [37 x i8] c"Doing %s for %ds on %d size blocks: \00", align 1
@.str.360 = private unnamed_addr constant [18 x i8] c"+DTP:%d:%s:%s:%d\0A\00", align 1
@.str.361 = private unnamed_addr constant [32 x i8] c"Doing %u bits %s %s's for %ds: \00", align 1
@.str.362 = private unnamed_addr constant [11 x i8] c"%s error!\0A\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"+R:%d:%s:%f\0A\00", align 1
@.str.364 = private unnamed_addr constant [18 x i8] c"%d %s's in %.2fs\0A\00", align 1
@.str.365 = private unnamed_addr constant [23 x i8] c"fd buffer for do_multi\00", align 1
@.str.366 = private unnamed_addr constant [14 x i8] c"pipe failure\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.367 = private unnamed_addr constant [12 x i8] c"dup failed\0A\00", align 1
@.str.368 = private unnamed_addr constant [17 x i8] c"Forked child %d\0A\00", align 1
@.str.369 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.370 = private unnamed_addr constant [42 x i8] c"Don't understand line '%s' from child %d\0A\00", align 1
@.str.371 = private unnamed_addr constant [17 x i8] c"Got: %s from %d\0A\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"+F:\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"+F2:\00", align 1
@.str.374 = private unnamed_addr constant [5 x i8] c"+F3:\00", align 1
@.str.375 = private unnamed_addr constant [5 x i8] c"+F4:\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"+F5:\00", align 1
@.str.377 = private unnamed_addr constant [5 x i8] c"+F6:\00", align 1
@.str.378 = private unnamed_addr constant [5 x i8] c"+F7:\00", align 1
@.str.379 = private unnamed_addr constant [5 x i8] c"+F8:\00", align 1
@.str.380 = private unnamed_addr constant [4 x i8] c"+H:\00", align 1
@.str.381 = private unnamed_addr constant [33 x i8] c"Unknown type '%s' from child %d\0A\00", align 1
@multiblock_speed.mblengths_list = internal unnamed_addr constant [5 x i32] [i32 8192, i32 16384, i32 32768, i32 65536, i32 131072], align 16
@.str.382 = private unnamed_addr constant [24 x i8] c"multiblock input buffer\00", align 1
@.str.383 = private unnamed_addr constant [25 x i8] c"multiblock output buffer\00", align 1
@.str.384 = private unnamed_addr constant [35 x i8] c"failed to allocate cipher context\0A\00", align 1
@.str.385 = private unnamed_addr constant [37 x i8] c"failed to initialise cipher context\0A\00", align 1
@.str.386 = private unnamed_addr constant [36 x i8] c"Impossible negative key length: %d\0A\00", align 1
@.str.387 = private unnamed_addr constant [38 x i8] c"failed to generate random cipher key\0A\00", align 1
@.str.388 = private unnamed_addr constant [26 x i8] c"failed to set cipher key\0A\00", align 1
@.str.389 = private unnamed_addr constant [24 x i8] c"failed to set AEAD key\0A\00", align 1
@.str.390 = private unnamed_addr constant [27 x i8] c"failed to get cipher name\0A\00", align 1
@.str.391 = private unnamed_addr constant [9 x i8] c"+F:%d:%s\00", align 1
@.str.392 = private unnamed_addr constant [25 x i8] c"type                    \00", align 1
@.str.393 = private unnamed_addr constant [6 x i8] c"%-24s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_pkey_st* @get_dsa(i32 noundef %dsa_bits) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  switch i32 %dsa_bits, label %cleanup [
    i32 512, label %sw.epilog
    i32 1024, label %do.body5
    i32 2048, label %do.body19
  ]

do.body5:                                         ; preds = %entry
  br label %sw.epilog

do.body19:                                        ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %do.body19, %do.body5
  %dsa_t.sroa.30.0 = phi i32 [ 256, %do.body19 ], [ 128, %do.body5 ], [ 64, %entry ]
  %dsa_t.sroa.26.0 = phi i32 [ 256, %do.body19 ], [ 128, %do.body5 ], [ 65, %entry ]
  %dsa_t.sroa.18.0 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa2048_q, i64 0, i64 0), %do.body19 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa1024_q, i64 0, i64 0), %do.body5 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa512_q, i64 0, i64 0), %entry ]
  %dsa_t.sroa.14.0 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @dsa2048_g, i64 0, i64 0), %do.body19 ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @dsa1024_g, i64 0, i64 0), %do.body5 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @dsa512_g, i64 0, i64 0), %entry ]
  %dsa_t.sroa.10.0 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @dsa2048_p, i64 0, i64 0), %do.body19 ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @dsa1024_p, i64 0, i64 0), %do.body5 ], [ getelementptr inbounds ([64 x i8], [64 x i8]* @dsa512_p, i64 0, i64 0), %entry ]
  %dsa_t.sroa.6.0 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @dsa2048_pub, i64 0, i64 0), %do.body19 ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @dsa1024_pub, i64 0, i64 0), %do.body5 ], [ getelementptr inbounds ([65 x i8], [65 x i8]* @dsa512_pub, i64 0, i64 0), %entry ]
  %dsa_t.sroa.0.0 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa2048_priv, i64 0, i64 0), %do.body19 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa1024_priv, i64 0, i64 0), %do.body5 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @dsa512_priv, i64 0, i64 0), %entry ]
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef null) #14
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.epilog
  %call34 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dsa_t.sroa.0.0, i32 noundef 20, %struct.bignum_st* noundef null) #14
  %call37 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dsa_t.sroa.6.0, i32 noundef %dsa_t.sroa.26.0, %struct.bignum_st* noundef null) #14
  %call40 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dsa_t.sroa.10.0, i32 noundef %dsa_t.sroa.30.0, %struct.bignum_st* noundef null) #14
  %call43 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dsa_t.sroa.18.0, i32 noundef 20, %struct.bignum_st* noundef null) #14
  %call46 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %dsa_t.sroa.14.0, i32 noundef %dsa_t.sroa.30.0, %struct.bignum_st* noundef null) #14
  %cmp47 = icmp eq %struct.bignum_st* %call34, null
  %cmp48 = icmp eq %struct.bignum_st* %call37, null
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp48
  %cmp50 = icmp eq %struct.bignum_st* %call40, null
  %or.cond94 = select i1 %or.cond, i1 true, i1 %cmp50
  %cmp52 = icmp eq %struct.bignum_st* %call43, null
  %or.cond95 = select i1 %or.cond94, i1 true, i1 %cmp52
  %cmp54 = icmp eq %struct.bignum_st* %call46, null
  %or.cond96 = select i1 %or.cond95, i1 true, i1 %cmp54
  br i1 %or.cond96, label %err, label %if.end56

if.end56:                                         ; preds = %if.end
  %call57 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #14
  %cmp58 = icmp eq %struct.ossl_param_bld_st* %call57, null
  br i1 %cmp58, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end56
  %call60 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call40) #14
  %tobool.not = icmp eq i32 %call60, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false59
  %call62 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call43) #14
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %call65 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call46) #14
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %call68 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call57, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call34) #14
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %call71 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call57, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call37) #14
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %call74 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call57) #14
  %cmp75 = icmp eq %struct.ossl_param_st* %call74, null
  br i1 %cmp75, label %err, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false73
  %call78 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #14
  %cmp79 = icmp slt i32 %call78, 1
  br i1 %cmp79, label %if.then83, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end77
  %call81 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %call74) #14
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %if.then83, label %err

if.then83:                                        ; preds = %lor.lhs.false80, %if.end77
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  br label %err

err:                                              ; preds = %lor.lhs.false80, %if.then83, %if.end56, %lor.lhs.false59, %lor.lhs.false61, %lor.lhs.false64, %lor.lhs.false67, %lor.lhs.false70, %lor.lhs.false73, %if.end
  %tmpl.0 = phi %struct.ossl_param_bld_st* [ null, %if.end ], [ null, %if.end56 ], [ %call57, %lor.lhs.false73 ], [ %call57, %if.then83 ], [ %call57, %lor.lhs.false80 ], [ %call57, %lor.lhs.false70 ], [ %call57, %lor.lhs.false67 ], [ %call57, %lor.lhs.false64 ], [ %call57, %lor.lhs.false61 ], [ %call57, %lor.lhs.false59 ]
  %params.0 = phi %struct.ossl_param_st* [ null, %if.end ], [ null, %if.end56 ], [ null, %lor.lhs.false73 ], [ %call74, %if.then83 ], [ %call74, %lor.lhs.false80 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false64 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false59 ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #14
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %tmpl.0) #14
  call void @BN_free(%struct.bignum_st* noundef %call34) #14
  call void @BN_free(%struct.bignum_st* noundef %call37) #14
  call void @BN_free(%struct.bignum_st* noundef %call40) #14
  call void @BN_free(%struct.bignum_st* noundef %call43) #14
  call void @BN_free(%struct.bignum_st* noundef %call46) #14
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call) #14
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry, %err
  %retval.0 = phi %struct.evp_pkey_st* [ %1, %err ], [ null, %entry ], [ null, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @speed_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %evp_cipher = alloca %struct.evp_cipher_st*, align 8
  %doit = alloca [29 x i8], align 16
  %lengths_single = alloca i32, align 4
  %i = alloca i32, align 4
  %genctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %seconds = alloca %struct.openssl_speed_sec_st, align 16
  %rsa_doit = alloca [7 x i8], align 1
  %ffdh_doit = alloca [5 x i8], align 1
  %dsa_doit = alloca [3 x i8], align 1
  %sm2_doit = alloca [1 x i8], align 1
  %ecdsa_doit = alloca [22 x i8], align 16
  %ecdh_doit = alloca [24 x i8], align 16
  %eddsa_doit = alloca i16, align 2
  %tmpcast = bitcast i16* %eddsa_doit to [2 x i8]*
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp780 = alloca %struct.ossl_param_st, align 8
  %tmp783 = alloca %struct.ossl_param_st, align 8
  %params1161 = alloca [3 x %struct.ossl_param_st], align 16
  %tmp1170 = alloca %struct.ossl_param_st, align 8
  %tmp1172 = alloca %struct.ossl_param_st, align 8
  %tmp1174 = alloca %struct.ossl_param_st, align 8
  %params1421 = alloca [3 x %struct.ossl_param_st], align 16
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %tmp1450 = alloca %struct.ossl_param_st, align 8
  %tmp1452 = alloca %struct.ossl_param_st, align 8
  %tmp1455 = alloca %struct.ossl_param_st, align 8
  %rsa_key = alloca %struct.evp_pkey_st*, align 8
  %p = alloca i8*, align 8
  %outlen = alloca i64, align 8
  %test_outlen = alloca i64, align 8
  %ed_pkey = alloca %struct.evp_pkey_st*, align 8
  %sm2_pkey = alloca %struct.evp_pkey_st*, align 8
  %pkey_A = alloca %struct.evp_pkey_st*, align 8
  %pkey_B = alloca %struct.evp_pkey_st*, align 8
  %secret_size = alloca i64, align 8
  %test_out = alloca i64, align 8
  %0 = bitcast %struct.evp_cipher_st** %evp_cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %1 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 29, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(29) %1, i8 0, i64 29, i1 false)
  %2 = bitcast i32* %lengths_single to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  store i32 0, i32* %lengths_single, align 4, !tbaa !7
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  %4 = bitcast %struct.evp_pkey_ctx_st** %genctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  %5 = bitcast %struct.openssl_speed_sec_st* %seconds to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %5, i8* noundef nonnull align 4 dereferenceable(32) bitcast (%struct.openssl_speed_sec_st* @__const.speed_main.seconds to i8*), i64 32, i1 false)
  %6 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %6) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %6, i8 0, i64 7, i1 false)
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %ffdh_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %7) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %7, i8 0, i64 5, i1 false)
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %8) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %8, i8 0, i64 3, i1 false)
  %9 = getelementptr inbounds [1 x i8], [1 x i8]* %sm2_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %10) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(22) %10, i8 0, i64 22, i1 false)
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %ecdh_doit, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %12 = bitcast i16* %eddsa_doit to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #13
  store i16 0, i16* %eddsa_doit, align 2
  %call = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0)) #15
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cond.end9, label %cond.false3

cond.false3:                                      ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 1463) #16
  unreachable

cond.end9:                                        ; preds = %entry
  %call11 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i64 0, i64 0)) #15
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.end20, label %cond.false14

cond.false14:                                     ; preds = %cond.end9
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 1466) #16
  unreachable

cond.end20:                                       ; preds = %cond.end9
  %call22 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i64 0, i64 0)) #15
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %cond.end31, label %cond.false25

cond.false25:                                     ; preds = %cond.end20
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 1469) #16
  unreachable

cond.end31:                                       ; preds = %cond.end20
  %call33 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i64 0, i64 0)) #15
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %cond.end37, label %cond.false36

cond.false36:                                     ; preds = %cond.end31
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 1473) #16
  unreachable

cond.end37:                                       ; preds = %cond.end31
  %call39 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([30 x %struct.options_st], [30 x %struct.options_st]* @speed_options, i64 0, i64 0)) #14
  %ffdh = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 7
  %sm2 = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 6
  %eddsa = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 5
  %ecdh = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 4
  %ecdsa = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 3
  %dsa = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 2
  %rsa = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 1
  %sym = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 0
  %arrayidx87 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 28
  %arrayidx77 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 9
  %arrayidx = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 25
  %13 = bitcast i32* %ecdh to <4 x i32>*
  %14 = bitcast %struct.openssl_speed_sec_st* %seconds to <4 x i32>*
  %.promoted = load <4 x i32>, <4 x i32>* %13, align 1, !tbaa !7
  %.promoted5701 = load <4 x i32>, <4 x i32>* %14, align 1, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %cond.end37
  %shuffle55005703 = phi <4 x i32> [ %.promoted5701, %cond.end37 ], [ %shuffle55005702, %while.cond.backedge ]
  %shuffle55005690 = phi <4 x i32> [ %.promoted, %cond.end37 ], [ %shuffle55005689, %while.cond.backedge ]
  %engine_id.0 = phi i8* [ null, %cond.end37 ], [ %engine_id.0.be, %while.cond.backedge ]
  %multiblock.0 = phi i32 [ 0, %cond.end37 ], [ %multiblock.0.be, %while.cond.backedge ]
  %misalign.0 = phi i32 [ 0, %cond.end37 ], [ %misalign.0.be, %while.cond.backedge ]
  %aead.0 = phi i32 [ 0, %cond.end37 ], [ %aead.0.be, %while.cond.backedge ]
  %size_num.0 = phi i32 [ 6, %cond.end37 ], [ %size_num.0.be, %while.cond.backedge ]
  %async_jobs.0 = phi i32 [ 0, %cond.end37 ], [ %async_jobs.0.be, %while.cond.backedge ]
  %multi.0 = phi i32 [ 0, %cond.end37 ], [ %multi.0.be, %while.cond.backedge ]
  %primes.0 = phi i32 [ 2, %cond.end37 ], [ %primes.0.be, %while.cond.backedge ]
  %call40 = call i32 @opt_next() #14
  switch i32 %call40, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1603, label %sw.bb121
    i32 -1, label %opterr.loopexit
    i32 1, label %sw.bb43
    i32 2, label %sw.bb44
    i32 3, label %sw.bb45
    i32 4, label %sw.bb68
    i32 1609, label %sw.bb78
    i32 5, label %sw.bb88
    i32 6, label %sw.bb89
    i32 7, label %sw.bb91
    i32 11, label %sw.bb94
    i32 10, label %sw.bb106
    i32 8, label %sw.bb112
    i32 9, label %sw.bb113
    i32 1608, label %sw.bb134
    i32 1607, label %sw.bb131
    i32 1501, label %sw.bb115
    i32 1502, label %sw.bb115
    i32 1606, label %sw.bb128
    i32 1605, label %sw.bb126
    i32 1601, label %sw.bb121
    i32 1602, label %sw.bb121
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb121, %sw.bb115, %sw.bb106, %if.end101, %sw.bb134, %sw.bb131, %sw.bb128, %sw.bb126, %sw.bb113, %sw.bb112, %sw.bb91, %sw.bb89, %sw.bb88, %if.end85, %if.end75, %if.end65, %sw.bb44
  %shuffle55005702 = phi <4 x i32> [ %shuffle55005703, %sw.bb121 ], [ %shuffle55005703, %sw.bb126 ], [ %shuffle5500, %sw.bb128 ], [ %shuffle55005703, %sw.bb115 ], [ %shuffle55005703, %sw.bb131 ], [ %shuffle55005703, %sw.bb134 ], [ %shuffle55005703, %sw.bb113 ], [ %shuffle55005703, %sw.bb112 ], [ %shuffle55005703, %sw.bb106 ], [ %shuffle55005703, %if.end101 ], [ %shuffle55005703, %sw.bb91 ], [ %shuffle55005703, %sw.bb89 ], [ %shuffle55005703, %sw.bb88 ], [ %shuffle55005703, %if.end85 ], [ %shuffle55005703, %if.end75 ], [ %shuffle55005703, %if.end65 ], [ %shuffle55005703, %sw.bb44 ], [ %shuffle55005703, %while.cond ]
  %shuffle55005689 = phi <4 x i32> [ %shuffle55005690, %sw.bb121 ], [ %shuffle55005690, %sw.bb126 ], [ %shuffle5500, %sw.bb128 ], [ %shuffle55005690, %sw.bb115 ], [ %shuffle55005690, %sw.bb131 ], [ %shuffle55005690, %sw.bb134 ], [ %shuffle55005690, %sw.bb113 ], [ %shuffle55005690, %sw.bb112 ], [ %shuffle55005690, %sw.bb106 ], [ %shuffle55005690, %if.end101 ], [ %shuffle55005690, %sw.bb91 ], [ %shuffle55005690, %sw.bb89 ], [ %shuffle55005690, %sw.bb88 ], [ %shuffle55005690, %if.end85 ], [ %shuffle55005690, %if.end75 ], [ %shuffle55005690, %if.end65 ], [ %shuffle55005690, %sw.bb44 ], [ %shuffle55005690, %while.cond ]
  %engine_id.0.be = phi i8* [ %engine_id.0, %sw.bb121 ], [ %engine_id.0, %sw.bb126 ], [ %engine_id.0, %sw.bb128 ], [ %engine_id.0, %sw.bb115 ], [ %engine_id.0, %sw.bb131 ], [ %engine_id.0, %sw.bb134 ], [ %engine_id.0, %sw.bb113 ], [ %engine_id.0, %sw.bb112 ], [ %engine_id.0, %sw.bb106 ], [ %engine_id.0, %if.end101 ], [ %engine_id.0, %sw.bb91 ], [ %call90, %sw.bb89 ], [ %engine_id.0, %sw.bb88 ], [ %engine_id.0, %if.end85 ], [ %engine_id.0, %if.end75 ], [ %engine_id.0, %if.end65 ], [ %engine_id.0, %sw.bb44 ], [ %engine_id.0, %while.cond ]
  %multiblock.0.be = phi i32 [ %multiblock.0, %sw.bb121 ], [ %multiblock.0, %sw.bb126 ], [ %multiblock.0, %sw.bb128 ], [ %multiblock.0, %sw.bb115 ], [ %multiblock.0, %sw.bb131 ], [ %multiblock.0, %sw.bb134 ], [ 1, %sw.bb113 ], [ %multiblock.0, %sw.bb112 ], [ %multiblock.0, %sw.bb106 ], [ %multiblock.0, %if.end101 ], [ %multiblock.0, %sw.bb91 ], [ %multiblock.0, %sw.bb89 ], [ %multiblock.0, %sw.bb88 ], [ %multiblock.0, %if.end85 ], [ %multiblock.0, %if.end75 ], [ %multiblock.0, %if.end65 ], [ %multiblock.0, %sw.bb44 ], [ %multiblock.0, %while.cond ]
  %misalign.0.be = phi i32 [ %misalign.0, %sw.bb121 ], [ %misalign.0, %sw.bb126 ], [ %misalign.0, %sw.bb128 ], [ %misalign.0, %sw.bb115 ], [ %misalign.0, %sw.bb131 ], [ %misalign.0, %sw.bb134 ], [ %misalign.0, %sw.bb113 ], [ %misalign.0, %sw.bb112 ], [ %call107, %sw.bb106 ], [ %misalign.0, %if.end101 ], [ %misalign.0, %sw.bb91 ], [ %misalign.0, %sw.bb89 ], [ %misalign.0, %sw.bb88 ], [ %misalign.0, %if.end85 ], [ %misalign.0, %if.end75 ], [ %misalign.0, %if.end65 ], [ %misalign.0, %sw.bb44 ], [ %misalign.0, %while.cond ]
  %aead.0.be = phi i32 [ %aead.0, %sw.bb121 ], [ %aead.0, %sw.bb126 ], [ %aead.0, %sw.bb128 ], [ %aead.0, %sw.bb115 ], [ %aead.0, %sw.bb131 ], [ 1, %sw.bb134 ], [ %aead.0, %sw.bb113 ], [ %aead.0, %sw.bb112 ], [ %aead.0, %sw.bb106 ], [ %aead.0, %if.end101 ], [ %aead.0, %sw.bb91 ], [ %aead.0, %sw.bb89 ], [ %aead.0, %sw.bb88 ], [ %aead.0, %if.end85 ], [ %aead.0, %if.end75 ], [ %aead.0, %if.end65 ], [ %aead.0, %sw.bb44 ], [ %aead.0, %while.cond ]
  %size_num.0.be = phi i32 [ %size_num.0, %sw.bb121 ], [ %size_num.0, %sw.bb126 ], [ %size_num.0, %sw.bb128 ], [ %size_num.0, %sw.bb115 ], [ 1, %sw.bb131 ], [ %size_num.0, %sw.bb134 ], [ %size_num.0, %sw.bb113 ], [ %size_num.0, %sw.bb112 ], [ %size_num.0, %sw.bb106 ], [ %size_num.0, %if.end101 ], [ %size_num.0, %sw.bb91 ], [ %size_num.0, %sw.bb89 ], [ %size_num.0, %sw.bb88 ], [ %size_num.0, %if.end85 ], [ %size_num.0, %if.end75 ], [ %size_num.0, %if.end65 ], [ %size_num.0, %sw.bb44 ], [ %size_num.0, %while.cond ]
  %async_jobs.0.be = phi i32 [ %async_jobs.0, %sw.bb121 ], [ %async_jobs.0, %sw.bb126 ], [ %async_jobs.0, %sw.bb128 ], [ %async_jobs.0, %sw.bb115 ], [ %async_jobs.0, %sw.bb131 ], [ %async_jobs.0, %sw.bb134 ], [ %async_jobs.0, %sw.bb113 ], [ %async_jobs.0, %sw.bb112 ], [ %async_jobs.0, %sw.bb106 ], [ %call96, %if.end101 ], [ %async_jobs.0, %sw.bb91 ], [ %async_jobs.0, %sw.bb89 ], [ %async_jobs.0, %sw.bb88 ], [ %async_jobs.0, %if.end85 ], [ %async_jobs.0, %if.end75 ], [ %async_jobs.0, %if.end65 ], [ %async_jobs.0, %sw.bb44 ], [ %async_jobs.0, %while.cond ]
  %multi.0.be = phi i32 [ %multi.0, %sw.bb121 ], [ %multi.0, %sw.bb126 ], [ %multi.0, %sw.bb128 ], [ %multi.0, %sw.bb115 ], [ %multi.0, %sw.bb131 ], [ %multi.0, %sw.bb134 ], [ %multi.0, %sw.bb113 ], [ %multi.0, %sw.bb112 ], [ %multi.0, %sw.bb106 ], [ %multi.0, %if.end101 ], [ %call93, %sw.bb91 ], [ %multi.0, %sw.bb89 ], [ %multi.0, %sw.bb88 ], [ %multi.0, %if.end85 ], [ %multi.0, %if.end75 ], [ %multi.0, %if.end65 ], [ %multi.0, %sw.bb44 ], [ %multi.0, %while.cond ]
  %primes.0.be = phi i32 [ %primes.0, %sw.bb121 ], [ %call127, %sw.bb126 ], [ %primes.0, %sw.bb128 ], [ %primes.0, %sw.bb115 ], [ %primes.0, %sw.bb131 ], [ %primes.0, %sw.bb134 ], [ %primes.0, %sw.bb113 ], [ %primes.0, %sw.bb112 ], [ %primes.0, %sw.bb106 ], [ %primes.0, %if.end101 ], [ %primes.0, %sw.bb91 ], [ %primes.0, %sw.bb89 ], [ %primes.0, %sw.bb88 ], [ %primes.0, %if.end85 ], [ %primes.0, %if.end75 ], [ %primes.0, %if.end65 ], [ %primes.0, %sw.bb44 ], [ %primes.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opterr.loopexit:                                  ; preds = %while.cond
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  br label %opterr

opterr:                                           ; preds = %opterr.loopexit, %if.then109, %if.then103, %if.then99, %if.then
  %async_jobs.1 = phi i32 [ %async_jobs.0, %if.then109 ], [ %call96, %if.then103 ], [ %call96, %if.then99 ], [ %async_jobs.0, %if.then ], [ %async_jobs.0, %opterr.loopexit ]
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.102, i64 0, i64 0), i8* noundef %call39) #14
  br label %end

sw.bb43:                                          ; preds = %while.cond
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([30 x %struct.options_st], [30 x %struct.options_st]* @speed_options, i64 0, i64 0)) #14
  br label %end

sw.bb44:                                          ; preds = %while.cond
  store i1 true, i1* @usertime, align 4
  br label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb45
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call46 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.103, i64 0, i64 0), i8* noundef %call39) #14
  br label %opterr

if.end:                                           ; preds = %sw.bb45
  %call47 = call i32 @ERR_set_mark() #14
  %call48 = call i8* @opt_arg() #14
  %call49 = call i32 @opt_cipher_silent(i8* noundef %call48, %struct.evp_cipher_st** noundef nonnull %evp_cipher) #14
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.end
  %call52 = call i8* @opt_arg() #14
  %call53 = call fastcc i32 @have_md(i8* noundef %call52) #17
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.then51
  %call56 = call i8* @opt_arg() #14
  store i8* %call56, i8** @evp_md_name, align 8, !tbaa !3
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.then55, %if.end
  %18 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %cmp59 = icmp eq %struct.evp_cipher_st* %18, null
  %19 = load i8*, i8** @evp_md_name, align 8
  %cmp60 = icmp eq i8* %19, null
  %or.cond = select i1 %cmp59, i1 %cmp60, i1 false
  br i1 %or.cond, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end58
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %call62 = call i32 @ERR_clear_last_mark() #14
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call63 = call i8* @opt_arg() #14
  %call64 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i64 0, i64 0), i8* noundef %call39, i8* noundef %call63) #14
  br label %end

if.end65:                                         ; preds = %if.end58
  %call66 = call i32 @ERR_pop_to_mark() #14
  store i8 1, i8* %arrayidx, align 1, !tbaa !11
  br label %while.cond.backedge

sw.bb68:                                          ; preds = %while.cond
  %call69 = call i8* @opt_arg() #14
  %call70 = call fastcc i32 @have_md(i8* noundef %call69) #17
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end75

if.then72:                                        ; preds = %sw.bb68
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call73 = call i8* @opt_arg() #14
  %call74 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i64 0, i64 0), i8* noundef %call39, i8* noundef %call73) #14
  br label %end

if.end75:                                         ; preds = %sw.bb68
  %call76 = call i8* @opt_arg() #14
  store i8* %call76, i8** @evp_mac_mdname, align 8, !tbaa !3
  store i8 1, i8* %arrayidx77, align 1, !tbaa !11
  br label %while.cond.backedge

sw.bb78:                                          ; preds = %while.cond
  %call79 = call i8* @opt_arg() #14
  %call80 = call fastcc i32 @have_cipher(i8* noundef %call79) #17
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end85

if.then82:                                        ; preds = %sw.bb78
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call83 = call i8* @opt_arg() #14
  %call84 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i64 0, i64 0), i8* noundef %call39, i8* noundef %call83) #14
  br label %end

if.end85:                                         ; preds = %sw.bb78
  %call86 = call i8* @opt_arg() #14
  store i8* %call86, i8** @evp_mac_ciphername, align 8, !tbaa !3
  store i8 1, i8* %arrayidx87, align 4, !tbaa !11
  br label %while.cond.backedge

sw.bb88:                                          ; preds = %while.cond
  store i1 true, i1* @decrypt, align 4
  br label %while.cond.backedge

sw.bb89:                                          ; preds = %while.cond
  %call90 = call i8* @opt_arg() #14
  br label %while.cond.backedge

sw.bb91:                                          ; preds = %while.cond
  %call92 = call i8* @opt_arg() #14
  %call93 = call i32 @atoi(i8* noundef %call92) #15
  br label %while.cond.backedge

sw.bb94:                                          ; preds = %while.cond
  %call95 = call i8* @opt_arg() #14
  %call96 = call i32 @atoi(i8* noundef %call95) #15
  %call97 = call i32 @ASYNC_is_capable() #14
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end101

if.then99:                                        ; preds = %sw.bb94
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.107, i64 0, i64 0), i8* noundef %call39) #14
  br label %opterr

if.end101:                                        ; preds = %sw.bb94
  %cmp102 = icmp ugt i32 %call96, 99999
  br i1 %cmp102, label %if.then103, label %while.cond.backedge

if.then103:                                       ; preds = %if.end101
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call104 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.108, i64 0, i64 0), i8* noundef %call39) #14
  br label %opterr

sw.bb106:                                         ; preds = %while.cond
  %call107 = call i32 @opt_int_arg() #14
  %cmp108 = icmp sgt i32 %call107, 64
  br i1 %cmp108, label %if.then109, label %while.cond.backedge

if.then109:                                       ; preds = %sw.bb106
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call110 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.109, i64 0, i64 0), i8* noundef %call39, i32 noundef 64) #14
  br label %opterr

sw.bb112:                                         ; preds = %while.cond
  store i1 true, i1* @mr, align 4
  br label %while.cond.backedge

sw.bb113:                                         ; preds = %while.cond
  br label %while.cond.backedge

sw.bb115:                                         ; preds = %while.cond, %while.cond
  %call116 = call i32 @opt_rand(i32 noundef %call40) #14
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %end.loopexit5509, label %while.cond.backedge

sw.bb121:                                         ; preds = %while.cond, %while.cond, %while.cond
  %call122 = call i32 @opt_provider(i32 noundef %call40) #14
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %end.loopexit5509, label %while.cond.backedge

sw.bb126:                                         ; preds = %while.cond
  %call127 = call i32 @opt_int_arg() #14
  br label %while.cond.backedge

sw.bb128:                                         ; preds = %while.cond
  %call129 = call i8* @opt_arg() #14
  %call130 = call i32 @atoi(i8* noundef %call129) #15
  %26 = insertelement <4 x i32> poison, i32 %call130, i64 0
  %shuffle5500 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %while.cond.backedge

sw.bb131:                                         ; preds = %while.cond
  %call132 = call i8* @opt_arg() #14
  %call133 = call i32 @atoi(i8* noundef %call132) #15
  store i32 %call133, i32* %lengths_single, align 4, !tbaa !7
  store i32* %lengths_single, i32** @lengths, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb134:                                         ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  %call135 = call i32 @opt_num_rest() #14
  %call136 = call i8** @opt_rest() #14
  %call137 = call i32 @app_RAND_load() #14
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %27 = load i8*, i8** %call136, align 8, !tbaa !3
  %tobool141.not4830 = icmp eq i8* %27, null
  br i1 %tobool141.not4830, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx230 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 24
  %arrayidx231 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 23
  %arrayidx232 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 22
  %arrayidx222 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 21
  %arrayidx223 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 20
  %arrayidx224 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 19
  %arrayidx156 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 7
  %arrayidx157 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 6
  %arrayidx158 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 4
  %arrayidx150 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 11
  %arrayidx151 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %28 = phi i8* [ %27, %for.body.lr.ph ], [ %42, %for.inc ]
  %argv.addr.04831 = phi i8** [ %call136, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call142 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([37 x %struct.string_int_pair_st], [37 x %struct.string_int_pair_st]* @doit_choices, i64 0, i64 0), i32 noundef 37) #17
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end146, label %if.then144

if.then144:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = zext i32 %29 to i64
  %arrayidx145 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx145, align 1, !tbaa !11
  br label %for.inc

if.end146:                                        ; preds = %for.body
  %call147 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #15
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then149, label %if.end152

if.then149:                                       ; preds = %if.end146
  store i8 1, i8* %arrayidx150, align 1, !tbaa !11
  store i8 1, i8* %arrayidx151, align 2, !tbaa !11
  br label %for.inc

if.end152:                                        ; preds = %if.end146
  %call153 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #15
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %if.then155, label %if.end159

if.then155:                                       ; preds = %if.end152
  store i8 1, i8* %arrayidx156, align 1, !tbaa !11
  store i8 1, i8* %arrayidx157, align 2, !tbaa !11
  store i8 1, i8* %arrayidx158, align 4, !tbaa !11
  br label %for.inc

if.end159:                                        ; preds = %if.end152
  %call160 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0)) #15
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %for.inc, label %if.end163

if.end163:                                        ; preds = %if.end159
  %call164 = call i32 @strncmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i64 noundef 3) #15
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then166, label %if.end179

if.then166:                                       ; preds = %if.end163
  %arrayidx167 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %arrayidx167, align 1, !tbaa !11
  %cmp168 = icmp eq i8 %30, 0
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.then166
  %call171 = call i8* @memset(i8* noundef nonnull %6, i32 noundef 1, i64 noundef 7) #14
  br label %for.inc

if.end172:                                        ; preds = %if.then166
  %call173 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([7 x %struct.string_int_pair_st], [7 x %struct.string_int_pair_st]* @rsa_choices, i64 0, i64 0), i32 noundef 7) #17
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end179, label %if.then175

if.then175:                                       ; preds = %if.end172
  %31 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom176 = zext i32 %31 to i64
  %arrayidx177 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 %idxprom176
  store i8 1, i8* %arrayidx177, align 1, !tbaa !11
  br label %for.inc

if.end179:                                        ; preds = %if.end172, %if.end163
  %call180 = call i32 @strncmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i64 noundef 4) #15
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.end198

if.then183:                                       ; preds = %if.end179
  %arrayidx184 = getelementptr inbounds i8, i8* %28, i64 4
  %32 = load i8, i8* %arrayidx184, align 1, !tbaa !11
  %cmp186 = icmp eq i8 %32, 0
  br i1 %cmp186, label %if.then188, label %if.end191

if.then188:                                       ; preds = %if.then183
  %call190 = call i8* @memset(i8* noundef nonnull %7, i32 noundef 1, i64 noundef 5) #14
  br label %for.inc

if.end191:                                        ; preds = %if.then183
  %call192 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([5 x %struct.string_int_pair_st], [5 x %struct.string_int_pair_st]* @ffdh_choices, i64 0, i64 0), i32 noundef 5) #17
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end198, label %if.then194

if.then194:                                       ; preds = %if.end191
  %33 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom195 = zext i32 %33 to i64
  %arrayidx196 = getelementptr inbounds [5 x i8], [5 x i8]* %ffdh_doit, i64 0, i64 %idxprom195
  store i8 2, i8* %arrayidx196, align 1, !tbaa !11
  br label %for.inc

if.end198:                                        ; preds = %if.end191, %if.end179
  %call199 = call i32 @strncmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0), i64 noundef 3) #15
  %cmp200 = icmp eq i32 %call199, 0
  br i1 %cmp200, label %if.then202, label %if.end217

if.then202:                                       ; preds = %if.end198
  %arrayidx203 = getelementptr inbounds i8, i8* %28, i64 3
  %34 = load i8, i8* %arrayidx203, align 1, !tbaa !11
  %cmp205 = icmp eq i8 %34, 0
  br i1 %cmp205, label %if.then207, label %if.end210

if.then207:                                       ; preds = %if.then202
  %call209 = call i8* @memset(i8* noundef nonnull %8, i32 noundef 1, i64 noundef 3) #14
  br label %for.inc

if.end210:                                        ; preds = %if.then202
  %call211 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([3 x %struct.string_int_pair_st], [3 x %struct.string_int_pair_st]* @dsa_choices, i64 0, i64 0), i32 noundef 3) #17
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end217, label %if.then213

if.then213:                                       ; preds = %if.end210
  %35 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom214 = zext i32 %35 to i64
  %arrayidx215 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 %idxprom214
  store i8 2, i8* %arrayidx215, align 1, !tbaa !11
  br label %for.inc

if.end217:                                        ; preds = %if.end210, %if.end198
  %call218 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #15
  %cmp219 = icmp eq i32 %call218, 0
  br i1 %cmp219, label %if.then221, label %if.end225

if.then221:                                       ; preds = %if.end217
  store i8 1, i8* %arrayidx222, align 1, !tbaa !11
  store i8 1, i8* %arrayidx223, align 4, !tbaa !11
  store i8 1, i8* %arrayidx224, align 1, !tbaa !11
  br label %for.inc

if.end225:                                        ; preds = %if.end217
  %call226 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i64 0, i64 0)) #15
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.then229, label %if.end233

if.then229:                                       ; preds = %if.end225
  store i8 1, i8* %arrayidx230, align 8, !tbaa !11
  store i8 1, i8* %arrayidx231, align 1, !tbaa !11
  store i8 1, i8* %arrayidx232, align 2, !tbaa !11
  br label %for.inc

if.end233:                                        ; preds = %if.end225
  %call234 = call i32 @strncmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i64 noundef 5) #15
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end252

if.then237:                                       ; preds = %if.end233
  %arrayidx238 = getelementptr inbounds i8, i8* %28, i64 5
  %36 = load i8, i8* %arrayidx238, align 1, !tbaa !11
  %cmp240 = icmp eq i8 %36, 0
  br i1 %cmp240, label %if.then242, label %if.end245

if.then242:                                       ; preds = %if.then237
  %call244 = call i8* @memset(i8* noundef nonnull %10, i32 noundef 1, i64 noundef 22) #14
  br label %for.inc

if.end245:                                        ; preds = %if.then237
  %call246 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([22 x %struct.string_int_pair_st], [22 x %struct.string_int_pair_st]* @ecdsa_choices, i64 0, i64 0), i32 noundef 22) #17
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end252, label %if.then248

if.then248:                                       ; preds = %if.end245
  %37 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom249 = zext i32 %37 to i64
  %arrayidx250 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 %idxprom249
  store i8 2, i8* %arrayidx250, align 1, !tbaa !11
  br label %for.inc

if.end252:                                        ; preds = %if.end245, %if.end233
  %call253 = call i32 @strncmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i64 noundef 4) #15
  %cmp254 = icmp eq i32 %call253, 0
  br i1 %cmp254, label %if.then256, label %if.end271

if.then256:                                       ; preds = %if.end252
  %arrayidx257 = getelementptr inbounds i8, i8* %28, i64 4
  %38 = load i8, i8* %arrayidx257, align 1, !tbaa !11
  %cmp259 = icmp eq i8 %38, 0
  br i1 %cmp259, label %if.then261, label %if.end264

if.then261:                                       ; preds = %if.then256
  %call263 = call i8* @memset(i8* noundef nonnull %11, i32 noundef 1, i64 noundef 24) #14
  br label %for.inc

if.end264:                                        ; preds = %if.then256
  %call265 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([24 x %struct.string_int_pair_st], [24 x %struct.string_int_pair_st]* @ecdh_choices, i64 0, i64 0), i32 noundef 24) #17
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end271, label %if.then267

if.then267:                                       ; preds = %if.end264
  %39 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom268 = zext i32 %39 to i64
  %arrayidx269 = getelementptr inbounds [24 x i8], [24 x i8]* %ecdh_doit, i64 0, i64 %idxprom268
  store i8 2, i8* %arrayidx269, align 1, !tbaa !11
  br label %for.inc

if.end271:                                        ; preds = %if.end264, %if.end252
  %call272 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0)) #15
  %cmp273 = icmp eq i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.end278

if.then275:                                       ; preds = %if.end271
  %call277 = call i8* @memset(i8* noundef nonnull %12, i32 noundef 1, i64 noundef 2) #14
  br label %for.inc

if.end278:                                        ; preds = %if.end271
  %call279 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([2 x %struct.string_int_pair_st], [2 x %struct.string_int_pair_st]* @eddsa_choices, i64 0, i64 0), i32 noundef 2) #17
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end284, label %if.then281

if.then281:                                       ; preds = %if.end278
  %40 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom282 = zext i32 %40 to i64
  %arrayidx283 = getelementptr inbounds [2 x i8], [2 x i8]* %tmpcast, i64 0, i64 %idxprom282
  store i8 2, i8* %arrayidx283, align 1, !tbaa !11
  br label %for.inc

if.end284:                                        ; preds = %if.end278
  %call285 = call i32 @strcmp(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i64 0, i64 0)) #15
  %cmp286 = icmp eq i32 %call285, 0
  br i1 %cmp286, label %if.then288, label %if.end291

if.then288:                                       ; preds = %if.end284
  %call290 = call i8* @memset(i8* noundef nonnull %9, i32 noundef 1, i64 noundef 1) #14
  br label %for.inc

if.end291:                                        ; preds = %if.end284
  %call292 = call fastcc i32 @opt_found(i8* noundef nonnull %28, i32* noundef nonnull %i, %struct.string_int_pair_st* noundef getelementptr inbounds ([1 x %struct.string_int_pair_st], [1 x %struct.string_int_pair_st]* @sm2_choices, i64 0, i64 0), i32 noundef 1) #17
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %cleanup, label %if.then294

if.then294:                                       ; preds = %if.end291
  store i8 2, i8* %9, align 1, !tbaa !11
  br label %for.inc

cleanup:                                          ; preds = %if.end291
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call298 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %41, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i64 0, i64 0), i8* noundef %call39, i8* noundef nonnull %28) #14
  br label %end

for.inc:                                          ; preds = %if.then144, %if.then149, %if.then155, %if.then170, %if.then175, %if.then188, %if.then194, %if.then207, %if.then213, %if.then221, %if.then229, %if.then242, %if.then248, %if.then261, %if.then267, %if.then275, %if.then281, %if.then288, %if.then294, %if.end159
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.04831, i64 1
  %42 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  %tobool141.not = icmp eq i8* %42, null
  br i1 %tobool141.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %tobool299.not = icmp eq i32 %aead.0, 0
  br i1 %tobool299.not, label %if.end312, label %if.then300

if.then300:                                       ; preds = %for.end
  %43 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %cmp301 = icmp eq %struct.evp_cipher_st* %43, null
  br i1 %cmp301, label %if.then303, label %if.else

if.then303:                                       ; preds = %if.then300
  %44 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call304 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %44, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.123, i64 0, i64 0)) #14
  br label %end

if.else:                                          ; preds = %if.then300
  %call305 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %43) #14
  %and = and i64 %call305, 2097152
  %tobool306.not = icmp eq i64 %and, 0
  br i1 %tobool306.not, label %if.then307, label %if.end312

if.then307:                                       ; preds = %if.else
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %46 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %call308 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %46) #14
  %call309 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %45, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.124, i64 0, i64 0), i8* noundef %call308) #14
  br label %end

if.end312:                                        ; preds = %if.else, %for.end
  %tobool313.not = icmp eq i32 %multiblock.0, 0
  br i1 %tobool313.not, label %if.end334, label %if.then314

if.then314:                                       ; preds = %if.end312
  %47 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %cmp315 = icmp eq %struct.evp_cipher_st* %47, null
  br i1 %cmp315, label %if.then317, label %if.else319

if.then317:                                       ; preds = %if.then314
  %48 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call318 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %48, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.125, i64 0, i64 0)) #14
  br label %end

if.else319:                                       ; preds = %if.then314
  %call320 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %47) #14
  %and321 = and i64 %call320, 4194304
  %tobool322.not = icmp eq i64 %and321, 0
  br i1 %tobool322.not, label %if.then323, label %if.else326

if.then323:                                       ; preds = %if.else319
  %49 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %50 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %call324 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %50) #14
  %call325 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %49, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.126, i64 0, i64 0), i8* noundef %call324) #14
  br label %end

if.else326:                                       ; preds = %if.else319
  %cmp327.not = icmp eq i32 %async_jobs.0, 0
  br i1 %cmp327.not, label %for.body360.lr.ph, label %if.then329

if.then329:                                       ; preds = %if.else326
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call330 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.127, i64 0, i64 0)) #14
  br label %end

if.end334:                                        ; preds = %if.end312
  %cmp335.not = icmp eq i32 %async_jobs.0, 0
  br i1 %cmp335.not, label %for.body360.lr.ph, label %if.then337

if.then337:                                       ; preds = %if.end334
  %conv338 = zext i32 %async_jobs.0 to i64
  %call340 = call i32 @ASYNC_init_thread(i64 noundef %conv338, i64 noundef %conv338) #14
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.then342, label %for.body360.lr.ph

if.then342:                                       ; preds = %if.then337
  %52 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call343 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %52, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.128, i64 0, i64 0)) #14
  br label %end

for.body360.lr.ph:                                ; preds = %if.then337, %if.end334, %if.else326
  %async_init.05204 = phi i32 [ %call340, %if.then337 ], [ 0, %if.end334 ], [ 0, %if.else326 ]
  %cmp335.not46165202 = phi i1 [ false, %if.then337 ], [ true, %if.end334 ], [ true, %if.else326 ]
  %53 = phi i32 [ %async_jobs.0, %if.then337 ], [ 1, %if.end334 ], [ 1, %if.else326 ]
  %conv352 = zext i32 %53 to i64
  %mul = mul nuw nsw i64 %conv352, 1104
  %call353 = call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.129, i64 0, i64 0)) #14
  %54 = bitcast i8* %call353 to %struct.loopargs_st*
  %call356 = call i8* @memset(i8* noundef %call353, i32 noundef 0, i64 noundef %mul) #14
  store i32 0, i32* %i, align 4, !tbaa !7
  %sub = add nsw i32 %size_num.0, -1
  %idxprom376 = zext i32 %sub to i64
  %idx.ext = sext i32 %misalign.0 to i64
  br label %for.body360

for.body360:                                      ; preds = %for.body360.lr.ph, %if.end375
  br i1 %cmp335.not46165202, label %if.end375, label %if.then363

if.then363:                                       ; preds = %for.body360
  %call364 = call %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() #14
  %55 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom365 = zext i32 %55 to i64
  %wait_ctx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom365, i32 1
  store %struct.async_wait_ctx_st* %call364, %struct.async_wait_ctx_st** %wait_ctx, align 8, !tbaa !13
  %cmp370 = icmp eq %struct.async_wait_ctx_st* %call364, null
  br i1 %cmp370, label %if.then372, label %if.end375

if.then372:                                       ; preds = %if.then363
  %56 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call373 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %56, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.130, i64 0, i64 0)) #14
  br label %end

if.end375:                                        ; preds = %if.then363, %for.body360
  %57 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx377 = getelementptr inbounds i32, i32* %57, i64 %idxprom376
  %58 = load i32, i32* %arrayidx377, align 4, !tbaa !7
  %59 = icmp sgt i32 %58, 36
  %spec.store.select = select i1 %59, i32 %58, i32 36
  %add = add nuw nsw i32 %spec.store.select, 64
  %conv382 = zext i32 %add to i64
  %call383 = call i8* @app_malloc(i64 noundef %conv382, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i64 0, i64 0)) #14
  %60 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom384 = zext i32 %60 to i64
  %buf_malloc = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom384, i32 4
  store i8* %call383, i8** %buf_malloc, align 8, !tbaa !16
  %call387 = call i8* @app_malloc(i64 noundef %conv382, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i64 0, i64 0)) #14
  %61 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom388 = zext i32 %61 to i64
  %buf2_malloc = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom388, i32 5
  store i8* %call387, i8** %buf2_malloc, align 8, !tbaa !17
  %buf_malloc392 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom388, i32 4
  %62 = load i8*, i8** %buf_malloc392, align 8, !tbaa !16
  %call394 = call i8* @memset(i8* noundef %62, i32 noundef 0, i64 noundef %conv382) #14
  %63 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom395 = zext i32 %63 to i64
  %buf2_malloc397 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom395, i32 5
  %64 = load i8*, i8** %buf2_malloc397, align 8, !tbaa !17
  %call399 = call i8* @memset(i8* noundef %64, i32 noundef 0, i64 noundef %conv382) #14
  %65 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom400 = zext i32 %65 to i64
  %buf_malloc402 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom400, i32 4
  %66 = load i8*, i8** %buf_malloc402, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  %buf = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom400, i32 2
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !18
  %buf2_malloc407 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom400, i32 5
  %67 = load i8*, i8** %buf2_malloc407, align 8, !tbaa !17
  %add.ptr409 = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  %buf2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom400, i32 3
  store i8* %add.ptr409, i8** %buf2, align 8, !tbaa !19
  %call412 = call i8* @app_malloc(i64 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i64 0, i64 0)) #14
  %68 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom413 = zext i32 %68 to i64
  %secret_a = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom413, i32 20
  store i8* %call412, i8** %secret_a, align 8, !tbaa !20
  %call415 = call i8* @app_malloc(i64 noundef 256, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i64 0, i64 0)) #14
  %69 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom416 = zext i32 %69 to i64
  %secret_b = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom416, i32 21
  store i8* %call415, i8** %secret_b, align 8, !tbaa !21
  %call418 = call i8* @app_malloc(i64 noundef 1024, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.134, i64 0, i64 0)) #14
  %70 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom419 = zext i32 %70 to i64
  %secret_ff_a = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom419, i32 24
  store i8* %call418, i8** %secret_ff_a, align 8, !tbaa !22
  %call421 = call i8* @app_malloc(i64 noundef 1024, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.135, i64 0, i64 0)) #14
  %71 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom422 = zext i32 %71 to i64
  %secret_ff_b = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom422, i32 25
  store i8* %call421, i8** %secret_ff_b, align 8, !tbaa !23
  %inc = add i32 %71, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  %cmp358 = icmp ult i32 %inc, %53
  br i1 %cmp358, label %for.body360, label %for.end425, !llvm.loop !24

for.end425:                                       ; preds = %if.end375
  %tobool426.not = icmp eq i32 %multi.0, 0
  br i1 %tobool426.not, label %if.end431, label %land.lhs.true427

land.lhs.true427:                                 ; preds = %for.end425
  %call428 = call fastcc i32 @do_multi(i32 noundef %multi.0, i32 noundef %size_num.0) #17
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %if.end431, label %show_res

if.end431:                                        ; preds = %land.lhs.true427, %for.end425
  %call432 = call %struct.engine_st* @setup_engine_methods(i8* noundef %engine_id.0, i32 noundef -1, i32 noundef 0) #14
  %cmp433 = icmp ne i32 %call135, 0
  %72 = load i8, i8* %arrayidx, align 1
  %tobool437 = icmp ne i8 %72, 0
  %or.cond3666 = select i1 %cmp433, i1 true, i1 %tobool437
  %73 = load i8, i8* %arrayidx77, align 1
  %tobool440 = icmp ne i8 %73, 0
  %or.cond3667 = select i1 %or.cond3666, i1 true, i1 %tobool440
  %74 = load i8, i8* %arrayidx87, align 4
  %tobool443 = icmp ne i8 %74, 0
  %or.cond3668 = select i1 %or.cond3667, i1 true, i1 %tobool443
  br i1 %or.cond3668, label %if.end513, label %if.then444

if.then444:                                       ; preds = %if.end431
  %call446 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 1, i64 noundef 29) #14
  store i8 0, i8* %arrayidx87, align 4, !tbaa !11
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %call449 = call i32 @ERR_set_mark() #14
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body453

for.cond465.preheader:                            ; preds = %for.inc462
  store i32 10, i32* %i, align 4, !tbaa !7
  br label %for.body468

for.body453:                                      ; preds = %if.then444, %for.inc462
  %storemerge45444833 = phi i32 [ 0, %if.then444 ], [ %inc463, %for.inc462 ]
  %idxprom454 = zext i32 %storemerge45444833 to i64
  %arrayidx455 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom454
  %75 = load i8*, i8** %arrayidx455, align 8, !tbaa !3
  %call456 = call fastcc i32 @have_md(i8* noundef %75) #17
  %tobool457.not = icmp eq i32 %call456, 0
  %76 = load i32, i32* %i, align 4, !tbaa !7
  br i1 %tobool457.not, label %if.then458, label %for.inc462

if.then458:                                       ; preds = %for.body453
  %idxprom459 = zext i32 %76 to i64
  %arrayidx460 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %idxprom459
  store i8 0, i8* %arrayidx460, align 1, !tbaa !11
  br label %for.inc462

for.inc462:                                       ; preds = %for.body453, %if.then458
  %inc463 = add i32 %76, 1
  store i32 %inc463, i32* %i, align 4, !tbaa !7
  %cmp451 = icmp ult i32 %inc463, 9
  br i1 %cmp451, label %for.body453, label %for.cond465.preheader, !llvm.loop !25

for.body468:                                      ; preds = %for.cond465.preheader, %for.inc477
  %storemerge45454834 = phi i32 [ 10, %for.cond465.preheader ], [ %inc478, %for.inc477 ]
  %idxprom469 = zext i32 %storemerge45454834 to i64
  %arrayidx470 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom469
  %77 = load i8*, i8** %arrayidx470, align 8, !tbaa !3
  %call471 = call fastcc i32 @have_cipher(i8* noundef %77) #17
  %tobool472.not = icmp eq i32 %call471, 0
  %78 = load i32, i32* %i, align 4, !tbaa !7
  br i1 %tobool472.not, label %if.then473, label %for.inc477

if.then473:                                       ; preds = %for.body468
  %idxprom474 = zext i32 %78 to i64
  %arrayidx475 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %idxprom474
  store i8 0, i8* %arrayidx475, align 1, !tbaa !11
  br label %for.inc477

for.inc477:                                       ; preds = %for.body468, %if.then473
  %inc478 = add i32 %78, 1
  store i32 %inc478, i32* %i, align 4, !tbaa !7
  %cmp466 = icmp ult i32 %inc478, 25
  br i1 %cmp466, label %for.body468, label %for.end479, !llvm.loop !26

for.end479:                                       ; preds = %for.inc477
  %call480 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #14
  %call481 = call i8* @app_get0_propq() #14
  %call482 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call480, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call481) #14
  %cmp483.not = icmp eq %struct.evp_mac_st* %call482, null
  br i1 %cmp483.not, label %if.else486, label %if.then485

if.then485:                                       ; preds = %for.end479
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call482) #14
  br label %if.end488

if.else486:                                       ; preds = %for.end479
  %arrayidx487 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 26
  store i8 0, i8* %arrayidx487, align 2, !tbaa !11
  br label %if.end488

if.end488:                                        ; preds = %if.else486, %if.then485
  %call489 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #14
  %call490 = call i8* @app_get0_propq() #14
  %call491 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call489, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i8* noundef %call490) #14
  %cmp492.not = icmp eq %struct.evp_mac_st* %call491, null
  br i1 %cmp492.not, label %if.else495, label %if.then494

if.then494:                                       ; preds = %if.end488
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call491) #14
  br label %if.end497

if.else495:                                       ; preds = %if.end488
  store i8 0, i8* %arrayidx77, align 1, !tbaa !11
  br label %if.end497

if.end497:                                        ; preds = %if.else495, %if.then494
  %call498 = call i32 @ERR_pop_to_mark() #14
  %call500 = call i8* @memset(i8* noundef nonnull %6, i32 noundef 1, i64 noundef 7) #14
  %call502 = call i8* @memset(i8* noundef nonnull %7, i32 noundef 1, i64 noundef 5) #14
  %call504 = call i8* @memset(i8* noundef nonnull %8, i32 noundef 1, i64 noundef 3) #14
  %call506 = call i8* @memset(i8* noundef nonnull %10, i32 noundef 1, i64 noundef 22) #14
  %call508 = call i8* @memset(i8* noundef nonnull %11, i32 noundef 1, i64 noundef 24) #14
  %call510 = call i8* @memset(i8* noundef nonnull %12, i32 noundef 1, i64 noundef 2) #14
  %call512 = call i8* @memset(i8* noundef nonnull %9, i32 noundef 1, i64 noundef 1) #14
  %.pre5180 = load i8, i8* %arrayidx77, align 1, !tbaa !11
  br label %if.end513

if.end513:                                        ; preds = %if.end497, %if.end431
  %79 = phi i8 [ %.pre5180, %if.end497 ], [ %73, %if.end431 ]
  %80 = load i8, i8* %1, align 16, !tbaa !11
  %tobool520.not = icmp ne i8 %80, 0
  %inc522 = zext i1 %tobool520.not to i32
  %arrayidx519.1 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 1
  %81 = load i8, i8* %arrayidx519.1, align 1, !tbaa !11
  %tobool520.not.1 = icmp ne i8 %81, 0
  %inc522.1 = zext i1 %tobool520.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc522, %inc522.1
  %arrayidx519.2 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 2
  %82 = load i8, i8* %arrayidx519.2, align 2, !tbaa !11
  %tobool520.not.2 = icmp ne i8 %82, 0
  %inc522.2 = zext i1 %tobool520.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc522.2
  %arrayidx519.3 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 3
  %83 = load i8, i8* %arrayidx519.3, align 1, !tbaa !11
  %tobool520.not.3 = icmp ne i8 %83, 0
  %inc522.3 = zext i1 %tobool520.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc522.3
  %arrayidx519.4 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 4
  %84 = load i8, i8* %arrayidx519.4, align 4, !tbaa !11
  %tobool520.not.4 = icmp ne i8 %84, 0
  %inc522.4 = zext i1 %tobool520.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc522.4
  %arrayidx519.5 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 5
  %85 = load i8, i8* %arrayidx519.5, align 1, !tbaa !11
  %tobool520.not.5 = icmp ne i8 %85, 0
  %inc522.5 = zext i1 %tobool520.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc522.5
  %arrayidx519.6 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 6
  %86 = load i8, i8* %arrayidx519.6, align 2, !tbaa !11
  %tobool520.not.6 = icmp ne i8 %86, 0
  %inc522.6 = zext i1 %tobool520.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc522.6
  %arrayidx519.7 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 7
  %87 = load i8, i8* %arrayidx519.7, align 1, !tbaa !11
  %tobool520.not.7 = icmp ne i8 %87, 0
  %inc522.7 = zext i1 %tobool520.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc522.7
  %arrayidx519.8 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 8
  %88 = load i8, i8* %arrayidx519.8, align 8, !tbaa !11
  %tobool520.not.8 = icmp ne i8 %88, 0
  %inc522.8 = zext i1 %tobool520.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc522.8
  %tobool520.not.9 = icmp ne i8 %79, 0
  %inc522.9 = zext i1 %tobool520.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc522.9
  %arrayidx519.10 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 10
  %89 = load i8, i8* %arrayidx519.10, align 2, !tbaa !11
  %tobool520.not.10 = icmp ne i8 %89, 0
  %inc522.10 = zext i1 %tobool520.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc522.10
  %arrayidx519.11 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 11
  %90 = load i8, i8* %arrayidx519.11, align 1, !tbaa !11
  %tobool520.not.11 = icmp ne i8 %90, 0
  %inc522.11 = zext i1 %tobool520.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc522.11
  %arrayidx519.12 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 12
  %91 = load i8, i8* %arrayidx519.12, align 4, !tbaa !11
  %tobool520.not.12 = icmp ne i8 %91, 0
  %inc522.12 = zext i1 %tobool520.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc522.12
  %arrayidx519.13 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 13
  %92 = load i8, i8* %arrayidx519.13, align 1, !tbaa !11
  %tobool520.not.13 = icmp ne i8 %92, 0
  %inc522.13 = zext i1 %tobool520.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc522.13
  %arrayidx519.14 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 14
  %93 = load i8, i8* %arrayidx519.14, align 2, !tbaa !11
  %tobool520.not.14 = icmp ne i8 %93, 0
  %inc522.14 = zext i1 %tobool520.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc522.14
  %arrayidx519.15 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 15
  %94 = load i8, i8* %arrayidx519.15, align 1, !tbaa !11
  %tobool520.not.15 = icmp ne i8 %94, 0
  %inc522.15 = zext i1 %tobool520.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc522.15
  %arrayidx519.16 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 16
  %95 = load i8, i8* %arrayidx519.16, align 16, !tbaa !11
  %tobool520.not.16 = icmp ne i8 %95, 0
  %inc522.16 = zext i1 %tobool520.not.16 to i32
  %spec.select.16 = add nuw nsw i32 %spec.select.15, %inc522.16
  %arrayidx519.17 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 17
  %96 = load i8, i8* %arrayidx519.17, align 1, !tbaa !11
  %tobool520.not.17 = icmp ne i8 %96, 0
  %inc522.17 = zext i1 %tobool520.not.17 to i32
  %spec.select.17 = add nuw nsw i32 %spec.select.16, %inc522.17
  %arrayidx519.18 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 18
  %97 = load i8, i8* %arrayidx519.18, align 2, !tbaa !11
  %tobool520.not.18 = icmp ne i8 %97, 0
  %inc522.18 = zext i1 %tobool520.not.18 to i32
  %spec.select.18 = add nuw nsw i32 %spec.select.17, %inc522.18
  %arrayidx519.19 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 19
  %98 = load i8, i8* %arrayidx519.19, align 1, !tbaa !11
  %tobool520.not.19 = icmp ne i8 %98, 0
  %inc522.19 = zext i1 %tobool520.not.19 to i32
  %spec.select.19 = add nuw nsw i32 %spec.select.18, %inc522.19
  %arrayidx519.20 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 20
  %99 = load i8, i8* %arrayidx519.20, align 4, !tbaa !11
  %tobool520.not.20 = icmp ne i8 %99, 0
  %inc522.20 = zext i1 %tobool520.not.20 to i32
  %spec.select.20 = add nuw nsw i32 %spec.select.19, %inc522.20
  %arrayidx519.21 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 21
  %100 = load i8, i8* %arrayidx519.21, align 1, !tbaa !11
  %tobool520.not.21 = icmp ne i8 %100, 0
  %inc522.21 = zext i1 %tobool520.not.21 to i32
  %spec.select.21 = add nuw nsw i32 %spec.select.20, %inc522.21
  %arrayidx519.22 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 22
  %101 = load i8, i8* %arrayidx519.22, align 2, !tbaa !11
  %tobool520.not.22 = icmp ne i8 %101, 0
  %inc522.22 = zext i1 %tobool520.not.22 to i32
  %spec.select.22 = add nuw nsw i32 %spec.select.21, %inc522.22
  %arrayidx519.23 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 23
  %102 = load i8, i8* %arrayidx519.23, align 1, !tbaa !11
  %tobool520.not.23 = icmp ne i8 %102, 0
  %inc522.23 = zext i1 %tobool520.not.23 to i32
  %spec.select.23 = add nuw nsw i32 %spec.select.22, %inc522.23
  %arrayidx519.24 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 24
  %103 = load i8, i8* %arrayidx519.24, align 8, !tbaa !11
  %tobool520.not.24 = icmp ne i8 %103, 0
  %inc522.24 = zext i1 %tobool520.not.24 to i32
  %spec.select.24 = add nuw nsw i32 %spec.select.23, %inc522.24
  %104 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %tobool520.not.25 = icmp ne i8 %104, 0
  %inc522.25 = zext i1 %tobool520.not.25 to i32
  %spec.select.25 = add nuw nsw i32 %spec.select.24, %inc522.25
  %arrayidx519.26 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 26
  %105 = load i8, i8* %arrayidx519.26, align 2, !tbaa !11
  %tobool520.not.26 = icmp ne i8 %105, 0
  %inc522.26 = zext i1 %tobool520.not.26 to i32
  %spec.select.26 = add nuw nsw i32 %spec.select.25, %inc522.26
  %arrayidx519.27 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 27
  %106 = load i8, i8* %arrayidx519.27, align 1, !tbaa !11
  %tobool520.not.27 = icmp ne i8 %106, 0
  %inc522.27 = zext i1 %tobool520.not.27 to i32
  %spec.select.27 = add nuw nsw i32 %spec.select.26, %inc522.27
  %107 = load i8, i8* %arrayidx87, align 4, !tbaa !11
  %tobool520.not.28 = icmp ne i8 %107, 0
  %inc522.28 = zext i1 %tobool520.not.28 to i32
  %spec.select.28 = add nuw nsw i32 %spec.select.27, %inc522.28
  store i32 29, i32* %i, align 4, !tbaa !7
  %.b = load i1, i1* @usertime, align 4
  %not..b = xor i1 %.b, true
  %.b4518 = load i1, i1* @mr, align 4
  %or.cond3669 = select i1 %not..b, i1 true, i1 %.b4518
  br i1 %or.cond3669, label %if.end533, label %if.then531

if.then531:                                       ; preds = %if.end513
  %108 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call532 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %108, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.138, i64 0, i64 0)) #14
  br label %if.end533

if.end533:                                        ; preds = %if.then531, %if.end513
  %call534 = call void (i32)* @signal(i32 noundef 14, void (i32)* noundef nonnull @alarmed) #14
  %109 = load i8, i8* %1, align 16, !tbaa !11
  %tobool536.not = icmp eq i8 %109, 0
  br i1 %tobool536.not, label %if.end559, label %for.body541.lr.ph

for.body541.lr.ph:                                ; preds = %if.end533
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %110 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body541

for.body541:                                      ; preds = %for.body541.lr.ph, %for.inc556
  %storemerge46084838 = phi i32 [ 0, %for.body541.lr.ph ], [ %inc557, %for.inc556 ]
  %111 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 0), align 16, !tbaa !3
  %idxprom542 = zext i32 %storemerge46084838 to i64
  %112 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx545 = getelementptr inbounds i32, i32* %112, i64 %idxprom542
  %113 = load i32, i32* %arrayidx545, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %111, i32 noundef %113, i32 noundef %110) #17
  %call547 = call fastcc double @Time_F(i32 noundef 0) #17
  %call548 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Digest_MD2_loop, %struct.loopargs_st* noundef %54) #17
  %call550 = call fastcc double @Time_F(i32 noundef 1) #17
  %114 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 0, i32 noundef %114, i32 noundef %call548, double noundef %call550) #17
  %cmp552 = icmp slt i32 %call548, 0
  br i1 %cmp552, label %if.end559, label %for.inc556

for.inc556:                                       ; preds = %for.body541
  %115 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc557 = add i32 %115, 1
  store i32 %inc557, i32* @testnum, align 4, !tbaa !7
  %cmp539 = icmp ult i32 %inc557, %size_num.0
  br i1 %cmp539, label %for.body541, label %if.end559, !llvm.loop !29

if.end559:                                        ; preds = %for.body541, %for.inc556, %if.end533
  %116 = load i8, i8* %arrayidx519.1, align 1, !tbaa !11
  %tobool561.not = icmp eq i8 %116, 0
  br i1 %tobool561.not, label %if.end584, label %for.body566.lr.ph

for.body566.lr.ph:                                ; preds = %if.end559
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %117 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body566

for.body566:                                      ; preds = %for.body566.lr.ph, %for.inc581
  %storemerge46074840 = phi i32 [ 0, %for.body566.lr.ph ], [ %inc582, %for.inc581 ]
  %118 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 1), align 8, !tbaa !3
  %idxprom567 = zext i32 %storemerge46074840 to i64
  %119 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx570 = getelementptr inbounds i32, i32* %119, i64 %idxprom567
  %120 = load i32, i32* %arrayidx570, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %118, i32 noundef %120, i32 noundef %117) #17
  %call572 = call fastcc double @Time_F(i32 noundef 0) #17
  %call573 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Digest_MDC2_loop, %struct.loopargs_st* noundef %54) #17
  %call575 = call fastcc double @Time_F(i32 noundef 1) #17
  %121 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 1, i32 noundef %121, i32 noundef %call573, double noundef %call575) #17
  %cmp577 = icmp slt i32 %call573, 0
  br i1 %cmp577, label %if.end584, label %for.inc581

for.inc581:                                       ; preds = %for.body566
  %122 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc582 = add i32 %122, 1
  store i32 %inc582, i32* @testnum, align 4, !tbaa !7
  %cmp564 = icmp ult i32 %inc582, %size_num.0
  br i1 %cmp564, label %for.body566, label %if.end584, !llvm.loop !30

if.end584:                                        ; preds = %for.body566, %for.inc581, %if.end559
  %123 = load i8, i8* %arrayidx519.2, align 2, !tbaa !11
  %tobool586.not = icmp eq i8 %123, 0
  br i1 %tobool586.not, label %if.end609, label %for.body591.lr.ph

for.body591.lr.ph:                                ; preds = %if.end584
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %124 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body591

for.body591:                                      ; preds = %for.body591.lr.ph, %for.inc606
  %storemerge46064842 = phi i32 [ 0, %for.body591.lr.ph ], [ %inc607, %for.inc606 ]
  %125 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 2), align 16, !tbaa !3
  %idxprom592 = zext i32 %storemerge46064842 to i64
  %126 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx595 = getelementptr inbounds i32, i32* %126, i64 %idxprom592
  %127 = load i32, i32* %arrayidx595, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %125, i32 noundef %127, i32 noundef %124) #17
  %call597 = call fastcc double @Time_F(i32 noundef 0) #17
  %call598 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Digest_MD4_loop, %struct.loopargs_st* noundef %54) #17
  %call600 = call fastcc double @Time_F(i32 noundef 1) #17
  %128 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 2, i32 noundef %128, i32 noundef %call598, double noundef %call600) #17
  %cmp602 = icmp slt i32 %call598, 0
  br i1 %cmp602, label %if.end609, label %for.inc606

for.inc606:                                       ; preds = %for.body591
  %129 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc607 = add i32 %129, 1
  store i32 %inc607, i32* @testnum, align 4, !tbaa !7
  %cmp589 = icmp ult i32 %inc607, %size_num.0
  br i1 %cmp589, label %for.body591, label %if.end609, !llvm.loop !31

if.end609:                                        ; preds = %for.body591, %for.inc606, %if.end584
  %130 = load i8, i8* %arrayidx519.3, align 1, !tbaa !11
  %tobool611.not = icmp eq i8 %130, 0
  br i1 %tobool611.not, label %if.end634, label %for.body616.lr.ph

for.body616.lr.ph:                                ; preds = %if.end609
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %131 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body616

for.body616:                                      ; preds = %for.body616.lr.ph, %for.inc631
  %storemerge46054844 = phi i32 [ 0, %for.body616.lr.ph ], [ %inc632, %for.inc631 ]
  %132 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 3), align 8, !tbaa !3
  %idxprom617 = zext i32 %storemerge46054844 to i64
  %133 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx620 = getelementptr inbounds i32, i32* %133, i64 %idxprom617
  %134 = load i32, i32* %arrayidx620, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %132, i32 noundef %134, i32 noundef %131) #17
  %call622 = call fastcc double @Time_F(i32 noundef 0) #17
  %call623 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @MD5_loop, %struct.loopargs_st* noundef %54) #17
  %call625 = call fastcc double @Time_F(i32 noundef 1) #17
  %135 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 3, i32 noundef %135, i32 noundef %call623, double noundef %call625) #17
  %cmp627 = icmp slt i32 %call623, 0
  br i1 %cmp627, label %if.end634, label %for.inc631

for.inc631:                                       ; preds = %for.body616
  %136 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc632 = add i32 %136, 1
  store i32 %inc632, i32* @testnum, align 4, !tbaa !7
  %cmp614 = icmp ult i32 %inc632, %size_num.0
  br i1 %cmp614, label %for.body616, label %if.end634, !llvm.loop !32

if.end634:                                        ; preds = %for.body616, %for.inc631, %if.end609
  %137 = load i8, i8* %arrayidx519.4, align 4, !tbaa !11
  %tobool636.not = icmp eq i8 %137, 0
  br i1 %tobool636.not, label %if.end659, label %for.body641.lr.ph

for.body641.lr.ph:                                ; preds = %if.end634
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %138 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body641

for.body641:                                      ; preds = %for.body641.lr.ph, %for.inc656
  %storemerge46044846 = phi i32 [ 0, %for.body641.lr.ph ], [ %inc657, %for.inc656 ]
  %139 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 4), align 16, !tbaa !3
  %idxprom642 = zext i32 %storemerge46044846 to i64
  %140 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx645 = getelementptr inbounds i32, i32* %140, i64 %idxprom642
  %141 = load i32, i32* %arrayidx645, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %139, i32 noundef %141, i32 noundef %138) #17
  %call647 = call fastcc double @Time_F(i32 noundef 0) #17
  %call648 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @SHA1_loop, %struct.loopargs_st* noundef %54) #17
  %call650 = call fastcc double @Time_F(i32 noundef 1) #17
  %142 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 4, i32 noundef %142, i32 noundef %call648, double noundef %call650) #17
  %cmp652 = icmp slt i32 %call648, 0
  br i1 %cmp652, label %if.end659, label %for.inc656

for.inc656:                                       ; preds = %for.body641
  %143 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc657 = add i32 %143, 1
  store i32 %inc657, i32* @testnum, align 4, !tbaa !7
  %cmp639 = icmp ult i32 %inc657, %size_num.0
  br i1 %cmp639, label %for.body641, label %if.end659, !llvm.loop !33

if.end659:                                        ; preds = %for.body641, %for.inc656, %if.end634
  %144 = load i8, i8* %arrayidx519.6, align 2, !tbaa !11
  %tobool661.not = icmp eq i8 %144, 0
  br i1 %tobool661.not, label %if.end684, label %for.body666.lr.ph

for.body666.lr.ph:                                ; preds = %if.end659
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %145 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body666

for.body666:                                      ; preds = %for.body666.lr.ph, %for.inc681
  %storemerge46034848 = phi i32 [ 0, %for.body666.lr.ph ], [ %inc682, %for.inc681 ]
  %146 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 6), align 16, !tbaa !3
  %idxprom667 = zext i32 %storemerge46034848 to i64
  %147 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx670 = getelementptr inbounds i32, i32* %147, i64 %idxprom667
  %148 = load i32, i32* %arrayidx670, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %146, i32 noundef %148, i32 noundef %145) #17
  %call672 = call fastcc double @Time_F(i32 noundef 0) #17
  %call673 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @SHA256_loop, %struct.loopargs_st* noundef %54) #17
  %call675 = call fastcc double @Time_F(i32 noundef 1) #17
  %149 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 6, i32 noundef %149, i32 noundef %call673, double noundef %call675) #17
  %cmp677 = icmp slt i32 %call673, 0
  br i1 %cmp677, label %if.end684, label %for.inc681

for.inc681:                                       ; preds = %for.body666
  %150 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc682 = add i32 %150, 1
  store i32 %inc682, i32* @testnum, align 4, !tbaa !7
  %cmp664 = icmp ult i32 %inc682, %size_num.0
  br i1 %cmp664, label %for.body666, label %if.end684, !llvm.loop !34

if.end684:                                        ; preds = %for.body666, %for.inc681, %if.end659
  %151 = load i8, i8* %arrayidx519.7, align 1, !tbaa !11
  %tobool686.not = icmp eq i8 %151, 0
  br i1 %tobool686.not, label %if.end709, label %for.body691.lr.ph

for.body691.lr.ph:                                ; preds = %if.end684
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %152 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body691

for.body691:                                      ; preds = %for.body691.lr.ph, %for.inc706
  %storemerge46024850 = phi i32 [ 0, %for.body691.lr.ph ], [ %inc707, %for.inc706 ]
  %153 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 7), align 8, !tbaa !3
  %idxprom692 = zext i32 %storemerge46024850 to i64
  %154 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx695 = getelementptr inbounds i32, i32* %154, i64 %idxprom692
  %155 = load i32, i32* %arrayidx695, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %153, i32 noundef %155, i32 noundef %152) #17
  %call697 = call fastcc double @Time_F(i32 noundef 0) #17
  %call698 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @SHA512_loop, %struct.loopargs_st* noundef %54) #17
  %call700 = call fastcc double @Time_F(i32 noundef 1) #17
  %156 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 7, i32 noundef %156, i32 noundef %call698, double noundef %call700) #17
  %cmp702 = icmp slt i32 %call698, 0
  br i1 %cmp702, label %if.end709, label %for.inc706

for.inc706:                                       ; preds = %for.body691
  %157 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc707 = add i32 %157, 1
  store i32 %inc707, i32* @testnum, align 4, !tbaa !7
  %cmp689 = icmp ult i32 %inc707, %size_num.0
  br i1 %cmp689, label %for.body691, label %if.end709, !llvm.loop !35

if.end709:                                        ; preds = %for.body691, %for.inc706, %if.end684
  %158 = load i8, i8* %arrayidx519.8, align 8, !tbaa !11
  %tobool711.not = icmp eq i8 %158, 0
  br i1 %tobool711.not, label %if.end734, label %for.body716.lr.ph

for.body716.lr.ph:                                ; preds = %if.end709
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %159 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body716

for.body716:                                      ; preds = %for.body716.lr.ph, %for.inc731
  %storemerge46014852 = phi i32 [ 0, %for.body716.lr.ph ], [ %inc732, %for.inc731 ]
  %160 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 8), align 16, !tbaa !3
  %idxprom717 = zext i32 %storemerge46014852 to i64
  %161 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx720 = getelementptr inbounds i32, i32* %161, i64 %idxprom717
  %162 = load i32, i32* %arrayidx720, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %160, i32 noundef %162, i32 noundef %159) #17
  %call722 = call fastcc double @Time_F(i32 noundef 0) #17
  %call723 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @WHIRLPOOL_loop, %struct.loopargs_st* noundef %54) #17
  %call725 = call fastcc double @Time_F(i32 noundef 1) #17
  %163 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 8, i32 noundef %163, i32 noundef %call723, double noundef %call725) #17
  %cmp727 = icmp slt i32 %call723, 0
  br i1 %cmp727, label %if.end734, label %for.inc731

for.inc731:                                       ; preds = %for.body716
  %164 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc732 = add i32 %164, 1
  store i32 %inc732, i32* @testnum, align 4, !tbaa !7
  %cmp714 = icmp ult i32 %inc732, %size_num.0
  br i1 %cmp714, label %for.body716, label %if.end734, !llvm.loop !36

if.end734:                                        ; preds = %for.body716, %for.inc731, %if.end709
  %165 = load i8, i8* %arrayidx519.5, align 1, !tbaa !11
  %tobool736.not = icmp eq i8 %165, 0
  br i1 %tobool736.not, label %if.end759, label %for.body741.lr.ph

for.body741.lr.ph:                                ; preds = %if.end734
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %166 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body741

for.body741:                                      ; preds = %for.body741.lr.ph, %for.inc756
  %storemerge46004854 = phi i32 [ 0, %for.body741.lr.ph ], [ %inc757, %for.inc756 ]
  %167 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 5), align 8, !tbaa !3
  %idxprom742 = zext i32 %storemerge46004854 to i64
  %168 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx745 = getelementptr inbounds i32, i32* %168, i64 %idxprom742
  %169 = load i32, i32* %arrayidx745, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %167, i32 noundef %169, i32 noundef %166) #17
  %call747 = call fastcc double @Time_F(i32 noundef 0) #17
  %call748 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Digest_RMD160_loop, %struct.loopargs_st* noundef %54) #17
  %call750 = call fastcc double @Time_F(i32 noundef 1) #17
  %170 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 5, i32 noundef %170, i32 noundef %call748, double noundef %call750) #17
  %cmp752 = icmp slt i32 %call748, 0
  br i1 %cmp752, label %if.end759, label %for.inc756

for.inc756:                                       ; preds = %for.body741
  %171 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc757 = add i32 %171, 1
  store i32 %inc757, i32* @testnum, align 4, !tbaa !7
  %cmp739 = icmp ult i32 %inc757, %size_num.0
  br i1 %cmp739, label %for.body741, label %if.end759, !llvm.loop !37

if.end759:                                        ; preds = %for.body741, %for.inc756, %if.end734
  %172 = load i8, i8* %arrayidx77, align 1, !tbaa !11
  %tobool761.not = icmp eq i8 %172, 0
  br i1 %tobool761.not, label %if.end843, label %if.then762

if.then762:                                       ; preds = %if.end759
  %call763 = call i64 @strlen(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @speed_main.hmac_key, i64 0, i64 0)) #15
  %173 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %173) #13
  %call765 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #14
  %call766 = call i8* @app_get0_propq() #14
  %call767 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call765, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i8* noundef %call766) #14
  %cmp768 = icmp eq %struct.evp_mac_st* %call767, null
  %174 = load i8*, i8** @evp_mac_mdname, align 8
  %cmp770 = icmp eq i8* %174, null
  %or.cond3670 = select i1 %cmp768, i1 true, i1 %cmp770
  br i1 %or.cond3670, label %cleanup840.thread, label %for.body787.preheader

for.body787.preheader:                            ; preds = %if.then762
  %call774 = call i64 @strlen(i8* noundef nonnull %174) #15
  %add775 = add i64 %call774, 7
  %call776 = call i8* @app_malloc(i64 noundef %add775, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i64 0, i64 0)) #14
  store i8* %call776, i8** @evp_hmac_name, align 8, !tbaa !3
  %175 = load i8*, i8** @evp_mac_mdname, align 8, !tbaa !3
  %call777 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %call776, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i64 0, i64 0), i8* noundef %175) #14
  %176 = load i8*, i8** @evp_hmac_name, align 8, !tbaa !3
  store i8* %176, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 9), align 8, !tbaa !3
  %arrayidx778 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %177 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %177) #13
  %178 = load i8*, i8** @evp_mac_mdname, align 8, !tbaa !3
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.141, i64 0, i64 0), i8* noundef %178, i64 noundef 0) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %173, i8* noundef nonnull align 8 dereferenceable(40) %177, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %177) #13
  %arrayidx779 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %179 = bitcast %struct.ossl_param_st* %tmp780 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %179) #13
  %sext = shl i64 %call763, 32
  %conv781 = ashr exact i64 %sext, 32
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp780, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @speed_main.hmac_key, i64 0, i64 0), i64 noundef %conv781) #14
  %180 = bitcast %struct.ossl_param_st* %arrayidx779 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %180, i8* noundef nonnull align 8 dereferenceable(40) %179, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %179) #13
  %arrayidx782 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %181 = bitcast %struct.ossl_param_st* %tmp783 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %181) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp783) #14
  %182 = bitcast %struct.ossl_param_st* %arrayidx782 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %182, i8* noundef nonnull align 8 dereferenceable(40) %181, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %181) #13
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body787

for.body812.lr.ph:                                ; preds = %for.inc806
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %183 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body812

for.body787:                                      ; preds = %for.body787.preheader, %for.inc806
  %call788 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef %call767) #14
  %184 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom789 = zext i32 %184 to i64
  %mctx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom789, i32 27
  store %struct.evp_mac_ctx_st* %call788, %struct.evp_mac_ctx_st** %mctx, align 8, !tbaa !40
  %cmp794 = icmp eq %struct.evp_mac_ctx_st* %call788, null
  br i1 %cmp794, label %cleanup840.thread, label %if.end797

if.end797:                                        ; preds = %for.body787
  %call802 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call788, %struct.ossl_param_st* noundef nonnull %arrayidx778) #14
  %tobool803.not = icmp eq i32 %call802, 0
  br i1 %tobool803.not, label %cleanup840.thread, label %for.inc806

for.inc806:                                       ; preds = %if.end797
  %185 = load i32, i32* %i, align 4, !tbaa !7
  %inc807 = add i32 %185, 1
  store i32 %inc807, i32* %i, align 4, !tbaa !7
  %cmp785 = icmp ult i32 %inc807, %53
  br i1 %cmp785, label %for.body787, label %for.body812.lr.ph, !llvm.loop !41

for.body812:                                      ; preds = %for.body812.lr.ph, %for.inc827
  %storemerge45984857 = phi i32 [ 0, %for.body812.lr.ph ], [ %inc828, %for.inc827 ]
  %186 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 9), align 8, !tbaa !3
  %idxprom813 = zext i32 %storemerge45984857 to i64
  %187 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx816 = getelementptr inbounds i32, i32* %187, i64 %idxprom813
  %188 = load i32, i32* %arrayidx816, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %186, i32 noundef %188, i32 noundef %183) #17
  %call818 = call fastcc double @Time_F(i32 noundef 0) #17
  %call819 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @HMAC_loop, %struct.loopargs_st* noundef %54) #17
  %call821 = call fastcc double @Time_F(i32 noundef 1) #17
  %189 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 9, i32 noundef %189, i32 noundef %call819, double noundef %call821) #17
  %cmp823 = icmp slt i32 %call819, 0
  br i1 %cmp823, label %for.body833.preheader, label %for.inc827

for.inc827:                                       ; preds = %for.body812
  %190 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc828 = add i32 %190, 1
  store i32 %inc828, i32* @testnum, align 4, !tbaa !7
  %cmp810 = icmp ult i32 %inc828, %size_num.0
  br i1 %cmp810, label %for.body812, label %for.body833.preheader, !llvm.loop !42

for.body833.preheader:                            ; preds = %for.body812, %for.inc827
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body833

for.body833:                                      ; preds = %for.body833.preheader, %for.body833
  %storemerge45994859 = phi i32 [ %inc838, %for.body833 ], [ 0, %for.body833.preheader ]
  %idxprom834 = zext i32 %storemerge45994859 to i64
  %mctx836 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom834, i32 27
  %191 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mctx836, align 8, !tbaa !40
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %191) #14
  %192 = load i32, i32* %i, align 4, !tbaa !7
  %inc838 = add i32 %192, 1
  store i32 %inc838, i32* %i, align 4, !tbaa !7
  %cmp831 = icmp ult i32 %inc838, %53
  br i1 %cmp831, label %for.body833, label %cleanup840, !llvm.loop !43

cleanup840.thread:                                ; preds = %for.body787, %if.end797, %if.then762
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %173) #13
  br label %end

cleanup840:                                       ; preds = %for.body833
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %call767) #14
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %173) #13
  br label %if.end843

if.end843:                                        ; preds = %cleanup840, %if.end759
  %193 = load i8, i8* %arrayidx519.10, align 2, !tbaa !11
  %tobool845.not = icmp eq i8 %193, 0
  br i1 %tobool845.not, label %if.end893, label %for.body851.preheader

for.body851.preheader:                            ; preds = %if.end843
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body851

for.body851:                                      ; preds = %for.body851.preheader, %for.body851
  %call852 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @speed_main.deskey, i64 0, i64 0), i32 noundef 8) #17
  %194 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom853 = zext i32 %194 to i64
  %ctx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom853, i32 26
  store %struct.evp_cipher_ctx_st* %call852, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !44
  %cmp858 = icmp ne %struct.evp_cipher_ctx_st* %call852, null
  %inc861 = add i32 %194, 1
  store i32 %inc861, i32* %i, align 4, !tbaa !7
  %cmp849 = icmp ult i32 %inc861, %53
  %195 = select i1 %cmp858, i1 %cmp849, i1 false
  br i1 %195, label %for.body851, label %for.end862, !llvm.loop !45

for.end862:                                       ; preds = %for.body851
  store i32 10, i32* @algindex, align 4, !tbaa !7
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp858, label %for.body869.preheader, label %for.body886.preheader

for.body869.preheader:                            ; preds = %for.end862
  %196 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body869

for.body886.preheader:                            ; preds = %for.body869, %for.end862
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body886

for.body869:                                      ; preds = %for.body869.preheader, %for.body869
  %storemerge45954862 = phi i32 [ %inc881, %for.body869 ], [ 0, %for.body869.preheader ]
  %197 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 10), align 16, !tbaa !3
  %idxprom870 = zext i32 %storemerge45954862 to i64
  %198 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx873 = getelementptr inbounds i32, i32* %198, i64 %idxprom870
  %199 = load i32, i32* %arrayidx873, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %197, i32 noundef %199, i32 noundef %196) #17
  %call875 = call fastcc double @Time_F(i32 noundef 0) #17
  %call876 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Cipher_loop, %struct.loopargs_st* noundef %54) #17
  %call878 = call fastcc double @Time_F(i32 noundef 1) #17
  %200 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 10, i32 noundef %200, i32 noundef %call876, double noundef %call878) #17
  %201 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc881 = add i32 %201, 1
  store i32 %inc881, i32* @testnum, align 4, !tbaa !7
  %cmp866 = icmp ult i32 %inc881, %size_num.0
  br i1 %cmp866, label %for.body869, label %for.body886.preheader, !llvm.loop !46

for.body886:                                      ; preds = %for.body886.preheader, %for.body886
  %storemerge45964864 = phi i32 [ %inc891, %for.body886 ], [ 0, %for.body886.preheader ]
  %idxprom887 = zext i32 %storemerge45964864 to i64
  %ctx889 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom887, i32 26
  %202 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx889, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %202) #14
  %203 = load i32, i32* %i, align 4, !tbaa !7
  %inc891 = add i32 %203, 1
  store i32 %inc891, i32* %i, align 4, !tbaa !7
  %cmp884 = icmp ult i32 %inc891, %53
  br i1 %cmp884, label %for.body886, label %if.end893, !llvm.loop !47

if.end893:                                        ; preds = %for.body886, %if.end843
  %204 = load i8, i8* %arrayidx519.11, align 1, !tbaa !11
  %tobool895.not = icmp eq i8 %204, 0
  br i1 %tobool895.not, label %for.body951.preheader, label %for.body904.preheader

for.body904.preheader:                            ; preds = %if.end893
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body904

for.body904:                                      ; preds = %for.body904.preheader, %for.body904
  %call905 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @speed_main.deskey, i64 0, i64 0), i32 noundef 24) #17
  %205 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom906 = zext i32 %205 to i64
  %ctx908 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom906, i32 26
  store %struct.evp_cipher_ctx_st* %call905, %struct.evp_cipher_ctx_st** %ctx908, align 8, !tbaa !44
  %cmp912 = icmp ne %struct.evp_cipher_ctx_st* %call905, null
  %inc915 = add i32 %205, 1
  store i32 %inc915, i32* %i, align 4, !tbaa !7
  %cmp901 = icmp ult i32 %inc915, %53
  %206 = select i1 %cmp912, i1 %cmp901, i1 false
  br i1 %206, label %for.body904, label %for.end916, !llvm.loop !48

for.end916:                                       ; preds = %for.body904
  store i32 11, i32* @algindex, align 4, !tbaa !7
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp912, label %for.body923.preheader, label %for.body940.preheader

for.body923.preheader:                            ; preds = %for.end916
  %207 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body923

for.body940.preheader:                            ; preds = %for.body923, %for.end916
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body940

for.body923:                                      ; preds = %for.body923.preheader, %for.body923
  %storemerge45924868 = phi i32 [ %inc935, %for.body923 ], [ 0, %for.body923.preheader ]
  %208 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 11), align 8, !tbaa !3
  %idxprom924 = zext i32 %storemerge45924868 to i64
  %209 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx927 = getelementptr inbounds i32, i32* %209, i64 %idxprom924
  %210 = load i32, i32* %arrayidx927, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %208, i32 noundef %210, i32 noundef %207) #17
  %call929 = call fastcc double @Time_F(i32 noundef 0) #17
  %call930 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Cipher_loop, %struct.loopargs_st* noundef %54) #17
  %call932 = call fastcc double @Time_F(i32 noundef 1) #17
  %211 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 11, i32 noundef %211, i32 noundef %call930, double noundef %call932) #17
  %212 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc935 = add i32 %212, 1
  store i32 %inc935, i32* @testnum, align 4, !tbaa !7
  %cmp920 = icmp ult i32 %inc935, %size_num.0
  br i1 %cmp920, label %for.body923, label %for.body940.preheader, !llvm.loop !49

for.body940:                                      ; preds = %for.body940.preheader, %for.body940
  %storemerge45934870 = phi i32 [ %inc945, %for.body940 ], [ 0, %for.body940.preheader ]
  %idxprom941 = zext i32 %storemerge45934870 to i64
  %ctx943 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom941, i32 26
  %213 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx943, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %213) #14
  %214 = load i32, i32* %i, align 4, !tbaa !7
  %inc945 = add i32 %214, 1
  store i32 %inc945, i32* %i, align 4, !tbaa !7
  %cmp938 = icmp ult i32 %inc945, %53
  br i1 %cmp938, label %for.body940, label %for.body951.preheader, !llvm.loop !50

for.body951.preheader:                            ; preds = %for.body940, %if.end893
  %215 = load i32, i32* %sym, align 16
  br label %for.body951

for.body951:                                      ; preds = %for.body951.preheader, %for.inc1016
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc1016 ], [ 0, %for.body951.preheader ]
  %216 = add nuw nsw i64 %indvars.iv, 19
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* @algindex, align 4, !tbaa !7
  %arrayidx954 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %216
  %218 = load i8, i8* %arrayidx954, align 1, !tbaa !11
  %tobool955.not = icmp eq i8 %218, 0
  br i1 %tobool955.not, label %for.inc1016, label %for.body966.preheader

for.body966.preheader:                            ; preds = %for.body951
  store i32 0, i32* %i, align 4, !tbaa !7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %219 = shl i32 %indvars.iv.tr, 3
  %220 = add i32 %219, 16
  %sext5498 = shl i64 %216, 32
  %idxprom9675472 = ashr exact i64 %sext5498, 32
  %arrayidx9685473 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom9675472
  %221 = load i8*, i8** %arrayidx9685473, align 8, !tbaa !3
  %call9695474 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %221, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef %220) #17
  %222 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom9705475 = zext i32 %222 to i64
  %ctx9725476 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom9705475, i32 26
  store %struct.evp_cipher_ctx_st* %call9695474, %struct.evp_cipher_ctx_st** %ctx9725476, align 8, !tbaa !44
  %cmp9765477 = icmp ne %struct.evp_cipher_ctx_st* %call9695474, null
  %inc9795478 = add i32 %222, 1
  store i32 %inc9795478, i32* %i, align 4, !tbaa !7
  %cmp9635479 = icmp ult i32 %inc9795478, %53
  %223 = select i1 %cmp9765477, i1 %cmp9635479, i1 false
  br i1 %223, label %for.body966.for.body966_crit_edge, label %for.cond981.preheader, !llvm.loop !51

for.cond981.preheader:                            ; preds = %for.body966.for.body966_crit_edge, %for.body966.preheader
  %cmp976.lcssa = phi i1 [ %cmp9765477, %for.body966.preheader ], [ %cmp976, %for.body966.for.body966_crit_edge ]
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp976.lcssa, label %for.body987, label %for.body1008.preheader

for.body966.for.body966_crit_edge:                ; preds = %for.body966.preheader, %for.body966.for.body966_crit_edge
  %.pre5181 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom967 = sext i32 %.pre5181 to i64
  %arrayidx968 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom967
  %224 = load i8*, i8** %arrayidx968, align 8, !tbaa !3
  %call969 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %224, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef %220) #17
  %225 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom970 = zext i32 %225 to i64
  %ctx972 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom970, i32 26
  store %struct.evp_cipher_ctx_st* %call969, %struct.evp_cipher_ctx_st** %ctx972, align 8, !tbaa !44
  %cmp976 = icmp ne %struct.evp_cipher_ctx_st* %call969, null
  %inc979 = add i32 %225, 1
  store i32 %inc979, i32* %i, align 4, !tbaa !7
  %cmp963 = icmp ult i32 %inc979, %53
  %226 = select i1 %cmp976, i1 %cmp963, i1 false
  br i1 %226, label %for.body966.for.body966_crit_edge, label %for.cond981.preheader, !llvm.loop !51

for.body1008.preheader:                           ; preds = %for.body987, %for.cond981.preheader
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1008

for.body987:                                      ; preds = %for.cond981.preheader, %for.body987
  %storemerge45894874 = phi i32 [ %inc1003, %for.body987 ], [ 0, %for.cond981.preheader ]
  %227 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom988 = sext i32 %227 to i64
  %arrayidx989 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom988
  %228 = load i8*, i8** %arrayidx989, align 8, !tbaa !3
  %idxprom992 = zext i32 %storemerge45894874 to i64
  %229 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx995 = getelementptr inbounds i32, i32* %229, i64 %idxprom992
  %230 = load i32, i32* %arrayidx995, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %228, i32 noundef %230, i32 noundef %215) #17
  %call997 = call fastcc double @Time_F(i32 noundef 0) #17
  %call998 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Cipher_loop, %struct.loopargs_st* noundef %54) #17
  %call1000 = call fastcc double @Time_F(i32 noundef 1) #17
  %231 = load i32, i32* @algindex, align 4, !tbaa !7
  %232 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef %231, i32 noundef %232, i32 noundef %call998, double noundef %call1000) #17
  %233 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1003 = add i32 %233, 1
  store i32 %inc1003, i32* @testnum, align 4, !tbaa !7
  %cmp984 = icmp ult i32 %inc1003, %size_num.0
  br i1 %cmp984, label %for.body987, label %for.body1008.preheader, !llvm.loop !52

for.body1008:                                     ; preds = %for.body1008.preheader, %for.body1008
  %storemerge45904876 = phi i32 [ %inc1013, %for.body1008 ], [ 0, %for.body1008.preheader ]
  %idxprom1009 = zext i32 %storemerge45904876 to i64
  %ctx1011 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1009, i32 26
  %234 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1011, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %234) #14
  %235 = load i32, i32* %i, align 4, !tbaa !7
  %inc1013 = add i32 %235, 1
  store i32 %inc1013, i32* %i, align 4, !tbaa !7
  %cmp1006 = icmp ult i32 %inc1013, %53
  br i1 %cmp1006, label %for.body1008, label %for.inc1016, !llvm.loop !53

for.inc1016:                                      ; preds = %for.body1008, %for.body951
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.body1022.preheader, label %for.body951, !llvm.loop !54

for.body1022.preheader:                           ; preds = %for.inc1016
  %236 = load i32, i32* %sym, align 16
  br label %for.body1022

for.cond1090.preheader:                           ; preds = %for.inc1087
  store i32 12, i32* @algindex, align 4, !tbaa !7
  %237 = load i32, i32* %sym, align 16
  br label %for.body1093

for.body1022:                                     ; preds = %for.body1022.preheader, %for.inc1087
  %indvars.iv5113 = phi i64 [ %indvars.iv.next5114, %for.inc1087 ], [ 0, %for.body1022.preheader ]
  %238 = add nuw nsw i64 %indvars.iv5113, 22
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* @algindex, align 4, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %238
  %240 = load i8, i8* %arrayidx1025, align 1, !tbaa !11
  %tobool1026.not = icmp eq i8 %240, 0
  br i1 %tobool1026.not, label %for.inc1087, label %for.body1037.preheader

for.body1037.preheader:                           ; preds = %for.body1022
  store i32 0, i32* %i, align 4, !tbaa !7
  %indvars.iv5113.tr = trunc i64 %indvars.iv5113 to i32
  %241 = shl i32 %indvars.iv5113.tr, 3
  %242 = add i32 %241, 16
  %sext5499 = shl i64 %238, 32
  %idxprom10385480 = ashr exact i64 %sext5499, 32
  %arrayidx10395481 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom10385480
  %243 = load i8*, i8** %arrayidx10395481, align 8, !tbaa !3
  %call10405482 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %243, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef %242) #17
  %244 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom10415483 = zext i32 %244 to i64
  %ctx10435484 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom10415483, i32 26
  store %struct.evp_cipher_ctx_st* %call10405482, %struct.evp_cipher_ctx_st** %ctx10435484, align 8, !tbaa !44
  %cmp10475485 = icmp ne %struct.evp_cipher_ctx_st* %call10405482, null
  %inc10505486 = add i32 %244, 1
  store i32 %inc10505486, i32* %i, align 4, !tbaa !7
  %cmp10345487 = icmp ult i32 %inc10505486, %53
  %245 = select i1 %cmp10475485, i1 %cmp10345487, i1 false
  br i1 %245, label %for.body1037.for.body1037_crit_edge, label %for.cond1052.preheader, !llvm.loop !55

for.cond1052.preheader:                           ; preds = %for.body1037.for.body1037_crit_edge, %for.body1037.preheader
  %cmp1047.lcssa = phi i1 [ %cmp10475485, %for.body1037.preheader ], [ %cmp1047, %for.body1037.for.body1037_crit_edge ]
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp1047.lcssa, label %for.body1058, label %for.body1079.preheader

for.body1037.for.body1037_crit_edge:              ; preds = %for.body1037.preheader, %for.body1037.for.body1037_crit_edge
  %.pre5182 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom1038 = sext i32 %.pre5182 to i64
  %arrayidx1039 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom1038
  %246 = load i8*, i8** %arrayidx1039, align 8, !tbaa !3
  %call1040 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %246, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef %242) #17
  %247 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1041 = zext i32 %247 to i64
  %ctx1043 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1041, i32 26
  store %struct.evp_cipher_ctx_st* %call1040, %struct.evp_cipher_ctx_st** %ctx1043, align 8, !tbaa !44
  %cmp1047 = icmp ne %struct.evp_cipher_ctx_st* %call1040, null
  %inc1050 = add i32 %247, 1
  store i32 %inc1050, i32* %i, align 4, !tbaa !7
  %cmp1034 = icmp ult i32 %inc1050, %53
  %248 = select i1 %cmp1047, i1 %cmp1034, i1 false
  br i1 %248, label %for.body1037.for.body1037_crit_edge, label %for.cond1052.preheader, !llvm.loop !55

for.body1079.preheader:                           ; preds = %for.body1058, %for.cond1052.preheader
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1079

for.body1058:                                     ; preds = %for.cond1052.preheader, %for.body1058
  %storemerge45864882 = phi i32 [ %inc1074, %for.body1058 ], [ 0, %for.cond1052.preheader ]
  %249 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom1059 = sext i32 %249 to i64
  %arrayidx1060 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom1059
  %250 = load i8*, i8** %arrayidx1060, align 8, !tbaa !3
  %idxprom1063 = zext i32 %storemerge45864882 to i64
  %251 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1066 = getelementptr inbounds i32, i32* %251, i64 %idxprom1063
  %252 = load i32, i32* %arrayidx1066, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %250, i32 noundef %252, i32 noundef %236) #17
  %call1068 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1069 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Cipher_loop, %struct.loopargs_st* noundef %54) #17
  %call1071 = call fastcc double @Time_F(i32 noundef 1) #17
  %253 = load i32, i32* @algindex, align 4, !tbaa !7
  %254 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef %253, i32 noundef %254, i32 noundef %call1069, double noundef %call1071) #17
  %255 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1074 = add i32 %255, 1
  store i32 %inc1074, i32* @testnum, align 4, !tbaa !7
  %cmp1055 = icmp ult i32 %inc1074, %size_num.0
  br i1 %cmp1055, label %for.body1058, label %for.body1079.preheader, !llvm.loop !56

for.body1079:                                     ; preds = %for.body1079.preheader, %for.body1079
  %storemerge45874884 = phi i32 [ %inc1084, %for.body1079 ], [ 0, %for.body1079.preheader ]
  %idxprom1080 = zext i32 %storemerge45874884 to i64
  %ctx1082 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1080, i32 26
  %256 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1082, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %256) #14
  %257 = load i32, i32* %i, align 4, !tbaa !7
  %inc1084 = add i32 %257, 1
  store i32 %inc1084, i32* %i, align 4, !tbaa !7
  %cmp1077 = icmp ult i32 %inc1084, %53
  br i1 %cmp1077, label %for.body1079, label %for.inc1087, !llvm.loop !57

for.inc1087:                                      ; preds = %for.body1079, %for.body1022
  %indvars.iv.next5114 = add nuw nsw i64 %indvars.iv5113, 1
  %exitcond5119.not = icmp eq i64 %indvars.iv.next5114, 3
  br i1 %exitcond5119.not, label %for.cond1090.preheader, label %for.body1022, !llvm.loop !58

for.body1093:                                     ; preds = %for.cond1090.preheader, %for.inc1155
  %storemerge45474893 = phi i32 [ 12, %for.cond1090.preheader ], [ %inc1156, %for.inc1155 ]
  %idxprom1094 = sext i32 %storemerge45474893 to i64
  %arrayidx1095 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %idxprom1094
  %258 = load i8, i8* %arrayidx1095, align 1, !tbaa !11
  %tobool1096.not = icmp eq i8 %258, 0
  br i1 %tobool1096.not, label %for.inc1155, label %for.body1105.preheader

for.body1105.preheader:                           ; preds = %for.body1093
  store i32 0, i32* %i, align 4, !tbaa !7
  %idxprom11065489 = sext i32 %storemerge45474893 to i64
  %arrayidx11075490 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom11065489
  %259 = load i8*, i8** %arrayidx11075490, align 8, !tbaa !3
  %call11085491 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %259, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef 16) #17
  %260 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom11095492 = zext i32 %260 to i64
  %ctx11115493 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom11095492, i32 26
  store %struct.evp_cipher_ctx_st* %call11085491, %struct.evp_cipher_ctx_st** %ctx11115493, align 8, !tbaa !44
  %cmp11155494 = icmp ne %struct.evp_cipher_ctx_st* %call11085491, null
  %inc11185495 = add i32 %260, 1
  store i32 %inc11185495, i32* %i, align 4, !tbaa !7
  %cmp11025496 = icmp ult i32 %inc11185495, %53
  %261 = select i1 %cmp11155494, i1 %cmp11025496, i1 false
  br i1 %261, label %for.body1105.for.body1105_crit_edge, label %for.cond1120.preheader, !llvm.loop !59

for.cond1120.preheader:                           ; preds = %for.body1105.for.body1105_crit_edge, %for.body1105.preheader
  %cmp1115.lcssa = phi i1 [ %cmp11155494, %for.body1105.preheader ], [ %cmp1115, %for.body1105.for.body1105_crit_edge ]
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp1115.lcssa, label %for.body1126, label %for.body1147.preheader

for.body1105.for.body1105_crit_edge:              ; preds = %for.body1105.preheader, %for.body1105.for.body1105_crit_edge
  %.pre5183 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom1106 = sext i32 %.pre5183 to i64
  %arrayidx1107 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom1106
  %262 = load i8*, i8** %arrayidx1107, align 8, !tbaa !3
  %call1108 = call fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %262, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i32 noundef 16) #17
  %263 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1109 = zext i32 %263 to i64
  %ctx1111 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1109, i32 26
  store %struct.evp_cipher_ctx_st* %call1108, %struct.evp_cipher_ctx_st** %ctx1111, align 8, !tbaa !44
  %cmp1115 = icmp ne %struct.evp_cipher_ctx_st* %call1108, null
  %inc1118 = add i32 %263, 1
  store i32 %inc1118, i32* %i, align 4, !tbaa !7
  %cmp1102 = icmp ult i32 %inc1118, %53
  %264 = select i1 %cmp1115, i1 %cmp1102, i1 false
  br i1 %264, label %for.body1105.for.body1105_crit_edge, label %for.cond1120.preheader, !llvm.loop !59

for.body1147.preheader:                           ; preds = %for.body1126, %for.cond1120.preheader
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1147

for.body1126:                                     ; preds = %for.cond1120.preheader, %for.body1126
  %storemerge45834890 = phi i32 [ %inc1142, %for.body1126 ], [ 0, %for.cond1120.preheader ]
  %265 = load i32, i32* @algindex, align 4, !tbaa !7
  %idxprom1127 = sext i32 %265 to i64
  %arrayidx1128 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom1127
  %266 = load i8*, i8** %arrayidx1128, align 8, !tbaa !3
  %idxprom1131 = zext i32 %storemerge45834890 to i64
  %267 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1134 = getelementptr inbounds i32, i32* %267, i64 %idxprom1131
  %268 = load i32, i32* %arrayidx1134, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %266, i32 noundef %268, i32 noundef %237) #17
  %call1136 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1137 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Cipher_loop, %struct.loopargs_st* noundef %54) #17
  %call1139 = call fastcc double @Time_F(i32 noundef 1) #17
  %269 = load i32, i32* @algindex, align 4, !tbaa !7
  %270 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef %269, i32 noundef %270, i32 noundef %call1137, double noundef %call1139) #17
  %271 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1142 = add i32 %271, 1
  store i32 %inc1142, i32* @testnum, align 4, !tbaa !7
  %cmp1123 = icmp ult i32 %inc1142, %size_num.0
  br i1 %cmp1123, label %for.body1126, label %for.body1147.preheader, !llvm.loop !60

for.body1147:                                     ; preds = %for.body1147.preheader, %for.body1147
  %storemerge45844892 = phi i32 [ %inc1152, %for.body1147 ], [ 0, %for.body1147.preheader ]
  %idxprom1148 = zext i32 %storemerge45844892 to i64
  %ctx1150 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1148, i32 26
  %272 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1150, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %272) #14
  %273 = load i32, i32* %i, align 4, !tbaa !7
  %inc1152 = add i32 %273, 1
  store i32 %inc1152, i32* %i, align 4, !tbaa !7
  %cmp1145 = icmp ult i32 %inc1152, %53
  br i1 %cmp1145, label %for.body1147, label %for.inc1155, !llvm.loop !61

for.inc1155:                                      ; preds = %for.body1147, %for.body1093
  %274 = load i32, i32* @algindex, align 4, !tbaa !7
  %inc1156 = add nsw i32 %274, 1
  store i32 %inc1156, i32* @algindex, align 4, !tbaa !7
  %cmp1091 = icmp slt i32 %274, 18
  br i1 %cmp1091, label %for.body1093, label %for.end1157, !llvm.loop !62

for.end1157:                                      ; preds = %for.inc1155
  %275 = load i8, i8* %arrayidx519.26, align 2, !tbaa !11
  %tobool1159.not = icmp eq i8 %275, 0
  br i1 %tobool1159.not, label %if.end1235, label %if.then1160

if.then1160:                                      ; preds = %for.end1157
  %276 = bitcast [3 x %struct.ossl_param_st]* %params1161 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %276) #13
  %call1162 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #14
  %call1163 = call i8* @app_get0_propq() #14
  %call1164 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call1162, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i8* noundef %call1163) #14
  %cmp1165 = icmp eq %struct.evp_mac_st* %call1164, null
  br i1 %cmp1165, label %cleanup1232.thread, label %for.body1178.preheader

for.body1178.preheader:                           ; preds = %if.then1160
  %arrayidx1169 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1161, i64 0, i64 0
  %277 = bitcast %struct.ossl_param_st* %tmp1170 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %277) #13
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1170, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0), i64 noundef 0) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %276, i8* noundef nonnull align 8 dereferenceable(40) %277, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %277) #13
  %arrayidx1171 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1161, i64 0, i64 1
  %278 = bitcast %struct.ossl_param_st* %tmp1172 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %278) #13
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1172, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @speed_main.gmac_iv, i64 0, i64 0), i64 noundef 12) #14
  %279 = bitcast %struct.ossl_param_st* %arrayidx1171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %279, i8* noundef nonnull align 8 dereferenceable(40) %278, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %278) #13
  %arrayidx1173 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1161, i64 0, i64 2
  %280 = bitcast %struct.ossl_param_st* %tmp1174 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %280) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1174) #14
  %281 = bitcast %struct.ossl_param_st* %arrayidx1173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %281, i8* noundef nonnull align 8 dereferenceable(40) %280, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %280) #13
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1178

for.body1204.lr.ph:                               ; preds = %for.inc1198
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %282 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body1204

for.body1178:                                     ; preds = %for.body1178.preheader, %for.inc1198
  %call1179 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call1164) #14
  %283 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1180 = zext i32 %283 to i64
  %mctx1182 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1180, i32 27
  store %struct.evp_mac_ctx_st* %call1179, %struct.evp_mac_ctx_st** %mctx1182, align 8, !tbaa !40
  %cmp1186 = icmp eq %struct.evp_mac_ctx_st* %call1179, null
  br i1 %cmp1186, label %cleanup1232.thread, label %if.end1189

if.end1189:                                       ; preds = %for.body1178
  %call1194 = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef nonnull %call1179, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i64 noundef 16, %struct.ossl_param_st* noundef nonnull %arrayidx1169) #14
  %tobool1195.not = icmp eq i32 %call1194, 0
  br i1 %tobool1195.not, label %cleanup1232.thread, label %for.inc1198

for.inc1198:                                      ; preds = %if.end1189
  %284 = load i32, i32* %i, align 4, !tbaa !7
  %inc1199 = add i32 %284, 1
  store i32 %inc1199, i32* %i, align 4, !tbaa !7
  %cmp1176 = icmp ult i32 %inc1199, %53
  br i1 %cmp1176, label %for.body1178, label %for.body1204.lr.ph, !llvm.loop !63

for.body1204:                                     ; preds = %for.body1204.lr.ph, %for.inc1219
  %storemerge45804896 = phi i32 [ 0, %for.body1204.lr.ph ], [ %inc1220, %for.inc1219 ]
  %285 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 26), align 16, !tbaa !3
  %idxprom1205 = zext i32 %storemerge45804896 to i64
  %286 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1208 = getelementptr inbounds i32, i32* %286, i64 %idxprom1205
  %287 = load i32, i32* %arrayidx1208, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %285, i32 noundef %287, i32 noundef %282) #17
  %call1210 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1211 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @GHASH_loop, %struct.loopargs_st* noundef %54) #17
  %call1213 = call fastcc double @Time_F(i32 noundef 1) #17
  %288 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 26, i32 noundef %288, i32 noundef %call1211, double noundef %call1213) #17
  %cmp1215 = icmp slt i32 %call1211, 0
  br i1 %cmp1215, label %for.body1225.preheader, label %for.inc1219

for.inc1219:                                      ; preds = %for.body1204
  %289 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1220 = add i32 %289, 1
  store i32 %inc1220, i32* @testnum, align 4, !tbaa !7
  %cmp1202 = icmp ult i32 %inc1220, %size_num.0
  br i1 %cmp1202, label %for.body1204, label %for.body1225.preheader, !llvm.loop !64

for.body1225.preheader:                           ; preds = %for.body1204, %for.inc1219
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1225

for.body1225:                                     ; preds = %for.body1225.preheader, %for.body1225
  %storemerge45814898 = phi i32 [ %inc1230, %for.body1225 ], [ 0, %for.body1225.preheader ]
  %idxprom1226 = zext i32 %storemerge45814898 to i64
  %mctx1228 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1226, i32 27
  %290 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mctx1228, align 8, !tbaa !40
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %290) #14
  %291 = load i32, i32* %i, align 4, !tbaa !7
  %inc1230 = add i32 %291, 1
  store i32 %inc1230, i32* %i, align 4, !tbaa !7
  %cmp1223 = icmp ult i32 %inc1230, %53
  br i1 %cmp1223, label %for.body1225, label %cleanup1232, !llvm.loop !65

cleanup1232.thread:                               ; preds = %for.body1178, %if.end1189, %if.then1160
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %276) #13
  br label %end

cleanup1232:                                      ; preds = %for.body1225
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef nonnull %call1164) #14
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %276) #13
  br label %if.end1235

if.end1235:                                       ; preds = %cleanup1232, %for.end1157
  %292 = load i8, i8* %arrayidx519.27, align 1, !tbaa !11
  %tobool1237.not = icmp eq i8 %292, 0
  br i1 %tobool1237.not, label %if.end1256, label %for.body1242.lr.ph

for.body1242.lr.ph:                               ; preds = %if.end1235
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %293 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body1242

for.body1242:                                     ; preds = %for.body1242.lr.ph, %for.body1242
  %storemerge45784900 = phi i32 [ 0, %for.body1242.lr.ph ], [ %inc1254, %for.body1242 ]
  %294 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 27), align 8, !tbaa !3
  %idxprom1243 = zext i32 %storemerge45784900 to i64
  %295 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1246 = getelementptr inbounds i32, i32* %295, i64 %idxprom1243
  %296 = load i32, i32* %arrayidx1246, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %294, i32 noundef %296, i32 noundef %293) #17
  %call1248 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1249 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @RAND_bytes_loop, %struct.loopargs_st* noundef %54) #17
  %call1251 = call fastcc double @Time_F(i32 noundef 1) #17
  %297 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 27, i32 noundef %297, i32 noundef %call1249, double noundef %call1251) #17
  %298 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1254 = add i32 %298, 1
  store i32 %inc1254, i32* @testnum, align 4, !tbaa !7
  %cmp1240 = icmp ult i32 %inc1254, %size_num.0
  br i1 %cmp1240, label %for.body1242, label %if.end1256, !llvm.loop !66

if.end1256:                                       ; preds = %for.body1242, %if.end1235
  %299 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %tobool1258.not = icmp eq i8 %299, 0
  br i1 %tobool1258.not, label %if.end1417, label %if.then1259

if.then1259:                                      ; preds = %if.end1256
  %300 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %cmp1260.not = icmp eq %struct.evp_cipher_st* %300, null
  br i1 %cmp1260.not, label %if.else1390, label %if.then1262

if.then1262:                                      ; preds = %if.then1259
  br i1 %tobool313.not, label %if.end1269, label %land.lhs.true1264

land.lhs.true1264:                                ; preds = %if.then1262
  %call1265 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %300) #14
  %and1266 = and i64 %call1265, 4194304
  %tobool1267.not = icmp eq i64 %and1266, 0
  %.pre5184 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  br i1 %tobool1267.not, label %if.end1269, label %cleanup1387

if.end1269:                                       ; preds = %land.lhs.true1264, %if.then1262
  %301 = phi %struct.evp_cipher_st* [ %300, %if.then1262 ], [ %.pre5184, %land.lhs.true1264 ]
  %call1270 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %301) #14
  store i8* %call1270, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 25), align 8, !tbaa !3
  %302 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %call1271 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %302) #14
  %cmp1272 = icmp eq i32 %call1271, 7
  %brmerge = select i1 %cmp1272, i1 true, i1 %tobool299.not
  %EVP_Update_loop_ccm.mux = select i1 %cmp1272, i32 (i8*)* @EVP_Update_loop_ccm, i32 (i8*)* @EVP_Update_loop
  br i1 %brmerge, label %for.body1291.lr.ph, label %land.lhs.true1277

land.lhs.true1277:                                ; preds = %if.end1269
  %303 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %call1278 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %303) #14
  %and1279 = and i64 %call1278, 2097152
  %tobool1280.not = icmp eq i64 %and1279, 0
  br i1 %tobool1280.not, label %for.body1291.lr.ph, label %if.then1281

if.then1281:                                      ; preds = %land.lhs.true1277
  %304 = load i32*, i32** @lengths, align 8, !tbaa !3
  %cmp1282 = icmp eq i32* %304, getelementptr inbounds ([6 x i32], [6 x i32]* @lengths_list, i64 0, i64 0)
  br i1 %cmp1282, label %if.then1284, label %for.body1291.lr.ph

if.then1284:                                      ; preds = %if.then1281
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @aead_lengths_list, i64 0, i64 0), i32** @lengths, align 8, !tbaa !3
  br label %for.body1291.lr.ph

for.body1291.lr.ph:                               ; preds = %if.then1281, %if.then1284, %land.lhs.true1277, %if.end1269
  %size_num.2 = phi i32 [ 6, %if.then1284 ], [ %size_num.0, %if.then1281 ], [ %size_num.0, %land.lhs.true1277 ], [ %size_num.0, %if.end1269 ]
  %loopfunc.0 = phi i32 (i8*)* [ @EVP_Update_loop_aead, %if.then1284 ], [ @EVP_Update_loop_aead, %if.then1281 ], [ @EVP_Update_loop, %land.lhs.true1277 ], [ %EVP_Update_loop_ccm.mux, %if.end1269 ]
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %305 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body1300.preheader

for.body1300.preheader:                           ; preds = %for.end1382, %for.body1291.lr.ph
  %storemerge45774906 = phi i32 [ 0, %for.body1291.lr.ph ], [ %inc1385, %for.end1382 ]
  %306 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 25), align 8, !tbaa !3
  %idxprom1292 = zext i32 %storemerge45774906 to i64
  %307 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1295 = getelementptr inbounds i32, i32* %307, i64 %idxprom1292
  %308 = load i32, i32* %arrayidx1295, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %306, i32 noundef %308, i32 noundef %305) #17
  br label %for.body1300

for.body1300:                                     ; preds = %for.body1300.preheader, %for.inc1366
  %indvars.iv5120 = phi i64 [ 0, %for.body1300.preheader ], [ %indvars.iv.next5121, %for.inc1366 ]
  %call1301 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #14
  %ctx1304 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %indvars.iv5120, i32 26
  store %struct.evp_cipher_ctx_st* %call1301, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %cmp1308 = icmp eq %struct.evp_cipher_ctx_st* %call1301, null
  br i1 %cmp1308, label %if.then1310, label %if.end1312

if.then1310:                                      ; preds = %for.body1300
  %309 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1311 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %309, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.148, i64 0, i64 0)) #14
  call void @exit(i32 noundef 1) #16
  unreachable

if.end1312:                                       ; preds = %for.body1300
  %310 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %.b4509 = load i1, i1* @decrypt, align 4
  %not..b4509 = xor i1 %.b4509, true
  %cond1317 = zext i1 %not..b4509 to i32
  %call1318 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call1301, %struct.evp_cipher_st* noundef %310, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0), i32 noundef %cond1317) #14
  %tobool1319.not = icmp eq i32 %call1318, 0
  br i1 %tobool1319.not, label %if.then1320, label %if.end1322

if.then1320:                                      ; preds = %if.end1312
  %311 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1321 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %311, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.149, i64 0, i64 0)) #14
  %312 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %312) #14
  call void @exit(i32 noundef 1) #16
  unreachable

if.end1322:                                       ; preds = %if.end1312
  %313 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %call1326 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %313, i32 noundef 0) #14
  %314 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %call1330 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %314) #14
  %conv1331 = sext i32 %call1330 to i64
  %call1332 = call i8* @app_malloc(i64 noundef %conv1331, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i64 0, i64 0)) #14
  %key = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %indvars.iv5120, i32 6
  store i8* %call1332, i8** %key, align 8, !tbaa !67
  %315 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %call1341 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %315, i8* noundef %call1332) #14
  %316 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %317 = load i8*, i8** %key, align 8, !tbaa !67
  %call1348 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %316, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %317, i8* noundef null, i32 noundef -1) #14
  %tobool1349.not = icmp eq i32 %call1348, 0
  br i1 %tobool1349.not, label %if.then1350, label %if.end1352

if.then1350:                                      ; preds = %if.end1322
  %318 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1351 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %318, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.149, i64 0, i64 0)) #14
  %319 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %319) #14
  call void @exit(i32 noundef 1) #16
  unreachable

if.end1352:                                       ; preds = %if.end1322
  %320 = load i8*, i8** %key, align 8, !tbaa !67
  call void @CRYPTO_clear_free(i8* noundef %320, i64 noundef %conv1331, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 2231) #14
  %321 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  %call1357 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %321) #14
  %cmp1358 = icmp eq i32 %call1357, 65540
  br i1 %cmp1358, label %if.then1360, label %for.inc1366

if.then1360:                                      ; preds = %if.end1352
  %322 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1304, align 8, !tbaa !44
  %call1364 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %322, i32 noundef 39, i32 noundef 1, i8* noundef null) #14
  br label %for.inc1366

for.inc1366:                                      ; preds = %if.end1352, %if.then1360
  %indvars.iv.next5121 = add nuw nsw i64 %indvars.iv5120, 1
  %exitcond5123.not = icmp eq i64 %indvars.iv.next5121, %conv352
  br i1 %exitcond5123.not, label %for.body1376.preheader, label %for.body1300, !llvm.loop !68

for.body1376.preheader:                           ; preds = %for.inc1366
  %call1369 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1370 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull %loopfunc.0, %struct.loopargs_st* noundef nonnull %54) #17
  %call1372 = call fastcc double @Time_F(i32 noundef 1) #17
  br label %for.body1376

for.body1376:                                     ; preds = %for.body1376.preheader, %for.body1376
  %indvars.iv5124 = phi i64 [ 0, %for.body1376.preheader ], [ %indvars.iv.next5125, %for.body1376 ]
  %ctx1379 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %indvars.iv5124, i32 26
  %323 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx1379, align 8, !tbaa !44
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %323) #14
  %indvars.iv.next5125 = add nuw nsw i64 %indvars.iv5124, 1
  %exitcond5128.not = icmp eq i64 %indvars.iv.next5125, %conv352
  br i1 %exitcond5128.not, label %for.end1382, label %for.body1376, !llvm.loop !69

for.end1382:                                      ; preds = %for.body1376
  %324 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 25, i32 noundef %324, i32 noundef %call1370, double noundef %call1372) #17
  %325 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1385 = add i32 %325, 1
  store i32 %inc1385, i32* @testnum, align 4, !tbaa !7
  %cmp1289 = icmp ult i32 %inc1385, %size_num.2
  br i1 %cmp1289, label %for.body1300.preheader, label %if.end1417, !llvm.loop !70

cleanup1387:                                      ; preds = %land.lhs.true1264
  %326 = load i32, i32* %lengths_single, align 4, !tbaa !7
  call fastcc void @multiblock_speed(%struct.evp_cipher_st* noundef %.pre5184, i32 noundef %326, %struct.openssl_speed_sec_st* noundef nonnull %seconds) #17
  br label %end

if.else1390:                                      ; preds = %if.then1259
  %327 = load i8*, i8** @evp_md_name, align 8, !tbaa !3
  %cmp1391.not = icmp eq i8* %327, null
  br i1 %cmp1391.not, label %if.end1417, label %for.body1397.lr.ph

for.body1397.lr.ph:                               ; preds = %if.else1390
  store i8* %327, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 25), align 8, !tbaa !3
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %328 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body1397

for.body1397:                                     ; preds = %for.inc1412.for.body1397_crit_edge, %for.body1397.lr.ph
  %329 = phi i8* [ %327, %for.body1397.lr.ph ], [ %.pre5185, %for.inc1412.for.body1397_crit_edge ]
  %storemerge45764908 = phi i32 [ 0, %for.body1397.lr.ph ], [ %inc1413, %for.inc1412.for.body1397_crit_edge ]
  %idxprom1398 = zext i32 %storemerge45764908 to i64
  %330 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1401 = getelementptr inbounds i32, i32* %330, i64 %idxprom1398
  %331 = load i32, i32* %arrayidx1401, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %329, i32 noundef %331, i32 noundef %328) #17
  %call1403 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1404 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EVP_Digest_md_loop, %struct.loopargs_st* noundef %54) #17
  %call1406 = call fastcc double @Time_F(i32 noundef 1) #17
  %332 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 25, i32 noundef %332, i32 noundef %call1404, double noundef %call1406) #17
  %cmp1408 = icmp slt i32 %call1404, 0
  br i1 %cmp1408, label %if.end1417, label %for.inc1412

for.inc1412:                                      ; preds = %for.body1397
  %333 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1413 = add i32 %333, 1
  store i32 %inc1413, i32* @testnum, align 4, !tbaa !7
  %cmp1395 = icmp ult i32 %inc1413, %size_num.0
  br i1 %cmp1395, label %for.inc1412.for.body1397_crit_edge, label %if.end1417, !llvm.loop !71

for.inc1412.for.body1397_crit_edge:               ; preds = %for.inc1412
  %.pre5185 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 25), align 8, !tbaa !3
  br label %for.body1397

if.end1417:                                       ; preds = %for.end1382, %for.body1397, %for.inc1412, %if.else1390, %if.end1256
  %size_num.4 = phi i32 [ %size_num.0, %if.else1390 ], [ %size_num.0, %if.end1256 ], [ %size_num.0, %for.inc1412 ], [ %size_num.0, %for.body1397 ], [ %size_num.2, %for.end1382 ]
  %334 = load i8, i8* %arrayidx87, align 4, !tbaa !11
  %tobool1419.not = icmp eq i8 %334, 0
  br i1 %tobool1419.not, label %for.body1521.preheader, label %if.then1420

if.then1420:                                      ; preds = %if.end1417
  %335 = bitcast [3 x %struct.ossl_param_st]* %params1421 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %335) #13
  %336 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %336) #13
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call1422 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #14
  %call1423 = call i8* @app_get0_propq() #14
  %call1424 = call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call1422, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i8* noundef %call1423) #14
  %cmp1425 = icmp eq %struct.evp_mac_st* %call1424, null
  %337 = load i8*, i8** @evp_mac_ciphername, align 8
  %cmp1428 = icmp eq i8* %337, null
  %or.cond3671 = select i1 %cmp1425, i1 true, i1 %cmp1428
  br i1 %or.cond3671, label %cleanup1513.thread, label %if.end1431

if.end1431:                                       ; preds = %if.then1420
  %call1432 = call i32 @opt_cipher(i8* noundef nonnull %337, %struct.evp_cipher_st** noundef nonnull %cipher) #14
  %tobool1433.not = icmp eq i32 %call1432, 0
  br i1 %tobool1433.not, label %cleanup1513.thread, label %if.end1435

if.end1435:                                       ; preds = %if.end1431
  %338 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call1436 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %338) #14
  %339 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %339) #14
  %340 = add i32 %call1436, -33
  %341 = icmp ult i32 %340, -32
  br i1 %341, label %if.then1442, label %for.body1459.preheader

if.then1442:                                      ; preds = %if.end1435
  %342 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1443 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %342, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.152, i64 0, i64 0)) #14
  br label %cleanup1513.thread

for.body1459.preheader:                           ; preds = %if.end1435
  %343 = load i8*, i8** @evp_mac_ciphername, align 8, !tbaa !3
  %call1445 = call i64 @strlen(i8* noundef %343) #15
  %add1446 = add i64 %call1445, 7
  %call1447 = call i8* @app_malloc(i64 noundef %add1446, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i64 0, i64 0)) #14
  store i8* %call1447, i8** @evp_cmac_name, align 8, !tbaa !3
  %344 = load i8*, i8** @evp_mac_ciphername, align 8, !tbaa !3
  %call1448 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %call1447, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i64 0, i64 0), i8* noundef %344) #14
  %345 = load i8*, i8** @evp_cmac_name, align 8, !tbaa !3
  store i8* %345, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 28), align 16, !tbaa !3
  %arrayidx1449 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1421, i64 0, i64 0
  %346 = bitcast %struct.ossl_param_st* %tmp1450 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %346) #13
  %347 = load i8*, i8** @evp_mac_ciphername, align 8, !tbaa !3
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1450, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0), i8* noundef %347, i64 noundef 0) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %335, i8* noundef nonnull align 8 dereferenceable(40) %346, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %346) #13
  %arrayidx1451 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1421, i64 0, i64 1
  %348 = bitcast %struct.ossl_param_st* %tmp1452 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %348) #13
  %conv14534663 = zext i32 %call1436 to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1452, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @speed_main.key32, i64 0, i64 0), i64 noundef %conv14534663) #14
  %349 = bitcast %struct.ossl_param_st* %arrayidx1451 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %349, i8* noundef nonnull align 8 dereferenceable(40) %348, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %348) #13
  %arrayidx1454 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params1421, i64 0, i64 2
  %350 = bitcast %struct.ossl_param_st* %tmp1455 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %350) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp1455) #14
  %351 = bitcast %struct.ossl_param_st* %arrayidx1454 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %351, i8* noundef nonnull align 8 dereferenceable(40) %350, i64 40, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %350) #13
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1459

for.body1485.lr.ph:                               ; preds = %for.inc1479
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %352 = load i32, i32* %sym, align 16, !tbaa !27
  br label %for.body1485

for.body1459:                                     ; preds = %for.body1459.preheader, %for.inc1479
  %call1460 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef %call1424) #14
  %353 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1461 = zext i32 %353 to i64
  %mctx1463 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1461, i32 27
  store %struct.evp_mac_ctx_st* %call1460, %struct.evp_mac_ctx_st** %mctx1463, align 8, !tbaa !40
  %cmp1467 = icmp eq %struct.evp_mac_ctx_st* %call1460, null
  br i1 %cmp1467, label %cleanup1513.thread, label %if.end1470

if.end1470:                                       ; preds = %for.body1459
  %call1475 = call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call1460, %struct.ossl_param_st* noundef nonnull %arrayidx1449) #14
  %tobool1476.not = icmp eq i32 %call1475, 0
  br i1 %tobool1476.not, label %cleanup1513.thread, label %for.inc1479

for.inc1479:                                      ; preds = %if.end1470
  %354 = load i32, i32* %i, align 4, !tbaa !7
  %inc1480 = add i32 %354, 1
  store i32 %inc1480, i32* %i, align 4, !tbaa !7
  %cmp1457 = icmp ult i32 %inc1480, %53
  br i1 %cmp1457, label %for.body1459, label %for.body1485.lr.ph, !llvm.loop !72

for.body1485:                                     ; preds = %for.body1485.lr.ph, %for.inc1500
  %storemerge45744911 = phi i32 [ 0, %for.body1485.lr.ph ], [ %inc1501, %for.inc1500 ]
  %355 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @names, i64 0, i64 28), align 16, !tbaa !3
  %idxprom1486 = zext i32 %storemerge45744911 to i64
  %356 = load i32*, i32** @lengths, align 8, !tbaa !3
  %arrayidx1489 = getelementptr inbounds i32, i32* %356, i64 %idxprom1486
  %357 = load i32, i32* %arrayidx1489, align 4, !tbaa !7
  call fastcc void @print_message(i8* noundef %355, i32 noundef %357, i32 noundef %352) #17
  %call1491 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1492 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @CMAC_loop, %struct.loopargs_st* noundef %54) #17
  %call1494 = call fastcc double @Time_F(i32 noundef 1) #17
  %358 = load i32, i32* @testnum, align 4, !tbaa !7
  call fastcc void @print_result(i32 noundef 28, i32 noundef %358, i32 noundef %call1492, double noundef %call1494) #17
  %cmp1496 = icmp slt i32 %call1492, 0
  br i1 %cmp1496, label %for.body1506.preheader, label %for.inc1500

for.inc1500:                                      ; preds = %for.body1485
  %359 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc1501 = add i32 %359, 1
  store i32 %inc1501, i32* @testnum, align 4, !tbaa !7
  %cmp1483 = icmp ult i32 %inc1501, %size_num.4
  br i1 %cmp1483, label %for.body1485, label %for.body1506.preheader, !llvm.loop !73

for.body1506.preheader:                           ; preds = %for.body1485, %for.inc1500
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1506

for.body1506:                                     ; preds = %for.body1506.preheader, %for.body1506
  %storemerge45754913 = phi i32 [ %inc1511, %for.body1506 ], [ 0, %for.body1506.preheader ]
  %idxprom1507 = zext i32 %storemerge45754913 to i64
  %mctx1509 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1507, i32 27
  %360 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mctx1509, align 8, !tbaa !40
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %360) #14
  %361 = load i32, i32* %i, align 4, !tbaa !7
  %inc1511 = add i32 %361, 1
  store i32 %inc1511, i32* %i, align 4, !tbaa !7
  %cmp1504 = icmp ult i32 %inc1511, %53
  br i1 %cmp1504, label %for.body1506, label %cleanup1513, !llvm.loop !74

cleanup1513.thread:                               ; preds = %for.body1459, %if.end1470, %if.then1442, %if.then1420, %if.end1431
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %336) #13
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %335) #13
  br label %end

cleanup1513:                                      ; preds = %for.body1506
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %call1424) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %336) #13
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %335) #13
  br label %for.body1521.preheader

for.body1521.preheader:                           ; preds = %if.end1417, %cleanup1513
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body1521

for.cond1533.preheader:                           ; preds = %for.inc1530
  %362 = bitcast %struct.evp_pkey_st** %rsa_key to i8*
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %cmp1543 = icmp sgt i32 %primes.0, 2
  %363 = bitcast i8** %p to i8*
  %cmp15864917 = icmp ne i32 %53, 0
  br label %for.body1536

for.body1521:                                     ; preds = %for.body1521.preheader, %for.inc1530
  %storemerge45484915 = phi i32 [ %inc1531, %for.inc1530 ], [ 0, %for.body1521.preheader ]
  %idxprom1522 = zext i32 %storemerge45484915 to i64
  %buf1524 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1522, i32 2
  %364 = load i8*, i8** %buf1524, align 8, !tbaa !18
  %call1525 = call i32 @RAND_bytes(i8* noundef %364, i32 noundef 36) #14
  %cmp1526 = icmp slt i32 %call1525, 1
  br i1 %cmp1526, label %end, label %for.inc1530

for.inc1530:                                      ; preds = %for.body1521
  %365 = load i32, i32* %i, align 4, !tbaa !7
  %inc1531 = add i32 %365, 1
  store i32 %inc1531, i32* %i, align 4, !tbaa !7
  %cmp1519 = icmp ult i32 %inc1531, %53
  br i1 %cmp1519, label %for.body1521, label %for.cond1533.preheader, !llvm.loop !75

for.cond1758.preheader:                           ; preds = %cleanup1751
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %366 = load i32, i32* %dsa, align 8
  %367 = load i32, i32* %dsa, align 8
  br label %for.body1761

for.body1536:                                     ; preds = %for.cond1533.preheader, %cleanup1751
  %storemerge45494923 = phi i32 [ 0, %for.cond1533.preheader ], [ %inc1756, %cleanup1751 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %362) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %rsa_key, align 8, !tbaa !3
  %idxprom1538 = zext i32 %storemerge45494923 to i64
  %arrayidx1539 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 %idxprom1538
  %368 = load i8, i8* %arrayidx1539, align 1, !tbaa !11
  %tobool1540.not = icmp eq i8 %368, 0
  br i1 %tobool1540.not, label %cleanup1751, label %if.end1542

if.end1542:                                       ; preds = %for.body1536
  br i1 %cmp1543, label %if.then1545, label %if.else1573

if.then1545:                                      ; preds = %if.end1542
  %call1546 = call %struct.bignum_st* @BN_new() #14
  %cmp1547.not = icmp eq %struct.bignum_st* %call1546, null
  br i1 %cmp1547.not, label %land.end1572, label %land.lhs.true1549

land.lhs.true1549:                                ; preds = %if.then1545
  %call1550 = call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call1546, i64 noundef 65537) #14
  %tobool1551.not = icmp eq i32 %call1550, 0
  br i1 %tobool1551.not, label %land.end1572, label %land.lhs.true1552

land.lhs.true1552:                                ; preds = %land.lhs.true1549
  %call1553 = call i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef nonnull %genctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0), %struct.engine_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #14
  %tobool1554.not = icmp eq i32 %call1553, 0
  br i1 %tobool1554.not, label %land.end1572, label %land.lhs.true1555

land.lhs.true1555:                                ; preds = %land.lhs.true1552
  %369 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  %370 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1556 = zext i32 %370 to i64
  %bits = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1556, i32 2
  %371 = load i32, i32* %bits, align 4, !tbaa !76
  %call1558 = call i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef %369, i32 noundef %371) #14
  %cmp1559 = icmp sgt i32 %call1558, 0
  br i1 %cmp1559, label %land.lhs.true1561, label %land.end1572

land.lhs.true1561:                                ; preds = %land.lhs.true1555
  %372 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  %call1562 = call i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef %372, %struct.bignum_st* noundef nonnull %call1546) #14
  %cmp1563 = icmp sgt i32 %call1562, 0
  br i1 %cmp1563, label %land.lhs.true1565, label %land.end1572

land.lhs.true1565:                                ; preds = %land.lhs.true1561
  %373 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  %call1566 = call i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef %373, i32 noundef %primes.0) #14
  %cmp1567 = icmp sgt i32 %call1566, 0
  br i1 %cmp1567, label %land.rhs1569, label %land.end1572

land.rhs1569:                                     ; preds = %land.lhs.true1565
  %374 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  %call1570 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %374, %struct.evp_pkey_st** noundef nonnull %rsa_key) #14
  %tobool1571 = icmp ne i32 %call1570, 0
  br label %land.end1572

land.end1572:                                     ; preds = %land.rhs1569, %land.lhs.true1565, %land.lhs.true1561, %land.lhs.true1555, %land.lhs.true1552, %land.lhs.true1549, %if.then1545
  %375 = phi i1 [ false, %land.lhs.true1565 ], [ false, %land.lhs.true1561 ], [ false, %land.lhs.true1555 ], [ false, %land.lhs.true1552 ], [ false, %land.lhs.true1549 ], [ false, %if.then1545 ], [ %tobool1571, %land.rhs1569 ]
  call void @BN_free(%struct.bignum_st* noundef %call1546) #14
  %376 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %376) #14
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  br label %if.end1582

if.else1573:                                      ; preds = %if.end1542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %363) #13
  %data = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1538, i32 0
  %377 = load i8*, i8** %data, align 16, !tbaa !78
  store i8* %377, i8** %p, align 8, !tbaa !3
  %length = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1538, i32 1
  %378 = load i32, i32* %length, align 8, !tbaa !79
  %conv1578 = zext i32 %378 to i64
  %call1579 = call %struct.evp_pkey_st* @d2i_PrivateKey(i32 noundef 6, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv1578) #14
  store %struct.evp_pkey_st* %call1579, %struct.evp_pkey_st** %rsa_key, align 8, !tbaa !3
  %cmp1580 = icmp ne %struct.evp_pkey_st* %call1579, null
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %363) #13
  br label %if.end1582

if.end1582:                                       ; preds = %if.else1573, %land.end1572
  %st1537.0.in = phi i1 [ %375, %land.end1572 ], [ %cmp1580, %if.else1573 ]
  %st1537.0 = zext i1 %st1537.0.in to i32
  store i32 0, i32* %i, align 4, !tbaa !7
  %379 = select i1 %st1537.0.in, i1 %cmp15864917, i1 false
  br i1 %379, label %for.body1590, label %for.end1633

for.body1590:                                     ; preds = %if.end1582, %for.inc1631
  %380 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %rsa_key, align 8, !tbaa !3
  %call1591 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %380, %struct.engine_st* noundef null) #14
  %381 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1592 = zext i32 %381 to i64
  %382 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1594 = zext i32 %382 to i64
  %arrayidx1595 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1592, i32 8, i64 %idxprom1594
  store %struct.evp_pkey_ctx_st* %call1591, %struct.evp_pkey_ctx_st** %arrayidx1595, align 8, !tbaa !3
  %cmp1601 = icmp eq %struct.evp_pkey_ctx_st* %call1591, null
  br i1 %cmp1601, label %for.end1633.thread5226, label %lor.lhs.false1603

lor.lhs.false1603:                                ; preds = %for.body1590
  %call1609 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %call1591) #14
  %cmp1610 = icmp slt i32 %call1609, 1
  br i1 %cmp1610, label %for.end1633.thread5226, label %lor.lhs.false1612

lor.lhs.false1612:                                ; preds = %lor.lhs.false1603
  %383 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1613 = zext i32 %383 to i64
  %384 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1616 = zext i32 %384 to i64
  %arrayidx1617 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1613, i32 8, i64 %idxprom1616
  %385 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx1617, align 8, !tbaa !3
  %buf21620 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1613, i32 3
  %386 = load i8*, i8** %buf21620, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1613, i32 7
  %buf1625 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1613, i32 2
  %387 = load i8*, i8** %buf1625, align 8, !tbaa !18
  %call1626 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %385, i8* noundef %386, i64* noundef nonnull %sigsize, i8* noundef %387, i64 noundef 36) #14
  %cmp1627 = icmp slt i32 %call1626, 1
  br i1 %cmp1627, label %for.end1633.thread5226, label %for.inc1631

for.end1633.thread5226:                           ; preds = %lor.lhs.false1612, %lor.lhs.false1603, %for.body1590
  %388 = load i32, i32* %i, align 4, !tbaa !7
  %inc16325218 = add i32 %388, 1
  store i32 %inc16325218, i32* %i, align 4, !tbaa !7
  br label %if.then1635

for.inc1631:                                      ; preds = %lor.lhs.false1612
  %389 = load i32, i32* %i, align 4, !tbaa !7
  %inc1632 = add i32 %389, 1
  store i32 %inc1632, i32* %i, align 4, !tbaa !7
  %cmp1586 = icmp ult i32 %inc1632, %53
  br i1 %cmp1586, label %for.body1590, label %if.else1637, !llvm.loop !80

for.end1633:                                      ; preds = %if.end1582
  br i1 %st1537.0.in, label %if.else1637, label %if.then1635

if.then1635:                                      ; preds = %for.end1633.thread5226, %for.end1633
  %st1537.1.lcssa5229 = phi i32 [ 0, %for.end1633.thread5226 ], [ %st1537.0, %for.end1633 ]
  %390 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1636 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %390, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.156, i64 0, i64 0)) #14
  %391 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %391) #14
  br label %if.end1659

if.else1637:                                      ; preds = %for.inc1631, %for.end1633
  %st1537.1.lcssa5225 = phi i32 [ %st1537.0, %for.end1633 ], [ 1, %for.inc1631 ]
  %392 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1638 = zext i32 %392 to i64
  %bits1643 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1638, i32 2
  %393 = load i32, i32* %bits1643, align 4, !tbaa !76
  %394 = load i32, i32* %rsa, align 4, !tbaa !81
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i32 noundef %393, i32 noundef %394) #17
  %call1645 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1646 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @RSA_sign_loop, %struct.loopargs_st* noundef %54) #17
  %conv1647 = sext i32 %call1646 to i64
  %call1648 = call fastcc double @Time_F(i32 noundef 1) #17
  %395 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4541 = load i1, i1* @mr, align 4
  %cond1650 = select i1 %.b4541, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.159, i64 0, i64 0)
  %396 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1651 = zext i32 %396 to i64
  %bits1653 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1651, i32 2
  %397 = load i32, i32* %bits1653, align 4, !tbaa !76
  %call1654 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %395, i8* noundef %cond1650, i64 noundef %conv1647, i32 noundef %397, double noundef %call1648) #14
  %conv1655 = sitofp i32 %call1646 to double
  %div = fdiv double %conv1655, %call1648
  %398 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1656 = zext i32 %398 to i64
  %arrayidx1658 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %idxprom1656, i64 0
  store double %div, double* %arrayidx1658, align 16, !tbaa !82
  br label %if.end1659

if.end1659:                                       ; preds = %if.else1637, %if.then1635
  %st1537.1.lcssa5224 = phi i32 [ %st1537.1.lcssa5225, %if.else1637 ], [ %st1537.1.lcssa5229, %if.then1635 ]
  %op_count.1 = phi i64 [ %conv1647, %if.else1637 ], [ 1, %if.then1635 ]
  store i32 0, i32* %i, align 4, !tbaa !7
  %tobool16614920 = icmp ne i32 %st1537.1.lcssa5224, 0
  %399 = select i1 %tobool16614920, i1 %cmp15864917, i1 false
  br i1 %399, label %for.body1667, label %for.end1711

for.body1667:                                     ; preds = %if.end1659, %for.inc1709
  %400 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %rsa_key, align 8, !tbaa !3
  %call1668 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %400, %struct.engine_st* noundef null) #14
  %401 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1669 = zext i32 %401 to i64
  %402 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1671 = zext i32 %402 to i64
  %arrayidx1672 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1669, i32 9, i64 %idxprom1671
  store %struct.evp_pkey_ctx_st* %call1668, %struct.evp_pkey_ctx_st** %arrayidx1672, align 8, !tbaa !3
  %cmp1678 = icmp eq %struct.evp_pkey_ctx_st* %call1668, null
  br i1 %cmp1678, label %for.end1711.thread5235, label %lor.lhs.false1680

lor.lhs.false1680:                                ; preds = %for.body1667
  %call1686 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %call1668) #14
  %cmp1687 = icmp slt i32 %call1686, 1
  br i1 %cmp1687, label %for.end1711.thread5235, label %lor.lhs.false1689

lor.lhs.false1689:                                ; preds = %lor.lhs.false1680
  %403 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1690 = zext i32 %403 to i64
  %404 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1693 = zext i32 %404 to i64
  %arrayidx1694 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1690, i32 9, i64 %idxprom1693
  %405 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx1694, align 8, !tbaa !3
  %buf21697 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1690, i32 3
  %406 = load i8*, i8** %buf21697, align 8, !tbaa !19
  %sigsize1700 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1690, i32 7
  %407 = load i64, i64* %sigsize1700, align 8, !tbaa !84
  %buf1703 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1690, i32 2
  %408 = load i8*, i8** %buf1703, align 8, !tbaa !18
  %call1704 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %405, i8* noundef %406, i64 noundef %407, i8* noundef %408, i64 noundef 36) #14
  %cmp1705 = icmp slt i32 %call1704, 1
  br i1 %cmp1705, label %for.end1711.thread5235, label %for.inc1709

for.end1711.thread5235:                           ; preds = %lor.lhs.false1689, %lor.lhs.false1680, %for.body1667
  %409 = load i32, i32* %i, align 4, !tbaa !7
  %inc17105231 = add i32 %409, 1
  store i32 %inc17105231, i32* %i, align 4, !tbaa !7
  br label %if.then1713

for.inc1709:                                      ; preds = %lor.lhs.false1689
  %410 = load i32, i32* %i, align 4, !tbaa !7
  %inc1710 = add i32 %410, 1
  store i32 %inc1710, i32* %i, align 4, !tbaa !7
  %cmp1663 = icmp ult i32 %inc1710, %53
  br i1 %cmp1663, label %for.body1667, label %if.else1717, !llvm.loop !85

for.end1711:                                      ; preds = %if.end1659
  br i1 %tobool16614920, label %if.else1717, label %if.then1713

if.then1713:                                      ; preds = %for.end1711.thread5235, %for.end1711
  %411 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1714 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %411, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.160, i64 0, i64 0)) #14
  %412 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %412) #14
  %413 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1715 = zext i32 %413 to i64
  %arrayidx1716 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 %idxprom1715
  store i8 0, i8* %arrayidx1716, align 1, !tbaa !11
  br label %if.end1740

if.else1717:                                      ; preds = %for.inc1709, %for.end1711
  %414 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1718 = zext i32 %414 to i64
  %bits1723 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1718, i32 2
  %415 = load i32, i32* %bits1723, align 4, !tbaa !76
  %416 = load i32, i32* %rsa, align 4, !tbaa !81
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i32 noundef %415, i32 noundef %416) #17
  %call1725 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1726 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @RSA_verify_loop, %struct.loopargs_st* noundef %54) #17
  %conv1727 = sext i32 %call1726 to i64
  %call1728 = call fastcc double @Time_F(i32 noundef 1) #17
  %417 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4540 = load i1, i1* @mr, align 4
  %cond1730 = select i1 %.b4540, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.163, i64 0, i64 0)
  %418 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1731 = zext i32 %418 to i64
  %bits1733 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %idxprom1731, i32 2
  %419 = load i32, i32* %bits1733, align 4, !tbaa !76
  %call1734 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %417, i8* noundef %cond1730, i64 noundef %conv1727, i32 noundef %419, double noundef %call1728) #14
  %conv1735 = sitofp i32 %call1726 to double
  %div1736 = fdiv double %conv1735, %call1728
  %420 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1737 = zext i32 %420 to i64
  %arrayidx1739 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %idxprom1737, i64 1
  store double %div1736, double* %arrayidx1739, align 8, !tbaa !82
  br label %if.end1740

if.end1740:                                       ; preds = %if.else1717, %if.then1713
  %421 = phi i32 [ %420, %if.else1717 ], [ %413, %if.then1713 ]
  %cmp1741 = icmp slt i64 %op_count.1, 2
  br i1 %cmp1741, label %if.then1743, label %if.end1750

if.then1743:                                      ; preds = %if.end1740
  %idx.ext1745 = zext i32 %421 to i64
  %add.ptr1746 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 %idx.ext1745
  %sub1748 = sub nsw i64 7, %idx.ext1745
  %call1749 = call i8* @memset(i8* noundef nonnull %add.ptr1746, i32 noundef 0, i64 noundef %sub1748) #14
  br label %if.end1750

if.end1750:                                       ; preds = %if.then1743, %if.end1740
  %422 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %rsa_key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %422) #14
  %.pre5186 = load i32, i32* @testnum, align 4, !tbaa !7
  br label %cleanup1751

cleanup1751:                                      ; preds = %for.body1536, %if.end1750
  %423 = phi i32 [ %storemerge45494923, %for.body1536 ], [ %.pre5186, %if.end1750 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %362) #13
  %inc1756 = add i32 %423, 1
  store i32 %inc1756, i32* @testnum, align 4, !tbaa !7
  %cmp1534 = icmp ult i32 %inc1756, 7
  br i1 %cmp1534, label %for.body1536, label %for.cond1758.preheader, !llvm.loop !86

for.cond1946.preheader:                           ; preds = %cleanup1939
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %424 = load i32, i32* %ecdsa, align 4
  %425 = load i32, i32* %ecdsa, align 4
  br label %for.body1949

for.body1761:                                     ; preds = %for.cond1758.preheader, %cleanup1939
  %storemerge45504931 = phi i32 [ 0, %for.cond1758.preheader ], [ %inc1944, %cleanup1939 ]
  %idxprom1763 = zext i32 %storemerge45504931 to i64
  %arrayidx1764 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 %idxprom1763
  %426 = load i8, i8* %arrayidx1764, align 1, !tbaa !11
  %tobool1765.not = icmp eq i8 %426, 0
  br i1 %tobool1765.not, label %cleanup1939, label %if.end1767

if.end1767:                                       ; preds = %for.body1761
  %arrayidx1769 = getelementptr inbounds [3 x i32], [3 x i32]* @speed_main.dsa_bits, i64 0, i64 %idxprom1763
  %427 = load i32, i32* %arrayidx1769, align 4, !tbaa !7
  %call1770 = call %struct.evp_pkey_st* @get_dsa(i32 noundef %427) #17
  %cmp1771 = icmp ne %struct.evp_pkey_st* %call1770, null
  %conv1772 = zext i1 %cmp1771 to i32
  store i32 0, i32* %i, align 4, !tbaa !7
  %428 = select i1 %cmp1771, i1 %cmp15864917, i1 false
  br i1 %428, label %for.body1780, label %for.end1824

for.body1780:                                     ; preds = %if.end1767, %for.inc1822
  %call1781 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call1770, %struct.engine_st* noundef null) #14
  %429 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1782 = zext i32 %429 to i64
  %430 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1784 = zext i32 %430 to i64
  %arrayidx1785 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1782, i32 10, i64 %idxprom1784
  store %struct.evp_pkey_ctx_st* %call1781, %struct.evp_pkey_ctx_st** %arrayidx1785, align 8, !tbaa !3
  %cmp1791 = icmp eq %struct.evp_pkey_ctx_st* %call1781, null
  br i1 %cmp1791, label %for.end1824.thread5247, label %lor.lhs.false1793

lor.lhs.false1793:                                ; preds = %for.body1780
  %call1799 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %call1781) #14
  %cmp1800 = icmp slt i32 %call1799, 1
  br i1 %cmp1800, label %for.end1824.thread5247, label %lor.lhs.false1802

lor.lhs.false1802:                                ; preds = %lor.lhs.false1793
  %431 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1803 = zext i32 %431 to i64
  %432 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1806 = zext i32 %432 to i64
  %arrayidx1807 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1803, i32 10, i64 %idxprom1806
  %433 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx1807, align 8, !tbaa !3
  %buf21810 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1803, i32 3
  %434 = load i8*, i8** %buf21810, align 8, !tbaa !19
  %sigsize1813 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1803, i32 7
  %buf1816 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1803, i32 2
  %435 = load i8*, i8** %buf1816, align 8, !tbaa !18
  %call1817 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %433, i8* noundef %434, i64* noundef nonnull %sigsize1813, i8* noundef %435, i64 noundef 20) #14
  %cmp1818 = icmp slt i32 %call1817, 1
  br i1 %cmp1818, label %for.end1824.thread5247, label %for.inc1822

for.end1824.thread5247:                           ; preds = %lor.lhs.false1802, %lor.lhs.false1793, %for.body1780
  %436 = load i32, i32* %i, align 4, !tbaa !7
  %inc18235239 = add i32 %436, 1
  store i32 %inc18235239, i32* %i, align 4, !tbaa !7
  br label %if.then1826

for.inc1822:                                      ; preds = %lor.lhs.false1802
  %437 = load i32, i32* %i, align 4, !tbaa !7
  %inc1823 = add i32 %437, 1
  store i32 %inc1823, i32* %i, align 4, !tbaa !7
  %cmp1776 = icmp ult i32 %inc1823, %53
  br i1 %cmp1776, label %for.body1780, label %if.else1828, !llvm.loop !87

for.end1824:                                      ; preds = %if.end1767
  br i1 %cmp1771, label %if.else1828, label %if.then1826

if.then1826:                                      ; preds = %for.end1824.thread5247, %for.end1824
  %st1762.0.lcssa5250 = phi i32 [ 0, %for.end1824.thread5247 ], [ %conv1772, %for.end1824 ]
  %438 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1827 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %438, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.164, i64 0, i64 0)) #14
  %439 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %439) #14
  br label %if.end1849

if.else1828:                                      ; preds = %for.inc1822, %for.end1824
  %st1762.0.lcssa5246 = phi i32 [ %conv1772, %for.end1824 ], [ 1, %for.inc1822 ]
  %440 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1829 = zext i32 %440 to i64
  %arrayidx1833 = getelementptr inbounds [3 x i32], [3 x i32]* @speed_main.dsa_bits, i64 0, i64 %idxprom1829
  %441 = load i32, i32* %arrayidx1833, align 4, !tbaa !7
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0), i32 noundef %441, i32 noundef %366) #17
  %call1835 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1836 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @DSA_sign_loop, %struct.loopargs_st* noundef %54) #17
  %conv1837 = sext i32 %call1836 to i64
  %call1838 = call fastcc double @Time_F(i32 noundef 1) #17
  %442 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4539 = load i1, i1* @mr, align 4
  %cond1840 = select i1 %.b4539, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.166, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i64 0, i64 0)
  %443 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1841 = zext i32 %443 to i64
  %arrayidx1842 = getelementptr inbounds [3 x i32], [3 x i32]* @speed_main.dsa_bits, i64 0, i64 %idxprom1841
  %444 = load i32, i32* %arrayidx1842, align 4, !tbaa !7
  %call1843 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %442, i8* noundef %cond1840, i64 noundef %conv1837, i32 noundef %444, double noundef %call1838) #14
  %conv1844 = sitofp i32 %call1836 to double
  %div1845 = fdiv double %conv1844, %call1838
  %445 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1846 = zext i32 %445 to i64
  %arrayidx1848 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 %idxprom1846, i64 0
  store double %div1845, double* %arrayidx1848, align 16, !tbaa !82
  br label %if.end1849

if.end1849:                                       ; preds = %if.else1828, %if.then1826
  %st1762.0.lcssa5245 = phi i32 [ %st1762.0.lcssa5246, %if.else1828 ], [ %st1762.0.lcssa5250, %if.then1826 ]
  %op_count.4 = phi i64 [ %conv1837, %if.else1828 ], [ 1, %if.then1826 ]
  store i32 0, i32* %i, align 4, !tbaa !7
  %tobool18514928 = icmp ne i32 %st1762.0.lcssa5245, 0
  %446 = select i1 %tobool18514928, i1 %cmp15864917, i1 false
  br i1 %446, label %for.body1857, label %for.end1901

for.body1857:                                     ; preds = %if.end1849, %for.inc1899
  %call1858 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call1770, %struct.engine_st* noundef null) #14
  %447 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1859 = zext i32 %447 to i64
  %448 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1861 = zext i32 %448 to i64
  %arrayidx1862 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1859, i32 11, i64 %idxprom1861
  store %struct.evp_pkey_ctx_st* %call1858, %struct.evp_pkey_ctx_st** %arrayidx1862, align 8, !tbaa !3
  %cmp1868 = icmp eq %struct.evp_pkey_ctx_st* %call1858, null
  br i1 %cmp1868, label %for.end1901.thread5256, label %lor.lhs.false1870

lor.lhs.false1870:                                ; preds = %for.body1857
  %call1876 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %call1858) #14
  %cmp1877 = icmp slt i32 %call1876, 1
  br i1 %cmp1877, label %for.end1901.thread5256, label %lor.lhs.false1879

lor.lhs.false1879:                                ; preds = %lor.lhs.false1870
  %449 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1880 = zext i32 %449 to i64
  %450 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1883 = zext i32 %450 to i64
  %arrayidx1884 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1880, i32 11, i64 %idxprom1883
  %451 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx1884, align 8, !tbaa !3
  %buf21887 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1880, i32 3
  %452 = load i8*, i8** %buf21887, align 8, !tbaa !19
  %sigsize1890 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1880, i32 7
  %453 = load i64, i64* %sigsize1890, align 8, !tbaa !84
  %buf1893 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1880, i32 2
  %454 = load i8*, i8** %buf1893, align 8, !tbaa !18
  %call1894 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %451, i8* noundef %452, i64 noundef %453, i8* noundef %454, i64 noundef 36) #14
  %cmp1895 = icmp slt i32 %call1894, 1
  br i1 %cmp1895, label %for.end1901.thread5256, label %for.inc1899

for.end1901.thread5256:                           ; preds = %lor.lhs.false1879, %lor.lhs.false1870, %for.body1857
  %455 = load i32, i32* %i, align 4, !tbaa !7
  %inc19005252 = add i32 %455, 1
  store i32 %inc19005252, i32* %i, align 4, !tbaa !7
  br label %if.then1903

for.inc1899:                                      ; preds = %lor.lhs.false1879
  %456 = load i32, i32* %i, align 4, !tbaa !7
  %inc1900 = add i32 %456, 1
  store i32 %inc1900, i32* %i, align 4, !tbaa !7
  %cmp1853 = icmp ult i32 %inc1900, %53
  br i1 %cmp1853, label %for.body1857, label %if.else1907, !llvm.loop !88

for.end1901:                                      ; preds = %if.end1849
  br i1 %tobool18514928, label %if.else1907, label %if.then1903

if.then1903:                                      ; preds = %for.end1901.thread5256, %for.end1901
  %457 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1904 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %457, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.168, i64 0, i64 0)) #14
  %458 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %458) #14
  %459 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1905 = zext i32 %459 to i64
  %arrayidx1906 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 %idxprom1905
  store i8 0, i8* %arrayidx1906, align 1, !tbaa !11
  br label %if.end1928

if.else1907:                                      ; preds = %for.inc1899, %for.end1901
  %460 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1908 = zext i32 %460 to i64
  %arrayidx1912 = getelementptr inbounds [3 x i32], [3 x i32]* @speed_main.dsa_bits, i64 0, i64 %idxprom1908
  %461 = load i32, i32* %arrayidx1912, align 4, !tbaa !7
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0), i32 noundef %461, i32 noundef %367) #17
  %call1914 = call fastcc double @Time_F(i32 noundef 0) #17
  %call1915 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @DSA_verify_loop, %struct.loopargs_st* noundef %54) #17
  %conv1916 = sext i32 %call1915 to i64
  %call1917 = call fastcc double @Time_F(i32 noundef 1) #17
  %462 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4538 = load i1, i1* @mr, align 4
  %cond1919 = select i1 %.b4538, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.170, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.171, i64 0, i64 0)
  %463 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1920 = zext i32 %463 to i64
  %arrayidx1921 = getelementptr inbounds [3 x i32], [3 x i32]* @speed_main.dsa_bits, i64 0, i64 %idxprom1920
  %464 = load i32, i32* %arrayidx1921, align 4, !tbaa !7
  %call1922 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %462, i8* noundef %cond1919, i64 noundef %conv1916, i32 noundef %464, double noundef %call1917) #14
  %conv1923 = sitofp i32 %call1915 to double
  %div1924 = fdiv double %conv1923, %call1917
  %465 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1925 = zext i32 %465 to i64
  %arrayidx1927 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 %idxprom1925, i64 1
  store double %div1924, double* %arrayidx1927, align 8, !tbaa !82
  br label %if.end1928

if.end1928:                                       ; preds = %if.else1907, %if.then1903
  %466 = phi i32 [ %465, %if.else1907 ], [ %459, %if.then1903 ]
  %cmp1929 = icmp slt i64 %op_count.4, 2
  br i1 %cmp1929, label %if.then1931, label %if.end1938

if.then1931:                                      ; preds = %if.end1928
  %idx.ext1933 = zext i32 %466 to i64
  %add.ptr1934 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 %idx.ext1933
  %sub1936 = sub nsw i64 3, %idx.ext1933
  %call1937 = call i8* @memset(i8* noundef nonnull %add.ptr1934, i32 noundef 0, i64 noundef %sub1936) #14
  br label %if.end1938

if.end1938:                                       ; preds = %if.then1931, %if.end1928
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call1770) #14
  %.pre5187 = load i32, i32* @testnum, align 4, !tbaa !7
  br label %cleanup1939

cleanup1939:                                      ; preds = %for.body1761, %if.end1938
  %467 = phi i32 [ %storemerge45504931, %for.body1761 ], [ %.pre5187, %if.end1938 ]
  %inc1944 = add i32 %467, 1
  store i32 %inc1944, i32* @testnum, align 4, !tbaa !7
  %cmp1759 = icmp ult i32 %inc1944, 3
  br i1 %cmp1759, label %for.body1761, label %for.cond1946.preheader, !llvm.loop !89

for.cond2138.preheader:                           ; preds = %cleanup2131
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %468 = bitcast i64* %outlen to i8*
  %469 = bitcast i64* %test_outlen to i8*
  br label %for.body2141

for.body1949:                                     ; preds = %for.cond1946.preheader, %cleanup2131
  %storemerge45514939 = phi i32 [ 0, %for.cond1946.preheader ], [ %inc2136, %cleanup2131 ]
  %idxprom1951 = zext i32 %storemerge45514939 to i64
  %arrayidx1952 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 %idxprom1951
  %470 = load i8, i8* %arrayidx1952, align 1, !tbaa !11
  %tobool1953.not = icmp eq i8 %470, 0
  br i1 %tobool1953.not, label %cleanup2131, label %if.end1955

if.end1955:                                       ; preds = %for.body1949
  %arrayidx1957 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom1951
  %call1958 = call fastcc %struct.evp_pkey_st* @get_ecdsa(%struct.ec_curve_st* noundef nonnull %arrayidx1957) #17
  %cmp1959 = icmp ne %struct.evp_pkey_st* %call1958, null
  %conv1960 = zext i1 %cmp1959 to i32
  store i32 0, i32* %i, align 4, !tbaa !7
  %471 = select i1 %cmp1959, i1 %cmp15864917, i1 false
  br i1 %471, label %for.body1968, label %for.end2012

for.body1968:                                     ; preds = %if.end1955, %for.inc2010
  %call1969 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call1958, %struct.engine_st* noundef null) #14
  %472 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1970 = zext i32 %472 to i64
  %473 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1972 = zext i32 %473 to i64
  %arrayidx1973 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1970, i32 12, i64 %idxprom1972
  store %struct.evp_pkey_ctx_st* %call1969, %struct.evp_pkey_ctx_st** %arrayidx1973, align 8, !tbaa !3
  %cmp1979 = icmp eq %struct.evp_pkey_ctx_st* %call1969, null
  br i1 %cmp1979, label %for.end2012.thread5268, label %lor.lhs.false1981

lor.lhs.false1981:                                ; preds = %for.body1968
  %call1987 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %call1969) #14
  %cmp1988 = icmp slt i32 %call1987, 1
  br i1 %cmp1988, label %for.end2012.thread5268, label %lor.lhs.false1990

lor.lhs.false1990:                                ; preds = %lor.lhs.false1981
  %474 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom1991 = zext i32 %474 to i64
  %475 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom1994 = zext i32 %475 to i64
  %arrayidx1995 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1991, i32 12, i64 %idxprom1994
  %476 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx1995, align 8, !tbaa !3
  %buf21998 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1991, i32 3
  %477 = load i8*, i8** %buf21998, align 8, !tbaa !19
  %sigsize2001 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1991, i32 7
  %buf2004 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom1991, i32 2
  %478 = load i8*, i8** %buf2004, align 8, !tbaa !18
  %call2005 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %476, i8* noundef %477, i64* noundef nonnull %sigsize2001, i8* noundef %478, i64 noundef 20) #14
  %cmp2006 = icmp slt i32 %call2005, 1
  br i1 %cmp2006, label %for.end2012.thread5268, label %for.inc2010

for.end2012.thread5268:                           ; preds = %lor.lhs.false1990, %lor.lhs.false1981, %for.body1968
  %479 = load i32, i32* %i, align 4, !tbaa !7
  %inc20115260 = add i32 %479, 1
  store i32 %inc20115260, i32* %i, align 4, !tbaa !7
  br label %if.then2014

for.inc2010:                                      ; preds = %lor.lhs.false1990
  %480 = load i32, i32* %i, align 4, !tbaa !7
  %inc2011 = add i32 %480, 1
  store i32 %inc2011, i32* %i, align 4, !tbaa !7
  %cmp1964 = icmp ult i32 %inc2011, %53
  br i1 %cmp1964, label %for.body1968, label %if.else2016, !llvm.loop !90

for.end2012:                                      ; preds = %if.end1955
  br i1 %cmp1959, label %if.else2016, label %if.then2014

if.then2014:                                      ; preds = %for.end2012.thread5268, %for.end2012
  %st1950.0.lcssa5271 = phi i32 [ 0, %for.end2012.thread5268 ], [ %conv1960, %for.end2012 ]
  %481 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2015 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %481, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.172, i64 0, i64 0)) #14
  %482 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %482) #14
  br label %if.end2039

if.else2016:                                      ; preds = %for.inc2010, %for.end2012
  %st1950.0.lcssa5267 = phi i32 [ %conv1960, %for.end2012 ], [ 1, %for.inc2010 ]
  %483 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2017 = zext i32 %483 to i64
  %bits2022 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2017, i32 2
  %484 = load i32, i32* %bits2022, align 4, !tbaa !91
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i32 noundef %484, i32 noundef %424) #17
  %call2024 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2025 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @ECDSA_sign_loop, %struct.loopargs_st* noundef %54) #17
  %conv2026 = sext i32 %call2025 to i64
  %call2027 = call fastcc double @Time_F(i32 noundef 1) #17
  %485 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4537 = load i1, i1* @mr, align 4
  %cond2029 = select i1 %.b4537, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.174, i64 0, i64 0)
  %486 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2030 = zext i32 %486 to i64
  %bits2032 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2030, i32 2
  %487 = load i32, i32* %bits2032, align 4, !tbaa !91
  %call2033 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %485, i8* noundef %cond2029, i64 noundef %conv2026, i32 noundef %487, double noundef %call2027) #14
  %conv2034 = sitofp i32 %call2025 to double
  %div2035 = fdiv double %conv2034, %call2027
  %488 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2036 = zext i32 %488 to i64
  %arrayidx2038 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %idxprom2036, i64 0
  store double %div2035, double* %arrayidx2038, align 16, !tbaa !82
  br label %if.end2039

if.end2039:                                       ; preds = %if.else2016, %if.then2014
  %st1950.0.lcssa5266 = phi i32 [ %st1950.0.lcssa5267, %if.else2016 ], [ %st1950.0.lcssa5271, %if.then2014 ]
  %op_count.7 = phi i64 [ %conv2026, %if.else2016 ], [ 1, %if.then2014 ]
  store i32 0, i32* %i, align 4, !tbaa !7
  %tobool20414936 = icmp ne i32 %st1950.0.lcssa5266, 0
  %489 = select i1 %tobool20414936, i1 %cmp15864917, i1 false
  br i1 %489, label %for.body2047, label %for.end2091

for.body2047:                                     ; preds = %if.end2039, %for.inc2089
  %call2048 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call1958, %struct.engine_st* noundef null) #14
  %490 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2049 = zext i32 %490 to i64
  %491 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2051 = zext i32 %491 to i64
  %arrayidx2052 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2049, i32 13, i64 %idxprom2051
  store %struct.evp_pkey_ctx_st* %call2048, %struct.evp_pkey_ctx_st** %arrayidx2052, align 8, !tbaa !3
  %cmp2058 = icmp eq %struct.evp_pkey_ctx_st* %call2048, null
  br i1 %cmp2058, label %for.end2091.thread5277, label %lor.lhs.false2060

lor.lhs.false2060:                                ; preds = %for.body2047
  %call2066 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2048) #14
  %cmp2067 = icmp slt i32 %call2066, 1
  br i1 %cmp2067, label %for.end2091.thread5277, label %lor.lhs.false2069

lor.lhs.false2069:                                ; preds = %lor.lhs.false2060
  %492 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2070 = zext i32 %492 to i64
  %493 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2073 = zext i32 %493 to i64
  %arrayidx2074 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2070, i32 13, i64 %idxprom2073
  %494 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx2074, align 8, !tbaa !3
  %buf22077 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2070, i32 3
  %495 = load i8*, i8** %buf22077, align 8, !tbaa !19
  %sigsize2080 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2070, i32 7
  %496 = load i64, i64* %sigsize2080, align 8, !tbaa !84
  %buf2083 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2070, i32 2
  %497 = load i8*, i8** %buf2083, align 8, !tbaa !18
  %call2084 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %494, i8* noundef %495, i64 noundef %496, i8* noundef %497, i64 noundef 20) #14
  %cmp2085 = icmp slt i32 %call2084, 1
  br i1 %cmp2085, label %for.end2091.thread5277, label %for.inc2089

for.end2091.thread5277:                           ; preds = %lor.lhs.false2069, %lor.lhs.false2060, %for.body2047
  %498 = load i32, i32* %i, align 4, !tbaa !7
  %inc20905273 = add i32 %498, 1
  store i32 %inc20905273, i32* %i, align 4, !tbaa !7
  br label %if.then2093

for.inc2089:                                      ; preds = %lor.lhs.false2069
  %499 = load i32, i32* %i, align 4, !tbaa !7
  %inc2090 = add i32 %499, 1
  store i32 %inc2090, i32* %i, align 4, !tbaa !7
  %cmp2043 = icmp ult i32 %inc2090, %53
  br i1 %cmp2043, label %for.body2047, label %if.else2097, !llvm.loop !93

for.end2091:                                      ; preds = %if.end2039
  br i1 %tobool20414936, label %if.else2097, label %if.then2093

if.then2093:                                      ; preds = %for.end2091.thread5277, %for.end2091
  %500 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2094 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %500, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.175, i64 0, i64 0)) #14
  %501 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %501) #14
  %502 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2095 = zext i32 %502 to i64
  %arrayidx2096 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 %idxprom2095
  store i8 0, i8* %arrayidx2096, align 1, !tbaa !11
  br label %if.end2120

if.else2097:                                      ; preds = %for.inc2089, %for.end2091
  %503 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2098 = zext i32 %503 to i64
  %bits2103 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2098, i32 2
  %504 = load i32, i32* %bits2103, align 4, !tbaa !91
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i64 0, i64 0), i32 noundef %504, i32 noundef %425) #17
  %call2105 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2106 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @ECDSA_verify_loop, %struct.loopargs_st* noundef %54) #17
  %conv2107 = sext i32 %call2106 to i64
  %call2108 = call fastcc double @Time_F(i32 noundef 1) #17
  %505 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4536 = load i1, i1* @mr, align 4
  %cond2110 = select i1 %.b4536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.176, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.177, i64 0, i64 0)
  %506 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2111 = zext i32 %506 to i64
  %bits2113 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2111, i32 2
  %507 = load i32, i32* %bits2113, align 4, !tbaa !91
  %call2114 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %505, i8* noundef %cond2110, i64 noundef %conv2107, i32 noundef %507, double noundef %call2108) #14
  %conv2115 = sitofp i32 %call2106 to double
  %div2116 = fdiv double %conv2115, %call2108
  %508 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2117 = zext i32 %508 to i64
  %arrayidx2119 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %idxprom2117, i64 1
  store double %div2116, double* %arrayidx2119, align 8, !tbaa !82
  br label %if.end2120

if.end2120:                                       ; preds = %if.else2097, %if.then2093
  %509 = phi i32 [ %508, %if.else2097 ], [ %502, %if.then2093 ]
  %cmp2121 = icmp slt i64 %op_count.7, 2
  br i1 %cmp2121, label %if.then2123, label %cleanup2131

if.then2123:                                      ; preds = %if.end2120
  %idx.ext2125 = zext i32 %509 to i64
  %add.ptr2126 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 %idx.ext2125
  %sub2128 = sub nsw i64 22, %idx.ext2125
  %call2129 = call i8* @memset(i8* noundef nonnull %add.ptr2126, i32 noundef 0, i64 noundef %sub2128) #14
  %.pre5188 = load i32, i32* @testnum, align 4, !tbaa !7
  br label %cleanup2131

cleanup2131:                                      ; preds = %if.end2120, %if.then2123, %for.body1949
  %510 = phi i32 [ %509, %if.end2120 ], [ %.pre5188, %if.then2123 ], [ %storemerge45514939, %for.body1949 ]
  %inc2136 = add i32 %510, 1
  store i32 %inc2136, i32* @testnum, align 4, !tbaa !7
  %cmp1947 = icmp ult i32 %inc2136, 22
  br i1 %cmp1947, label %for.body1949, label %for.cond2138.preheader, !llvm.loop !94

for.cond2291.preheader:                           ; preds = %cleanup2285
  %511 = bitcast %struct.evp_pkey_st** %ed_pkey to i8*
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br label %for.body2294

for.body2141:                                     ; preds = %for.cond2138.preheader, %cleanup2285
  %storemerge45524941 = phi i32 [ 0, %for.cond2138.preheader ], [ %inc2289, %cleanup2285 ]
  %idxprom2142 = zext i32 %storemerge45524941 to i64
  %arrayidx2143 = getelementptr inbounds [24 x i8], [24 x i8]* %ecdh_doit, i64 0, i64 %idxprom2142
  %512 = load i8, i8* %arrayidx2143, align 1, !tbaa !11
  %tobool2144.not = icmp eq i8 %512, 0
  br i1 %tobool2144.not, label %cleanup2285, label %for.body2150.preheader

for.body2150.preheader:                           ; preds = %for.body2141
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2150

for.body2150:                                     ; preds = %for.inc2246, %for.body2150.preheader
  %513 = phi i32 [ %storemerge45524941, %for.body2150.preheader ], [ %.pre5189, %for.inc2246 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %468) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %469) #13
  %idxprom2152 = zext i32 %513 to i64
  %arrayidx2153 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2152
  %call2154 = call fastcc %struct.evp_pkey_st* @get_ecdsa(%struct.ec_curve_st* noundef nonnull %arrayidx2153) #17
  %cmp2155 = icmp eq %struct.evp_pkey_st* %call2154, null
  br i1 %cmp2155, label %if.end2274.thread, label %lor.lhs.false2157

lor.lhs.false2157:                                ; preds = %for.body2150
  %514 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2158 = zext i32 %514 to i64
  %arrayidx2159 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2158
  %call2160 = call fastcc %struct.evp_pkey_st* @get_ecdsa(%struct.ec_curve_st* noundef nonnull %arrayidx2159) #17
  %cmp2161 = icmp eq %struct.evp_pkey_st* %call2160, null
  br i1 %cmp2161, label %if.end2274.thread, label %lor.lhs.false2163

lor.lhs.false2163:                                ; preds = %lor.lhs.false2157
  %call2164 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call2154, %struct.engine_st* noundef null) #14
  %cmp2165 = icmp eq %struct.evp_pkey_ctx_st* %call2164, null
  br i1 %cmp2165, label %if.end2274.thread, label %lor.lhs.false2167

lor.lhs.false2167:                                ; preds = %lor.lhs.false2163
  %call2168 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2164) #14
  %cmp2169 = icmp slt i32 %call2168, 1
  br i1 %cmp2169, label %if.end2274.thread, label %lor.lhs.false2171

lor.lhs.false2171:                                ; preds = %lor.lhs.false2167
  %call2172 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call2164, %struct.evp_pkey_st* noundef nonnull %call2160) #14
  %cmp2173 = icmp slt i32 %call2172, 1
  br i1 %cmp2173, label %if.end2274.thread, label %lor.lhs.false2175

lor.lhs.false2175:                                ; preds = %lor.lhs.false2171
  %call2176 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2164, i8* noundef null, i64* noundef nonnull %outlen) #14
  %cmp2177 = icmp slt i32 %call2176, 1
  %515 = load i64, i64* %outlen, align 8
  %cmp2180 = icmp eq i64 %515, 0
  %or.cond3673 = select i1 %cmp2177, i1 true, i1 %cmp2180
  %cmp2183 = icmp ugt i64 %515, 256
  %or.cond3674 = select i1 %or.cond3673, i1 true, i1 %cmp2183
  br i1 %or.cond3674, label %if.end2274.thread, label %if.end2187

if.end2187:                                       ; preds = %lor.lhs.false2175
  %call2188 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call2160, %struct.engine_st* noundef null) #14
  %cmp2189 = icmp eq %struct.evp_pkey_ctx_st* %call2188, null
  br i1 %cmp2189, label %if.end2274.thread, label %lor.lhs.false2191

lor.lhs.false2191:                                ; preds = %if.end2187
  %call2192 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2188) #14
  %tobool2193.not = icmp eq i32 %call2192, 0
  br i1 %tobool2193.not, label %if.end2274.thread, label %lor.lhs.false2194

lor.lhs.false2194:                                ; preds = %lor.lhs.false2191
  %call2195 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call2188, %struct.evp_pkey_st* noundef nonnull %call2154) #14
  %tobool2196.not = icmp eq i32 %call2195, 0
  br i1 %tobool2196.not, label %if.end2274.thread, label %lor.lhs.false2197

lor.lhs.false2197:                                ; preds = %lor.lhs.false2194
  %call2198 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2188, i8* noundef null, i64* noundef nonnull %test_outlen) #14
  %tobool2199.not = icmp eq i32 %call2198, 0
  br i1 %tobool2199.not, label %if.end2274.thread, label %lor.lhs.false2200

lor.lhs.false2200:                                ; preds = %lor.lhs.false2197
  %516 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2201 = zext i32 %516 to i64
  %secret_a2203 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2201, i32 20
  %517 = load i8*, i8** %secret_a2203, align 8, !tbaa !20
  %call2204 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2164, i8* noundef %517, i64* noundef nonnull %outlen) #14
  %tobool2205.not = icmp eq i32 %call2204, 0
  br i1 %tobool2205.not, label %if.end2274.thread, label %lor.lhs.false2206

lor.lhs.false2206:                                ; preds = %lor.lhs.false2200
  %518 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2207 = zext i32 %518 to i64
  %secret_b2209 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2207, i32 21
  %519 = load i8*, i8** %secret_b2209, align 8, !tbaa !21
  %call2210 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2188, i8* noundef %519, i64* noundef nonnull %test_outlen) #14
  %tobool2211.not = icmp eq i32 %call2210, 0
  br i1 %tobool2211.not, label %if.end2274.thread, label %lor.lhs.false2212

lor.lhs.false2212:                                ; preds = %lor.lhs.false2206
  %520 = load i64, i64* %test_outlen, align 8, !tbaa !39
  %521 = load i64, i64* %outlen, align 8, !tbaa !39
  %cmp2213.not = icmp eq i64 %520, %521
  br i1 %cmp2213.not, label %if.end2217, label %if.end2274.thread

if.end2217:                                       ; preds = %lor.lhs.false2212
  %522 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2218 = zext i32 %522 to i64
  %secret_a2220 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2218, i32 20
  %523 = load i8*, i8** %secret_a2220, align 8, !tbaa !20
  %secret_b2223 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2218, i32 21
  %524 = load i8*, i8** %secret_b2223, align 8, !tbaa !21
  %call2224 = call i32 @CRYPTO_memcmp(i8* noundef %523, i8* noundef %524, i64 noundef %520) #14
  %tobool2225.not = icmp eq i32 %call2224, 0
  br i1 %tobool2225.not, label %for.inc2246, label %if.end2274.thread

if.end2274.thread:                                ; preds = %if.end2217, %if.end2187, %lor.lhs.false2191, %lor.lhs.false2194, %lor.lhs.false2197, %lor.lhs.false2200, %lor.lhs.false2206, %lor.lhs.false2212, %for.body2150, %lor.lhs.false2157, %lor.lhs.false2163, %lor.lhs.false2167, %lor.lhs.false2171, %lor.lhs.false2175
  %.sink5377 = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %lor.lhs.false2175 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %lor.lhs.false2171 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %lor.lhs.false2167 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %lor.lhs.false2163 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %lor.lhs.false2157 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i64 0, i64 0), %for.body2150 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2212 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2206 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2200 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2197 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2194 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %lor.lhs.false2191 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.179, i64 0, i64 0), %if.end2187 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.180, i64 0, i64 0), %if.end2217 ]
  %525 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2186 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %525, i8* noundef %.sink5377) #14
  %526 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %526) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %469) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %468) #13
  %.pre5191 = load i32, i32* @testnum, align 4, !tbaa !7
  %.pre5199 = zext i32 %.pre5191 to i64
  br label %if.then2277

for.inc2246:                                      ; preds = %if.end2217
  %527 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2229 = zext i32 %527 to i64
  %528 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2231 = zext i32 %528 to i64
  %arrayidx2232 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2229, i32 14, i64 %idxprom2231
  store %struct.evp_pkey_ctx_st* %call2164, %struct.evp_pkey_ctx_st** %arrayidx2232, align 8, !tbaa !3
  %529 = load i64, i64* %outlen, align 8, !tbaa !39
  %arrayidx2237 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2229, i32 22, i64 %idxprom2231
  store i64 %529, i64* %arrayidx2237, align 8, !tbaa !39
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call2154) #14
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call2160) #14
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2188) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %469) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %468) #13
  %530 = load i32, i32* %i, align 4, !tbaa !7
  %inc2247 = add i32 %530, 1
  store i32 %inc2247, i32* %i, align 4, !tbaa !7
  %cmp2148 = icmp ult i32 %inc2247, %53
  %.pre5189 = load i32, i32* @testnum, align 4, !tbaa !7
  br i1 %cmp2148, label %for.body2150, label %if.end2274, !llvm.loop !95

if.end2274:                                       ; preds = %for.inc2246
  %.pre5196 = zext i32 %.pre5189 to i64
  %bits2257 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %.pre5196, i32 2
  %531 = load i32, i32* %bits2257, align 4, !tbaa !91
  %532 = load i32, i32* %ecdh, align 16, !tbaa !96
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i32 noundef %531, i32 noundef %532) #17
  %call2259 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2260 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @ECDH_EVP_derive_key_loop, %struct.loopargs_st* noundef nonnull %54) #17
  %conv2261 = sext i32 %call2260 to i64
  %call2262 = call fastcc double @Time_F(i32 noundef 1) #17
  %533 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4535 = load i1, i1* @mr, align 4
  %cond2264 = select i1 %.b4535, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.182, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.183, i64 0, i64 0)
  %534 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2265 = zext i32 %534 to i64
  %bits2267 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %idxprom2265, i32 2
  %535 = load i32, i32* %bits2267, align 4, !tbaa !91
  %call2268 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %533, i8* noundef %cond2264, i64 noundef %conv2261, i32 noundef %535, double noundef %call2262) #14
  %conv2269 = sitofp i32 %call2260 to double
  %div2270 = fdiv double %conv2269, %call2262
  %536 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2271 = zext i32 %536 to i64
  %arrayidx2273 = getelementptr inbounds [24 x [1 x double]], [24 x [1 x double]]* @ecdh_results, i64 0, i64 %idxprom2271, i64 0
  store double %div2270, double* %arrayidx2273, align 8, !tbaa !82
  %cmp2275 = icmp slt i32 %call2260, 2
  br i1 %cmp2275, label %if.then2277, label %cleanup2285

if.then2277:                                      ; preds = %if.end2274.thread, %if.end2274
  %idx.ext2279.pre-phi = phi i64 [ %.pre5199, %if.end2274.thread ], [ %idxprom2271, %if.end2274 ]
  %add.ptr2280 = getelementptr inbounds [24 x i8], [24 x i8]* %ecdh_doit, i64 0, i64 %idx.ext2279.pre-phi
  %sub2282 = sub nsw i64 24, %idx.ext2279.pre-phi
  %call2283 = call i8* @memset(i8* noundef nonnull %add.ptr2280, i32 noundef 0, i64 noundef %sub2282) #14
  %.pre5192 = load i32, i32* @testnum, align 4, !tbaa !7
  br label %cleanup2285

cleanup2285:                                      ; preds = %if.end2274, %if.then2277, %for.body2141
  %537 = phi i32 [ %536, %if.end2274 ], [ %.pre5192, %if.then2277 ], [ %storemerge45524941, %for.body2141 ]
  %inc2289 = add i32 %537, 1
  store i32 %inc2289, i32* @testnum, align 4, !tbaa !7
  %cmp2139 = icmp ult i32 %inc2289, 24
  br i1 %cmp2139, label %for.body2141, label %for.cond2291.preheader, !llvm.loop !97

for.cond2520.preheader:                           ; preds = %cleanup2512
  %538 = bitcast %struct.evp_pkey_st** %sm2_pkey to i8*
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br label %for.body2523

for.body2294:                                     ; preds = %for.cond2291.preheader, %cleanup2512
  %storemerge45534949 = phi i32 [ 0, %for.cond2291.preheader ], [ %inc2518, %cleanup2512 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %511) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  %idxprom2296 = zext i32 %storemerge45534949 to i64
  %arrayidx2297 = getelementptr inbounds [2 x i8], [2 x i8]* %tmpcast, i64 0, i64 %idxprom2296
  %539 = load i8, i8* %arrayidx2297, align 1, !tbaa !11
  %tobool2298.not = icmp eq i8 %539, 0
  br i1 %tobool2298.not, label %cleanup2512, label %for.body2304.preheader

for.body2304.preheader:                           ; preds = %for.body2294
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2304

for.body2377.preheader:                           ; preds = %if.end2365
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2377

for.body2304:                                     ; preds = %for.body2304.preheader, %if.end2365
  %call2305 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #14
  %540 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2306 = zext i32 %540 to i64
  %541 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2308 = zext i32 %541 to i64
  %arrayidx2309 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2306, i32 15, i64 %idxprom2308
  store %struct.evp_md_ctx_st* %call2305, %struct.evp_md_ctx_st** %arrayidx2309, align 8, !tbaa !3
  %cmp2315 = icmp eq %struct.evp_md_ctx_st* %call2305, null
  br i1 %cmp2315, label %if.then2371, label %if.end2318

if.end2318:                                       ; preds = %for.body2304
  %call2319 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #14
  %542 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2320 = zext i32 %542 to i64
  %543 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2322 = zext i32 %543 to i64
  %arrayidx2323 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2320, i32 16, i64 %idxprom2322
  store %struct.evp_md_ctx_st* %call2319, %struct.evp_md_ctx_st** %arrayidx2323, align 8, !tbaa !3
  %cmp2329 = icmp eq %struct.evp_md_ctx_st* %call2319, null
  br i1 %cmp2329, label %if.then2371, label %if.end2332

if.end2332:                                       ; preds = %if.end2318
  %nid = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2322, i32 1
  %544 = load i32, i32* %nid, align 8, !tbaa !98
  %call2335 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %544, %struct.engine_st* noundef null) #14
  %cmp2336 = icmp eq %struct.evp_pkey_ctx_st* %call2335, null
  br i1 %cmp2336, label %if.then2346, label %lor.lhs.false2338

lor.lhs.false2338:                                ; preds = %if.end2332
  %call2339 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2335) #14
  %cmp2340 = icmp slt i32 %call2339, 1
  br i1 %cmp2340, label %if.then2346, label %lor.lhs.false2342

lor.lhs.false2342:                                ; preds = %lor.lhs.false2338
  %call2343 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call2335, %struct.evp_pkey_st** noundef nonnull %ed_pkey) #14
  %cmp2344 = icmp slt i32 %call2343, 1
  br i1 %cmp2344, label %if.then2346, label %if.end2347

if.then2346:                                      ; preds = %lor.lhs.false2342, %lor.lhs.false2338, %if.end2332
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call2335) #14
  br label %if.then2371

if.end2347:                                       ; preds = %lor.lhs.false2342
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2335) #14
  %545 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2348 = zext i32 %545 to i64
  %546 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2351 = zext i32 %546 to i64
  %arrayidx2352 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2348, i32 15, i64 %idxprom2351
  %547 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2352, align 8, !tbaa !3
  %548 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  %call2353 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %547, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %548) #14
  %tobool2354.not = icmp eq i32 %call2353, 0
  br i1 %tobool2354.not, label %if.then2355, label %if.end2356

if.then2355:                                      ; preds = %if.end2347
  %549 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %549) #14
  br label %if.then2371

if.end2356:                                       ; preds = %if.end2347
  %550 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2357 = zext i32 %550 to i64
  %551 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2360 = zext i32 %551 to i64
  %arrayidx2361 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2357, i32 16, i64 %idxprom2360
  %552 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2361, align 8, !tbaa !3
  %553 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  %call2362 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %552, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %553) #14
  %tobool2363.not = icmp eq i32 %call2362, 0
  %554 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %554) #14
  br i1 %tobool2363.not, label %if.then2371, label %if.end2365

if.end2365:                                       ; preds = %if.end2356
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ed_pkey, align 8, !tbaa !3
  %555 = load i32, i32* %i, align 4, !tbaa !7
  %inc2367 = add i32 %555, 1
  store i32 %inc2367, i32* %i, align 4, !tbaa !7
  %cmp2302 = icmp ult i32 %inc2367, %53
  br i1 %cmp2302, label %for.body2304, label %for.body2377.preheader, !llvm.loop !99

if.then2371:                                      ; preds = %for.body2304, %if.end2318, %if.end2356, %if.then2346, %if.then2355
  %556 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2372 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %556, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.184, i64 0, i64 0)) #14
  %557 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %557) #14
  br label %cleanup2512

for.body2377:                                     ; preds = %for.body2377.preheader, %for.inc2403
  %storemerge45644944 = phi i32 [ %inc2404, %for.inc2403 ], [ 0, %for.body2377.preheader ]
  %558 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2378 = zext i32 %558 to i64
  %sigsize2380 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2378, i32 3
  %559 = load i64, i64* %sigsize2380, align 8, !tbaa !100
  %idxprom2381 = zext i32 %storemerge45644944 to i64
  %sigsize2383 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2381, i32 7
  store i64 %559, i64* %sigsize2383, align 8, !tbaa !84
  %arrayidx2388 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2381, i32 15, i64 %idxprom2378
  %560 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2388, align 8, !tbaa !3
  %buf22391 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2381, i32 3
  %561 = load i8*, i8** %buf22391, align 8, !tbaa !19
  %buf2397 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2381, i32 2
  %562 = load i8*, i8** %buf2397, align 8, !tbaa !18
  %call2398 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %560, i8* noundef %561, i64* noundef nonnull %sigsize2383, i8* noundef %562, i64 noundef 20) #14
  %cmp2399 = icmp eq i32 %call2398, 0
  br i1 %cmp2399, label %if.then2408, label %for.inc2403

for.inc2403:                                      ; preds = %for.body2377
  %563 = load i32, i32* %i, align 4, !tbaa !7
  %inc2404 = add i32 %563, 1
  store i32 %inc2404, i32* %i, align 4, !tbaa !7
  %cmp2375 = icmp ult i32 %inc2404, %53
  br i1 %cmp2375, label %for.body2377, label %if.else2410, !llvm.loop !101

if.then2408:                                      ; preds = %for.body2377
  %564 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2409 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %564, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.185, i64 0, i64 0)) #14
  %565 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %565) #14
  br label %for.body2442.preheader

if.else2410:                                      ; preds = %for.inc2403
  %566 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2411 = zext i32 %566 to i64
  %name = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2411, i32 0
  %567 = load i8*, i8** %name, align 8, !tbaa !102
  %bits2418 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2411, i32 2
  %568 = load i32, i32* %bits2418, align 4, !tbaa !91
  %569 = load i32, i32* %eddsa, align 4, !tbaa !103
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i64 0, i64 0), i8* noundef %567, i32 noundef %568, i32 noundef %569) #17
  %call2420 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2421 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EdDSA_sign_loop, %struct.loopargs_st* noundef %54) #17
  %conv2422 = sext i32 %call2421 to i64
  %call2423 = call fastcc double @Time_F(i32 noundef 1) #17
  %570 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4534 = load i1, i1* @mr, align 4
  %cond2425 = select i1 %.b4534, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.186, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.187, i64 0, i64 0)
  %571 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2426 = zext i32 %571 to i64
  %bits2428 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2426, i32 2
  %572 = load i32, i32* %bits2428, align 4, !tbaa !91
  %name2431 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2426, i32 0
  %573 = load i8*, i8** %name2431, align 8, !tbaa !102
  %call2432 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %570, i8* noundef %cond2425, i64 noundef %conv2422, i32 noundef %572, i8* noundef %573, double noundef %call2423) #14
  %conv2433 = sitofp i32 %call2421 to double
  %div2434 = fdiv double %conv2433, %call2423
  %574 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2435 = zext i32 %574 to i64
  %arrayidx2437 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 %idxprom2435, i64 0
  store double %div2434, double* %arrayidx2437, align 16, !tbaa !82
  br label %for.body2442.preheader

for.body2442.preheader:                           ; preds = %if.then2408, %if.else2410
  %op_count.16 = phi i64 [ 1, %if.then2408 ], [ %conv2422, %if.else2410 ]
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2442

for.body2442:                                     ; preds = %for.body2442.preheader, %for.inc2462
  %storemerge45654947 = phi i32 [ %inc2463, %for.inc2462 ], [ 0, %for.body2442.preheader ]
  %idxprom2443 = zext i32 %storemerge45654947 to i64
  %575 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2446 = zext i32 %575 to i64
  %arrayidx2447 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2443, i32 16, i64 %idxprom2446
  %576 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2447, align 8, !tbaa !3
  %buf22450 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2443, i32 3
  %577 = load i8*, i8** %buf22450, align 8, !tbaa !19
  %sigsize2453 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2443, i32 7
  %578 = load i64, i64* %sigsize2453, align 8, !tbaa !84
  %buf2456 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2443, i32 2
  %579 = load i8*, i8** %buf2456, align 8, !tbaa !18
  %call2457 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %576, i8* noundef %577, i64 noundef %578, i8* noundef %579, i64 noundef 20) #14
  %cmp2458.not = icmp eq i32 %call2457, 1
  br i1 %cmp2458.not, label %for.inc2462, label %if.then2467

for.inc2462:                                      ; preds = %for.body2442
  %580 = load i32, i32* %i, align 4, !tbaa !7
  %inc2463 = add i32 %580, 1
  store i32 %inc2463, i32* %i, align 4, !tbaa !7
  %cmp2440 = icmp ult i32 %inc2463, %53
  br i1 %cmp2440, label %for.body2442, label %if.else2471, !llvm.loop !104

if.then2467:                                      ; preds = %for.body2442
  %581 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2468 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %581, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.188, i64 0, i64 0)) #14
  %582 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %582) #14
  %583 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2469 = zext i32 %583 to i64
  %arrayidx2470 = getelementptr inbounds [2 x i8], [2 x i8]* %tmpcast, i64 0, i64 %idxprom2469
  store i8 0, i8* %arrayidx2470, align 1, !tbaa !11
  br label %if.end2500

if.else2471:                                      ; preds = %for.inc2462
  %584 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2472 = zext i32 %584 to i64
  %name2474 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2472, i32 0
  %585 = load i8*, i8** %name2474, align 8, !tbaa !102
  %bits2480 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2472, i32 2
  %586 = load i32, i32* %bits2480, align 4, !tbaa !91
  %587 = load i32, i32* %eddsa, align 4, !tbaa !103
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i64 0, i64 0), i8* noundef %585, i32 noundef %586, i32 noundef %587) #17
  %call2482 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2483 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @EdDSA_verify_loop, %struct.loopargs_st* noundef nonnull %54) #17
  %conv2484 = sext i32 %call2483 to i64
  %call2485 = call fastcc double @Time_F(i32 noundef 1) #17
  %588 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4533 = load i1, i1* @mr, align 4
  %cond2487 = select i1 %.b4533, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.189, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i64 0, i64 0)
  %589 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2488 = zext i32 %589 to i64
  %bits2490 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2488, i32 2
  %590 = load i32, i32* %bits2490, align 4, !tbaa !91
  %name2493 = getelementptr inbounds [2 x %struct.ec_curve_st], [2 x %struct.ec_curve_st]* @speed_main.ed_curves, i64 0, i64 %idxprom2488, i32 0
  %591 = load i8*, i8** %name2493, align 8, !tbaa !102
  %call2494 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %588, i8* noundef %cond2487, i64 noundef %conv2484, i32 noundef %590, i8* noundef %591, double noundef %call2485) #14
  %conv2495 = sitofp i32 %call2483 to double
  %div2496 = fdiv double %conv2495, %call2485
  %592 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2497 = zext i32 %592 to i64
  %arrayidx2499 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 %idxprom2497, i64 1
  store double %div2496, double* %arrayidx2499, align 8, !tbaa !82
  br label %if.end2500

if.end2500:                                       ; preds = %if.else2471, %if.then2467
  %593 = phi i32 [ %592, %if.else2471 ], [ %583, %if.then2467 ]
  %cmp2501 = icmp slt i64 %op_count.16, 2
  br i1 %cmp2501, label %if.then2503, label %cleanup2512

if.then2503:                                      ; preds = %if.end2500
  %idx.ext2505 = zext i32 %593 to i64
  %add.ptr2506 = getelementptr inbounds i8, i8* %12, i64 %idx.ext2505
  %sub2508 = sub nsw i64 2, %idx.ext2505
  %call2509 = call i8* @memset(i8* noundef nonnull %add.ptr2506, i32 noundef 0, i64 noundef %sub2508) #14
  br label %cleanup2512

cleanup2512:                                      ; preds = %if.then2371, %if.then2503, %if.end2500, %for.body2294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %511) #13
  %594 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc2518 = add i32 %594, 1
  store i32 %inc2518, i32* @testnum, align 4, !tbaa !7
  %cmp2292 = icmp ult i32 %inc2518, 2
  br i1 %cmp2292, label %for.body2294, label %for.cond2520.preheader, !llvm.loop !105

for.cond2797.preheader:                           ; preds = %cleanup2790
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %595 = bitcast %struct.evp_pkey_st** %pkey_A to i8*
  %596 = bitcast %struct.evp_pkey_st** %pkey_B to i8*
  %597 = bitcast i64* %secret_size to i8*
  %598 = bitcast i64* %test_out to i8*
  br label %for.body2800

for.body2523:                                     ; preds = %for.cond2520.preheader, %cleanup2790
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %538) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %599 = load i8, i8* %9, align 1, !tbaa !11
  %tobool2527.not = icmp eq i8 %599, 0
  br i1 %tobool2527.not, label %cleanup2790, label %for.body2533.preheader

for.body2533.preheader:                           ; preds = %for.body2523
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2533

for.body2656.preheader:                           ; preds = %for.inc2645
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2656

for.body2533:                                     ; preds = %for.body2533.preheader, %for.inc2645
  %call2534 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #14
  %600 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2535 = zext i32 %600 to i64
  %601 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2537 = zext i32 %601 to i64
  %arrayidx2538 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2535, i32 17, i64 %idxprom2537
  store %struct.evp_md_ctx_st* %call2534, %struct.evp_md_ctx_st** %arrayidx2538, align 8, !tbaa !3
  %call2539 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #14
  %602 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2540 = zext i32 %602 to i64
  %603 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2542 = zext i32 %603 to i64
  %arrayidx2543 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2540, i32 18, i64 %idxprom2542
  store %struct.evp_md_ctx_st* %call2539, %struct.evp_md_ctx_st** %arrayidx2543, align 8, !tbaa !3
  %arrayidx2548 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2540, i32 17, i64 %idxprom2542
  %604 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2548, align 8, !tbaa !3
  %cmp2549 = icmp eq %struct.evp_md_ctx_st* %604, null
  %cmp2557 = icmp eq %struct.evp_md_ctx_st* %call2539, null
  %or.cond4664 = select i1 %cmp2549, i1 true, i1 %cmp2557
  br i1 %or.cond4664, label %if.then2650, label %if.end2560

if.end2560:                                       ; preds = %for.body2533
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2561 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 1172, %struct.engine_st* noundef null) #14
  %cmp2562 = icmp eq %struct.evp_pkey_ctx_st* %call2561, null
  br i1 %cmp2562, label %if.then2650.sink.split, label %lor.lhs.false2564

lor.lhs.false2564:                                ; preds = %if.end2560
  %call2565 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2561) #14
  %cmp2566 = icmp slt i32 %call2565, 1
  br i1 %cmp2566, label %if.then2650.sink.split, label %lor.lhs.false2568

lor.lhs.false2568:                                ; preds = %lor.lhs.false2564
  %call2572 = call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef nonnull %call2561, i32 noundef 1172) #14
  %cmp2573 = icmp slt i32 %call2572, 1
  br i1 %cmp2573, label %if.then2650.sink.split, label %lor.end

lor.end:                                          ; preds = %lor.lhs.false2568
  %call2575 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call2561, %struct.evp_pkey_st** noundef nonnull %sm2_pkey) #14
  %cmp2576 = icmp slt i32 %call2575, 1
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2561) #14
  br i1 %cmp2576, label %if.then2650, label %if.end2581

if.end2581:                                       ; preds = %lor.end
  %605 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %606 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2582 = zext i32 %606 to i64
  %607 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2585 = zext i32 %607 to i64
  %arrayidx2586 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2582, i32 19, i64 %idxprom2585
  store %struct.evp_pkey_st* %605, %struct.evp_pkey_st** %arrayidx2586, align 8, !tbaa !3
  %608 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2587 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %608) #14
  %conv2588 = sext i32 %call2587 to i64
  %609 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2589 = zext i32 %609 to i64
  %sigsize2591 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2589, i32 7
  store i64 %conv2588, i64* %sigsize2591, align 8, !tbaa !84
  %610 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2592 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %610, %struct.engine_st* noundef null) #14
  %611 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2593 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %611, %struct.engine_st* noundef null) #14
  %cmp2594 = icmp eq %struct.evp_pkey_ctx_st* %call2592, null
  %cmp2597 = icmp eq %struct.evp_pkey_ctx_st* %call2593, null
  %or.cond3675 = select i1 %cmp2594, i1 true, i1 %cmp2597
  br i1 %or.cond3675, label %if.then2650.sink.split, label %if.end2600

if.end2600:                                       ; preds = %if.end2581
  %612 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2601 = zext i32 %612 to i64
  %613 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2604 = zext i32 %613 to i64
  %arrayidx2605 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2601, i32 17, i64 %idxprom2604
  %614 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2605, align 8, !tbaa !3
  call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %614, %struct.evp_pkey_ctx_st* noundef nonnull %call2592) #14
  %615 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2606 = zext i32 %615 to i64
  %616 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2609 = zext i32 %616 to i64
  %arrayidx2610 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2606, i32 18, i64 %idxprom2609
  %617 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2610, align 8, !tbaa !3
  call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %617, %struct.evp_pkey_ctx_st* noundef nonnull %call2593) #14
  %call2611 = call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef nonnull %call2592, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.191, i64 0, i64 0), i32 noundef 23) #14
  %cmp2612.not = icmp eq i32 %call2611, 1
  br i1 %cmp2612.not, label %lor.lhs.false2614, label %if.then2650

lor.lhs.false2614:                                ; preds = %if.end2600
  %call2615 = call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef nonnull %call2593, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.191, i64 0, i64 0), i32 noundef 23) #14
  %cmp2616.not = icmp eq i32 %call2615, 1
  br i1 %cmp2616.not, label %if.end2619, label %if.then2650

if.end2619:                                       ; preds = %lor.lhs.false2614
  %618 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2620 = zext i32 %618 to i64
  %619 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2623 = zext i32 %619 to i64
  %arrayidx2624 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2620, i32 17, i64 %idxprom2623
  %620 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2624, align 8, !tbaa !3
  %call2625 = call %struct.evp_md_st* @EVP_sm3() #14
  %621 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2626 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %620, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call2625, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %621) #14
  %tobool2627.not = icmp eq i32 %call2626, 0
  br i1 %tobool2627.not, label %if.then2650, label %if.end2629

if.end2629:                                       ; preds = %if.end2619
  %622 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2630 = zext i32 %622 to i64
  %623 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2633 = zext i32 %623 to i64
  %arrayidx2634 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2630, i32 18, i64 %idxprom2633
  %624 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2634, align 8, !tbaa !3
  %call2635 = call %struct.evp_md_st* @EVP_sm3() #14
  %625 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %sm2_pkey, align 8, !tbaa !3
  %call2636 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %624, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call2635, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %625) #14
  %tobool2637.not = icmp eq i32 %call2636, 0
  br i1 %tobool2637.not, label %if.then2650, label %for.inc2645

for.inc2645:                                      ; preds = %if.end2629
  %626 = load i32, i32* %i, align 4, !tbaa !7
  %inc2646 = add i32 %626, 1
  store i32 %inc2646, i32* %i, align 4, !tbaa !7
  %cmp2531 = icmp ult i32 %inc2646, %53
  br i1 %cmp2531, label %for.body2533, label %for.body2656.preheader, !llvm.loop !106

if.then2650.sink.split:                           ; preds = %if.end2581, %if.end2560, %lor.lhs.false2564, %lor.lhs.false2568
  %call2561.lcssa.sink = phi %struct.evp_pkey_ctx_st* [ %call2561, %lor.lhs.false2568 ], [ %call2561, %lor.lhs.false2564 ], [ %call2561, %if.end2560 ], [ %call2593, %if.end2581 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call2561.lcssa.sink) #14
  br label %if.then2650

if.then2650:                                      ; preds = %if.end2629, %lor.end, %for.body2533, %lor.lhs.false2614, %if.end2600, %if.end2619, %if.then2650.sink.split
  %627 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2651 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %627, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.192, i64 0, i64 0)) #14
  %628 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %628) #14
  br label %cleanup2790

for.body2656:                                     ; preds = %for.body2656.preheader, %for.inc2676
  %storemerge45604952 = phi i32 [ %inc2677, %for.inc2676 ], [ 0, %for.body2656.preheader ]
  %idxprom2657 = zext i32 %storemerge45604952 to i64
  %629 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2660 = zext i32 %629 to i64
  %arrayidx2661 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2657, i32 17, i64 %idxprom2660
  %630 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2661, align 8, !tbaa !3
  %buf22664 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2657, i32 3
  %631 = load i8*, i8** %buf22664, align 8, !tbaa !19
  %sigsize2667 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2657, i32 7
  %buf2670 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2657, i32 2
  %632 = load i8*, i8** %buf2670, align 8, !tbaa !18
  %call2671 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %630, i8* noundef %631, i64* noundef nonnull %sigsize2667, i8* noundef %632, i64 noundef 20) #14
  %cmp2672 = icmp eq i32 %call2671, 0
  br i1 %cmp2672, label %if.then2681, label %for.inc2676

for.inc2676:                                      ; preds = %for.body2656
  %633 = load i32, i32* %i, align 4, !tbaa !7
  %inc2677 = add i32 %633, 1
  store i32 %inc2677, i32* %i, align 4, !tbaa !7
  %cmp2654 = icmp ult i32 %inc2677, %53
  br i1 %cmp2654, label %for.body2656, label %if.else2683, !llvm.loop !107

if.then2681:                                      ; preds = %for.body2656
  %634 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2682 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %634, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.193, i64 0, i64 0)) #14
  %635 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %635) #14
  br label %for.body2716.preheader

if.else2683:                                      ; preds = %for.inc2676
  %636 = load i32, i32* %sm2, align 8, !tbaa !108
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef 256, i32 noundef %636) #17
  %call2694 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2695 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @SM2_sign_loop, %struct.loopargs_st* noundef %54) #17
  %conv2696 = sext i32 %call2695 to i64
  %call2697 = call fastcc double @Time_F(i32 noundef 1) #17
  %637 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4532 = load i1, i1* @mr, align 4
  %cond2699 = select i1 %.b4532, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.194, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.187, i64 0, i64 0)
  %call2706 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %637, i8* noundef %cond2699, i64 noundef %conv2696, i32 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), double noundef %call2697) #14
  %conv2707 = sitofp i32 %call2695 to double
  %div2708 = fdiv double %conv2707, %call2697
  %638 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2709 = zext i32 %638 to i64
  %arrayidx2711 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 %idxprom2709, i64 0
  store double %div2708, double* %arrayidx2711, align 16, !tbaa !82
  br label %for.body2716.preheader

for.body2716.preheader:                           ; preds = %if.then2681, %if.else2683
  %op_count.20 = phi i64 [ 1, %if.then2681 ], [ %conv2696, %if.else2683 ]
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2716

for.body2716:                                     ; preds = %for.body2716.preheader, %for.inc2736
  %storemerge45614955 = phi i32 [ %inc2737, %for.inc2736 ], [ 0, %for.body2716.preheader ]
  %idxprom2717 = zext i32 %storemerge45614955 to i64
  %639 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2720 = zext i32 %639 to i64
  %arrayidx2721 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2717, i32 18, i64 %idxprom2720
  %640 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx2721, align 8, !tbaa !3
  %buf22724 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2717, i32 3
  %641 = load i8*, i8** %buf22724, align 8, !tbaa !19
  %sigsize2727 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2717, i32 7
  %642 = load i64, i64* %sigsize2727, align 8, !tbaa !84
  %buf2730 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2717, i32 2
  %643 = load i8*, i8** %buf2730, align 8, !tbaa !18
  %call2731 = call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %640, i8* noundef %641, i64 noundef %642, i8* noundef %643, i64 noundef 20) #14
  %cmp2732.not = icmp eq i32 %call2731, 1
  br i1 %cmp2732.not, label %for.inc2736, label %if.then2741

for.inc2736:                                      ; preds = %for.body2716
  %644 = load i32, i32* %i, align 4, !tbaa !7
  %inc2737 = add i32 %644, 1
  store i32 %inc2737, i32* %i, align 4, !tbaa !7
  %cmp2714 = icmp ult i32 %inc2737, %53
  br i1 %cmp2714, label %for.body2716, label %if.else2745, !llvm.loop !109

if.then2741:                                      ; preds = %for.body2716
  %645 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2742 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %645, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.195, i64 0, i64 0)) #14
  %646 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %646) #14
  store i8 0, i8* %9, align 1, !tbaa !11
  br label %if.end2774

if.else2745:                                      ; preds = %for.inc2736
  %647 = load i32, i32* %sm2, align 8, !tbaa !108
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef 256, i32 noundef %647) #17
  %call2756 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2757 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @SM2_verify_loop, %struct.loopargs_st* noundef nonnull %54) #17
  %conv2758 = sext i32 %call2757 to i64
  %call2759 = call fastcc double @Time_F(i32 noundef 1) #17
  %648 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4531 = load i1, i1* @mr, align 4
  %cond2761 = select i1 %.b4531, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.196, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i64 0, i64 0)
  %call2768 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %648, i8* noundef %cond2761, i64 noundef %conv2758, i32 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), double noundef %call2759) #14
  %conv2769 = sitofp i32 %call2757 to double
  %div2770 = fdiv double %conv2769, %call2759
  %649 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2771 = zext i32 %649 to i64
  %arrayidx2773 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 %idxprom2771, i64 1
  store double %div2770, double* %arrayidx2773, align 8, !tbaa !82
  br label %if.end2774

if.end2774:                                       ; preds = %if.else2745, %if.then2741
  %cmp2775 = icmp slt i64 %op_count.20, 2
  br i1 %cmp2775, label %for.cond2779.preheader, label %cleanup2790

for.cond2779.preheader:                           ; preds = %if.end2774
  %testnum.promoted = load i32, i32* @testnum, align 4, !tbaa !7
  %storemerge45624958 = add i32 %testnum.promoted, 1
  %cmp27804959 = icmp eq i32 %storemerge45624958, 0
  br i1 %cmp27804959, label %cleanup2790.loopexit.loopexit, label %cleanup2790.loopexit

cleanup2790.loopexit.loopexit:                    ; preds = %for.cond2779.preheader
  store i8 0, i8* %9, align 1, !tbaa !11
  br label %cleanup2790.loopexit

cleanup2790.loopexit:                             ; preds = %cleanup2790.loopexit.loopexit, %for.cond2779.preheader
  %storemerge4562.lcssa = phi i32 [ %storemerge45624958, %for.cond2779.preheader ], [ 1, %cleanup2790.loopexit.loopexit ]
  store i32 %storemerge4562.lcssa, i32* @testnum, align 4, !tbaa !7
  br label %cleanup2790

cleanup2790:                                      ; preds = %cleanup2790.loopexit, %if.then2650, %if.end2774, %for.body2523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %538) #13
  %650 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc2795 = add i32 %650, 1
  store i32 %inc2795, i32* @testnum, align 4, !tbaa !7
  %cmp2521 = icmp eq i32 %inc2795, 0
  br i1 %cmp2521, label %for.body2523, label %for.cond2797.preheader, !llvm.loop !110

for.body2800:                                     ; preds = %for.cond2797.preheader, %cleanup2982
  %storemerge45554963 = phi i32 [ 0, %for.cond2797.preheader ], [ %inc2986, %cleanup2982 ]
  %idxprom2801 = zext i32 %storemerge45554963 to i64
  %arrayidx2802 = getelementptr inbounds [5 x i8], [5 x i8]* %ffdh_doit, i64 0, i64 %idxprom2801
  %651 = load i8, i8* %arrayidx2802, align 1, !tbaa !11
  %tobool2803.not = icmp eq i8 %651, 0
  br i1 %tobool2803.not, label %cleanup2982, label %for.body2809.preheader

for.body2809.preheader:                           ; preds = %for.body2800
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.body2809

for.body2809:                                     ; preds = %for.body2809.preheader, %for.inc2943
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %595) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %596) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %597) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %598) #13
  %call2811 = call i64 @ERR_peek_error() #14
  %tobool2812.not = icmp eq i64 %call2811, 0
  br i1 %tobool2812.not, label %if.end2815, label %if.then2813

if.then2813:                                      ; preds = %for.body2809
  %652 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2814 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %652, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.197, i64 0, i64 0)) #14
  %653 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %653) #14
  br label %if.end2815

if.end2815:                                       ; preds = %if.then2813, %for.body2809
  %call2816 = call %struct.evp_pkey_st* @EVP_PKEY_new() #14
  store %struct.evp_pkey_st* %call2816, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  %tobool2817.not = icmp eq %struct.evp_pkey_st* %call2816, null
  br i1 %tobool2817.not, label %if.then2818, label %if.end2820

if.then2818:                                      ; preds = %if.end2815
  %654 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2819 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %654, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.198, i64 0, i64 0)) #14
  %655 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %655) #14
  br label %if.end2971.thread

if.end2820:                                       ; preds = %if.end2815
  %call2821 = call %struct.evp_pkey_st* @EVP_PKEY_new() #14
  store %struct.evp_pkey_st* %call2821, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  %tobool2822.not = icmp eq %struct.evp_pkey_st* %call2821, null
  br i1 %tobool2822.not, label %if.then2823, label %if.end2825

if.then2823:                                      ; preds = %if.end2820
  %656 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2824 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %656, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.198, i64 0, i64 0)) #14
  %657 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %657) #14
  br label %if.end2971.thread

if.end2825:                                       ; preds = %if.end2820
  %call2826 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 28, %struct.engine_st* noundef null) #14
  %tobool2827.not = icmp eq %struct.evp_pkey_ctx_st* %call2826, null
  br i1 %tobool2827.not, label %if.then2828, label %if.end2830

if.then2828:                                      ; preds = %if.end2825
  %658 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2829 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %658, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.199, i64 0, i64 0)) #14
  %659 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %659) #14
  br label %if.end2971.thread

if.end2830:                                       ; preds = %if.end2825
  %call2831 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2826) #14
  %cmp2832 = icmp slt i32 %call2831, 1
  br i1 %cmp2832, label %if.then2834, label %if.end2836

if.then2834:                                      ; preds = %if.end2830
  %660 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2835 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %660, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.200, i64 0, i64 0)) #14
  %661 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %661) #14
  br label %if.end2971.thread

if.end2836:                                       ; preds = %if.end2830
  %662 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2837 = zext i32 %662 to i64
  %nid2839 = getelementptr inbounds [5 x %struct.ffdh_params_st], [5 x %struct.ffdh_params_st]* @speed_main.ffdh_params, i64 0, i64 %idxprom2837, i32 1
  %663 = load i32, i32* %nid2839, align 8, !tbaa !111
  %call2840 = call i32 @EVP_PKEY_CTX_set_dh_nid(%struct.evp_pkey_ctx_st* noundef nonnull %call2826, i32 noundef %663) #14
  %cmp2841 = icmp slt i32 %call2840, 1
  br i1 %cmp2841, label %if.then2843, label %if.end2845

if.then2843:                                      ; preds = %if.end2836
  %664 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2844 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %664, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.201, i64 0, i64 0)) #14
  %665 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %665) #14
  br label %if.end2971.thread

if.end2845:                                       ; preds = %if.end2836
  %call2846 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call2826, %struct.evp_pkey_st** noundef nonnull %pkey_A) #14
  %cmp2847 = icmp slt i32 %call2846, 1
  br i1 %cmp2847, label %if.then2853, label %lor.lhs.false2849

lor.lhs.false2849:                                ; preds = %if.end2845
  %call2850 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call2826, %struct.evp_pkey_st** noundef nonnull %pkey_B) #14
  %cmp2851 = icmp slt i32 %call2850, 1
  br i1 %cmp2851, label %if.then2853, label %if.end2855

if.then2853:                                      ; preds = %lor.lhs.false2849, %if.end2845
  %666 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2854 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %666, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.202, i64 0, i64 0)) #14
  %667 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %667) #14
  br label %if.end2971.thread

if.end2855:                                       ; preds = %lor.lhs.false2849
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2826) #14
  %668 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  %call2856 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %668, %struct.engine_st* noundef null) #14
  %cmp2857 = icmp eq %struct.evp_pkey_ctx_st* %call2856, null
  br i1 %cmp2857, label %if.then2859, label %if.end2861

if.then2859:                                      ; preds = %if.end2855
  %669 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2860 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %669, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.199, i64 0, i64 0)) #14
  %670 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %670) #14
  br label %if.end2971.thread

if.end2861:                                       ; preds = %if.end2855
  %call2862 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2856) #14
  %cmp2863 = icmp slt i32 %call2862, 1
  br i1 %cmp2863, label %if.then2865, label %if.end2867

if.then2865:                                      ; preds = %if.end2861
  %671 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2866 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %671, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.203, i64 0, i64 0)) #14
  %672 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %672) #14
  br label %if.end2971.thread

if.end2867:                                       ; preds = %if.end2861
  %673 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  %call2868 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call2856, %struct.evp_pkey_st* noundef %673) #14
  %cmp2869 = icmp slt i32 %call2868, 1
  br i1 %cmp2869, label %if.then2871, label %if.end2873

if.then2871:                                      ; preds = %if.end2867
  %674 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2872 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %674, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.204, i64 0, i64 0)) #14
  %675 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %675) #14
  br label %if.end2971.thread

if.end2873:                                       ; preds = %if.end2867
  %call2874 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2856, i8* noundef null, i64* noundef nonnull %secret_size) #14
  %cmp2875 = icmp slt i32 %call2874, 1
  br i1 %cmp2875, label %if.then2877, label %if.end2879

if.then2877:                                      ; preds = %if.end2873
  %676 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2878 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %676, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.205, i64 0, i64 0)) #14
  %677 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %677) #14
  br label %if.end2971.thread

if.end2879:                                       ; preds = %if.end2873
  %678 = load i64, i64* %secret_size, align 8, !tbaa !39
  %cmp2880 = icmp ugt i64 %678, 1024
  br i1 %cmp2880, label %if.then2882, label %if.end2884

if.then2882:                                      ; preds = %if.end2879
  %679 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2883 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %679, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.206, i64 0, i64 0)) #14
  br label %if.end2971.thread

if.end2884:                                       ; preds = %if.end2879
  %680 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2885 = zext i32 %680 to i64
  %secret_ff_a2887 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2885, i32 24
  %681 = load i8*, i8** %secret_ff_a2887, align 8, !tbaa !22
  %call2888 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2856, i8* noundef %681, i64* noundef nonnull %secret_size) #14
  %cmp2889 = icmp slt i32 %call2888, 1
  br i1 %cmp2889, label %if.then2891, label %if.end2893

if.then2891:                                      ; preds = %if.end2884
  %682 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2892 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %682, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.207, i64 0, i64 0)) #14
  %683 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %683) #14
  br label %if.end2971.thread

if.end2893:                                       ; preds = %if.end2884
  %684 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  %call2894 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %684, %struct.engine_st* noundef null) #14
  %tobool2895.not = icmp eq %struct.evp_pkey_ctx_st* %call2894, null
  br i1 %tobool2895.not, label %if.then2896, label %if.end2898

if.then2896:                                      ; preds = %if.end2893
  %685 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2897 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %685, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.199, i64 0, i64 0)) #14
  %686 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %686) #14
  br label %if.end2971.thread

if.end2898:                                       ; preds = %if.end2893
  %call2899 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call2894) #14
  %tobool2900.not = icmp eq i32 %call2899, 0
  br i1 %tobool2900.not, label %if.then2916, label %lor.lhs.false2901

lor.lhs.false2901:                                ; preds = %if.end2898
  %687 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  %call2902 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call2894, %struct.evp_pkey_st* noundef %687) #14
  %tobool2903.not = icmp eq i32 %call2902, 0
  br i1 %tobool2903.not, label %if.then2916, label %lor.lhs.false2904

lor.lhs.false2904:                                ; preds = %lor.lhs.false2901
  %call2905 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2894, i8* noundef null, i64* noundef nonnull %test_out) #14
  %tobool2906.not = icmp eq i32 %call2905, 0
  br i1 %tobool2906.not, label %if.then2916, label %lor.lhs.false2907

lor.lhs.false2907:                                ; preds = %lor.lhs.false2904
  %688 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2908 = zext i32 %688 to i64
  %secret_ff_b2910 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2908, i32 25
  %689 = load i8*, i8** %secret_ff_b2910, align 8, !tbaa !23
  %call2911 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call2894, i8* noundef %689, i64* noundef nonnull %test_out) #14
  %tobool2912.not = icmp eq i32 %call2911, 0
  br i1 %tobool2912.not, label %if.then2916, label %lor.lhs.false2913

lor.lhs.false2913:                                ; preds = %lor.lhs.false2907
  %690 = load i64, i64* %test_out, align 8, !tbaa !39
  %691 = load i64, i64* %secret_size, align 8, !tbaa !39
  %cmp2914.not = icmp eq i64 %690, %691
  br i1 %cmp2914.not, label %if.end2918, label %if.then2916

if.then2916:                                      ; preds = %lor.lhs.false2913, %lor.lhs.false2907, %lor.lhs.false2904, %lor.lhs.false2901, %if.end2898
  %692 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2917 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %692, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.208, i64 0, i64 0)) #14
  br label %if.end2971.thread

if.end2918:                                       ; preds = %lor.lhs.false2913
  %693 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2919 = zext i32 %693 to i64
  %secret_ff_a2921 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2919, i32 24
  %694 = load i8*, i8** %secret_ff_a2921, align 8, !tbaa !22
  %secret_ff_b2924 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2919, i32 25
  %695 = load i8*, i8** %secret_ff_b2924, align 8, !tbaa !23
  %call2925 = call i32 @CRYPTO_memcmp(i8* noundef %694, i8* noundef %695, i64 noundef %690) #14
  %tobool2926.not = icmp eq i32 %call2925, 0
  br i1 %tobool2926.not, label %for.inc2943, label %if.then2927

if.then2927:                                      ; preds = %if.end2918
  %696 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2928 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %696, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.209, i64 0, i64 0)) #14
  %697 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %697) #14
  br label %if.end2971.thread

if.end2971.thread:                                ; preds = %if.then2834, %if.then2843, %if.then2853, %if.then2859, %if.then2865, %if.then2871, %if.then2877, %if.then2882, %if.then2891, %if.then2916, %if.then2927, %if.then2896, %if.then2828, %if.then2823, %if.then2818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %598) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %597) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %596) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %595) #13
  %.pre5194 = load i32, i32* @testnum, align 4, !tbaa !7
  %.pre5198 = zext i32 %.pre5194 to i64
  br label %if.then2974

for.inc2943:                                      ; preds = %if.end2918
  %698 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom2930 = zext i32 %698 to i64
  %699 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2933 = zext i32 %699 to i64
  %arrayidx2934 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %54, i64 %idxprom2930, i32 23, i64 %idxprom2933
  store %struct.evp_pkey_ctx_st* %call2856, %struct.evp_pkey_ctx_st** %arrayidx2934, align 8, !tbaa !3
  %700 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %700) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey_A, align 8, !tbaa !3
  %701 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %701) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey_B, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call2894) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %598) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %597) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %596) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %595) #13
  %702 = load i32, i32* %i, align 4, !tbaa !7
  %inc2944 = add i32 %702, 1
  store i32 %inc2944, i32* %i, align 4, !tbaa !7
  %cmp2807 = icmp ult i32 %inc2944, %53
  br i1 %cmp2807, label %for.body2809, label %if.end2971, !llvm.loop !113

if.end2971:                                       ; preds = %for.inc2943
  %.pre5193 = load i32, i32* @testnum, align 4, !tbaa !7
  %.pre5197 = zext i32 %.pre5193 to i64
  %bits2954 = getelementptr inbounds [5 x %struct.ffdh_params_st], [5 x %struct.ffdh_params_st]* @speed_main.ffdh_params, i64 0, i64 %.pre5197, i32 2
  %703 = load i32, i32* %bits2954, align 4, !tbaa !114
  %704 = load i32, i32* %ffdh, align 4, !tbaa !115
  call fastcc void @pkey_print_message(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i32 noundef %703, i32 noundef %704) #17
  %call2956 = call fastcc double @Time_F(i32 noundef 0) #17
  %call2957 = call fastcc i32 @run_benchmark(i32 noundef %async_jobs.0, i32 (i8*)* noundef nonnull @FFDH_derive_key_loop, %struct.loopargs_st* noundef nonnull %54) #17
  %conv2958 = sext i32 %call2957 to i64
  %call2959 = call fastcc double @Time_F(i32 noundef 1) #17
  %705 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b4530 = load i1, i1* @mr, align 4
  %cond2961 = select i1 %.b4530, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.211, i64 0, i64 0)
  %706 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2962 = zext i32 %706 to i64
  %bits2964 = getelementptr inbounds [5 x %struct.ffdh_params_st], [5 x %struct.ffdh_params_st]* @speed_main.ffdh_params, i64 0, i64 %idxprom2962, i32 2
  %707 = load i32, i32* %bits2964, align 4, !tbaa !114
  %call2965 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %705, i8* noundef %cond2961, i64 noundef %conv2958, i32 noundef %707, double noundef %call2959) #14
  %conv2966 = sitofp i32 %call2957 to double
  %div2967 = fdiv double %conv2966, %call2959
  %708 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom2968 = zext i32 %708 to i64
  %arrayidx2970 = getelementptr inbounds [5 x [1 x double]], [5 x [1 x double]]* @ffdh_results, i64 0, i64 %idxprom2968, i64 0
  store double %div2967, double* %arrayidx2970, align 8, !tbaa !82
  %cmp2972 = icmp slt i32 %call2957, 2
  br i1 %cmp2972, label %if.then2974, label %cleanup2982

if.then2974:                                      ; preds = %if.end2971.thread, %if.end2971
  %idx.ext2976.pre-phi = phi i64 [ %.pre5198, %if.end2971.thread ], [ %idxprom2968, %if.end2971 ]
  %add.ptr2977 = getelementptr inbounds [5 x i8], [5 x i8]* %ffdh_doit, i64 0, i64 %idx.ext2976.pre-phi
  %sub2979 = sub nsw i64 5, %idx.ext2976.pre-phi
  %call2980 = call i8* @memset(i8* noundef nonnull %add.ptr2977, i32 noundef 0, i64 noundef %sub2979) #14
  %.pre5195 = load i32, i32* @testnum, align 4, !tbaa !7
  br label %cleanup2982

cleanup2982:                                      ; preds = %if.end2971, %if.then2974, %for.body2800
  %709 = phi i32 [ %708, %if.end2971 ], [ %.pre5195, %if.then2974 ], [ %storemerge45554963, %for.body2800 ]
  %inc2986 = add i32 %709, 1
  store i32 %inc2986, i32* @testnum, align 4, !tbaa !7
  %cmp2798 = icmp ult i32 %inc2986, 5
  br i1 %cmp2798, label %for.body2800, label %show_res, !llvm.loop !116

show_res:                                         ; preds = %cleanup2982, %land.lhs.true427
  %e.0 = phi %struct.engine_st* [ null, %land.lhs.true427 ], [ %call432, %cleanup2982 ]
  %pr_header.2 = phi i32 [ 0, %land.lhs.true427 ], [ %spec.select.28, %cleanup2982 ]
  %size_num.5 = phi i32 [ %size_num.0, %land.lhs.true427 ], [ %size_num.4, %cleanup2982 ]
  %.b4529 = load i1, i1* @mr, align 4
  br i1 %.b4529, label %if.end3001, label %if.then2989

if.then2989:                                      ; preds = %show_res
  %call2990 = call i8* @OpenSSL_version(i32 noundef 7) #14
  %call2991 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.212, i64 0, i64 0), i8* noundef %call2990) #14
  %call2992 = call i8* @OpenSSL_version(i32 noundef 2) #14
  %call2993 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.213, i64 0, i64 0), i8* noundef %call2992) #14
  %call2994 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.214, i64 0, i64 0)) #14
  %call2995 = call i8* @BN_options() #14
  %call2996 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i64 0, i64 0), i8* noundef %call2995) #14
  %call2997 = call i8* @OpenSSL_version(i32 noundef 1) #14
  %call2998 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i64 0, i64 0), i8* noundef %call2997) #14
  %call2999 = call i8* @OpenSSL_version(i32 noundef 9) #14
  %call3000 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.217, i64 0, i64 0), i8* noundef %call2999) #14
  br label %if.end3001

if.end3001:                                       ; preds = %if.then2989, %show_res
  %tobool3002.not = icmp eq i32 %pr_header.2, 0
  br i1 %tobool3002.not, label %for.body3028.preheader, label %if.then3003

if.then3003:                                      ; preds = %if.end3001
  %.b4528 = load i1, i1* @mr, align 4
  br i1 %.b4528, label %for.body3014.preheader, label %if.else3007

if.else3007:                                      ; preds = %if.then3003
  %call3008 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.219, i64 0, i64 0)) #14
  br label %for.body3014.preheader

for.body3014.preheader:                           ; preds = %if.then3003, %if.else3007
  %.sink = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.220, i64 0, i64 0), %if.else3007 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.218, i64 0, i64 0), %if.then3003 ]
  %call3006 = call i32 (i8*, ...) @printf(i8* noundef %.sink) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br label %for.body3014

for.body3014:                                     ; preds = %for.body3014.preheader, %for.body3014
  %storemerge45574965 = phi i32 [ %inc3021, %for.body3014 ], [ 0, %for.body3014.preheader ]
  %.b4527 = load i1, i1* @mr, align 4
  %cond3016 = select i1 %.b4527, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.222, i64 0, i64 0)
  %710 = load i32*, i32** @lengths, align 8, !tbaa !3
  %idxprom3017 = zext i32 %storemerge45574965 to i64
  %arrayidx3018 = getelementptr inbounds i32, i32* %710, i64 %idxprom3017
  %711 = load i32, i32* %arrayidx3018, align 4, !tbaa !7
  %call3019 = call i32 (i8*, ...) @printf(i8* noundef %cond3016, i32 noundef %711) #14
  %712 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc3021 = add i32 %712, 1
  store i32 %inc3021, i32* @testnum, align 4, !tbaa !7
  %cmp3012 = icmp ult i32 %inc3021, %size_num.5
  br i1 %cmp3012, label %for.body3014, label %for.end3022, !llvm.loop !117

for.end3022:                                      ; preds = %for.body3014
  %call3023 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  br label %for.body3028.preheader

for.body3028.preheader:                           ; preds = %for.end3022, %if.end3001
  br label %for.body3028

for.body3028:                                     ; preds = %for.body3028.preheader, %for.inc3076
  %indvars.iv5129 = phi i64 [ %indvars.iv.next5130, %for.inc3076 ], [ 0, %for.body3028.preheader ]
  %arrayidx3030 = getelementptr inbounds [29 x i8], [29 x i8]* %doit, i64 0, i64 %indvars.iv5129
  %713 = load i8, i8* %arrayidx3030, align 1, !tbaa !11
  %tobool3031.not = icmp eq i8 %713, 0
  br i1 %tobool3031.not, label %for.inc3076, label %if.end3033

if.end3033:                                       ; preds = %for.body3028
  %.b4526 = load i1, i1* @mr, align 4
  %arrayidx3037 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %indvars.iv5129
  %714 = load i8*, i8** %arrayidx3037, align 8, !tbaa !3
  br i1 %.b4526, label %if.then3035, label %if.else3039

if.then3035:                                      ; preds = %if.end3033
  %715 = trunc i64 %indvars.iv5129 to i32
  %call3038 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i64 0, i64 0), i32 noundef %715, i8* noundef %714) #14
  br label %for.body3047.preheader

if.else3039:                                      ; preds = %if.end3033
  %call3042 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i64 0, i64 0), i8* noundef %714) #14
  br label %for.body3047.preheader

for.body3047.preheader:                           ; preds = %if.then3035, %if.else3039
  store i32 0, i32* @testnum, align 4, !tbaa !7
  br label %for.body3047

for.body3047:                                     ; preds = %for.body3047.preheader, %for.inc3072
  %storemerge45564967 = phi i32 [ %inc3073, %for.inc3072 ], [ 0, %for.body3047.preheader ]
  %idxprom3050 = zext i32 %storemerge45564967 to i64
  %arrayidx3051 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 %indvars.iv5129, i64 %idxprom3050
  %716 = load double, double* %arrayidx3051, align 8, !tbaa !82
  %cmp3052 = fcmp ule double %716, 1.000000e+04
  %.b4517 = load i1, i1* @mr, align 4
  %or.cond3676 = select i1 %cmp3052, i1 true, i1 %.b4517
  br i1 %or.cond3676, label %if.else3063, label %if.then3056

if.then3056:                                      ; preds = %for.body3047
  %div3061 = fdiv double %716, 1.000000e+03
  %call3062 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i64 0, i64 0), double noundef %div3061) #14
  br label %for.inc3072

if.else3063:                                      ; preds = %for.body3047
  %cond3065 = select i1 %.b4517, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i64 0, i64 0)
  %call3070 = call i32 (i8*, ...) @printf(i8* noundef %cond3065, double noundef %716) #14
  br label %for.inc3072

for.inc3072:                                      ; preds = %if.then3056, %if.else3063
  %717 = load i32, i32* @testnum, align 4, !tbaa !7
  %inc3073 = add i32 %717, 1
  store i32 %inc3073, i32* @testnum, align 4, !tbaa !7
  %cmp3045 = icmp ult i32 %inc3073, %size_num.5
  br i1 %cmp3045, label %for.body3047, label %for.end3074, !llvm.loop !118

for.end3074:                                      ; preds = %for.inc3072
  %call3075 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  br label %for.inc3076

for.inc3076:                                      ; preds = %for.body3028, %for.end3074
  %indvars.iv.next5130 = add nuw nsw i64 %indvars.iv5129, 1
  %exitcond5132.not = icmp eq i64 %indvars.iv.next5130, 29
  br i1 %exitcond5132.not, label %for.end3078, label %for.body3028, !llvm.loop !119

for.end3078:                                      ; preds = %for.inc3076
  store i32 1, i32* @testnum, align 4, !tbaa !7
  br label %for.body3082

for.body3082:                                     ; preds = %for.end3078, %for.inc3126
  %indvars.iv5133 = phi i64 [ 0, %for.end3078 ], [ %indvars.iv.next5134, %for.inc3126 ]
  %arrayidx3084 = getelementptr inbounds [7 x i8], [7 x i8]* %rsa_doit, i64 0, i64 %indvars.iv5133
  %718 = load i8, i8* %arrayidx3084, align 1, !tbaa !11
  %tobool3085.not = icmp eq i8 %718, 0
  br i1 %tobool3085.not, label %for.inc3126, label %if.end3087

if.end3087:                                       ; preds = %for.body3082
  %719 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3088 = icmp eq i32 %719, 0
  %.b4516 = load i1, i1* @mr, align 4
  %or.cond3677 = select i1 %tobool3088, i1 true, i1 %.b4516
  br i1 %or.cond3677, label %if.end3093, label %if.then3091

if.then3091:                                      ; preds = %if.end3087
  %call3092 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4525.pr = load i1, i1* @mr, align 4
  br i1 %.b4525.pr, label %if.then3095, label %if.else3106

if.end3093:                                       ; preds = %if.end3087
  br i1 %.b4516, label %if.then3095, label %if.else3106

if.then3095:                                      ; preds = %if.then3091, %if.end3093
  %bits3098 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %indvars.iv5133, i32 2
  %720 = load i32, i32* %bits3098, align 4, !tbaa !76
  %arrayidx3101 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %indvars.iv5133, i64 0
  %721 = load double, double* %arrayidx3101, align 16, !tbaa !82
  %arrayidx3104 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %indvars.iv5133, i64 1
  %722 = load double, double* %arrayidx3104, align 8, !tbaa !82
  %723 = trunc i64 %indvars.iv5133 to i32
  %call3105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i64 0, i64 0), i32 noundef %723, i32 noundef %720, double noundef %721, double noundef %722) #14
  br label %for.inc3126

if.else3106:                                      ; preds = %if.then3091, %if.end3093
  %bits3109 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @speed_main.rsa_keys, i64 0, i64 %indvars.iv5133, i32 2
  %724 = load i32, i32* %bits3109, align 4, !tbaa !76
  %arrayidx3112 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %indvars.iv5133, i64 0
  %725 = load double, double* %arrayidx3112, align 16, !tbaa !82
  %div3113 = fdiv double 1.000000e+00, %725
  %arrayidx3116 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %indvars.iv5133, i64 1
  %726 = load double, double* %arrayidx3116, align 8, !tbaa !82
  %div3117 = fdiv double 1.000000e+00, %726
  %call3124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.232, i64 0, i64 0), i32 noundef %724, double noundef %div3113, double noundef %div3117, double noundef %725, double noundef %726) #14
  br label %for.inc3126

for.inc3126:                                      ; preds = %if.then3095, %if.else3106, %for.body3082
  %indvars.iv.next5134 = add nuw nsw i64 %indvars.iv5133, 1
  %exitcond5136.not = icmp eq i64 %indvars.iv.next5134, 7
  br i1 %exitcond5136.not, label %for.end3128, label %for.body3082, !llvm.loop !120

for.end3128:                                      ; preds = %for.inc3126
  store i32 1, i32* @testnum, align 4, !tbaa !7
  %727 = load i8, i8* %8, align 1, !tbaa !11
  %tobool3135.not = icmp eq i8 %727, 0
  br i1 %tobool3135.not, label %for.inc3174, label %if.end3137

if.end3137:                                       ; preds = %for.end3128
  %.b4515 = load i1, i1* @mr, align 4
  br i1 %.b4515, label %if.then3145, label %if.then3141

if.then3141:                                      ; preds = %if.end3137
  %call3142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4524.pr = load i1, i1* @mr, align 4
  br i1 %.b4524.pr, label %if.then3145, label %if.else3155

if.then3145:                                      ; preds = %if.end3137, %if.then3141
  %728 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %729 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %call3154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.233, i64 0, i64 0), i32 noundef 0, i32 noundef 512, double noundef %728, double noundef %729) #14
  br label %for.inc3174

if.else3155:                                      ; preds = %if.then3141
  %730 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %div3161 = fdiv double 1.000000e+00, %730
  %731 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %div3165 = fdiv double 1.000000e+00, %731
  %call3172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.234, i64 0, i64 0), i32 noundef 512, double noundef %div3161, double noundef %div3165, double noundef %730, double noundef %731) #14
  br label %for.inc3174

for.inc3174:                                      ; preds = %if.then3145, %if.else3155, %for.end3128
  %arrayidx3134.1 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 1
  %732 = load i8, i8* %arrayidx3134.1, align 1, !tbaa !11
  %tobool3135.not.1 = icmp eq i8 %732, 0
  br i1 %tobool3135.not.1, label %for.inc3174.1, label %if.end3137.1

if.end3137.1:                                     ; preds = %for.inc3174
  %733 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3138.1 = icmp eq i32 %733, 0
  %.b4515.1 = load i1, i1* @mr, align 4
  %or.cond3678.1 = select i1 %tobool3138.1, i1 true, i1 %.b4515.1
  br i1 %or.cond3678.1, label %if.end3143.1, label %if.then3141.1

if.then3141.1:                                    ; preds = %if.end3137.1
  %call3142.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4524.pr.1 = load i1, i1* @mr, align 4
  br i1 %.b4524.pr.1, label %if.then3145.1, label %if.else3155.1

if.end3143.1:                                     ; preds = %if.end3137.1
  br i1 %.b4515.1, label %if.then3145.1, label %if.else3155.1

if.else3155.1:                                    ; preds = %if.end3143.1, %if.then3141.1
  %734 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 1, i64 0), align 16, !tbaa !82
  %div3161.1 = fdiv double 1.000000e+00, %734
  %735 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 1, i64 1), align 8, !tbaa !82
  %div3165.1 = fdiv double 1.000000e+00, %735
  %call3172.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.234, i64 0, i64 0), i32 noundef 1024, double noundef %div3161.1, double noundef %div3165.1, double noundef %734, double noundef %735) #14
  br label %for.inc3174.1

if.then3145.1:                                    ; preds = %if.end3143.1, %if.then3141.1
  %736 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 1, i64 0), align 16, !tbaa !82
  %737 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 1, i64 1), align 8, !tbaa !82
  %call3154.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.233, i64 0, i64 0), i32 noundef 1, i32 noundef 1024, double noundef %736, double noundef %737) #14
  br label %for.inc3174.1

for.inc3174.1:                                    ; preds = %if.then3145.1, %if.else3155.1, %for.inc3174
  %arrayidx3134.2 = getelementptr inbounds [3 x i8], [3 x i8]* %dsa_doit, i64 0, i64 2
  %738 = load i8, i8* %arrayidx3134.2, align 1, !tbaa !11
  %tobool3135.not.2 = icmp eq i8 %738, 0
  br i1 %tobool3135.not.2, label %for.inc3174.2, label %if.end3137.2

if.end3137.2:                                     ; preds = %for.inc3174.1
  %739 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3138.2 = icmp eq i32 %739, 0
  %.b4515.2 = load i1, i1* @mr, align 4
  %or.cond3678.2 = select i1 %tobool3138.2, i1 true, i1 %.b4515.2
  br i1 %or.cond3678.2, label %if.end3143.2, label %if.then3141.2

if.then3141.2:                                    ; preds = %if.end3137.2
  %call3142.2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4524.pr.2 = load i1, i1* @mr, align 4
  br i1 %.b4524.pr.2, label %if.then3145.2, label %if.else3155.2

if.end3143.2:                                     ; preds = %if.end3137.2
  br i1 %.b4515.2, label %if.then3145.2, label %if.else3155.2

if.else3155.2:                                    ; preds = %if.end3143.2, %if.then3141.2
  %740 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 2, i64 0), align 16, !tbaa !82
  %div3161.2 = fdiv double 1.000000e+00, %740
  %741 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 2, i64 1), align 8, !tbaa !82
  %div3165.2 = fdiv double 1.000000e+00, %741
  %call3172.2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.234, i64 0, i64 0), i32 noundef 2048, double noundef %div3161.2, double noundef %div3165.2, double noundef %740, double noundef %741) #14
  br label %for.inc3174.2

if.then3145.2:                                    ; preds = %if.end3143.2, %if.then3141.2
  %742 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 2, i64 0), align 16, !tbaa !82
  %743 = load double, double* getelementptr inbounds ([3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 2, i64 1), align 8, !tbaa !82
  %call3154.2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.233, i64 0, i64 0), i32 noundef 2, i32 noundef 2048, double noundef %742, double noundef %743) #14
  br label %for.inc3174.2

for.inc3174.2:                                    ; preds = %if.then3145.2, %if.else3155.2, %for.inc3174.1
  store i32 1, i32* @testnum, align 4, !tbaa !7
  br label %for.body3181

for.body3181:                                     ; preds = %for.inc3174.2, %for.inc3228
  %indvars.iv5141 = phi i64 [ 0, %for.inc3174.2 ], [ %indvars.iv.next5142, %for.inc3228 ]
  %arrayidx3183 = getelementptr inbounds [22 x i8], [22 x i8]* %ecdsa_doit, i64 0, i64 %indvars.iv5141
  %744 = load i8, i8* %arrayidx3183, align 1, !tbaa !11
  %tobool3184.not = icmp eq i8 %744, 0
  br i1 %tobool3184.not, label %for.inc3228, label %if.end3186

if.end3186:                                       ; preds = %for.body3181
  %745 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3187 = icmp eq i32 %745, 0
  %.b4514 = load i1, i1* @mr, align 4
  %or.cond3679 = select i1 %tobool3187, i1 true, i1 %.b4514
  br i1 %or.cond3679, label %if.end3192, label %if.then3190

if.then3190:                                      ; preds = %if.end3186
  %call3191 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4523.pr = load i1, i1* @mr, align 4
  br i1 %.b4523.pr, label %if.then3194, label %if.else3205

if.end3192:                                       ; preds = %if.end3186
  br i1 %.b4514, label %if.then3194, label %if.else3205

if.then3194:                                      ; preds = %if.then3190, %if.end3192
  %bits3197 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5141, i32 2
  %746 = load i32, i32* %bits3197, align 4, !tbaa !91
  %arrayidx3200 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %indvars.iv5141, i64 0
  %747 = load double, double* %arrayidx3200, align 16, !tbaa !82
  %arrayidx3203 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %indvars.iv5141, i64 1
  %748 = load double, double* %arrayidx3203, align 8, !tbaa !82
  %749 = trunc i64 %indvars.iv5141 to i32
  %call3204 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.236, i64 0, i64 0), i32 noundef %749, i32 noundef %746, double noundef %747, double noundef %748) #14
  br label %for.inc3228

if.else3205:                                      ; preds = %if.then3190, %if.end3192
  %bits3208 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5141, i32 2
  %750 = load i32, i32* %bits3208, align 4, !tbaa !91
  %name3211 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5141, i32 0
  %751 = load i8*, i8** %name3211, align 8, !tbaa !102
  %arrayidx3214 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %indvars.iv5141, i64 0
  %752 = load double, double* %arrayidx3214, align 16, !tbaa !82
  %div3215 = fdiv double 1.000000e+00, %752
  %arrayidx3218 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %indvars.iv5141, i64 1
  %753 = load double, double* %arrayidx3218, align 8, !tbaa !82
  %div3219 = fdiv double 1.000000e+00, %753
  %call3226 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.237, i64 0, i64 0), i32 noundef %750, i8* noundef %751, double noundef %div3215, double noundef %div3219, double noundef %752, double noundef %753) #14
  br label %for.inc3228

for.inc3228:                                      ; preds = %if.then3194, %if.else3205, %for.body3181
  %indvars.iv.next5142 = add nuw nsw i64 %indvars.iv5141, 1
  %exitcond5144.not = icmp eq i64 %indvars.iv.next5142, 22
  br i1 %exitcond5144.not, label %for.end3230, label %for.body3181, !llvm.loop !121

for.end3230:                                      ; preds = %for.inc3228
  store i32 1, i32* @testnum, align 4, !tbaa !7
  br label %for.body3234

for.body3234:                                     ; preds = %for.end3230, %for.inc3275
  %indvars.iv5145 = phi i64 [ 0, %for.end3230 ], [ %indvars.iv.next5146, %for.inc3275 ]
  %arrayidx3236 = getelementptr inbounds [24 x i8], [24 x i8]* %ecdh_doit, i64 0, i64 %indvars.iv5145
  %754 = load i8, i8* %arrayidx3236, align 1, !tbaa !11
  %tobool3237.not = icmp eq i8 %754, 0
  br i1 %tobool3237.not, label %for.inc3275, label %if.end3239

if.end3239:                                       ; preds = %for.body3234
  %755 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3240 = icmp eq i32 %755, 0
  %.b4513 = load i1, i1* @mr, align 4
  %or.cond3680 = select i1 %tobool3240, i1 true, i1 %.b4513
  br i1 %or.cond3680, label %if.end3245, label %if.then3243

if.then3243:                                      ; preds = %if.end3239
  %call3244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.238, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4522.pr = load i1, i1* @mr, align 4
  br i1 %.b4522.pr, label %if.then3247, label %if.else3259

if.end3245:                                       ; preds = %if.end3239
  br i1 %.b4513, label %if.then3247, label %if.else3259

if.then3247:                                      ; preds = %if.then3243, %if.end3245
  %bits3250 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5145, i32 2
  %756 = load i32, i32* %bits3250, align 4, !tbaa !91
  %arrayidx3253 = getelementptr inbounds [24 x [1 x double]], [24 x [1 x double]]* @ecdh_results, i64 0, i64 %indvars.iv5145, i64 0
  %757 = load double, double* %arrayidx3253, align 8, !tbaa !82
  %div3257 = fdiv double 1.000000e+00, %757
  %758 = trunc i64 %indvars.iv5145 to i32
  %call3258 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.239, i64 0, i64 0), i32 noundef %758, i32 noundef %756, double noundef %757, double noundef %div3257) #14
  br label %for.inc3275

if.else3259:                                      ; preds = %if.then3243, %if.end3245
  %bits3262 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5145, i32 2
  %759 = load i32, i32* %bits3262, align 4, !tbaa !91
  %name3265 = getelementptr inbounds [24 x %struct.ec_curve_st], [24 x %struct.ec_curve_st]* @speed_main.ec_curves, i64 0, i64 %indvars.iv5145, i32 0
  %760 = load i8*, i8** %name3265, align 8, !tbaa !102
  %arrayidx3268 = getelementptr inbounds [24 x [1 x double]], [24 x [1 x double]]* @ecdh_results, i64 0, i64 %indvars.iv5145, i64 0
  %761 = load double, double* %arrayidx3268, align 8, !tbaa !82
  %div3269 = fdiv double 1.000000e+00, %761
  %call3273 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.240, i64 0, i64 0), i32 noundef %759, i8* noundef %760, double noundef %div3269, double noundef %761) #14
  br label %for.inc3275

for.inc3275:                                      ; preds = %if.then3247, %if.else3259, %for.body3234
  %indvars.iv.next5146 = add nuw nsw i64 %indvars.iv5145, 1
  %exitcond5148.not = icmp eq i64 %indvars.iv.next5146, 24
  br i1 %exitcond5148.not, label %for.end3277, label %for.body3234, !llvm.loop !122

for.end3277:                                      ; preds = %for.inc3275
  store i32 1, i32* @testnum, align 4, !tbaa !7
  %arrayidx3284 = bitcast i16* %eddsa_doit to i8*
  %762 = load i8, i8* %arrayidx3284, align 2, !tbaa !11
  %tobool3285.not = icmp eq i8 %762, 0
  br i1 %tobool3285.not, label %for.inc3332, label %if.end3287

if.end3287:                                       ; preds = %for.end3277
  %.b4512 = load i1, i1* @mr, align 4
  br i1 %.b4512, label %if.then3295, label %if.then3291

if.then3291:                                      ; preds = %if.end3287
  %call3292 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4521.pr = load i1, i1* @mr, align 4
  br i1 %.b4521.pr, label %if.then3295, label %if.else3309

if.then3295:                                      ; preds = %if.end3287, %if.then3291
  %763 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %764 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %call3308 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.241, i64 0, i64 0), i32 noundef 0, i32 noundef 253, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), double noundef %763, double noundef %764) #14
  br label %for.inc3332

if.else3309:                                      ; preds = %if.then3291
  %765 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %div3319 = fdiv double 1.000000e+00, %765
  %766 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %div3323 = fdiv double 1.000000e+00, %766
  %call3330 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.242, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), double noundef %div3319, double noundef %div3323, double noundef %765, double noundef %766) #14
  br label %for.inc3332

for.inc3332:                                      ; preds = %if.then3295, %if.else3309, %for.end3277
  %arrayidx3284.1 = getelementptr inbounds [2 x i8], [2 x i8]* %tmpcast, i64 0, i64 1
  %767 = load i8, i8* %arrayidx3284.1, align 1, !tbaa !11
  %tobool3285.not.1 = icmp eq i8 %767, 0
  br i1 %tobool3285.not.1, label %for.inc3332.1, label %if.end3287.1

if.end3287.1:                                     ; preds = %for.inc3332
  %768 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3288.1 = icmp eq i32 %768, 0
  %.b4512.1 = load i1, i1* @mr, align 4
  %or.cond3681.1 = select i1 %tobool3288.1, i1 true, i1 %.b4512.1
  br i1 %or.cond3681.1, label %if.end3293.1, label %if.then3291.1

if.then3291.1:                                    ; preds = %if.end3287.1
  %call3292.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4521.pr.1 = load i1, i1* @mr, align 4
  br i1 %.b4521.pr.1, label %if.then3295.1, label %if.else3309.1

if.end3293.1:                                     ; preds = %if.end3287.1
  br i1 %.b4512.1, label %if.then3295.1, label %if.else3309.1

if.else3309.1:                                    ; preds = %if.end3293.1, %if.then3291.1
  %769 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 1, i64 0), align 16, !tbaa !82
  %div3319.1 = fdiv double 1.000000e+00, %769
  %770 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 1, i64 1), align 8, !tbaa !82
  %div3323.1 = fdiv double 1.000000e+00, %770
  %call3330.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.242, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), double noundef %div3319.1, double noundef %div3323.1, double noundef %769, double noundef %770) #14
  br label %for.inc3332.1

if.then3295.1:                                    ; preds = %if.end3293.1, %if.then3291.1
  %771 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 1, i64 0), align 16, !tbaa !82
  %772 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 1, i64 1), align 8, !tbaa !82
  %call3308.1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.241, i64 0, i64 0), i32 noundef 1, i32 noundef 456, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), double noundef %771, double noundef %772) #14
  br label %for.inc3332.1

for.inc3332.1:                                    ; preds = %if.then3295.1, %if.else3309.1, %for.inc3332
  store i32 1, i32* @testnum, align 4, !tbaa !7
  %773 = load i8, i8* %9, align 1, !tbaa !11
  %tobool3342.not = icmp eq i8 %773, 0
  br i1 %tobool3342.not, label %for.end3391, label %if.end3344

if.end3344:                                       ; preds = %for.inc3332.1
  %.b4511 = load i1, i1* @mr, align 4
  br i1 %.b4511, label %if.then3352, label %if.then3348

if.then3348:                                      ; preds = %if.end3344
  %call3349 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4520.pr = load i1, i1* @mr, align 4
  br i1 %.b4520.pr, label %if.then3352, label %if.else3366

if.then3352:                                      ; preds = %if.end3344, %if.then3348
  %774 = load double, double* getelementptr inbounds ([1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %775 = load double, double* getelementptr inbounds ([1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %call3365 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.243, i64 0, i64 0), i32 noundef 0, i32 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), double noundef %774, double noundef %775) #14
  br label %for.end3391

if.else3366:                                      ; preds = %if.then3348
  %776 = load double, double* getelementptr inbounds ([1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 0, i64 0), align 16, !tbaa !82
  %div3376 = fdiv double 1.000000e+00, %776
  %777 = load double, double* getelementptr inbounds ([1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 0, i64 1), align 8, !tbaa !82
  %div3380 = fdiv double 1.000000e+00, %777
  %call3387 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.244, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), double noundef %div3376, double noundef %div3380, double noundef %776, double noundef %777) #14
  br label %for.end3391

for.end3391:                                      ; preds = %for.inc3332.1, %if.else3366, %if.then3352
  store i32 1, i32* @testnum, align 4, !tbaa !7
  br label %for.body3395

for.body3395:                                     ; preds = %for.end3391, %for.inc3433
  %indvars.iv5152 = phi i64 [ 0, %for.end3391 ], [ %indvars.iv.next5153, %for.inc3433 ]
  %arrayidx3397 = getelementptr inbounds [5 x i8], [5 x i8]* %ffdh_doit, i64 0, i64 %indvars.iv5152
  %778 = load i8, i8* %arrayidx3397, align 1, !tbaa !11
  %tobool3398.not = icmp eq i8 %778, 0
  br i1 %tobool3398.not, label %for.inc3433, label %if.end3400

if.end3400:                                       ; preds = %for.body3395
  %779 = load i32, i32* @testnum, align 4, !tbaa !7
  %tobool3401 = icmp eq i32 %779, 0
  %.b4510 = load i1, i1* @mr, align 4
  %or.cond3683 = select i1 %tobool3401, i1 true, i1 %.b4510
  br i1 %or.cond3683, label %if.end3406, label %if.then3404

if.then3404:                                      ; preds = %if.end3400
  %call3405 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)) #14
  store i32 0, i32* @testnum, align 4, !tbaa !7
  %.b4519.pr = load i1, i1* @mr, align 4
  br i1 %.b4519.pr, label %if.then3408, label %if.else3420

if.end3406:                                       ; preds = %if.end3400
  br i1 %.b4510, label %if.then3408, label %if.else3420

if.then3408:                                      ; preds = %if.then3404, %if.end3406
  %bits3411 = getelementptr inbounds [5 x %struct.ffdh_params_st], [5 x %struct.ffdh_params_st]* @speed_main.ffdh_params, i64 0, i64 %indvars.iv5152, i32 2
  %780 = load i32, i32* %bits3411, align 4, !tbaa !114
  %arrayidx3414 = getelementptr inbounds [5 x [1 x double]], [5 x [1 x double]]* @ffdh_results, i64 0, i64 %indvars.iv5152, i64 0
  %781 = load double, double* %arrayidx3414, align 8, !tbaa !82
  %div3418 = fdiv double 1.000000e+00, %781
  %782 = trunc i64 %indvars.iv5152 to i32
  %call3419 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.246, i64 0, i64 0), i32 noundef %782, i32 noundef %780, double noundef %781, double noundef %div3418) #14
  br label %for.inc3433

if.else3420:                                      ; preds = %if.then3404, %if.end3406
  %bits3423 = getelementptr inbounds [5 x %struct.ffdh_params_st], [5 x %struct.ffdh_params_st]* @speed_main.ffdh_params, i64 0, i64 %indvars.iv5152, i32 2
  %783 = load i32, i32* %bits3423, align 4, !tbaa !114
  %arrayidx3426 = getelementptr inbounds [5 x [1 x double]], [5 x [1 x double]]* @ffdh_results, i64 0, i64 %indvars.iv5152, i64 0
  %784 = load double, double* %arrayidx3426, align 8, !tbaa !82
  %div3427 = fdiv double 1.000000e+00, %784
  %call3431 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.247, i64 0, i64 0), i32 noundef %783, double noundef %div3427, double noundef %784) #14
  br label %for.inc3433

for.inc3433:                                      ; preds = %if.then3408, %if.else3420, %for.body3395
  %indvars.iv.next5153 = add nuw nsw i64 %indvars.iv5152, 1
  %exitcond5155.not = icmp eq i64 %indvars.iv.next5153, 5
  br i1 %exitcond5155.not, label %end, label %for.body3395, !llvm.loop !123

end.loopexit5509:                                 ; preds = %sw.bb115, %sw.bb121
  store <4 x i32> %shuffle55005690, <4 x i32>* %13, align 1, !tbaa !7
  store <4 x i32> %shuffle55005703, <4 x i32>* %14, align 1, !tbaa !7
  br label %end

end:                                              ; preds = %for.body1521, %for.inc3433, %end.loopexit5509, %cleanup1513.thread, %cleanup1387, %cleanup1232.thread, %cleanup840.thread, %cleanup, %while.end, %if.then372, %if.then342, %if.then329, %if.then323, %if.then317, %if.then307, %if.then303, %if.then82, %if.then72, %if.then61, %sw.bb43, %opterr
  %loopargs.0 = phi %struct.loopargs_st* [ null, %opterr ], [ null, %if.then82 ], [ null, %if.then72 ], [ null, %if.then61 ], [ null, %sw.bb43 ], [ null, %cleanup ], [ null, %if.then303 ], [ null, %if.then317 ], [ null, %if.then329 ], [ %54, %if.then372 ], [ %54, %cleanup1387 ], [ null, %if.then342 ], [ null, %if.then323 ], [ null, %if.then307 ], [ null, %while.end ], [ %54, %cleanup840.thread ], [ %54, %cleanup1232.thread ], [ %54, %cleanup1513.thread ], [ null, %end.loopexit5509 ], [ %54, %for.inc3433 ], [ %54, %for.body1521 ]
  %mac.9 = phi %struct.evp_mac_st* [ null, %opterr ], [ null, %if.then82 ], [ null, %if.then72 ], [ null, %if.then61 ], [ null, %sw.bb43 ], [ null, %cleanup ], [ null, %if.then303 ], [ null, %if.then317 ], [ null, %if.then329 ], [ null, %if.then372 ], [ null, %cleanup1387 ], [ null, %if.then342 ], [ null, %if.then323 ], [ null, %if.then307 ], [ null, %while.end ], [ %call767, %cleanup840.thread ], [ %call1164, %cleanup1232.thread ], [ %call1424, %cleanup1513.thread ], [ null, %end.loopexit5509 ], [ null, %for.inc3433 ], [ null, %for.body1521 ]
  %e.1 = phi %struct.engine_st* [ null, %opterr ], [ null, %if.then82 ], [ null, %if.then72 ], [ null, %if.then61 ], [ null, %sw.bb43 ], [ null, %cleanup ], [ null, %if.then303 ], [ null, %if.then317 ], [ null, %if.then329 ], [ null, %if.then372 ], [ %call432, %cleanup1387 ], [ null, %if.then342 ], [ null, %if.then323 ], [ null, %if.then307 ], [ null, %while.end ], [ %call432, %cleanup840.thread ], [ %call432, %cleanup1232.thread ], [ %call432, %cleanup1513.thread ], [ null, %end.loopexit5509 ], [ %e.0, %for.inc3433 ], [ %call432, %for.body1521 ]
  %async_init.1 = phi i32 [ 0, %opterr ], [ 0, %if.then82 ], [ 0, %if.then72 ], [ 0, %if.then61 ], [ 0, %sw.bb43 ], [ 0, %cleanup ], [ 0, %if.then303 ], [ 0, %if.then317 ], [ 0, %if.then329 ], [ %async_init.05204, %if.then372 ], [ %async_init.05204, %cleanup1387 ], [ 0, %if.then342 ], [ 0, %if.then323 ], [ 0, %if.then307 ], [ 0, %while.end ], [ %async_init.05204, %cleanup840.thread ], [ %async_init.05204, %cleanup1232.thread ], [ %async_init.05204, %cleanup1513.thread ], [ 0, %end.loopexit5509 ], [ %async_init.05204, %for.inc3433 ], [ %async_init.05204, %for.body1521 ]
  %ret.2 = phi i32 [ 1, %opterr ], [ 1, %if.then82 ], [ 1, %if.then72 ], [ 1, %if.then61 ], [ 0, %sw.bb43 ], [ 1, %cleanup ], [ 1, %if.then303 ], [ 1, %if.then317 ], [ 1, %if.then329 ], [ 1, %if.then372 ], [ 0, %cleanup1387 ], [ 1, %if.then342 ], [ 1, %if.then323 ], [ 1, %if.then307 ], [ 1, %while.end ], [ 1, %cleanup840.thread ], [ 1, %cleanup1232.thread ], [ 1, %cleanup1513.thread ], [ 1, %end.loopexit5509 ], [ 0, %for.inc3433 ], [ 1, %for.body1521 ]
  %loopargs_len.0 = phi i32 [ 0, %opterr ], [ 0, %if.then82 ], [ 0, %if.then72 ], [ 0, %if.then61 ], [ 0, %sw.bb43 ], [ 0, %cleanup ], [ 0, %if.then303 ], [ 0, %if.then317 ], [ 0, %if.then329 ], [ %async_jobs.0, %if.then372 ], [ %53, %cleanup1387 ], [ 0, %if.then342 ], [ 0, %if.then323 ], [ 0, %if.then307 ], [ 0, %while.end ], [ %53, %cleanup840.thread ], [ %53, %cleanup1232.thread ], [ %53, %cleanup1513.thread ], [ 0, %end.loopexit5509 ], [ %53, %for.inc3433 ], [ %53, %for.body1521 ]
  %async_jobs.3 = phi i32 [ %async_jobs.1, %opterr ], [ %async_jobs.0, %if.then82 ], [ %async_jobs.0, %if.then72 ], [ %async_jobs.0, %if.then61 ], [ %async_jobs.0, %sw.bb43 ], [ %async_jobs.0, %cleanup ], [ %async_jobs.0, %if.then303 ], [ %async_jobs.0, %if.then317 ], [ 1, %if.then329 ], [ 1, %if.then372 ], [ %async_jobs.0, %cleanup1387 ], [ 1, %if.then342 ], [ %async_jobs.0, %if.then323 ], [ %async_jobs.0, %if.then307 ], [ %async_jobs.0, %while.end ], [ %async_jobs.0, %cleanup840.thread ], [ %async_jobs.0, %cleanup1232.thread ], [ %async_jobs.0, %cleanup1513.thread ], [ %async_jobs.0, %end.loopexit5509 ], [ %async_jobs.0, %for.inc3433 ], [ %async_jobs.0, %for.body1521 ]
  %785 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %785) #14
  store i32 0, i32* %i, align 4, !tbaa !7
  %cmp34374996.not = icmp eq i32 %loopargs_len.0, 0
  br i1 %cmp34374996.not, label %for.end3611, label %for.body3439

for.body3439:                                     ; preds = %end, %if.end3589
  %storemerge4997 = phi i32 [ %inc3610, %if.end3589 ], [ 0, %end ]
  %idxprom3440 = zext i32 %storemerge4997 to i64
  %buf_malloc3442 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3440, i32 4
  %786 = load i8*, i8** %buf_malloc3442, align 8, !tbaa !16
  call void @CRYPTO_free(i8* noundef %786, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3267) #14
  %787 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3443 = zext i32 %787 to i64
  %buf2_malloc3445 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3443, i32 5
  %788 = load i8*, i8** %buf2_malloc3445, align 8, !tbaa !17
  call void @CRYPTO_free(i8* noundef %788, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3268) #14
  call void @BN_free(%struct.bignum_st* noundef null) #14
  %789 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %789) #14
  %790 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450 = zext i32 %790 to i64
  %arrayidx3454 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450, i32 8, i64 0
  %791 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %791) #14
  %792 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455 = zext i32 %792 to i64
  %arrayidx3459 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455, i32 9, i64 0
  %793 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %793) #14
  %794 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.1 = zext i32 %794 to i64
  %arrayidx3454.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.1, i32 8, i64 1
  %795 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %795) #14
  %796 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.1 = zext i32 %796 to i64
  %arrayidx3459.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.1, i32 9, i64 1
  %797 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %797) #14
  %798 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.2 = zext i32 %798 to i64
  %arrayidx3454.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.2, i32 8, i64 2
  %799 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %799) #14
  %800 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.2 = zext i32 %800 to i64
  %arrayidx3459.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.2, i32 9, i64 2
  %801 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %801) #14
  %802 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.3 = zext i32 %802 to i64
  %arrayidx3454.3 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.3, i32 8, i64 3
  %803 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.3, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %803) #14
  %804 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.3 = zext i32 %804 to i64
  %arrayidx3459.3 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.3, i32 9, i64 3
  %805 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.3, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %805) #14
  %806 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.4 = zext i32 %806 to i64
  %arrayidx3454.4 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.4, i32 8, i64 4
  %807 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.4, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %807) #14
  %808 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.4 = zext i32 %808 to i64
  %arrayidx3459.4 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.4, i32 9, i64 4
  %809 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.4, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %809) #14
  %810 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.5 = zext i32 %810 to i64
  %arrayidx3454.5 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.5, i32 8, i64 5
  %811 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.5, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %811) #14
  %812 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.5 = zext i32 %812 to i64
  %arrayidx3459.5 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.5, i32 9, i64 5
  %813 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.5, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %813) #14
  %814 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3450.6 = zext i32 %814 to i64
  %arrayidx3454.6 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3450.6, i32 8, i64 6
  %815 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3454.6, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %815) #14
  %816 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3455.6 = zext i32 %816 to i64
  %arrayidx3459.6 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3455.6, i32 9, i64 6
  %817 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3459.6, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %817) #14
  %818 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3463 = zext i32 %818 to i64
  %secret_ff_a3465 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3463, i32 24
  %819 = load i8*, i8** %secret_ff_a3465, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %819, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3277) #14
  %820 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3466 = zext i32 %820 to i64
  %secret_ff_b3468 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3466, i32 25
  %821 = load i8*, i8** %secret_ff_b3468, align 8, !tbaa !23
  call void @CRYPTO_free(i8* noundef %821, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3278) #14
  %822 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3473 = zext i32 %822 to i64
  %arrayidx3477 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3473, i32 23, i64 0
  %823 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3477, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %823) #14
  %824 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3473.1 = zext i32 %824 to i64
  %arrayidx3477.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3473.1, i32 23, i64 1
  %825 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3477.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %825) #14
  %826 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3473.2 = zext i32 %826 to i64
  %arrayidx3477.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3473.2, i32 23, i64 2
  %827 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3477.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %827) #14
  %828 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3473.3 = zext i32 %828 to i64
  %arrayidx3477.3 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3473.3, i32 23, i64 3
  %829 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3477.3, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %829) #14
  %830 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3473.4 = zext i32 %830 to i64
  %arrayidx3477.4 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3473.4, i32 23, i64 4
  %831 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3477.4, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %831) #14
  %832 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3485 = zext i32 %832 to i64
  %arrayidx3489 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3485, i32 10, i64 0
  %833 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3489, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %833) #14
  %834 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3490 = zext i32 %834 to i64
  %arrayidx3494 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3490, i32 11, i64 0
  %835 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3494, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %835) #14
  %836 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3485.1 = zext i32 %836 to i64
  %arrayidx3489.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3485.1, i32 10, i64 1
  %837 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3489.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %837) #14
  %838 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3490.1 = zext i32 %838 to i64
  %arrayidx3494.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3490.1, i32 11, i64 1
  %839 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3494.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %839) #14
  %840 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3485.2 = zext i32 %840 to i64
  %arrayidx3489.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3485.2, i32 10, i64 2
  %841 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3489.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %841) #14
  %842 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3490.2 = zext i32 %842 to i64
  %arrayidx3494.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3490.2, i32 11, i64 2
  %843 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3494.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %843) #14
  br label %for.body3501

for.body3501:                                     ; preds = %for.body3439, %for.body3501
  %indvars.iv5168 = phi i64 [ 0, %for.body3439 ], [ %indvars.iv.next5169, %for.body3501 ]
  %844 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3502 = zext i32 %844 to i64
  %arrayidx3506 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3502, i32 12, i64 %indvars.iv5168
  %845 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3506, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %845) #14
  %846 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3507 = zext i32 %846 to i64
  %arrayidx3511 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3507, i32 13, i64 %indvars.iv5168
  %847 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3511, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %847) #14
  %indvars.iv.next5169 = add nuw nsw i64 %indvars.iv5168, 1
  %exitcond5171.not = icmp eq i64 %indvars.iv.next5169, 22
  br i1 %exitcond5171.not, label %for.body3518.preheader, label %for.body3501, !llvm.loop !124

for.body3518.preheader:                           ; preds = %for.body3501
  %848 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519 = zext i32 %848 to i64
  %arrayidx3523 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519, i32 14, i64 0
  %849 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %849) #14
  %850 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.1 = zext i32 %850 to i64
  %arrayidx3523.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.1, i32 14, i64 1
  %851 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.1, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %851) #14
  %852 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.2 = zext i32 %852 to i64
  %arrayidx3523.2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.2, i32 14, i64 2
  %853 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.2, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %853) #14
  %854 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.3 = zext i32 %854 to i64
  %arrayidx3523.3 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.3, i32 14, i64 3
  %855 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.3, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %855) #14
  %856 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.4 = zext i32 %856 to i64
  %arrayidx3523.4 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.4, i32 14, i64 4
  %857 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.4, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %857) #14
  %858 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.5 = zext i32 %858 to i64
  %arrayidx3523.5 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.5, i32 14, i64 5
  %859 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.5, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %859) #14
  %860 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.6 = zext i32 %860 to i64
  %arrayidx3523.6 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.6, i32 14, i64 6
  %861 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.6, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %861) #14
  %862 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.7 = zext i32 %862 to i64
  %arrayidx3523.7 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.7, i32 14, i64 7
  %863 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.7, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %863) #14
  %864 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.8 = zext i32 %864 to i64
  %arrayidx3523.8 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.8, i32 14, i64 8
  %865 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.8, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %865) #14
  %866 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.9 = zext i32 %866 to i64
  %arrayidx3523.9 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.9, i32 14, i64 9
  %867 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.9, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %867) #14
  %868 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.10 = zext i32 %868 to i64
  %arrayidx3523.10 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.10, i32 14, i64 10
  %869 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.10, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %869) #14
  %870 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.11 = zext i32 %870 to i64
  %arrayidx3523.11 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.11, i32 14, i64 11
  %871 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.11, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %871) #14
  %872 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.12 = zext i32 %872 to i64
  %arrayidx3523.12 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.12, i32 14, i64 12
  %873 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.12, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %873) #14
  %874 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.13 = zext i32 %874 to i64
  %arrayidx3523.13 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.13, i32 14, i64 13
  %875 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.13, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %875) #14
  %876 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.14 = zext i32 %876 to i64
  %arrayidx3523.14 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.14, i32 14, i64 14
  %877 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.14, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %877) #14
  %878 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.15 = zext i32 %878 to i64
  %arrayidx3523.15 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.15, i32 14, i64 15
  %879 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.15, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %879) #14
  %880 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.16 = zext i32 %880 to i64
  %arrayidx3523.16 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.16, i32 14, i64 16
  %881 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.16, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %881) #14
  %882 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.17 = zext i32 %882 to i64
  %arrayidx3523.17 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.17, i32 14, i64 17
  %883 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.17, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %883) #14
  %884 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.18 = zext i32 %884 to i64
  %arrayidx3523.18 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.18, i32 14, i64 18
  %885 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.18, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %885) #14
  %886 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.19 = zext i32 %886 to i64
  %arrayidx3523.19 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.19, i32 14, i64 19
  %887 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.19, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %887) #14
  %888 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.20 = zext i32 %888 to i64
  %arrayidx3523.20 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.20, i32 14, i64 20
  %889 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.20, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %889) #14
  %890 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.21 = zext i32 %890 to i64
  %arrayidx3523.21 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.21, i32 14, i64 21
  %891 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.21, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %891) #14
  %892 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.22 = zext i32 %892 to i64
  %arrayidx3523.22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.22, i32 14, i64 22
  %893 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.22, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %893) #14
  %894 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3519.23 = zext i32 %894 to i64
  %arrayidx3523.23 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3519.23, i32 14, i64 23
  %895 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx3523.23, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %895) #14
  %896 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3531 = zext i32 %896 to i64
  %arrayidx3535 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3531, i32 15, i64 0
  %897 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3535, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %897) #14
  %898 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3536 = zext i32 %898 to i64
  %arrayidx3540 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3536, i32 16, i64 0
  %899 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3540, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %899) #14
  %900 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3531.1 = zext i32 %900 to i64
  %arrayidx3535.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3531.1, i32 15, i64 1
  %901 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3535.1, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %901) #14
  %902 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3536.1 = zext i32 %902 to i64
  %arrayidx3540.1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3536.1, i32 16, i64 1
  %903 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3540.1, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %903) #14
  %904 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3549 = zext i32 %904 to i64
  %arrayidx3553 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3549, i32 17, i64 0
  %905 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3553, align 8, !tbaa !3
  %cmp3554.not = icmp eq %struct.evp_md_ctx_st* %905, null
  br i1 %cmp3554.not, label %if.end3566, label %land.lhs.true3556

land.lhs.true3556:                                ; preds = %for.body3518.preheader
  %call3562 = call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %905) #14
  %cmp3563.not = icmp eq %struct.evp_pkey_ctx_st* %call3562, null
  br i1 %cmp3563.not, label %if.end3566, label %if.then3565

if.then3565:                                      ; preds = %land.lhs.true3556
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call3562) #14
  br label %if.end3566

if.end3566:                                       ; preds = %if.then3565, %land.lhs.true3556, %for.body3518.preheader
  %906 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3567 = zext i32 %906 to i64
  %arrayidx3571 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3567, i32 17, i64 0
  %907 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3571, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %907) #14
  %908 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3572 = zext i32 %908 to i64
  %arrayidx3576 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3572, i32 18, i64 0
  %909 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3576, align 8, !tbaa !3
  %cmp3577.not = icmp eq %struct.evp_md_ctx_st* %909, null
  br i1 %cmp3577.not, label %if.end3589, label %land.lhs.true3579

land.lhs.true3579:                                ; preds = %if.end3566
  %call3585 = call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef nonnull %909) #14
  %cmp3586.not = icmp eq %struct.evp_pkey_ctx_st* %call3585, null
  br i1 %cmp3586.not, label %if.end3589, label %if.then3588

if.then3588:                                      ; preds = %land.lhs.true3579
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call3585) #14
  br label %if.end3589

if.end3589:                                       ; preds = %if.then3588, %land.lhs.true3579, %if.end3566
  %910 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3590 = zext i32 %910 to i64
  %arrayidx3594 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3590, i32 18, i64 0
  %911 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx3594, align 8, !tbaa !3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %911) #14
  %912 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3595 = zext i32 %912 to i64
  %arrayidx3599 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3595, i32 19, i64 0
  %913 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %arrayidx3599, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %913) #14
  %914 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3603 = zext i32 %914 to i64
  %secret_a3605 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3603, i32 20
  %915 = load i8*, i8** %secret_a3605, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %915, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3314) #14
  %916 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom3606 = zext i32 %916 to i64
  %secret_b3608 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3606, i32 21
  %917 = load i8*, i8** %secret_b3608, align 8, !tbaa !21
  call void @CRYPTO_free(i8* noundef %917, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3315) #14
  %918 = load i32, i32* %i, align 4, !tbaa !7
  %inc3610 = add i32 %918, 1
  store i32 %inc3610, i32* %i, align 4, !tbaa !7
  %cmp3437 = icmp ult i32 %inc3610, %loopargs_len.0
  br i1 %cmp3437, label %for.body3439, label %for.end3611, !llvm.loop !125

for.end3611:                                      ; preds = %if.end3589, %end
  %919 = load i8*, i8** @evp_hmac_name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %919, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3317) #14
  %920 = load i8*, i8** @evp_cmac_name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %920, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3318) #14
  %cmp3612.not = icmp eq i32 %async_jobs.3, 0
  br i1 %cmp3612.not, label %if.end3625, label %for.cond3615.preheader

for.cond3615.preheader:                           ; preds = %for.end3611
  store i32 0, i32* %i, align 4, !tbaa !7
  br i1 %cmp34374996.not, label %if.end3625, label %for.body3618

for.body3618:                                     ; preds = %for.cond3615.preheader, %for.body3618
  %storemerge45424999 = phi i32 [ %inc3623, %for.body3618 ], [ 0, %for.cond3615.preheader ]
  %idxprom3619 = zext i32 %storemerge45424999 to i64
  %wait_ctx3621 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs.0, i64 %idxprom3619, i32 1
  %921 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx3621, align 8, !tbaa !13
  call void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef %921) #14
  %922 = load i32, i32* %i, align 4, !tbaa !7
  %inc3623 = add i32 %922, 1
  store i32 %inc3623, i32* %i, align 4, !tbaa !7
  %cmp3616 = icmp ult i32 %inc3623, %loopargs_len.0
  br i1 %cmp3616, label %for.body3618, label %if.end3625, !llvm.loop !126

if.end3625:                                       ; preds = %for.body3618, %for.cond3615.preheader, %for.end3611
  %tobool3626.not = icmp eq i32 %async_init.1, 0
  br i1 %tobool3626.not, label %cleanup3629, label %if.then3627

if.then3627:                                      ; preds = %if.end3625
  call void @ASYNC_cleanup_thread() #14
  br label %cleanup3629

cleanup3629:                                      ; preds = %if.end3625, %if.then3627
  %923 = bitcast %struct.loopargs_st* %loopargs.0 to i8*
  call void @CRYPTO_free(i8* noundef %923, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3328) #14
  call void @release_engine(%struct.engine_st* noundef %e.1) #14
  %924 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %evp_cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %924) #14
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %mac.9) #14
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #13
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %10) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 29, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #2

declare dso_local i32 @opt_cipher_silent(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @have_md(i8* noundef %name) unnamed_addr #0 {
entry:
  %md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call = call i32 @opt_md_silent(i8* noundef %name, %struct.evp_md_st** noundef nonnull %md) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #14
  %cmp.not = icmp eq %struct.evp_md_ctx_st* %call1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call2 = call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef %1) #14
  %cmp3 = icmp sgt i32 %call2, 0
  %spec.select = zext i1 %cmp3 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %spec.select, %land.lhs.true ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #14
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %2) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.1
}

declare dso_local i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @have_cipher(i8* noundef %name) unnamed_addr #0 {
entry:
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call = call i32 @opt_cipher_silent(i8* noundef %name, %struct.evp_cipher_st** noundef nonnull %cipher) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #14
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %call1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call2 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call1, %struct.evp_cipher_st* noundef %1, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 1) #14
  %cmp3 = icmp sgt i32 %call2, 0
  %spec.select = zext i1 %cmp3 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %spec.select, %land.lhs.true ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call1) #14
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %2) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #7

declare dso_local i32 @ASYNC_is_capable() local_unnamed_addr #2

declare dso_local i32 @opt_int_arg() local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @opt_found(i8* noundef readonly %name, i32* nocapture noundef writeonly %result, %struct.string_int_pair_st* nocapture noundef readonly %pairs, i32 noundef %nbelem) unnamed_addr #8 {
entry:
  %cmp9.not = icmp eq i32 %nbelem, 0
  br i1 %cmp9.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %idx.011 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %pairs.addr.010 = phi %struct.string_int_pair_st* [ %incdec.ptr, %for.inc ], [ %pairs, %entry ]
  %name1 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pairs.addr.010, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !127
  %call = tail call i32 @strcmp(i8* noundef %name, i8* noundef %0) #15
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %retval3 = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pairs.addr.010, i64 0, i32 1
  %1 = load i32, i32* %retval3, align 8, !tbaa !129
  store i32 %1, i32* %result, align 4, !tbaa !7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.011, 1
  %incdec.ptr = getelementptr inbounds %struct.string_int_pair_st, %struct.string_int_pair_st* %pairs.addr.010, i64 1
  %exitcond.not = icmp eq i32 %inc, %nbelem
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !130

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare dso_local i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASYNC_init_thread(i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.async_wait_ctx_st* @ASYNC_WAIT_CTX_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_multi(i32 noundef %multi, i32 noundef %size_num) unnamed_addr #0 {
entry:
  %fd = alloca [2 x i32], align 4
  %buf = alloca [1024 x i8], align 16
  %p = alloca i8*, align 8
  %0 = bitcast [2 x i32]* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %conv = sext i32 %multi to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.365, i64 0, i64 0)) #14
  %1 = bitcast i8* %call to i32*
  %cmp309 = icmp sgt i32 %multi, 0
  br i1 %cmp309, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i64 0, i64 1
  %wide.trip.count = zext i32 %multi to i64
  br label %for.body

for.cond28.preheader:                             ; preds = %if.then10
  br i1 %cmp309, label %for.body31.lr.ph, label %cleanup

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %3 = bitcast i8** %p to i8*
  %add.ptr228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 4
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 3
  %cmp63311 = icmp sgt i32 %size_num, 0
  %wide.trip.count327 = zext i32 %multi to i64
  %wide.trip.count322 = zext i32 %size_num to i64
  br label %for.body31

for.body:                                         ; preds = %for.body.lr.ph, %if.then10
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.then10 ]
  %call2 = call i32 @pipe(i32* noundef nonnull %arraydecay) #14
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.366, i64 0, i64 0)) #14
  call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef %6, i32 noundef 11, i64 noundef 0, i8* noundef null) #14
  %call9 = call i32 @fork() #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call11 = call i32 @close(i32 noundef %7) #14
  %8 = load i32, i32* %arraydecay, align 4, !tbaa !7
  %arrayidx13 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %8, i32* %arrayidx13, align 4, !tbaa !7
  %9 = trunc i64 %indvars.iv to i32
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.368, i64 0, i64 0), i32 noundef %9) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body, !llvm.loop !131

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %arraydecay, align 4, !tbaa !7
  %call15 = call i32 @close(i32 noundef %10) #14
  %call16 = call i32 @close(i32 noundef 1) #14
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call18 = call i32 @dup(i32 noundef %11) #14
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call22 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.367, i64 0, i64 0)) #14
  call void @exit(i32 noundef 1) #16
  unreachable

if.end23:                                         ; preds = %if.else
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call25 = call i32 @close(i32 noundef %13) #14
  store i1 true, i1* @mr, align 4
  store i1 true, i1* @usertime, align 4
  br label %cleanup

for.body31:                                       ; preds = %for.body31.lr.ph, %while.end
  %indvars.iv324 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next325, %while.end ]
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %arrayidx33 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv324
  %14 = load i32, i32* %arrayidx33, align 4, !tbaa !7
  %call34 = call %struct._IO_FILE* @fdopen(i32 noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.369, i64 0, i64 0)) #14
  %call36313 = call i8* @fgets(i8* noundef nonnull %2, i32 noundef 1024, %struct._IO_FILE* noundef %call34) #14
  %tobool37.not314 = icmp eq i8* %call36313, null
  br i1 %tobool37.not314, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %for.body31
  %15 = trunc i64 %indvars.iv324 to i32
  %16 = trunc i64 %indvars.iv324 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %call39 = call i8* @strchr(i8* noundef nonnull %2, i32 noundef 10) #15
  store i8* %call39, i8** %p, align 8, !tbaa !3
  %tobool40.not = icmp eq i8* %call39, null
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %while.body
  store i8 0, i8* %call39, align 1, !tbaa !11
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %while.body
  %17 = load i8, i8* %2, align 16, !tbaa !11
  %cmp45.not = icmp eq i8 %17, 43
  br i1 %cmp45.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end42
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.370, i64 0, i64 0), i8* noundef nonnull %2, i32 noundef %15) #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.body65, %if.then103, %if.then153, %if.then198, %if.else244, %if.else238, %if.then224, %if.then172, %if.then128, %if.then80, %if.then57, %if.then47
  %call36 = call i8* @fgets(i8* noundef nonnull %2, i32 noundef 1024, %struct._IO_FILE* noundef %call34) #14
  %tobool37.not = icmp eq i8* %call36, null
  br i1 %tobool37.not, label %while.end, label %while.body, !llvm.loop !132

if.end50:                                         ; preds = %if.end42
  %call52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.371, i64 0, i64 0), i8* noundef nonnull %2, i32 noundef %16) #14
  %call54 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.372, i64 0, i64 0), i64 noundef 3) #15
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else75

if.then57:                                        ; preds = %if.end50
  store i8* %add.ptr, i8** %p, align 8, !tbaa !3
  %call59 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call60 = call i32 @atoi(i8* noundef %call59) #15
  %19 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  br i1 %cmp63311, label %for.body65.lr.ph, label %while.cond.backedge

for.body65.lr.ph:                                 ; preds = %if.then57
  %idxprom68 = sext i32 %call60 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv319 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next320, %for.body65 ]
  %call66 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call67 = call double @atof(i8* noundef %call66) #15
  %arrayidx71 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 %idxprom68, i64 %indvars.iv319
  %20 = load double, double* %arrayidx71, align 8, !tbaa !82
  %add = fadd double %call67, %20
  store double %add, double* %arrayidx71, align 8, !tbaa !82
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %while.cond.backedge, label %for.body65, !llvm.loop !133

if.else75:                                        ; preds = %if.end50
  %call77 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.373, i64 0, i64 0), i64 noundef 4) #15
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.else98

if.then80:                                        ; preds = %if.else75
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call83 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call84 = call i32 @atoi(i8* noundef %call83) #15
  %21 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call86 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call87 = call double @atof(i8* noundef %call86) #15
  %idxprom88 = sext i32 %call84 to i64
  %arrayidx90 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %idxprom88, i64 0
  %22 = load double, double* %arrayidx90, align 16, !tbaa !82
  %add91 = fadd double %call87, %22
  store double %add91, double* %arrayidx90, align 16, !tbaa !82
  %call92 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call93 = call double @atof(i8* noundef %call92) #15
  %arrayidx96 = getelementptr inbounds [7 x [2 x double]], [7 x [2 x double]]* @rsa_results, i64 0, i64 %idxprom88, i64 1
  %23 = load double, double* %arrayidx96, align 8, !tbaa !82
  %add97 = fadd double %call93, %23
  store double %add97, double* %arrayidx96, align 8, !tbaa !82
  br label %while.cond.backedge

if.else98:                                        ; preds = %if.else75
  %call100 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.374, i64 0, i64 0), i64 noundef 4) #15
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.else123

if.then103:                                       ; preds = %if.else98
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call108 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call109 = call i32 @atoi(i8* noundef %call108) #15
  %24 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call111 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call112 = call double @atof(i8* noundef %call111) #15
  %idxprom113 = sext i32 %call109 to i64
  %arrayidx115 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 %idxprom113, i64 0
  %25 = load double, double* %arrayidx115, align 16, !tbaa !82
  %add116 = fadd double %call112, %25
  store double %add116, double* %arrayidx115, align 16, !tbaa !82
  %call117 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call118 = call double @atof(i8* noundef %call117) #15
  %arrayidx121 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* @dsa_results, i64 0, i64 %idxprom113, i64 1
  %26 = load double, double* %arrayidx121, align 8, !tbaa !82
  %add122 = fadd double %call118, %26
  store double %add122, double* %arrayidx121, align 8, !tbaa !82
  br label %while.cond.backedge

if.else123:                                       ; preds = %if.else98
  %call125 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.375, i64 0, i64 0), i64 noundef 4) #15
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.else148

if.then128:                                       ; preds = %if.else123
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call133 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call134 = call i32 @atoi(i8* noundef %call133) #15
  %27 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call136 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call137 = call double @atof(i8* noundef %call136) #15
  %idxprom138 = sext i32 %call134 to i64
  %arrayidx140 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %idxprom138, i64 0
  %28 = load double, double* %arrayidx140, align 16, !tbaa !82
  %add141 = fadd double %call137, %28
  store double %add141, double* %arrayidx140, align 16, !tbaa !82
  %call142 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call143 = call double @atof(i8* noundef %call142) #15
  %arrayidx146 = getelementptr inbounds [22 x [2 x double]], [22 x [2 x double]]* @ecdsa_results, i64 0, i64 %idxprom138, i64 1
  %29 = load double, double* %arrayidx146, align 8, !tbaa !82
  %add147 = fadd double %call143, %29
  store double %add147, double* %arrayidx146, align 8, !tbaa !82
  br label %while.cond.backedge

if.else148:                                       ; preds = %if.else123
  %call150 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.376, i64 0, i64 0), i64 noundef 4) #15
  %cmp151 = icmp eq i32 %call150, 0
  br i1 %cmp151, label %if.then153, label %if.else167

if.then153:                                       ; preds = %if.else148
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call158 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call159 = call i32 @atoi(i8* noundef %call158) #15
  %30 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call161 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call162 = call double @atof(i8* noundef %call161) #15
  %idxprom163 = sext i32 %call159 to i64
  %arrayidx165 = getelementptr inbounds [24 x [1 x double]], [24 x [1 x double]]* @ecdh_results, i64 0, i64 %idxprom163, i64 0
  %31 = load double, double* %arrayidx165, align 8, !tbaa !82
  %add166 = fadd double %call162, %31
  store double %add166, double* %arrayidx165, align 8, !tbaa !82
  br label %while.cond.backedge

if.else167:                                       ; preds = %if.else148
  %call169 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.377, i64 0, i64 0), i64 noundef 4) #15
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then172, label %if.else193

if.then172:                                       ; preds = %if.else167
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call177 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call178 = call i32 @atoi(i8* noundef %call177) #15
  %32 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %33 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call181 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call182 = call double @atof(i8* noundef %call181) #15
  %idxprom183 = sext i32 %call178 to i64
  %arrayidx185 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 %idxprom183, i64 0
  %34 = load double, double* %arrayidx185, align 16, !tbaa !82
  %add186 = fadd double %call182, %34
  store double %add186, double* %arrayidx185, align 16, !tbaa !82
  %call187 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call188 = call double @atof(i8* noundef %call187) #15
  %arrayidx191 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @eddsa_results, i64 0, i64 %idxprom183, i64 1
  %35 = load double, double* %arrayidx191, align 8, !tbaa !82
  %add192 = fadd double %call188, %35
  store double %add192, double* %arrayidx191, align 8, !tbaa !82
  br label %while.cond.backedge

if.else193:                                       ; preds = %if.else167
  %call195 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.378, i64 0, i64 0), i64 noundef 4) #15
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %if.then198, label %if.else219

if.then198:                                       ; preds = %if.else193
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call203 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call204 = call i32 @atoi(i8* noundef %call203) #15
  %36 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %37 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call207 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call208 = call double @atof(i8* noundef %call207) #15
  %idxprom209 = sext i32 %call204 to i64
  %arrayidx211 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 %idxprom209, i64 0
  %38 = load double, double* %arrayidx211, align 16, !tbaa !82
  %add212 = fadd double %call208, %38
  store double %add212, double* %arrayidx211, align 16, !tbaa !82
  %call213 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call214 = call double @atof(i8* noundef %call213) #15
  %arrayidx217 = getelementptr inbounds [1 x [2 x double]], [1 x [2 x double]]* @sm2_results, i64 0, i64 %idxprom209, i64 1
  %39 = load double, double* %arrayidx217, align 8, !tbaa !82
  %add218 = fadd double %call214, %39
  store double %add218, double* %arrayidx217, align 8, !tbaa !82
  br label %while.cond.backedge

if.else219:                                       ; preds = %if.else193
  %call221 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.379, i64 0, i64 0), i64 noundef 4) #15
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.else238

if.then224:                                       ; preds = %if.else219
  store i8* %add.ptr228, i8** %p, align 8, !tbaa !3
  %call229 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call230 = call i32 @atoi(i8* noundef %call229) #15
  %40 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call232 = call fastcc i8* @sstrsep(i8** noundef nonnull %p) #17
  %call233 = call double @atof(i8* noundef %call232) #15
  %idxprom234 = sext i32 %call230 to i64
  %arrayidx236 = getelementptr inbounds [5 x [1 x double]], [5 x [1 x double]]* @ffdh_results, i64 0, i64 %idxprom234, i64 0
  %41 = load double, double* %arrayidx236, align 8, !tbaa !82
  %add237 = fadd double %call233, %41
  store double %add237, double* %arrayidx236, align 8, !tbaa !82
  br label %while.cond.backedge

if.else238:                                       ; preds = %if.else219
  %call240 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.380, i64 0, i64 0), i64 noundef 3) #15
  %cmp241 = icmp eq i32 %call240, 0
  br i1 %cmp241, label %while.cond.backedge, label %if.else244

if.else244:                                       ; preds = %if.else238
  %42 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call246 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %42, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.381, i64 0, i64 0), i8* noundef nonnull %2, i32 noundef %16) #14
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %for.body31
  %call256 = call i32 @fclose(%struct._IO_FILE* noundef %call34) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #13
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %cleanup, label %for.body31, !llvm.loop !134

cleanup:                                          ; preds = %while.end, %for.cond28.preheader, %entry, %if.end23
  %.sink = phi i32 [ 3425, %if.end23 ], [ 3559, %entry ], [ 3559, %for.cond28.preheader ], [ 3559, %while.end ]
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 1, %entry ], [ 1, %for.cond28.preheader ], [ 1, %while.end ]
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef %.sink) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal void @alarmed(i32 noundef %sig) #0 {
entry:
  %call = tail call void (i32)* @signal(i32 noundef 14, void (i32)* noundef nonnull @alarmed) #14
  store volatile i32 0, i32* @run, align 4, !tbaa !7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_message(i8* noundef %s, i32 noundef %length, i32 noundef %tm) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b = load i1, i1* @mr, align 4
  %cond = select i1 %.b, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.358, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.359, i64 0, i64 0)
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef %cond, i8* noundef %s, i32 noundef %tm, i32 noundef %length) #14
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 11, i64 noundef 0, i8* noundef null) #14
  store volatile i32 1, i32* @run, align 4, !tbaa !7
  %call2 = tail call i32 @alarm(i32 noundef %tm) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc double @Time_F(i32 noundef %s) unnamed_addr #0 {
entry:
  %.b = load i1, i1* @usertime, align 4
  %not..b = xor i1 %.b, true
  %0 = zext i1 %not..b to i32
  %call = tail call double @app_tminterval(i32 noundef %s, i32 noundef %0) #14
  %cmp = icmp eq i32 %s, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @alarm(i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_benchmark(i32 noundef %async_jobs, i32 (i8*)* noundef %loop_function, %struct.loopargs_st* noundef %loopargs) unnamed_addr #0 {
entry:
  %loopargs.addr = alloca %struct.loopargs_st*, align 8
  %job_op_count = alloca i32, align 4
  %job_fd = alloca i32, align 4
  %num_job_fds = alloca i64, align 8
  %looparg_item = alloca %struct.loopargs_st*, align 8
  %waitfdset = alloca %struct.fd_set, align 8
  store %struct.loopargs_st* %loopargs, %struct.loopargs_st** %loopargs.addr, align 8, !tbaa !3
  %0 = bitcast i32* %job_op_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %job_op_count, align 4, !tbaa !7
  %1 = bitcast i32* %job_fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %job_fd, align 4, !tbaa !7
  %2 = bitcast i64* %num_job_fds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #13
  store i64 0, i64* %num_job_fds, align 8, !tbaa !39
  %cmp = icmp eq i32 %async_jobs, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1213 = icmp sgt i32 %async_jobs, 0
  br i1 %cmp1213, label %for.body.lr.ph, label %while.end.thread268

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = bitcast %struct.loopargs_st** %looparg_item to i8*
  %4 = zext i32 %async_jobs to i64
  br label %for.body

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.loopargs_st** %loopargs.addr to i8*
  %call = call i32 %loop_function(i8* noundef nonnull %5) #14
  br label %cleanup133

while.cond.preheader:                             ; preds = %sw.epilog, %sw.epilog.thread
  %num_inprogress.0.lcssa = phi i32 [ %num_inprogress.0214, %sw.epilog.thread ], [ %num_inprogress.1, %sw.epilog ]
  %error.0.lcssa = phi i32 [ 1, %sw.epilog.thread ], [ %error.1, %sw.epilog ]
  %total_op_count.0.lcssa = phi i32 [ %total_op_count.0217, %sw.epilog.thread ], [ %total_op_count.1, %sw.epilog ]
  %cmp12233 = icmp sgt i32 %num_inprogress.0.lcssa, 0
  br i1 %cmp12233, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %6 = bitcast %struct.fd_set* %waitfdset to i8*
  %arrayidx13 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %waitfdset, i64 0, i32 0, i64 0
  %wide.trip.count = zext i32 %async_jobs to i64
  %wide.trip.count251 = zext i32 %async_jobs to i64
  br label %while.body

for.body:                                         ; preds = %for.body.lr.ph, %sw.epilog
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  %total_op_count.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %total_op_count.1, %sw.epilog ]
  %num_inprogress.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %num_inprogress.1, %sw.epilog ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  %add.ptr = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs, i64 %indvars.iv
  store %struct.loopargs_st* %add.ptr, %struct.loopargs_st** %looparg_item, align 8, !tbaa !3
  %inprogress_job = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs, i64 %indvars.iv, i32 0
  %wait_ctx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %loopargs, i64 %indvars.iv, i32 1
  %7 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx, align 8, !tbaa !13
  %call4 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef %inprogress_job, %struct.async_wait_ctx_st* noundef %7, i32* noundef nonnull %job_op_count, i32 (i8*)* noundef %loop_function, i8* noundef nonnull %3, i64 noundef 8) #14
  switch i32 %call4, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 1, label %sw.epilog.thread
    i32 0, label %sw.epilog.thread
  ]

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %num_inprogress.0214, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  %8 = load i32, i32* %job_op_count, align 4, !tbaa !7
  %cmp6 = icmp eq i32 %8, -1
  %spec.select190 = zext i1 %cmp6 to i32
  %add = select i1 %cmp6, i32 0, i32 %8
  %spec.select191 = add nsw i32 %add, %total_op_count.0217
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %for.body, %for.body
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.338, i64 0, i64 0)) #14
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %10) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  br label %while.cond.preheader

sw.epilog:                                        ; preds = %sw.bb5, %for.body, %sw.bb
  %num_inprogress.1 = phi i32 [ %num_inprogress.0214, %for.body ], [ %inc, %sw.bb ], [ %num_inprogress.0214, %sw.bb5 ]
  %error.1 = phi i32 [ 0, %for.body ], [ 0, %sw.bb ], [ %spec.select190, %sw.bb5 ]
  %total_op_count.1 = phi i32 [ %total_op_count.0217, %for.body ], [ %total_op_count.0217, %sw.bb ], [ %spec.select191, %sw.bb5 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp1 = icmp ult i64 %indvars.iv.next, %4
  %tobool.not = icmp eq i32 %error.1, 0
  %11 = select i1 %cmp1, i1 %tobool.not, i1 false
  br i1 %11, label %for.body, label %while.cond.preheader, !llvm.loop !135

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %total_op_count.2236 = phi i32 [ %total_op_count.0.lcssa, %while.body.lr.ph ], [ %total_op_count.6, %cleanup ]
  %error.2235 = phi i32 [ %error.0.lcssa, %while.body.lr.ph ], [ %error.8, %cleanup ]
  %num_inprogress.2234 = phi i32 [ %num_inprogress.0.lcssa, %while.body.lr.ph ], [ %num_inprogress.5, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #13
  %12 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx13) #13, !srcloc !136
  br i1 %cmp1213, label %for.body20.preheader, label %if.end52

for.body20.preheader:                             ; preds = %while.body
  %.pre = load %struct.loopargs_st*, %struct.loopargs_st** %loopargs.addr, align 8, !tbaa !3
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader, %for.inc46
  %indvars.iv245 = phi i64 [ 0, %for.body20.preheader ], [ %indvars.iv.next246, %for.inc46 ]
  %max_fd.0222 = phi i32 [ 0, %for.body20.preheader ], [ %max_fd.1, %for.inc46 ]
  %inprogress_job23 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %.pre, i64 %indvars.iv245, i32 0
  %13 = load %struct.async_job_st*, %struct.async_job_st** %inprogress_job23, align 8, !tbaa !137
  %cmp24 = icmp eq %struct.async_job_st* %13, null
  br i1 %cmp24, label %for.inc46, label %if.end26

if.end26:                                         ; preds = %for.body20
  %wait_ctx29 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %.pre, i64 %indvars.iv245, i32 1
  %14 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx29, align 8, !tbaa !13
  %call30 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef %14, i32* noundef null, i64* noundef nonnull %num_job_fds) #14
  %tobool31 = icmp eq i32 %call30, 0
  %15 = load i64, i64* %num_job_fds, align 8
  %cmp32 = icmp ugt i64 %15, 1
  %or.cond = select i1 %tobool31, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end26
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.339, i64 0, i64 0)) #14
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %17) #14
  br label %for.end48

if.end35:                                         ; preds = %if.end26
  %wait_ctx38 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %.pre, i64 %indvars.iv245, i32 1
  %18 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx38, align 8, !tbaa !13
  %call39 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef %18, i32* noundef nonnull %job_fd, i64* noundef nonnull %num_job_fds) #14
  %19 = load i32, i32* %job_fd, align 4, !tbaa !7
  %rem = srem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = sdiv i32 %19, 64
  %idxprom41 = sext i32 %div to i64
  %arrayidx42 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %waitfdset, i64 0, i32 0, i64 %idxprom41
  %20 = load i64, i64* %arrayidx42, align 8, !tbaa !39
  %or = or i64 %shl, %20
  store i64 %or, i64* %arrayidx42, align 8, !tbaa !39
  %cmp43 = icmp sgt i32 %19, %max_fd.0222
  %spec.select = select i1 %cmp43, i32 %19, i32 %max_fd.0222
  br label %for.inc46

for.inc46:                                        ; preds = %if.end35, %for.body20
  %max_fd.1 = phi i32 [ %max_fd.0222, %for.body20 ], [ %spec.select, %if.end35 ]
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count
  br i1 %exitcond.not, label %for.end48, label %for.body20, !llvm.loop !138

for.end48:                                        ; preds = %for.inc46, %if.then33
  %max_fd.0203 = phi i32 [ %max_fd.0222, %if.then33 ], [ %max_fd.1, %for.inc46 ]
  %error.3 = phi i32 [ 1, %if.then33 ], [ %error.2235, %for.inc46 ]
  %cmp49 = icmp sgt i32 %max_fd.0203, 1023
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.end48
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call51 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.340, i64 0, i64 0), i32 noundef %max_fd.0203, i32 noundef 1024) #14
  br label %while.end.thread

if.end52:                                         ; preds = %while.body, %for.end48
  %error.3267 = phi i32 [ %error.3, %for.end48 ], [ %error.2235, %while.body ]
  %max_fd.0203266 = phi i32 [ %max_fd.0203, %for.end48 ], [ 0, %while.body ]
  %add53 = add nsw i32 %max_fd.0203266, 1
  %call54 = call i32 @select(i32 noundef %add53, %struct.fd_set* noundef nonnull %waitfdset, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef null) #14
  switch i32 %call54, label %for.cond67.preheader [
    i32 -1, label %land.lhs.true
    i32 0, label %cleanup
  ]

for.cond67.preheader:                             ; preds = %if.end52
  br i1 %cmp1213, label %for.body69, label %cleanup

land.lhs.true:                                    ; preds = %if.end52
  %call56 = tail call i32* @__errno_location() #18
  %22 = load i32, i32* %call56, align 4, !tbaa !7
  %cmp57 = icmp eq i32 %22, 4
  br i1 %cmp57, label %cleanup, label %if.then61, !llvm.loop !139

if.then61:                                        ; preds = %land.lhs.true
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call62 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.341, i64 0, i64 0)) #14
  br label %while.end.thread

for.body69:                                       ; preds = %for.cond67.preheader, %for.inc127
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.inc127 ], [ 0, %for.cond67.preheader ]
  %total_op_count.3229 = phi i32 [ %total_op_count.5, %for.inc127 ], [ %total_op_count.2236, %for.cond67.preheader ]
  %error.4227 = phi i32 [ %error.6, %for.inc127 ], [ %error.3267, %for.cond67.preheader ]
  %num_inprogress.3225 = phi i32 [ %num_inprogress.4, %for.inc127 ], [ %num_inprogress.2234, %for.cond67.preheader ]
  %24 = load %struct.loopargs_st*, %struct.loopargs_st** %loopargs.addr, align 8, !tbaa !3
  %inprogress_job72 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %24, i64 %indvars.iv248, i32 0
  %25 = load %struct.async_job_st*, %struct.async_job_st** %inprogress_job72, align 8, !tbaa !137
  %cmp73 = icmp eq %struct.async_job_st* %25, null
  br i1 %cmp73, label %for.inc127, label %if.end75

if.end75:                                         ; preds = %for.body69
  %wait_ctx78 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %24, i64 %indvars.iv248, i32 1
  %26 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx78, align 8, !tbaa !13
  %call79 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef %26, i32* noundef null, i64* noundef nonnull %num_job_fds) #14
  %tobool80 = icmp eq i32 %call79, 0
  %27 = load i64, i64* %num_job_fds, align 8
  %cmp82 = icmp ugt i64 %27, 1
  %or.cond141 = select i1 %tobool80, i1 true, i1 %cmp82
  br i1 %or.cond141, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end75
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call84 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.339, i64 0, i64 0)) #14
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %29) #14
  br label %cleanup

if.end85:                                         ; preds = %if.end75
  %30 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx78, align 8, !tbaa !13
  %call89 = call i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef %30, i32* noundef nonnull %job_fd, i64* noundef nonnull %num_job_fds) #14
  %31 = load i64, i64* %num_job_fds, align 8, !tbaa !39
  %cmp90 = icmp eq i64 %31, 1
  br i1 %cmp90, label %land.lhs.true91, label %if.end101

land.lhs.true91:                                  ; preds = %if.end85
  %32 = load i32, i32* %job_fd, align 4, !tbaa !7
  %div93 = sdiv i32 %32, 64
  %idxprom94 = sext i32 %div93 to i64
  %arrayidx95 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %waitfdset, i64 0, i32 0, i64 %idxprom94
  %33 = load i64, i64* %arrayidx95, align 8, !tbaa !39
  %rem96 = srem i32 %32, 64
  %sh_prom97 = zext i32 %rem96 to i64
  %shl98 = shl nuw i64 1, %sh_prom97
  %and = and i64 %shl98, %33
  %cmp99.not = icmp eq i64 %and, 0
  br i1 %cmp99.not, label %for.inc127, label %if.end101

if.end101:                                        ; preds = %land.lhs.true91, %if.end85
  %arrayidx103 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %24, i64 %indvars.iv248
  %inprogress_job104 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %arrayidx103, i64 0, i32 0
  %34 = load %struct.async_wait_ctx_st*, %struct.async_wait_ctx_st** %wait_ctx78, align 8, !tbaa !13
  %35 = bitcast %struct.loopargs_st* %arrayidx103 to i8*
  %call110 = call i32 @ASYNC_start_job(%struct.async_job_st** noundef %inprogress_job104, %struct.async_wait_ctx_st* noundef %34, i32* noundef nonnull %job_op_count, i32 (i8*)* noundef %loop_function, i8* noundef %35, i64 noundef 1104) #14
  switch i32 %call110, label %for.inc127 [
    i32 0, label %sw.bb120
    i32 3, label %sw.bb111
    i32 1, label %sw.bb120
  ]

sw.bb111:                                         ; preds = %if.end101
  %36 = load i32, i32* %job_op_count, align 4, !tbaa !7
  %cmp112 = icmp eq i32 %36, -1
  %error.5 = select i1 %cmp112, i32 1, i32 %error.4227
  %add115 = select i1 %cmp112, i32 0, i32 %36
  %total_op_count.4 = add nsw i32 %add115, %total_op_count.3229
  %dec = add nsw i32 %num_inprogress.3225, -1
  store %struct.async_job_st* null, %struct.async_job_st** %inprogress_job72, align 8, !tbaa !137
  br label %for.inc127

sw.bb120:                                         ; preds = %if.end101, %if.end101
  %dec121 = add nsw i32 %num_inprogress.3225, -1
  store %struct.async_job_st* null, %struct.async_job_st** %inprogress_job72, align 8, !tbaa !137
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call125 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.338, i64 0, i64 0)) #14
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %38) #14
  br label %for.inc127

for.inc127:                                       ; preds = %sw.bb111, %sw.bb120, %if.end101, %land.lhs.true91, %for.body69
  %num_inprogress.4 = phi i32 [ %num_inprogress.3225, %for.body69 ], [ %num_inprogress.3225, %if.end101 ], [ %dec, %sw.bb111 ], [ %dec121, %sw.bb120 ], [ %num_inprogress.3225, %land.lhs.true91 ]
  %error.6 = phi i32 [ %error.4227, %for.body69 ], [ %error.4227, %if.end101 ], [ %error.5, %sw.bb111 ], [ 1, %sw.bb120 ], [ %error.4227, %land.lhs.true91 ]
  %total_op_count.5 = phi i32 [ %total_op_count.3229, %for.body69 ], [ %total_op_count.3229, %if.end101 ], [ %total_op_count.4, %sw.bb111 ], [ %total_op_count.3229, %sw.bb120 ], [ %total_op_count.3229, %land.lhs.true91 ]
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %cleanup, label %for.body69, !llvm.loop !140

while.end.thread:                                 ; preds = %if.then61, %if.then50
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %39) #14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #13
  br label %cleanup133

cleanup:                                          ; preds = %for.inc127, %for.cond67.preheader, %if.end52, %if.then83, %land.lhs.true
  %num_inprogress.5 = phi i32 [ %num_inprogress.2234, %land.lhs.true ], [ %num_inprogress.3225, %if.then83 ], [ %num_inprogress.2234, %if.end52 ], [ %num_inprogress.2234, %for.cond67.preheader ], [ %num_inprogress.4, %for.inc127 ]
  %error.8 = phi i32 [ %error.3267, %land.lhs.true ], [ 1, %if.then83 ], [ %error.3267, %if.end52 ], [ %error.3267, %for.cond67.preheader ], [ %error.6, %for.inc127 ]
  %total_op_count.6 = phi i32 [ %total_op_count.2236, %land.lhs.true ], [ %total_op_count.3229, %if.then83 ], [ %total_op_count.2236, %if.end52 ], [ %total_op_count.2236, %for.cond67.preheader ], [ %total_op_count.5, %for.inc127 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #13
  %cmp12 = icmp sgt i32 %num_inprogress.5, 0
  br i1 %cmp12, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %while.cond.preheader
  %error.2.lcssa = phi i32 [ %error.0.lcssa, %while.cond.preheader ], [ %error.8, %cleanup ]
  %total_op_count.2.lcssa = phi i32 [ %total_op_count.0.lcssa, %while.cond.preheader ], [ %total_op_count.6, %cleanup ]
  %tobool132.not = icmp eq i32 %error.2.lcssa, 0
  br i1 %tobool132.not, label %while.end.thread268, label %cleanup133

while.end.thread268:                              ; preds = %for.cond.preheader, %while.end
  %total_op_count.2.lcssa272 = phi i32 [ %total_op_count.2.lcssa, %while.end ], [ 0, %for.cond.preheader ]
  br label %cleanup133

cleanup133:                                       ; preds = %while.end.thread268, %while.end, %while.end.thread, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %while.end.thread ], [ %total_op_count.2.lcssa272, %while.end.thread268 ], [ -1, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Digest_MD2_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.295, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_result(i32 noundef %alg, i32 noundef %run_no, i32 noundef %count, double noundef %time_used) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %count, -1
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %alg to i64
  %arrayidx = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.362, i64 0, i64 0), i8* noundef %1) #14
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #14
  br label %return

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @mr, align 4
  %cond = select i1 %.b, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.363, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.364, i64 0, i64 0)
  %idxprom1 = sext i32 %alg to i64
  %arrayidx2 = getelementptr inbounds [29 x i8*], [29 x i8*]* @names, i64 0, i64 %idxprom1
  %3 = load i8*, i8** %arrayidx2, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef %cond, i32 noundef %count, i8* noundef %3, double noundef %time_used) #14
  %conv = sitofp i32 %count to double
  %div = fdiv double %conv, %time_used
  %4 = load i32*, i32** @lengths, align 8, !tbaa !3
  %idxprom4 = sext i32 %run_no to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %4, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %conv6 = sitofp i32 %5 to double
  %mul = fmul double %div, %conv6
  %arrayidx10 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 %idxprom1, i64 %idxprom4
  store double %mul, double* %arrayidx10, align 8, !tbaa !82
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Digest_MDC2_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.296, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Digest_MD4_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MD5_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SHA1_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.298, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SHA256_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.299, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SHA512_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @WHIRLPOOL_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.301, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Digest_RMD160_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i64 0, i64 0), i8* noundef %args) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #9

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare dso_local %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @HMAC_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_MAC_loop(i8* noundef %args) #17
  ret i32 %call
}

declare dso_local void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_ctx_st* @init_evp_cipher_ctx(i8* noundef %ciphername, i8* noundef %key, i32 noundef %keylen) unnamed_addr #0 {
entry:
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call = call i32 @opt_cipher_silent(i8* noundef %ciphername, %struct.evp_cipher_st** noundef nonnull %cipher) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #14
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %call1, null
  br i1 %cmp, label %end, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %call4 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call1, %struct.evp_cipher_st* noundef %1, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 1) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef nonnull %call1, i32 noundef %keylen) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call1, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %key, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0), i32 noundef 1) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end.sink.split, label %end

end.sink.split:                                   ; preds = %if.end11, %if.end7, %if.end3
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %call1) #14
  br label %end

end:                                              ; preds = %end.sink.split, %if.end11, %if.end
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ null, %if.end ], [ %call1, %if.end11 ], [ null, %end.sink.split ]
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %2) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi %struct.evp_cipher_ctx_st* [ %ctx.0, %end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.evp_cipher_ctx_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Cipher_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %ctx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 26
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !44
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %3, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %5 = load i32*, i32** @lengths, align 8, !tbaa !3
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom22 = zext i32 %6 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %5, i64 %idxprom22
  %7 = load i32, i32* %arrayidx23, align 4, !tbaa !7
  %call24 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef nonnull %3, i8* noundef %2, i8* noundef %2, i32 noundef %7) #14
  %cmp525 = icmp slt i32 %call24, 1
  br i1 %cmp525, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %count.02026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %inc = add nuw nsw i32 %count.02026, 1
  %8 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %8, 0
  %cmp2 = icmp ne i32 %inc, 2147483647
  %9 = select i1 %tobool, i1 %cmp2, i1 false
  br i1 %9, label %for.inc.for.body_crit_edge, label %cleanup, !llvm.loop !141

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8, !tbaa !44
  %10 = load i32*, i32** @lengths, align 8, !tbaa !3
  %11 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %.pre, i8* noundef %2, i8* noundef %2, i32 noundef %12) #14
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.inc, %for.inc.for.body_crit_edge, %for.body.preheader, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.cond.preheader ], [ -1, %for.body.preheader ], [ -1, %for.inc.for.body_crit_edge ], [ %inc, %for.inc ]
  ret i32 %retval.0
}

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @GHASH_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %mctx2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 27
  %3 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mctx2, align 8, !tbaa !40
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.015 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %5 = load i32*, i32** @lengths, align 8, !tbaa !3
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %conv = sext i32 %7 to i64
  %call = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %3, i8* noundef %2, i64 noundef %conv) #14
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.015, 1
  %8 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %8, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %9 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %9, label %for.body, label %cleanup, !llvm.loop !142

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], [ -1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @RAND_bytes_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %3 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %4 = load i32*, i32** @lengths, align 8, !tbaa !3
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call = tail call i32 @RAND_bytes(i8* noundef %2, i32 noundef %6) #14
  %inc = add nuw nsw i32 %count.08, 1
  %7 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %7, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %8 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %8, label %for.body, label %for.end, !llvm.loop !143

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Update_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %outl = alloca i32, align 4
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %ctx2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 26
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx2, align 8, !tbaa !44
  %4 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %.b51 = load i1, i1* @decrypt, align 4
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool355.not = icmp eq i32 %5, 0
  br i1 %.b51, label %for.cond.preheader, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %entry
  br i1 %tobool355.not, label %if.else27, label %for.body12

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool355.not, label %if.then25, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %count.056 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %6 = load i32*, i32** @lengths, align 8, !tbaa !3
  %7 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %8) #14
  %cmp4.not = icmp eq i32 %call, 1
  br i1 %cmp4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %call6 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0), i32 noundef -1) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nuw nsw i32 %count.056, 1
  %9 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool3 = icmp ne i32 %9, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %10 = select i1 %tobool3, i1 %cmp, i1 false
  br i1 %10, label %for.body, label %if.end23, !llvm.loop !144

for.body12:                                       ; preds = %for.cond7.preheader, %for.inc20
  %count.154 = phi i32 [ %inc21, %for.inc20 ], [ 0, %for.cond7.preheader ]
  %11 = load i32*, i32** @lengths, align 8, !tbaa !3
  %12 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom13 = zext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %11, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4, !tbaa !7
  %call15 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %13) #14
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %for.inc20, label %if.then17

if.then17:                                        ; preds = %for.body12
  %call18 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0), i32 noundef -1) #14
  br label %for.inc20

for.inc20:                                        ; preds = %for.body12, %if.then17
  %inc21 = add nuw nsw i32 %count.154, 1
  %14 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool8 = icmp ne i32 %14, 0
  %cmp10 = icmp ne i32 %inc21, 2147483647
  %15 = select i1 %tobool8, i1 %cmp10, i1 false
  br i1 %15, label %for.body12, label %if.end23, !llvm.loop !145

if.end23:                                         ; preds = %for.inc20, %for.inc
  %count.2.ph = phi i32 [ %inc, %for.inc ], [ %inc21, %for.inc20 ]
  %.b.pr = load i1, i1* @decrypt, align 4
  br i1 %.b.pr, label %if.then25, label %if.else27

if.then25:                                        ; preds = %for.cond.preheader, %if.end23
  %count.262 = phi i32 [ %count.2.ph, %if.end23 ], [ 0, %for.cond.preheader ]
  %call26 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl) #14
  br label %if.end29

if.else27:                                        ; preds = %for.cond7.preheader, %if.end23
  %count.266 = phi i32 [ %count.2.ph, %if.end23 ], [ 0, %for.cond7.preheader ]
  %call28 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl) #14
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  %count.261 = phi i32 [ %count.266, %if.else27 ], [ %count.262, %if.then25 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  ret i32 %count.261
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @multiblock_speed(%struct.evp_cipher_st* noundef %evp_cipher, i32 noundef %lengths_single, %struct.openssl_speed_sec_st* nocapture noundef readonly %seconds) unnamed_addr #0 {
entry:
  %lengths_single.addr = alloca i32, align 4
  %no_key = alloca [32 x i8], align 16
  %no_iv = alloca [16 x i8], align 16
  %aad = alloca [13 x i8], align 1
  %mb_param = alloca %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, align 8
  store i32 %lengths_single, i32* %lengths_single.addr, align 4, !tbaa !7
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %no_key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #13
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %no_iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  %tobool.not = icmp eq i32 %lengths_single, 0
  %spec.select = select i1 %tobool.not, i32 5, i32 1
  %spec.select239 = select i1 %tobool.not, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @multiblock_speed.mblengths_list, i64 0, i64 0), i32* %lengths_single.addr
  %sub = add nsw i32 %spec.select, -1
  %2 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %spec.select239, i64 %2
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %conv = sext i32 %3 to i64
  %call = tail call i8* @app_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.382, i64 0, i64 0)) #14
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %add = add nsw i32 %4, 1024
  %conv4 = sext i32 %add to i64
  %call5 = tail call i8* @app_malloc(i64 noundef %conv4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.383, i64 0, i64 0)) #14
  %call6 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #14
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %call6, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %entry
  tail call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.384, i64 0, i64 0)) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  %call10 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call6, %struct.evp_cipher_st* noundef %evp_cipher, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %1) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.385, i64 0, i64 0)) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %call14 = call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %call6) #14
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.386, i64 0, i64 0), i32 noundef %call14) #14
  br label %err

if.end19:                                         ; preds = %if.end13
  %conv20240 = zext i32 %call14 to i64
  %call21 = call i8* @app_malloc(i64 noundef %conv20240, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i64 0, i64 0)) #14
  %call22 = call i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef %call6, i8* noundef %call21) #14
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.387, i64 0, i64 0)) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  %call26 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call6, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %call21, i8* noundef null) #14
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.388, i64 0, i64 0)) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  call void @CRYPTO_clear_free(i8* noundef %call21, i64 noundef %conv20240, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3597) #14
  %call32 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call6, i32 noundef 23, i32 noundef 32, i8* noundef nonnull %0) #14
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.389, i64 0, i64 0)) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29
  %call36 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %evp_cipher) #14
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.390, i64 0, i64 0)) #14
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35
  %sym = getelementptr inbounds %struct.openssl_speed_sec_st, %struct.openssl_speed_sec_st* %seconds, i64 0, i32 0
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 0
  %7 = bitcast %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param to i8*
  %arrayidx56 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 8
  %arrayidx57 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 9
  %arrayidx58 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 10
  %arrayidx59 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 11
  %arrayidx60 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 12
  %out61 = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 0
  %inp63 = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 1
  %len64 = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 2
  %interleave = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 3
  %wide.trip.count = zext i32 %spec.select to i64
  br label %for.body

for.body:                                         ; preds = %if.end40, %for.end
  %indvars.iv = phi i64 [ 0, %if.end40 ], [ %indvars.iv.next, %for.end ]
  %arrayidx44 = getelementptr inbounds i32, i32* %spec.select239, i64 %indvars.iv
  %8 = load i32, i32* %arrayidx44, align 4, !tbaa !7
  %9 = load i32, i32* %sym, align 4, !tbaa !27
  call fastcc void @print_message(i8* noundef %call36, i32 noundef %8, i32 noundef %9) #17
  %call45 = call fastcc double @Time_F(i32 noundef 0) #17
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool47241.not = icmp eq i32 %10, 0
  br i1 %tobool47241.not, label %for.end, label %for.body50

for.body50:                                       ; preds = %for.body, %if.end85
  %count.0242 = phi i32 [ %inc, %if.end85 ], [ 0, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %6) #13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #13
  %11 = load i32, i32* %arrayidx44, align 4, !tbaa !7
  %conv53 = sext i32 %11 to i64
  %call55 = call i8* @memset(i8* noundef nonnull %6, i32 noundef 0, i64 noundef 8) #14
  store i8 23, i8* %arrayidx56, align 1, !tbaa !11
  store i8 3, i8* %arrayidx57, align 1, !tbaa !11
  store i8 2, i8* %arrayidx58, align 1, !tbaa !11
  store i8 0, i8* %arrayidx59, align 1, !tbaa !11
  store i8 0, i8* %arrayidx60, align 1, !tbaa !11
  store i8* null, i8** %out61, align 8, !tbaa !146
  store i8* %6, i8** %inp63, align 8, !tbaa !148
  store i64 %conv53, i64* %len64, align 8, !tbaa !149
  store i32 8, i32* %interleave, align 8, !tbaa !150
  %call65 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call6, i32 noundef 25, i32 noundef 32, i8* noundef nonnull %7) #14
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %for.body50
  store i8* %call5, i8** %out61, align 8, !tbaa !146
  store i8* %call, i8** %inp63, align 8, !tbaa !148
  store i64 %conv53, i64* %len64, align 8, !tbaa !149
  %call72 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call6, i32 noundef 26, i32 noundef 32, i8* noundef nonnull %7) #14
  br label %if.end85

if.else:                                          ; preds = %for.body50
  %call73 = call i32 @RAND_bytes(i8* noundef %call5, i32 noundef 16) #14
  %add74 = add nsw i64 %conv53, 16
  %shr = lshr i64 %add74, 8
  %conv75 = trunc i64 %shr to i8
  store i8 %conv75, i8* %arrayidx59, align 1, !tbaa !11
  %conv77 = trunc i64 %add74 to i8
  store i8 %conv77, i8* %arrayidx60, align 1, !tbaa !11
  %call80 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call6, i32 noundef 22, i32 noundef 13, i8* noundef nonnull %6) #14
  %12 = trunc i64 %add74 to i32
  %conv83 = add i32 %call80, %12
  %call84 = call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %call6, i8* noundef %call5, i8* noundef %call, i32 noundef %conv83) #14
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then68
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #13
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %6) #13
  %inc = add nuw nsw i32 %count.0242, 1
  %13 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool47 = icmp ne i32 %13, 0
  %cmp48 = icmp ne i32 %inc, 2147483647
  %14 = select i1 %tobool47, i1 %cmp48, i1 false
  br i1 %14, label %for.body50, label %for.end, !llvm.loop !151

for.end:                                          ; preds = %if.end85, %for.body
  %count.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %if.end85 ]
  %call86 = call fastcc double @Time_F(i32 noundef 1) #17
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b237 = load i1, i1* @mr, align 4
  %cond = select i1 %.b237, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.363, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.364, i64 0, i64 0)
  %call88 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef %cond, i32 noundef %count.0.lcssa, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), double noundef %call86) #14
  %conv89 = sitofp i32 %count.0.lcssa to double
  %div = fdiv double %conv89, %call86
  %16 = load i32, i32* %arrayidx44, align 4, !tbaa !7
  %conv92 = sitofp i32 %16 to double
  %mul = fmul double %div, %conv92
  %arrayidx94 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 25, i64 %indvars.iv
  store double %mul, double* %arrayidx94, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end97, label %for.body, !llvm.loop !152

for.end97:                                        ; preds = %for.end
  %.b = load i1, i1* @mr, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %.b, label %if.then99, label %if.else124

if.then99:                                        ; preds = %for.end97
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.218, i64 0, i64 0)) #14
  br label %for.body104

for.body104:                                      ; preds = %if.then99, %for.body104
  %indvars.iv259 = phi i64 [ 0, %if.then99 ], [ %indvars.iv.next260, %for.body104 ]
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i32, i32* %spec.select239, i64 %indvars.iv259
  %19 = load i32, i32* %arrayidx106, align 4, !tbaa !7
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i64 0, i64 0), i32 noundef %19) #14
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count
  br i1 %exitcond263.not, label %for.end110, label %for.body104, !llvm.loop !153

for.end110:                                       ; preds = %for.body104
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.391, i64 0, i64 0), i32 noundef 25, i8* noundef %call36) #14
  br label %for.body116

for.body116:                                      ; preds = %for.end110, %for.body116
  %indvars.iv264 = phi i64 [ 0, %for.end110 ], [ %indvars.iv.next265, %for.body116 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %arrayidx118 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 25, i64 %indvars.iv264
  %23 = load double, double* %arrayidx118, align 8, !tbaa !82
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i64 0, i64 0), double noundef %23) #14
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond268.not, label %for.end122, label %for.body116, !llvm.loop !154

for.end122:                                       ; preds = %for.body116
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  br label %err

if.else124:                                       ; preds = %for.end97
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.219, i64 0, i64 0)) #14
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.392, i64 0, i64 0)) #14
  br label %for.body130

for.body130:                                      ; preds = %if.else124, %for.body130
  %indvars.iv249 = phi i64 [ 0, %if.else124 ], [ %indvars.iv.next250, %for.body130 ]
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %arrayidx132 = getelementptr inbounds i32, i32* %spec.select239, i64 %indvars.iv249
  %27 = load i32, i32* %arrayidx132, align 4, !tbaa !7
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.222, i64 0, i64 0), i32 noundef %27) #14
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count
  br i1 %exitcond253.not, label %for.end136, label %for.body130, !llvm.loop !155

for.end136:                                       ; preds = %for.body130
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.393, i64 0, i64 0), i8* noundef %call36) #14
  br label %for.body142

for.body142:                                      ; preds = %for.end136, %for.inc157
  %indvars.iv254 = phi i64 [ 0, %for.end136 ], [ %indvars.iv.next255, %for.inc157 ]
  %arrayidx144 = getelementptr inbounds [29 x [6 x double]], [29 x [6 x double]]* @results, i64 0, i64 25, i64 %indvars.iv254
  %30 = load double, double* %arrayidx144, align 8, !tbaa !82
  %cmp145 = fcmp ogt double %30, 1.000000e+04
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp145, label %if.then147, label %if.else152

if.then147:                                       ; preds = %for.body142
  %div150 = fdiv double %30, 1.000000e+03
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i64 0, i64 0), double noundef %div150) #14
  br label %for.inc157

if.else152:                                       ; preds = %for.body142
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i64 0, i64 0), double noundef %30) #14
  br label %for.inc157

for.inc157:                                       ; preds = %if.then147, %if.else152
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count
  br i1 %exitcond258.not, label %for.end159, label %for.body142, !llvm.loop !156

for.end159:                                       ; preds = %for.inc157
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.223, i64 0, i64 0)) #14
  br label %err

err:                                              ; preds = %for.end122, %for.end159, %if.then17
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3681) #14
  call void @CRYPTO_free(i8* noundef %call5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 noundef 3682) #14
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call6) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #13
  ret void
}

declare dso_local i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Update_loop_ccm(i8* nocapture noundef readonly %args) #0 {
entry:
  %outl = alloca i32, align 4
  %tag = alloca [12 x i8], align 1
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %ctx2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 26
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx2, align 8, !tbaa !44
  %4 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #13
  %.b47 = load i1, i1* @decrypt, align 4
  %6 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool351.not = icmp eq i32 %6, 0
  br i1 %.b47, label %for.cond.preheader, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %entry
  br i1 %tobool351.not, label %if.else24, label %for.body11

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool351.not, label %if.then22, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %count.052 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %3, i32 noundef 17, i32 noundef 12, i8* noundef nonnull %5) #14
  %call4 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0)) #14
  %7 = load i32*, i32** @lengths, align 8, !tbaa !3
  %8 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call5 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %9) #14
  %inc = add nuw nsw i32 %count.052, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool3 = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool3, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %if.end, !llvm.loop !157

for.body11:                                       ; preds = %for.cond6.preheader, %for.body11
  %count.150 = phi i32 [ %inc19, %for.body11 ], [ 0, %for.cond6.preheader ]
  %12 = load i32*, i32** @lengths, align 8, !tbaa !3
  %13 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom12 = zext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %12, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4, !tbaa !7
  %call14 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef null, i32* noundef nonnull %outl, i8* noundef null, i32 noundef %14) #14
  %15 = load i32*, i32** @lengths, align 8, !tbaa !3
  %16 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom15 = zext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4, !tbaa !7
  %call17 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %17) #14
  %inc19 = add nuw nsw i32 %count.150, 1
  %18 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool7 = icmp ne i32 %18, 0
  %cmp9 = icmp ne i32 %inc19, 2147483647
  %19 = select i1 %tobool7, i1 %cmp9, i1 false
  br i1 %19, label %for.body11, label %if.end, !llvm.loop !158

if.end:                                           ; preds = %for.body11, %for.body
  %count.2.ph = phi i32 [ %inc, %for.body ], [ %inc19, %for.body11 ]
  %.b.pr = load i1, i1* @decrypt, align 4
  br i1 %.b.pr, label %if.then22, label %if.else24

if.then22:                                        ; preds = %for.cond.preheader, %if.end
  %count.258 = phi i32 [ %count.2.ph, %if.end ], [ 0, %for.cond.preheader ]
  %call23 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl) #14
  br label %if.end26

if.else24:                                        ; preds = %for.cond6.preheader, %if.end
  %count.262 = phi i32 [ %count.2.ph, %if.end ], [ 0, %for.cond6.preheader ]
  %call25 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl) #14
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  %count.257 = phi i32 [ %count.262, %if.else24 ], [ %count.258, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  ret i32 %count.257
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Update_loop_aead(i8* nocapture noundef readonly %args) #0 {
entry:
  %outl = alloca i32, align 4
  %aad = alloca [13 x i8], align 1
  %faketag = alloca [16 x i8], align 16
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %ctx2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 26
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx2, align 8, !tbaa !44
  %4 = bitcast i32* %outl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  %5 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %5) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %5, i8* noundef nonnull align 1 dereferenceable(13) getelementptr inbounds (<{ i8, [12 x i8] }>, <{ i8, [12 x i8] }>* @__const.EVP_Update_loop_aead.aad, i64 0, i32 0), i64 13, i1 false)
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %faketag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %6, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds (<{ i8, [15 x i8] }>, <{ i8, [15 x i8] }>* @__const.EVP_Update_loop_aead.faketag, i64 0, i32 0), i64 16, i1 false)
  %.b = load i1, i1* @decrypt, align 4
  %7 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool352.not = icmp eq i32 %7, 0
  br i1 %.b, label %for.cond.preheader, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %entry
  br i1 %tobool352.not, label %if.end, label %for.body14

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool352.not, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %count.053 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0)) #14
  %call4 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %3, i32 noundef 17, i32 noundef 16, i8* noundef nonnull %6) #14
  %call6 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef null, i32* noundef nonnull %outl, i8* noundef nonnull %5, i32 noundef 13) #14
  %8 = load i32*, i32** @lengths, align 8, !tbaa !3
  %9 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %call7 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %10) #14
  %11 = load i32, i32* %outl, align 4, !tbaa !7
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call8 = call i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %add.ptr, i32* noundef nonnull %outl) #14
  %inc = add nuw nsw i32 %count.053, 1
  %12 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool3 = icmp ne i32 %12, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %13 = select i1 %tobool3, i1 %cmp, i1 false
  br i1 %13, label %for.body, label %if.end, !llvm.loop !159

for.body14:                                       ; preds = %for.cond9.preheader, %for.body14
  %count.151 = phi i32 [ %inc25, %for.body14 ], [ 0, %for.cond9.preheader ]
  %call15 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %3, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @iv, i64 0, i64 0)) #14
  %call17 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef null, i32* noundef nonnull %outl, i8* noundef nonnull %5, i32 noundef 13) #14
  %14 = load i32*, i32** @lengths, align 8, !tbaa !3
  %15 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom18 = zext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %14, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4, !tbaa !7
  %call20 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %2, i32* noundef nonnull %outl, i8* noundef %2, i32 noundef %16) #14
  %17 = load i32, i32* %outl, align 4, !tbaa !7
  %idx.ext21 = sext i32 %17 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %2, i64 %idx.ext21
  %call23 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %3, i8* noundef %add.ptr22, i32* noundef nonnull %outl) #14
  %inc25 = add nuw nsw i32 %count.151, 1
  %18 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool10 = icmp ne i32 %18, 0
  %cmp12 = icmp ne i32 %inc25, 2147483647
  %19 = select i1 %tobool10, i1 %cmp12, i1 false
  br i1 %19, label %for.body14, label %if.end, !llvm.loop !160

if.end:                                           ; preds = %for.body14, %for.body, %for.cond9.preheader, %for.cond.preheader
  %count.2 = phi i32 [ 0, %for.cond.preheader ], [ 0, %for.cond9.preheader ], [ %inc, %for.body ], [ %inc25, %for.body14 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #13
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %5) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  ret i32 %count.2
}

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #10

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_rand_key(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @EVP_Digest_md_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = load i8*, i8** @evp_md_name, align 8, !tbaa !3
  %call = tail call fastcc i32 @EVP_Digest_loop(i8* noundef %0, i8* noundef %args) #17
  ret i32 %call
}

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMAC_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %call = tail call fastcc i32 @EVP_MAC_loop(i8* noundef %args) #17
  ret i32 %call
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.engine_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @d2i_PrivateKey(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pkey_print_message(i8* noundef %str, i8* noundef %str2, i32 noundef %bits, i32 noundef %tm) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.b = load i1, i1* @mr, align 4
  %cond = select i1 %.b, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.360, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.361, i64 0, i64 0)
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef %cond, i32 noundef %bits, i8* noundef %str, i8* noundef %str2, i32 noundef %tm) #14
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 11, i64 noundef 0, i8* noundef null) #14
  store volatile i32 1, i32* @run, align 4, !tbaa !7
  %call2 = tail call i32 @alarm(i32 noundef %tm) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @RSA_sign_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 8, i64 %idxprom
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %6, i8* noundef %3, i64* noundef nonnull %sigsize, i8* noundef %2, i64 noundef 36) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.342, i64 0, i64 0)) #14
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %9 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %10 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %10, label %for.body, label %for.end, !llvm.loop !161

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @RSA_verify_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load i64, i64* %sigsize, align 8, !tbaa !84
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %5, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 9, i64 %idxprom
  %7 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %7, i8* noundef %3, i64 noundef %4, i8* noundef %2, i64 noundef 36) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.343, i64 0, i64 0)) #14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %for.end, !llvm.loop !162

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @DSA_sign_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 10, i64 %idxprom
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %6, i8* noundef %3, i64* noundef nonnull %sigsize, i8* noundef %2, i64 noundef 20) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.344, i64 0, i64 0)) #14
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %9 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %10 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %10, label %for.body, label %for.end, !llvm.loop !163

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @DSA_verify_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load i64, i64* %sigsize, align 8, !tbaa !84
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %5, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 11, i64 %idxprom
  %7 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %7, i8* noundef %3, i64 noundef %4, i8* noundef %2, i64 noundef 20) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.345, i64 0, i64 0)) #14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %for.end, !llvm.loop !164

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @get_ecdsa(%struct.ec_curve_st* nocapture noundef readonly %curve) unnamed_addr #0 {
entry:
  %key = alloca %struct.evp_pkey_st*, align 8
  %params = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call = tail call i64 @ERR_peek_error() #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.197, i64 0, i64 0)) #14
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid = getelementptr inbounds %struct.ec_curve_st, %struct.ec_curve_st* %curve, i64 0, i32 1
  %3 = load i32, i32* %nid, align 8, !tbaa !98
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %3, %struct.engine_st* noundef null) #14
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call2, null
  br i1 %cmp, label %if.then3, label %lor.lhs.false42

if.then3:                                         ; preds = %if.end
  %4 = bitcast %struct.evp_pkey_st** %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  %call4 = tail call i64 @ERR_peek_error() #14
  %call5 = tail call i64 @ERR_peek_last_error() #14
  %cmp6 = icmp eq i64 %call4, %call5
  br i1 %cmp6, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then3
  %call7 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call4) #17
  %cmp8 = icmp eq i32 %call7, 6
  br i1 %cmp8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call10 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call4) #17
  switch i32 %call10, label %if.end16 [
    i32 156, label %if.then14
    i32 524556, label %if.then14
  ]

if.then14:                                        ; preds = %land.lhs.true9, %land.lhs.true9
  %call15 = tail call i64 @ERR_get_error() #14
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true9, %if.then14, %land.lhs.true, %if.then3
  %call17 = tail call i64 @ERR_peek_error() #14
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.346, i64 0, i64 0)) #14
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %6) #14
  br label %cleanup.thread

if.end21:                                         ; preds = %if.end16
  %call22 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.347, i64 0, i64 0), i8* noundef null) #14
  %cmp23 = icmp eq %struct.evp_pkey_ctx_st* %call22, null
  br i1 %cmp23, label %if.then34, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %call25 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call22) #14
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then34, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %7 = load i32, i32* %nid, align 8, !tbaa !98
  %call29 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef nonnull %call22, i32 noundef %7) #14
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then34, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %call32 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %call22, %struct.evp_pkey_st** noundef nonnull %params) #14
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false24, %if.end21
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.348, i64 0, i64 0)) #14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %9) #14
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call22) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19, %if.then34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  br label %cleanup51

if.end40:                                         ; preds = %lor.lhs.false31
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call22) #14
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  %call37 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %10, %struct.engine_st* noundef null) #14
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  %cmp41 = icmp eq %struct.evp_pkey_ctx_st* %call37, null
  br i1 %cmp41, label %if.then48, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end, %if.end40
  %kctx.174 = phi %struct.evp_pkey_ctx_st* [ %call37, %if.end40 ], [ %call2, %if.end ]
  %call43 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %kctx.174) #14
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %call46 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %kctx.174, %struct.evp_pkey_st** noundef nonnull %key) #14
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %lor.lhs.false45, %lor.lhs.false42, %if.end40
  %kctx.173 = phi %struct.evp_pkey_ctx_st* [ %kctx.174, %lor.lhs.false45 ], [ %kctx.174, %lor.lhs.false42 ], [ null, %if.end40 ]
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.349, i64 0, i64 0)) #14
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %13) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %lor.lhs.false45
  %kctx.172 = phi %struct.evp_pkey_ctx_st* [ %kctx.173, %if.then48 ], [ %kctx.174, %lor.lhs.false45 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kctx.172) #14
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup.thread, %if.end50
  %retval.1 = phi %struct.evp_pkey_st* [ %14, %if.end50 ], [ null, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.evp_pkey_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ECDSA_sign_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 12, i64 %idxprom
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %6, i8* noundef %3, i64* noundef nonnull %sigsize, i8* noundef %2, i64 noundef 20) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.350, i64 0, i64 0)) #14
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %9 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %10 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %10, label %for.body, label %for.end, !llvm.loop !165

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ECDSA_verify_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf22 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf22, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load i64, i64* %sigsize, align 8, !tbaa !84
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool19.not = icmp eq i32 %5, 0
  br i1 %tobool19.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.020 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 13, i64 %idxprom
  %7 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %7, i8* noundef %3, i64 noundef %4, i8* noundef %2, i64 noundef 20) #14
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.351, i64 0, i64 0)) #14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.020, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %for.end, !llvm.loop !166

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ECDH_EVP_derive_key_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %2 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 14, i64 %idxprom
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %secret_a = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 20
  %4 = load i8*, i8** %secret_a, align 8, !tbaa !20
  %arrayidx3 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 22, i64 %idxprom
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.014 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = tail call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %3, i8* noundef %4, i64* noundef nonnull %arrayidx3) #14
  %inc = add nuw nsw i32 %count.014, 1
  %6 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %6, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %7 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %7, label %for.body, label %for.end, !llvm.loop !167

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %count.0.lcssa
}

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @EdDSA_sign_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf2, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.018 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 15, i64 %idxprom
  %6 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %6, i8* noundef %3, i64* noundef nonnull %sigsize, i8* noundef %2, i64 noundef 20) #14
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.352, i64 0, i64 0)) #14
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %8) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.018, 1
  %9 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %10 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %10, label %for.body, label %for.end, !llvm.loop !168

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @EdDSA_verify_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf2, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load i64, i64* %sigsize, align 8, !tbaa !84
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool17.not = icmp eq i32 %5, 0
  br i1 %tobool17.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.018 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 16, i64 %idxprom
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %7, i8* noundef %3, i64 noundef %4, i8* noundef %2, i64 noundef 20) #14
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.353, i64 0, i64 0)) #14
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.018, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %for.end, !llvm.loop !169

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %count.1 = phi i32 [ -1, %if.then ], [ 0, %entry ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sm3() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @SM2_sign_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %sm2sigsize = alloca i64, align 8
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf2, align 8, !tbaa !19
  %4 = bitcast i64* %sm2sigsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %5 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 19, i64 %idxprom
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %6) #14
  %conv = sext i32 %call to i64
  %7 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool39.not = icmp eq i32 %7, 0
  br i1 %tobool39.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end20
  %count.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end20 ]
  store i64 %conv, i64* %sm2sigsize, align 8, !tbaa !39
  %8 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 17, i64 %idxprom5
  %9 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx6, align 8, !tbaa !3
  %call7 = call %struct.evp_md_st* @EVP_sm3() #14
  %10 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 19, i64 %idxprom8
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %arrayidx9, align 8, !tbaa !3
  %call10 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %9, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call7, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %11) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.end.sink.split, label %if.end

if.end:                                           ; preds = %for.body
  %12 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom13 = zext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 17, i64 %idxprom13
  %13 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx14, align 8, !tbaa !3
  %call15 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %13, i8* noundef %3, i64* noundef nonnull %sm2sigsize, i8* noundef %2, i64 noundef 20) #14
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %for.end.sink.split, label %if.end20

if.end20:                                         ; preds = %if.end
  %14 = load i64, i64* %sm2sigsize, align 8, !tbaa !39
  store i64 %14, i64* %sigsize, align 8, !tbaa !84
  %inc = add nuw nsw i32 %count.040, 1
  %15 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %15, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %16 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %16, label %for.body, label %for.end, !llvm.loop !170

for.end.sink.split:                               ; preds = %if.end, %for.body
  %.sink41 = phi i8* [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.354, i64 0, i64 0), %for.body ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.355, i64 0, i64 0), %if.end ]
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef %.sink41) #14
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %18) #14
  br label %for.end

for.end:                                          ; preds = %if.end20, %for.end.sink.split, %entry
  %count.1 = phi i32 [ 0, %entry ], [ -1, %for.end.sink.split ], [ %inc, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  ret i32 %count.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SM2_verify_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %buf2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %buf2, align 8, !tbaa !19
  %sigsize = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 7
  %4 = load i64, i64* %sigsize, align 8, !tbaa !84
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool33.not = icmp eq i32 %5, 0
  br i1 %tobool33.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %count.034 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %6 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 18, i64 %idxprom
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx, align 8, !tbaa !3
  %call = tail call %struct.evp_md_st* @EVP_sm3() #14
  %8 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 19, i64 %idxprom4
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %arrayidx5, align 8, !tbaa !3
  %call6 = tail call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %7, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %9) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.end.sink.split, label %if.end

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom9 = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 18, i64 %idxprom9
  %11 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %arrayidx10, align 8, !tbaa !3
  %call11 = tail call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %11, i8* noundef %3, i64 noundef %4, i8* noundef %2, i64 noundef 20) #14
  %cmp12.not = icmp eq i32 %call11, 1
  br i1 %cmp12.not, label %for.inc, label %for.end.sink.split

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %count.034, 1
  %12 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %12, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %13 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %13, label %for.body, label %for.end, !llvm.loop !171

for.end.sink.split:                               ; preds = %if.end, %for.body
  %.sink35 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.356, i64 0, i64 0), %for.body ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.357, i64 0, i64 0), %if.end ]
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef %.sink35) #14
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %15) #14
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.sink.split, %entry
  %count.1 = phi i32 [ 0, %entry ], [ -1, %for.end.sink.split ], [ %inc, %for.inc ]
  ret i32 %count.1
}

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_dh_nid(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @FFDH_derive_key_loop(i8* nocapture noundef readonly %args) #0 {
entry:
  %outlen = alloca i64, align 8
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %2 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 23, i64 %idxprom
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %arrayidx, align 8, !tbaa !3
  %secret_ff_a = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 24
  %4 = load i8*, i8** %secret_ff_a, align 8, !tbaa !22
  %5 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13
  store i64 1024, i64* %outlen, align 8, !tbaa !39
  %6 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.010 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %3, i8* noundef %4, i64* noundef nonnull %outlen) #14
  %inc = add nuw nsw i32 %count.010, 1
  %7 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %7, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %8 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %8, label %for.body, label %for.end, !llvm.loop !172

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13
  ret i32 %count.0.lcssa
}

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare dso_local i8* @OpenSSL_version(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @BN_options() local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ASYNC_WAIT_CTX_free(%struct.async_wait_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ASYNC_cleanup_thread() local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_md_silent(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local double @app_tminterval(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32 noundef) local_unnamed_addr #9

declare dso_local i32 @ASYNC_start_job(%struct.async_job_st** noundef, %struct.async_wait_ctx_st* noundef, i32* noundef, i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @ASYNC_WAIT_CTX_get_all_fds(%struct.async_wait_ctx_st* noundef, i32* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @EVP_Digest_loop(i8* noundef %mdname, i8* nocapture noundef readonly %args) unnamed_addr #0 {
entry:
  %digest = alloca [64 x i8], align 16
  %md = alloca %struct.evp_md_st*, align 8
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #13
  %4 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call = call i32 @opt_md_silent(i8* noundef %mdname, %struct.evp_md_st** noundef nonnull %md) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %count.02 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %6 = load i32*, i32** @lengths, align 8, !tbaa !3
  %7 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %conv = sext i32 %8 to i64
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call3 = call i32 @EVP_Digest(i8* noundef %2, i64 noundef %conv, i8* noundef nonnull %3, i32* noundef null, %struct.evp_md_st* noundef %9, %struct.engine_st* noundef null) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.02, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool2 = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool2, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %for.end, !llvm.loop !173

for.end:                                          ; preds = %for.inc, %for.body, %for.cond.preheader
  %count.1 = phi i32 [ 0, %for.cond.preheader ], [ -1, %for.body ], [ %inc, %for.inc ]
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %count.1, %for.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #13
  ret i32 %retval.0
}

declare dso_local i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @EVP_MAC_loop(i8* nocapture noundef readonly %args) unnamed_addr #0 {
entry:
  %mac = alloca [64 x i8], align 16
  %outl = alloca i64, align 8
  %0 = bitcast i8* %args to %struct.loopargs_st**
  %1 = load %struct.loopargs_st*, %struct.loopargs_st** %0, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %buf1, align 8, !tbaa !18
  %mctx2 = getelementptr inbounds %struct.loopargs_st, %struct.loopargs_st* %1, i64 0, i32 27
  %3 = load %struct.evp_mac_ctx_st*, %struct.evp_mac_ctx_st** %mctx2, align 8, !tbaa !40
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #13
  %5 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %cleanup9, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %6 = bitcast i64* %outl to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %count.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #13
  %call = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef %3, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #14
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32*, i32** @lengths, align 8, !tbaa !3
  %8 = load i32, i32* @testnum, align 4, !tbaa !7
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %conv = sext i32 %9 to i64
  %call4 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %3, i8* noundef %2, i64 noundef %conv) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef %3, i8* noundef nonnull %4, i64* noundef nonnull %outl, i64 noundef 64) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %for.inc.critedge

cleanup:                                          ; preds = %for.body, %lor.lhs.false, %lor.lhs.false6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  br label %cleanup9

for.inc.critedge:                                 ; preds = %lor.lhs.false6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #13
  %inc = add nuw nsw i32 %count.03, 1
  %10 = load volatile i32, i32* @run, align 4, !tbaa !7
  %tobool = icmp ne i32 %10, 0
  %cmp = icmp ne i32 %inc, 2147483647
  %11 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %11, label %for.body, label %cleanup9, !llvm.loop !174

cleanup9:                                         ; preds = %for.inc.critedge, %entry, %cleanup
  %retval.2 = phi i32 [ -1, %cleanup ], [ 0, %entry ], [ %inc, %for.inc.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #13
  ret i32 %retval.2
}

declare dso_local i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DecryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #12 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #12 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i64 @ERR_get_error() local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @pipe(i32* noundef) local_unnamed_addr #9

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @fork() local_unnamed_addr #9

declare dso_local i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @dup(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) local_unnamed_addr #9

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sstrsep(i8** nocapture noundef %string) unnamed_addr #0 {
entry:
  %isdelim = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %isdelim, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #13
  %1 = load i8*, i8** %string, align 8, !tbaa !3
  %2 = load i8, i8* %1, align 1, !tbaa !11
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 256) #14
  store i8 1, i8* %0, align 16, !tbaa !11
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %isdelim, i64 0, i64 58
  store i8 1, i8* %arrayidx2, align 2, !tbaa !11
  %3 = load i8*, i8** %string, align 8, !tbaa !3
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %idxprom44 = zext i8 %4 to i64
  %arrayidx55 = getelementptr inbounds [256 x i8], [256 x i8]* %isdelim, i64 0, i64 %idxprom44
  %5 = load i8, i8* %arrayidx55, align 1, !tbaa !11
  %tobool6.not6 = icmp eq i8 %5, 0
  br i1 %tobool6.not6, label %while.body7, label %while.end9

while.body7:                                      ; preds = %if.end, %while.body7
  %6 = phi i8* [ %incdec.ptr8, %while.body7 ], [ %3, %if.end ]
  %incdec.ptr8 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %incdec.ptr8, i8** %string, align 8, !tbaa !3
  %7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !11
  %idxprom4 = zext i8 %7 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %isdelim, i64 0, i64 %idxprom4
  %8 = load i8, i8* %arrayidx5, align 1, !tbaa !11
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %while.body7, label %while.end9, !llvm.loop !175

while.end9:                                       ; preds = %while.body7, %if.end
  %.lcssa1 = phi i8* [ %3, %if.end ], [ %incdec.ptr8, %while.body7 ]
  %.lcssa = phi i8 [ %4, %if.end ], [ %7, %while.body7 ]
  %tobool10.not = icmp eq i8 %.lcssa, 0
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %while.end9
  store i8 0, i8* %.lcssa1, align 1, !tbaa !11
  %9 = load i8*, i8** %string, align 8, !tbaa !3
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %incdec.ptr12, i8** %string, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %while.end9, %if.then11, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %1, %if.then11 ], [ %1, %while.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #13
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local double @atof(i8* noundef nonnull) local_unnamed_addr #7

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local void @app_bail_out(i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !10}
!13 = !{!14, !4, i64 8}
!14 = !{!"loopargs_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !15, i64 56, !5, i64 64, !5, i64 120, !5, i64 176, !5, i64 200, !5, i64 224, !5, i64 400, !5, i64 576, !5, i64 768, !5, i64 784, !5, i64 800, !5, i64 808, !5, i64 816, !4, i64 824, !4, i64 832, !5, i64 840, !5, i64 1032, !4, i64 1072, !4, i64 1080, !4, i64 1088, !4, i64 1096}
!15 = !{!"long", !5, i64 0}
!16 = !{!14, !4, i64 32}
!17 = !{!14, !4, i64 40}
!18 = !{!14, !4, i64 16}
!19 = !{!14, !4, i64 24}
!20 = !{!14, !4, i64 824}
!21 = !{!14, !4, i64 832}
!22 = !{!14, !4, i64 1072}
!23 = !{!14, !4, i64 1080}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !8, i64 0}
!28 = !{!"openssl_speed_sec_st", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{i64 0, i64 8, !3, i64 8, i64 4, !7, i64 16, i64 8, !3, i64 24, i64 8, !39, i64 32, i64 8, !39}
!39 = !{!15, !15, i64 0}
!40 = !{!14, !4, i64 1096}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = !{!14, !4, i64 1088}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = !{!14, !4, i64 48}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = !{!77, !8, i64 12}
!77 = !{!"", !4, i64 0, !8, i64 8, !8, i64 12}
!78 = !{!77, !4, i64 0}
!79 = !{!77, !8, i64 8}
!80 = distinct !{!80, !10}
!81 = !{!28, !8, i64 4}
!82 = !{!83, !83, i64 0}
!83 = !{!"double", !5, i64 0}
!84 = !{!14, !15, i64 56}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = !{!92, !8, i64 12}
!92 = !{!"ec_curve_st", !4, i64 0, !8, i64 8, !8, i64 12, !15, i64 16}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !10}
!95 = distinct !{!95, !10}
!96 = !{!28, !8, i64 16}
!97 = distinct !{!97, !10}
!98 = !{!92, !8, i64 8}
!99 = distinct !{!99, !10}
!100 = !{!92, !15, i64 16}
!101 = distinct !{!101, !10}
!102 = !{!92, !4, i64 0}
!103 = !{!28, !8, i64 20}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = !{!28, !8, i64 24}
!109 = distinct !{!109, !10}
!110 = distinct !{!110, !10}
!111 = !{!112, !8, i64 8}
!112 = !{!"ffdh_params_st", !4, i64 0, !8, i64 8, !8, i64 12}
!113 = distinct !{!113, !10}
!114 = !{!112, !8, i64 12}
!115 = !{!28, !8, i64 28}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
!118 = distinct !{!118, !10}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !10}
!121 = distinct !{!121, !10}
!122 = distinct !{!122, !10}
!123 = distinct !{!123, !10}
!124 = distinct !{!124, !10}
!125 = distinct !{!125, !10}
!126 = distinct !{!126, !10}
!127 = !{!128, !4, i64 0}
!128 = !{!"string_int_pair_st", !4, i64 0, !8, i64 8}
!129 = !{!128, !8, i64 8}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, !10}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !10}
!134 = distinct !{!134, !10}
!135 = distinct !{!135, !10}
!136 = !{i64 2150919221}
!137 = !{!14, !4, i64 0}
!138 = distinct !{!138, !10}
!139 = distinct !{!139, !10}
!140 = distinct !{!140, !10}
!141 = distinct !{!141, !10}
!142 = distinct !{!142, !10}
!143 = distinct !{!143, !10}
!144 = distinct !{!144, !10}
!145 = distinct !{!145, !10}
!146 = !{!147, !4, i64 0}
!147 = !{!"", !4, i64 0, !4, i64 8, !15, i64 16, !8, i64 24}
!148 = !{!147, !4, i64 8}
!149 = !{!147, !15, i64 16}
!150 = !{!147, !8, i64 24}
!151 = distinct !{!151, !10}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10}
!155 = distinct !{!155, !10}
!156 = distinct !{!156, !10}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = distinct !{!159, !10}
!160 = distinct !{!160, !10}
!161 = distinct !{!161, !10}
!162 = distinct !{!162, !10}
!163 = distinct !{!163, !10}
!164 = distinct !{!164, !10}
!165 = distinct !{!165, !10}
!166 = distinct !{!166, !10}
!167 = distinct !{!167, !10}
!168 = distinct !{!168, !10}
!169 = distinct !{!169, !10}
!170 = distinct !{!170, !10}
!171 = distinct !{!171, !10}
!172 = distinct !{!172, !10}
!173 = distinct !{!173, !10}
!174 = distinct !{!174, !10}
!175 = distinct !{!175, !10}
