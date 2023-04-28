; ModuleID = 'aes.c'
source_filename = "aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_aes_xts_context = type { %struct.mbedtls_aes_context, %struct.mbedtls_aes_context }
%struct.anon = type { [4 x i32], [4 x i32] }
%struct.anon.0 = type { [4 x i32], [4 x i32] }

@aes_init_done = internal global i32 0, align 4
@RCON = internal global [10 x i32] zeroinitializer, align 16
@FSb = internal global [256 x i8] zeroinitializer, align 16
@RT0 = internal global [256 x i32] zeroinitializer, align 16
@RT1 = internal global [256 x i32] zeroinitializer, align 16
@RT2 = internal global [256 x i32] zeroinitializer, align 16
@RT3 = internal global [256 x i32] zeroinitializer, align 16
@FT0 = internal global [256 x i32] zeroinitializer, align 16
@FT1 = internal global [256 x i32] zeroinitializer, align 16
@FT2 = internal global [256 x i32] zeroinitializer, align 16
@FT3 = internal global [256 x i32] zeroinitializer, align 16
@RSb = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"  AES-ECB-%3u (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@aes_test_ecb_dec = internal constant [3 x [16 x i8]] [[16 x i8] c"DAj\C2\D1\F5<X3\03\91~k\E9\EB\E0", [16 x i8] c"H\E3\1E\9E%g\18\F2\92)1\9C\19\F1[\A4", [16 x i8] c"\05\8C\CF\FD\BB\CB8-\1FoVX]\8AJ\DE"], align 16
@aes_test_ecb_enc = internal constant [3 x [16 x i8]] [[16 x i8] c"\C3L\05,\C0\DA\8DsE\1A\FE_\03\BE)\7F", [16 x i8] c"\F3\F6u*\E8\D7\83\118\F0AV\061\B1\14", [16 x i8] c"\8By\EE\CC\93\A0\EE]\FF0\B4\EA!cm\A4"], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"skipped\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"  AES-CBC-%3u (%s): \00", align 1
@aes_test_cbc_dec = internal constant [3 x [16 x i8]] [[16 x i8] c"\FA\CA7\E0\B0\C8Ss\DFpns\F7\C9\AF\86", [16 x i8] c"]\F6x\DD\17\BANu\B6\17h\C6\AD\EF|{", [16 x i8] c"H\04\E1\81\8F\E6)u\19\A3\E8\8CW1\04\13"], align 16
@aes_test_cbc_enc = internal constant [3 x [16 x i8]] [[16 x i8] c"\8A\05\FC^\09Z\F4\84\8A\08\D3(\D3h\8E=", [16 x i8] c"{\D9f\D5:\D8\C1\BB\85\D2\AD\FA\E8{\B1\04", [16 x i8] c"\FE<Se>/E\B5o\CD\88\B2\CC\89\8F\F0"], align 16
@.str.7 = private unnamed_addr constant [24 x i8] c"  AES-CFB128-%3u (%s): \00", align 1
@aes_test_cfb128_iv = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@aes_test_cfb128_ct = internal constant [3 x [64 x i8]] [[64 x i8] c";?\D9.\B7-\AD 34I\F8\E8<\FBJ\C8\A6E7\A0\B3\A9?\CD\E3\CD\AD\9F\1C\E5\8B&u\1Fg\A3\CB\B1@\B1\80\8C\F1\87\A4\F4\DF\C0K\055|]\1C\0E\EA\C4\C6o\9F\F7\F2\E6", [64 x i8] c"\CD\C8\0Do\DD\F1\8C\AB4\C2Y\09\C9\9AAtg\CE\7F\7F\81\176!\96\1A+p\17\1D=z.\1E\8A\1D\D5\9B\88\B1\C8\E6\0F\ED\1E\FA\C4\C9\C0_\9F\9C\A9\83O\A0B\AE\8F\BAXK\09\FF", [64 x i8] c"\DC~\84\BF\DAy\16K~\CD\84\86\98]8`9\FF\ED\14;(\B1\C82\11<c1\E5@{\DF\10\13$\15\E5K\92\A1>\D0\A8&z\E2\F9u\A3\85t\1A\B9\CE\F8 1b=U\B1\E4q"], align 16
@aes_test_cfb128_pt = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"  AES-OFB-%3u (%s): \00", align 1
@aes_test_ofb_iv = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@aes_test_ofb_ct = internal constant [3 x [64 x i8]] [[64 x i8] c";?\D9.\B7-\AD 34I\F8\E8<\FBJw\89P\8D\16\91\8F\03\F5<R\DA\C5N\D8%\97@\05\1E\9C_\EC\F6CD\F7\A8\22`\ED\CC0Le(\F6Y\C7xf\A5\10\D9\C1\D6\AE^", [64 x i8] c"\CD\C8\0Do\DD\F1\8C\AB4\C2Y\09\C9\9AAt\FC\C2\8B\8DLc\83|\09\E8\17\00\C1\10\04\01\8D\9A\9A\EA\C0\F6YoU\9CmM\AFY\A5\F2m\9F \08W\CAl>\9C\ACRK\D9\AC\C9*", [64 x i8] c"\DC~\84\BF\DAy\16K~\CD\84\86\98]8`O\EB\DCg@\D2\0B:\C8\8Fj\D8*O\B0\8Dq\ABG\A0\86\E8n\ED\F3\9D\1C[\BA\97\C4\08\01&\14\1Dg\F3{\E8S\8FZ\8B\E7@\E4\84"], align 16
@aes_test_ofb_pt = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"  AES-CTR-128 (%s): \00", align 1
@aes_test_ctr_nonce_counter = internal constant [3 x [16 x i8]] [[16 x i8] c"\00\00\000\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] c"\00l\B6\DB\C0T;Y\DAH\D9\0B\00\00\00\01", [16 x i8] c"\00\E0\01{'w\7F?J\17\86\F0\00\00\00\01"], align 16
@aes_test_ctr_key = internal constant [3 x [16 x i8]] [[16 x i8] c"\AEhR\F8\12\10g\CCK\F7\A5vUw\F3\9E", [16 x i8] c"~$\06x\17\FA\E0\D7C\D6\CE\1F2S\91c", [16 x i8] c"v\91\BE\03^P \A8\ACna\85)\F9\A0\DC"], align 16
@aes_test_ctr_len = internal constant [3 x i32] [i32 16, i32 32, i32 36], align 4
@mbedtls_aes_self_test.num_tests = internal constant i32 3, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"  AES-XTS-128 (%s): \00", align 1
@aes_test_xts_key = internal constant [3 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22", [32 x i8] c"\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22"], align 16
@aes_test_xts_ct32 = internal constant [3 x [32 x i8]] [[32 x i8] c"\91|\F6\9E\BDh\B2\EC\9B\9F\E9\A3\EA\DD\A6\92\CDC\D2\F5\95\98\ED\85\8C\02\C2e/\BF\92.", [32 x i8] c"\C4T\18^j\16\93n93@8\AC\EF\83\8B\FB\18o\FFt\80\AD\C4(\93\82\EC\D6\D3\94\F0", [32 x i8] c"\AF\853kYz\FC\1A\90\0B.\B2\1E\C9I\D2\92\DFL\04~\0B!S!\86\A5\97\1A\22z\89"], align 16
@aes_test_xts_pt32 = internal constant [3 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD", [32 x i8] c"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@aes_test_cfb128_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", [8 x i8] zeroinitializer }>, [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4" }>, align 16
@aes_test_ofb_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", [8 x i8] zeroinitializer }>, [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4" }>, align 16
@aes_test_ctr_ct = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\E4\09]O\B7\A7\B3y-au\A3&\13\11\B8", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"Q\04\A1\06\16\8Ar\D9y\0DA\EE\8E\DA\D3\88\EB.\1E\FCF\DAW\C8\FC\E60\DF\91A\BE(", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\C1\CFH\A8\9F/\FD\D9\CFFR\E9\EF\DBr\D7E@\A4+\DEmx6\D5\9A\\\EA\AE\F3\10S%\B2\07/", [12 x i8] zeroinitializer }> }>, align 16
@aes_test_ctr_pt = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"Single block msg", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [12 x i8] zeroinitializer }> }>, align 16
@aes_test_xts_data_unit = internal constant <{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> }> <{ [16 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 51, i8 51, i8 51, i8 51, i8 51, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 51, i8 51, i8 51, i8 51, i8 51, [11 x i8] zeroinitializer }> }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_aes_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 288) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_aes_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_aes_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 288) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_xts_context*, align 8
  store %struct.mbedtls_aes_xts_context* %ctx, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %0, i32 0, i32 0
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %crypt) #5
  %1 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %tweak = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %1, i32 0, i32 1
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %tweak) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_xts_context*, align 8
  store %struct.mbedtls_aes_xts_context* %ctx, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_aes_xts_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %1, i32 0, i32 0
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %crypt) #5
  %2 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %tweak = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %2, i32 0, i32 1
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %tweak) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %RK = alloca i32*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %keybits.addr, align 4
  switch i32 %0, label %sw.default [
    i32 128, label %sw.bb
    i32 192, label %sw.bb3
    i32 256, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end2
  %1 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %1, i32 0, i32 0
  store i32 10, i32* %nr, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr4 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %2, i32 0, i32 0
  store i32 12, i32* %nr4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end2
  %3 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr6 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %3, i32 0, i32 0
  store i32 14, i32* %nr6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end2
  store i32 -32, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb
  %4 = load i32, i32* @aes_init_done, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @aes_gen_tables() #5
  store i32 1, i32* @aes_init_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %5 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [68 x i32], [68 x i32]* %buf, i64 0, i64 0
  store i32* %arraydecay, i32** %RK, align 8
  %6 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %6, i32 0, i32 1
  store i32* %arraydecay, i32** %rk, align 8
  %call = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk8 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %7, i32 0, i32 1
  %8 = load i32*, i32** %rk8, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i8*, i8** %key.addr, align 8
  %11 = load i32, i32* %keybits.addr, align 4
  %conv = zext i32 %11 to i64
  %call9 = call i32 @mbedtls_aesni_setkey_enc(i8* noundef %9, i8* noundef %10, i64 noundef %conv) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %keybits.addr, align 4
  %shr = lshr i32 %13, 5
  %cmp11 = icmp ult i32 %12, %shr
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %key.addr, align 8
  %15 = load i32, i32* %i, align 4
  %shl = shl i32 %15, 2
  %idxprom = zext i32 %shl to i64
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv13 = zext i8 %16 to i32
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load i32, i32* %i, align 4
  %shl14 = shl i32 %18, 2
  %add = add i32 %shl14, 1
  %idxprom15 = zext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %19 to i32
  %shl18 = shl i32 %conv17, 8
  %or = or i32 %conv13, %shl18
  %20 = load i8*, i8** %key.addr, align 8
  %21 = load i32, i32* %i, align 4
  %shl19 = shl i32 %21, 2
  %add20 = add i32 %shl19, 2
  %idxprom21 = zext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %22 to i32
  %shl24 = shl i32 %conv23, 16
  %or25 = or i32 %or, %shl24
  %23 = load i8*, i8** %key.addr, align 8
  %24 = load i32, i32* %i, align 4
  %shl26 = shl i32 %24, 2
  %add27 = add i32 %shl26, 3
  %idxprom28 = zext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 %idxprom28
  %25 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %25 to i32
  %shl31 = shl i32 %conv30, 24
  %or32 = or i32 %or25, %shl31
  %26 = load i32*, i32** %RK, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %26, i64 %idxprom33
  store i32 %or32, i32* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %29 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr35 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %29, i32 0, i32 0
  %30 = load i32, i32* %nr35, align 8
  switch i32 %30, label %sw.epilog269 [
    i32 10, label %sw.bb36
    i32 12, label %sw.bb93
    i32 14, label %sw.bb161
  ]

sw.bb36:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc90, %sw.bb36
  %31 = load i32, i32* %i, align 4
  %cmp38 = icmp ult i32 %31, 10
  br i1 %cmp38, label %for.body40, label %for.end92

for.body40:                                       ; preds = %for.cond37
  %32 = load i32*, i32** %RK, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx41, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom42 = zext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* @RCON, i64 0, i64 %idxprom42
  %35 = load i32, i32* %arrayidx43, align 4
  %xor = xor i32 %33, %35
  %36 = load i32*, i32** %RK, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx44, align 4
  %shr45 = lshr i32 %37, 8
  %and = and i32 %shr45, 255
  %conv46 = trunc i32 %and to i8
  %idxprom47 = zext i8 %conv46 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom47
  %38 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %38 to i32
  %xor50 = xor i32 %xor, %conv49
  %39 = load i32*, i32** %RK, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %39, i64 3
  %40 = load i32, i32* %arrayidx51, align 4
  %shr52 = lshr i32 %40, 16
  %and53 = and i32 %shr52, 255
  %conv54 = trunc i32 %and53 to i8
  %idxprom55 = zext i8 %conv54 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom55
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %shl58 = shl i32 %conv57, 8
  %xor59 = xor i32 %xor50, %shl58
  %42 = load i32*, i32** %RK, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %42, i64 3
  %43 = load i32, i32* %arrayidx60, align 4
  %shr61 = lshr i32 %43, 24
  %and62 = and i32 %shr61, 255
  %conv63 = trunc i32 %and62 to i8
  %idxprom64 = zext i8 %conv63 to i64
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom64
  %44 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %44 to i32
  %shl67 = shl i32 %conv66, 16
  %xor68 = xor i32 %xor59, %shl67
  %45 = load i32*, i32** %RK, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %45, i64 3
  %46 = load i32, i32* %arrayidx69, align 4
  %and70 = and i32 %46, 255
  %conv71 = trunc i32 %and70 to i8
  %idxprom72 = zext i8 %conv71 to i64
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom72
  %47 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %47 to i32
  %shl75 = shl i32 %conv74, 24
  %xor76 = xor i32 %xor68, %shl75
  %48 = load i32*, i32** %RK, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %xor76, i32* %arrayidx77, align 4
  %49 = load i32*, i32** %RK, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx78, align 4
  %51 = load i32*, i32** %RK, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %51, i64 4
  %52 = load i32, i32* %arrayidx79, align 4
  %xor80 = xor i32 %50, %52
  %53 = load i32*, i32** %RK, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %xor80, i32* %arrayidx81, align 4
  %54 = load i32*, i32** %RK, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %54, i64 2
  %55 = load i32, i32* %arrayidx82, align 4
  %56 = load i32*, i32** %RK, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %56, i64 5
  %57 = load i32, i32* %arrayidx83, align 4
  %xor84 = xor i32 %55, %57
  %58 = load i32*, i32** %RK, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 %xor84, i32* %arrayidx85, align 4
  %59 = load i32*, i32** %RK, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %59, i64 3
  %60 = load i32, i32* %arrayidx86, align 4
  %61 = load i32*, i32** %RK, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %61, i64 6
  %62 = load i32, i32* %arrayidx87, align 4
  %xor88 = xor i32 %60, %62
  %63 = load i32*, i32** %RK, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %xor88, i32* %arrayidx89, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.body40
  %64 = load i32, i32* %i, align 4
  %inc91 = add i32 %64, 1
  store i32 %inc91, i32* %i, align 4
  %65 = load i32*, i32** %RK, align 8
  %add.ptr = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %add.ptr, i32** %RK, align 8
  br label %for.cond37, !llvm.loop !6

for.end92:                                        ; preds = %for.cond37
  br label %sw.epilog269

sw.bb93:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc157, %sw.bb93
  %66 = load i32, i32* %i, align 4
  %cmp95 = icmp ult i32 %66, 8
  br i1 %cmp95, label %for.body97, label %for.end160

for.body97:                                       ; preds = %for.cond94
  %67 = load i32*, i32** %RK, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx98, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom99 = zext i32 %69 to i64
  %arrayidx100 = getelementptr inbounds [10 x i32], [10 x i32]* @RCON, i64 0, i64 %idxprom99
  %70 = load i32, i32* %arrayidx100, align 4
  %xor101 = xor i32 %68, %70
  %71 = load i32*, i32** %RK, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %71, i64 5
  %72 = load i32, i32* %arrayidx102, align 4
  %shr103 = lshr i32 %72, 8
  %and104 = and i32 %shr103, 255
  %conv105 = trunc i32 %and104 to i8
  %idxprom106 = zext i8 %conv105 to i64
  %arrayidx107 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom106
  %73 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %73 to i32
  %xor109 = xor i32 %xor101, %conv108
  %74 = load i32*, i32** %RK, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %74, i64 5
  %75 = load i32, i32* %arrayidx110, align 4
  %shr111 = lshr i32 %75, 16
  %and112 = and i32 %shr111, 255
  %conv113 = trunc i32 %and112 to i8
  %idxprom114 = zext i8 %conv113 to i64
  %arrayidx115 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom114
  %76 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %76 to i32
  %shl117 = shl i32 %conv116, 8
  %xor118 = xor i32 %xor109, %shl117
  %77 = load i32*, i32** %RK, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %77, i64 5
  %78 = load i32, i32* %arrayidx119, align 4
  %shr120 = lshr i32 %78, 24
  %and121 = and i32 %shr120, 255
  %conv122 = trunc i32 %and121 to i8
  %idxprom123 = zext i8 %conv122 to i64
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom123
  %79 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %79 to i32
  %shl126 = shl i32 %conv125, 16
  %xor127 = xor i32 %xor118, %shl126
  %80 = load i32*, i32** %RK, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %80, i64 5
  %81 = load i32, i32* %arrayidx128, align 4
  %and129 = and i32 %81, 255
  %conv130 = trunc i32 %and129 to i8
  %idxprom131 = zext i8 %conv130 to i64
  %arrayidx132 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom131
  %82 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %82 to i32
  %shl134 = shl i32 %conv133, 24
  %xor135 = xor i32 %xor127, %shl134
  %83 = load i32*, i32** %RK, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %83, i64 6
  store i32 %xor135, i32* %arrayidx136, align 4
  %84 = load i32*, i32** %RK, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %84, i64 1
  %85 = load i32, i32* %arrayidx137, align 4
  %86 = load i32*, i32** %RK, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %86, i64 6
  %87 = load i32, i32* %arrayidx138, align 4
  %xor139 = xor i32 %85, %87
  %88 = load i32*, i32** %RK, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %88, i64 7
  store i32 %xor139, i32* %arrayidx140, align 4
  %89 = load i32*, i32** %RK, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %89, i64 2
  %90 = load i32, i32* %arrayidx141, align 4
  %91 = load i32*, i32** %RK, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %91, i64 7
  %92 = load i32, i32* %arrayidx142, align 4
  %xor143 = xor i32 %90, %92
  %93 = load i32*, i32** %RK, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %93, i64 8
  store i32 %xor143, i32* %arrayidx144, align 4
  %94 = load i32*, i32** %RK, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %94, i64 3
  %95 = load i32, i32* %arrayidx145, align 4
  %96 = load i32*, i32** %RK, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %96, i64 8
  %97 = load i32, i32* %arrayidx146, align 4
  %xor147 = xor i32 %95, %97
  %98 = load i32*, i32** %RK, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %98, i64 9
  store i32 %xor147, i32* %arrayidx148, align 4
  %99 = load i32*, i32** %RK, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %99, i64 4
  %100 = load i32, i32* %arrayidx149, align 4
  %101 = load i32*, i32** %RK, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %101, i64 9
  %102 = load i32, i32* %arrayidx150, align 4
  %xor151 = xor i32 %100, %102
  %103 = load i32*, i32** %RK, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %103, i64 10
  store i32 %xor151, i32* %arrayidx152, align 4
  %104 = load i32*, i32** %RK, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %104, i64 5
  %105 = load i32, i32* %arrayidx153, align 4
  %106 = load i32*, i32** %RK, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %106, i64 10
  %107 = load i32, i32* %arrayidx154, align 4
  %xor155 = xor i32 %105, %107
  %108 = load i32*, i32** %RK, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %108, i64 11
  store i32 %xor155, i32* %arrayidx156, align 4
  br label %for.inc157

for.inc157:                                       ; preds = %for.body97
  %109 = load i32, i32* %i, align 4
  %inc158 = add i32 %109, 1
  store i32 %inc158, i32* %i, align 4
  %110 = load i32*, i32** %RK, align 8
  %add.ptr159 = getelementptr inbounds i32, i32* %110, i64 6
  store i32* %add.ptr159, i32** %RK, align 8
  br label %for.cond94, !llvm.loop !7

for.end160:                                       ; preds = %for.cond94
  br label %sw.epilog269

sw.bb161:                                         ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond162

for.cond162:                                      ; preds = %for.inc265, %sw.bb161
  %111 = load i32, i32* %i, align 4
  %cmp163 = icmp ult i32 %111, 7
  br i1 %cmp163, label %for.body165, label %for.end268

for.body165:                                      ; preds = %for.cond162
  %112 = load i32*, i32** %RK, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx166, align 4
  %114 = load i32, i32* %i, align 4
  %idxprom167 = zext i32 %114 to i64
  %arrayidx168 = getelementptr inbounds [10 x i32], [10 x i32]* @RCON, i64 0, i64 %idxprom167
  %115 = load i32, i32* %arrayidx168, align 4
  %xor169 = xor i32 %113, %115
  %116 = load i32*, i32** %RK, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %116, i64 7
  %117 = load i32, i32* %arrayidx170, align 4
  %shr171 = lshr i32 %117, 8
  %and172 = and i32 %shr171, 255
  %conv173 = trunc i32 %and172 to i8
  %idxprom174 = zext i8 %conv173 to i64
  %arrayidx175 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom174
  %118 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %118 to i32
  %xor177 = xor i32 %xor169, %conv176
  %119 = load i32*, i32** %RK, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %119, i64 7
  %120 = load i32, i32* %arrayidx178, align 4
  %shr179 = lshr i32 %120, 16
  %and180 = and i32 %shr179, 255
  %conv181 = trunc i32 %and180 to i8
  %idxprom182 = zext i8 %conv181 to i64
  %arrayidx183 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom182
  %121 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %121 to i32
  %shl185 = shl i32 %conv184, 8
  %xor186 = xor i32 %xor177, %shl185
  %122 = load i32*, i32** %RK, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %122, i64 7
  %123 = load i32, i32* %arrayidx187, align 4
  %shr188 = lshr i32 %123, 24
  %and189 = and i32 %shr188, 255
  %conv190 = trunc i32 %and189 to i8
  %idxprom191 = zext i8 %conv190 to i64
  %arrayidx192 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom191
  %124 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %124 to i32
  %shl194 = shl i32 %conv193, 16
  %xor195 = xor i32 %xor186, %shl194
  %125 = load i32*, i32** %RK, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %125, i64 7
  %126 = load i32, i32* %arrayidx196, align 4
  %and197 = and i32 %126, 255
  %conv198 = trunc i32 %and197 to i8
  %idxprom199 = zext i8 %conv198 to i64
  %arrayidx200 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom199
  %127 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %127 to i32
  %shl202 = shl i32 %conv201, 24
  %xor203 = xor i32 %xor195, %shl202
  %128 = load i32*, i32** %RK, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %128, i64 8
  store i32 %xor203, i32* %arrayidx204, align 4
  %129 = load i32*, i32** %RK, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %129, i64 1
  %130 = load i32, i32* %arrayidx205, align 4
  %131 = load i32*, i32** %RK, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %131, i64 8
  %132 = load i32, i32* %arrayidx206, align 4
  %xor207 = xor i32 %130, %132
  %133 = load i32*, i32** %RK, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %133, i64 9
  store i32 %xor207, i32* %arrayidx208, align 4
  %134 = load i32*, i32** %RK, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %134, i64 2
  %135 = load i32, i32* %arrayidx209, align 4
  %136 = load i32*, i32** %RK, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %136, i64 9
  %137 = load i32, i32* %arrayidx210, align 4
  %xor211 = xor i32 %135, %137
  %138 = load i32*, i32** %RK, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %138, i64 10
  store i32 %xor211, i32* %arrayidx212, align 4
  %139 = load i32*, i32** %RK, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %139, i64 3
  %140 = load i32, i32* %arrayidx213, align 4
  %141 = load i32*, i32** %RK, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %141, i64 10
  %142 = load i32, i32* %arrayidx214, align 4
  %xor215 = xor i32 %140, %142
  %143 = load i32*, i32** %RK, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %143, i64 11
  store i32 %xor215, i32* %arrayidx216, align 4
  %144 = load i32*, i32** %RK, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %144, i64 4
  %145 = load i32, i32* %arrayidx217, align 4
  %146 = load i32*, i32** %RK, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %146, i64 11
  %147 = load i32, i32* %arrayidx218, align 4
  %and219 = and i32 %147, 255
  %conv220 = trunc i32 %and219 to i8
  %idxprom221 = zext i8 %conv220 to i64
  %arrayidx222 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom221
  %148 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %148 to i32
  %xor224 = xor i32 %145, %conv223
  %149 = load i32*, i32** %RK, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %149, i64 11
  %150 = load i32, i32* %arrayidx225, align 4
  %shr226 = lshr i32 %150, 8
  %and227 = and i32 %shr226, 255
  %conv228 = trunc i32 %and227 to i8
  %idxprom229 = zext i8 %conv228 to i64
  %arrayidx230 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom229
  %151 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %151 to i32
  %shl232 = shl i32 %conv231, 8
  %xor233 = xor i32 %xor224, %shl232
  %152 = load i32*, i32** %RK, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %152, i64 11
  %153 = load i32, i32* %arrayidx234, align 4
  %shr235 = lshr i32 %153, 16
  %and236 = and i32 %shr235, 255
  %conv237 = trunc i32 %and236 to i8
  %idxprom238 = zext i8 %conv237 to i64
  %arrayidx239 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom238
  %154 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %154 to i32
  %shl241 = shl i32 %conv240, 16
  %xor242 = xor i32 %xor233, %shl241
  %155 = load i32*, i32** %RK, align 8
  %arrayidx243 = getelementptr inbounds i32, i32* %155, i64 11
  %156 = load i32, i32* %arrayidx243, align 4
  %shr244 = lshr i32 %156, 24
  %and245 = and i32 %shr244, 255
  %conv246 = trunc i32 %and245 to i8
  %idxprom247 = zext i8 %conv246 to i64
  %arrayidx248 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom247
  %157 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %157 to i32
  %shl250 = shl i32 %conv249, 24
  %xor251 = xor i32 %xor242, %shl250
  %158 = load i32*, i32** %RK, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %158, i64 12
  store i32 %xor251, i32* %arrayidx252, align 4
  %159 = load i32*, i32** %RK, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %159, i64 5
  %160 = load i32, i32* %arrayidx253, align 4
  %161 = load i32*, i32** %RK, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %161, i64 12
  %162 = load i32, i32* %arrayidx254, align 4
  %xor255 = xor i32 %160, %162
  %163 = load i32*, i32** %RK, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %163, i64 13
  store i32 %xor255, i32* %arrayidx256, align 4
  %164 = load i32*, i32** %RK, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %164, i64 6
  %165 = load i32, i32* %arrayidx257, align 4
  %166 = load i32*, i32** %RK, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %166, i64 13
  %167 = load i32, i32* %arrayidx258, align 4
  %xor259 = xor i32 %165, %167
  %168 = load i32*, i32** %RK, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %168, i64 14
  store i32 %xor259, i32* %arrayidx260, align 4
  %169 = load i32*, i32** %RK, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %169, i64 7
  %170 = load i32, i32* %arrayidx261, align 4
  %171 = load i32*, i32** %RK, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %171, i64 14
  %172 = load i32, i32* %arrayidx262, align 4
  %xor263 = xor i32 %170, %172
  %173 = load i32*, i32** %RK, align 8
  %arrayidx264 = getelementptr inbounds i32, i32* %173, i64 15
  store i32 %xor263, i32* %arrayidx264, align 4
  br label %for.inc265

for.inc265:                                       ; preds = %for.body165
  %174 = load i32, i32* %i, align 4
  %inc266 = add i32 %174, 1
  store i32 %inc266, i32* %i, align 4
  %175 = load i32*, i32** %RK, align 8
  %add.ptr267 = getelementptr inbounds i32, i32* %175, i64 8
  store i32* %add.ptr267, i32** %RK, align 8
  br label %for.cond162, !llvm.loop !8

for.end268:                                       ; preds = %for.cond162
  br label %sw.epilog269

sw.epilog269:                                     ; preds = %for.end, %for.end268, %for.end160, %for.end92
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog269, %if.then7, %sw.default
  %176 = load i32, i32* %retval, align 4
  ret i32 %176
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gen_tables() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %pow = alloca [256 x i32], align 16
  %log = alloca [256 x i32], align 16
  store i32 0, i32* %i, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %shl = shl i32 %6, 1
  %7 = load i32, i32* %x, align 4
  %and = and i32 %7, 128
  %tobool = icmp ne i32 %and, 0
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 27, i32 0
  %xor = xor i32 %shl, %cond
  %xor3 = xor i32 %5, %xor
  %and4 = and i32 %xor3, 255
  %conv = trunc i32 %and4 to i8
  %conv5 = zext i8 %conv to i32
  store i32 %conv5, i32* %x, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc20, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %10, 10
  br i1 %cmp7, label %for.body9, label %for.end22

for.body9:                                        ; preds = %for.cond6
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* @RCON, i64 0, i64 %idxprom10
  store i32 %11, i32* %arrayidx11, align 4
  %13 = load i32, i32* %x, align 4
  %shl12 = shl i32 %13, 1
  %14 = load i32, i32* %x, align 4
  %and13 = and i32 %14, 128
  %tobool14 = icmp ne i32 %and13, 0
  %15 = zext i1 %tobool14 to i64
  %cond15 = select i1 %tobool14, i32 27, i32 0
  %xor16 = xor i32 %shl12, %cond15
  %and17 = and i32 %xor16, 255
  %conv18 = trunc i32 %and17 to i8
  %conv19 = zext i8 %conv18 to i32
  store i32 %conv19, i32* %x, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body9
  %16 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond6, !llvm.loop !10

for.end22:                                        ; preds = %for.cond6
  store i8 99, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FSb, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @RSb, i64 0, i64 99), align 1
  store i32 1, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc64, %for.end22
  %17 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %17, 256
  br i1 %cmp24, label %for.body26, label %for.end66

for.body26:                                       ; preds = %for.cond23
  %18 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom27
  %19 = load i32, i32* %arrayidx28, align 4
  %sub = sub nsw i32 255, %19
  %idxprom29 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom29
  %20 = load i32, i32* %arrayidx30, align 4
  store i32 %20, i32* %x, align 4
  %21 = load i32, i32* %x, align 4
  store i32 %21, i32* %y, align 4
  %22 = load i32, i32* %y, align 4
  %shl31 = shl i32 %22, 1
  %23 = load i32, i32* %y, align 4
  %shr = ashr i32 %23, 7
  %or = or i32 %shl31, %shr
  %and32 = and i32 %or, 255
  %conv33 = trunc i32 %and32 to i8
  %conv34 = zext i8 %conv33 to i32
  store i32 %conv34, i32* %y, align 4
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %x, align 4
  %xor35 = xor i32 %25, %24
  store i32 %xor35, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %shl36 = shl i32 %26, 1
  %27 = load i32, i32* %y, align 4
  %shr37 = ashr i32 %27, 7
  %or38 = or i32 %shl36, %shr37
  %and39 = and i32 %or38, 255
  %conv40 = trunc i32 %and39 to i8
  %conv41 = zext i8 %conv40 to i32
  store i32 %conv41, i32* %y, align 4
  %28 = load i32, i32* %y, align 4
  %29 = load i32, i32* %x, align 4
  %xor42 = xor i32 %29, %28
  store i32 %xor42, i32* %x, align 4
  %30 = load i32, i32* %y, align 4
  %shl43 = shl i32 %30, 1
  %31 = load i32, i32* %y, align 4
  %shr44 = ashr i32 %31, 7
  %or45 = or i32 %shl43, %shr44
  %and46 = and i32 %or45, 255
  %conv47 = trunc i32 %and46 to i8
  %conv48 = zext i8 %conv47 to i32
  store i32 %conv48, i32* %y, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %x, align 4
  %xor49 = xor i32 %33, %32
  store i32 %xor49, i32* %x, align 4
  %34 = load i32, i32* %y, align 4
  %shl50 = shl i32 %34, 1
  %35 = load i32, i32* %y, align 4
  %shr51 = ashr i32 %35, 7
  %or52 = or i32 %shl50, %shr51
  %and53 = and i32 %or52, 255
  %conv54 = trunc i32 %and53 to i8
  %conv55 = zext i8 %conv54 to i32
  store i32 %conv55, i32* %y, align 4
  %36 = load i32, i32* %y, align 4
  %xor56 = xor i32 %36, 99
  %37 = load i32, i32* %x, align 4
  %xor57 = xor i32 %37, %xor56
  store i32 %xor57, i32* %x, align 4
  %38 = load i32, i32* %x, align 4
  %conv58 = trunc i32 %38 to i8
  %39 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom59
  store i8 %conv58, i8* %arrayidx60, align 1
  %40 = load i32, i32* %i, align 4
  %conv61 = trunc i32 %40 to i8
  %41 = load i32, i32* %x, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom62
  store i8 %conv61, i8* %arrayidx63, align 1
  br label %for.inc64

for.inc64:                                        ; preds = %for.body26
  %42 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %42, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond23, !llvm.loop !11

for.end66:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc208, %for.end66
  %43 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %43, 256
  br i1 %cmp68, label %for.body70, label %for.end210

for.body70:                                       ; preds = %for.cond67
  %44 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %44 to i64
  %arrayidx72 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom71
  %45 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %45 to i32
  store i32 %conv73, i32* %x, align 4
  %46 = load i32, i32* %x, align 4
  %shl74 = shl i32 %46, 1
  %47 = load i32, i32* %x, align 4
  %and75 = and i32 %47, 128
  %tobool76 = icmp ne i32 %and75, 0
  %48 = zext i1 %tobool76 to i64
  %cond77 = select i1 %tobool76, i32 27, i32 0
  %xor78 = xor i32 %shl74, %cond77
  %and79 = and i32 %xor78, 255
  %conv80 = trunc i32 %and79 to i8
  %conv81 = zext i8 %conv80 to i32
  store i32 %conv81, i32* %y, align 4
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %x, align 4
  %xor82 = xor i32 %49, %50
  %and83 = and i32 %xor82, 255
  %conv84 = trunc i32 %and83 to i8
  %conv85 = zext i8 %conv84 to i32
  store i32 %conv85, i32* %z, align 4
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %x, align 4
  %shl86 = shl i32 %52, 8
  %xor87 = xor i32 %51, %shl86
  %53 = load i32, i32* %x, align 4
  %shl88 = shl i32 %53, 16
  %xor89 = xor i32 %xor87, %shl88
  %54 = load i32, i32* %z, align 4
  %shl90 = shl i32 %54, 24
  %xor91 = xor i32 %xor89, %shl90
  %55 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %55 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom92
  store i32 %xor91, i32* %arrayidx93, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %56 to i64
  %arrayidx95 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom94
  %57 = load i32, i32* %arrayidx95, align 4
  %shl96 = shl i32 %57, 8
  %and97 = and i32 %shl96, -1
  %58 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %58 to i64
  %arrayidx99 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom98
  %59 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %59, 24
  %or101 = or i32 %and97, %shr100
  %60 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %60 to i64
  %arrayidx103 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom102
  store i32 %or101, i32* %arrayidx103, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %61 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom104
  %62 = load i32, i32* %arrayidx105, align 4
  %shl106 = shl i32 %62, 8
  %and107 = and i32 %shl106, -1
  %63 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %63 to i64
  %arrayidx109 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom108
  %64 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %64, 24
  %or111 = or i32 %and107, %shr110
  %65 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %65 to i64
  %arrayidx113 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom112
  store i32 %or111, i32* %arrayidx113, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %66 to i64
  %arrayidx115 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom114
  %67 = load i32, i32* %arrayidx115, align 4
  %shl116 = shl i32 %67, 8
  %and117 = and i32 %shl116, -1
  %68 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %68 to i64
  %arrayidx119 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom118
  %69 = load i32, i32* %arrayidx119, align 4
  %shr120 = lshr i32 %69, 24
  %or121 = or i32 %and117, %shr120
  %70 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %70 to i64
  %arrayidx123 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom122
  store i32 %or121, i32* %arrayidx123, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %71 to i64
  %arrayidx125 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom124
  %72 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %72 to i32
  store i32 %conv126, i32* %x, align 4
  %73 = load i32, i32* %x, align 4
  %tobool127 = icmp ne i32 %73, 0
  br i1 %tobool127, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body70
  %arrayidx128 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 14
  %74 = load i32, i32* %arrayidx128, align 8
  %75 = load i32, i32* %x, align 4
  %idxprom129 = sext i32 %75 to i64
  %arrayidx130 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom129
  %76 = load i32, i32* %arrayidx130, align 4
  %add = add nsw i32 %74, %76
  %rem = srem i32 %add, 255
  %idxprom131 = sext i32 %rem to i64
  %arrayidx132 = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom131
  %77 = load i32, i32* %arrayidx132, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond133 = phi i32 [ %77, %cond.true ], [ 0, %cond.false ]
  %78 = load i32, i32* %x, align 4
  %tobool134 = icmp ne i32 %78, 0
  br i1 %tobool134, label %cond.true135, label %cond.false143

cond.true135:                                     ; preds = %cond.end
  %arrayidx136 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 9
  %79 = load i32, i32* %arrayidx136, align 4
  %80 = load i32, i32* %x, align 4
  %idxprom137 = sext i32 %80 to i64
  %arrayidx138 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom137
  %81 = load i32, i32* %arrayidx138, align 4
  %add139 = add nsw i32 %79, %81
  %rem140 = srem i32 %add139, 255
  %idxprom141 = sext i32 %rem140 to i64
  %arrayidx142 = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom141
  %82 = load i32, i32* %arrayidx142, align 4
  br label %cond.end144

cond.false143:                                    ; preds = %cond.end
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false143, %cond.true135
  %cond145 = phi i32 [ %82, %cond.true135 ], [ 0, %cond.false143 ]
  %shl146 = shl i32 %cond145, 8
  %xor147 = xor i32 %cond133, %shl146
  %83 = load i32, i32* %x, align 4
  %tobool148 = icmp ne i32 %83, 0
  br i1 %tobool148, label %cond.true149, label %cond.false157

cond.true149:                                     ; preds = %cond.end144
  %arrayidx150 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 13
  %84 = load i32, i32* %arrayidx150, align 4
  %85 = load i32, i32* %x, align 4
  %idxprom151 = sext i32 %85 to i64
  %arrayidx152 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom151
  %86 = load i32, i32* %arrayidx152, align 4
  %add153 = add nsw i32 %84, %86
  %rem154 = srem i32 %add153, 255
  %idxprom155 = sext i32 %rem154 to i64
  %arrayidx156 = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom155
  %87 = load i32, i32* %arrayidx156, align 4
  br label %cond.end158

cond.false157:                                    ; preds = %cond.end144
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false157, %cond.true149
  %cond159 = phi i32 [ %87, %cond.true149 ], [ 0, %cond.false157 ]
  %shl160 = shl i32 %cond159, 16
  %xor161 = xor i32 %xor147, %shl160
  %88 = load i32, i32* %x, align 4
  %tobool162 = icmp ne i32 %88, 0
  br i1 %tobool162, label %cond.true163, label %cond.false171

cond.true163:                                     ; preds = %cond.end158
  %arrayidx164 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 11
  %89 = load i32, i32* %arrayidx164, align 4
  %90 = load i32, i32* %x, align 4
  %idxprom165 = sext i32 %90 to i64
  %arrayidx166 = getelementptr inbounds [256 x i32], [256 x i32]* %log, i64 0, i64 %idxprom165
  %91 = load i32, i32* %arrayidx166, align 4
  %add167 = add nsw i32 %89, %91
  %rem168 = srem i32 %add167, 255
  %idxprom169 = sext i32 %rem168 to i64
  %arrayidx170 = getelementptr inbounds [256 x i32], [256 x i32]* %pow, i64 0, i64 %idxprom169
  %92 = load i32, i32* %arrayidx170, align 4
  br label %cond.end172

cond.false171:                                    ; preds = %cond.end158
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false171, %cond.true163
  %cond173 = phi i32 [ %92, %cond.true163 ], [ 0, %cond.false171 ]
  %shl174 = shl i32 %cond173, 24
  %xor175 = xor i32 %xor161, %shl174
  %93 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %93 to i64
  %arrayidx177 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom176
  store i32 %xor175, i32* %arrayidx177, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %94 to i64
  %arrayidx179 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom178
  %95 = load i32, i32* %arrayidx179, align 4
  %shl180 = shl i32 %95, 8
  %and181 = and i32 %shl180, -1
  %96 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %96 to i64
  %arrayidx183 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom182
  %97 = load i32, i32* %arrayidx183, align 4
  %shr184 = lshr i32 %97, 24
  %or185 = or i32 %and181, %shr184
  %98 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %98 to i64
  %arrayidx187 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom186
  store i32 %or185, i32* %arrayidx187, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %99 to i64
  %arrayidx189 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom188
  %100 = load i32, i32* %arrayidx189, align 4
  %shl190 = shl i32 %100, 8
  %and191 = and i32 %shl190, -1
  %101 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %101 to i64
  %arrayidx193 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom192
  %102 = load i32, i32* %arrayidx193, align 4
  %shr194 = lshr i32 %102, 24
  %or195 = or i32 %and191, %shr194
  %103 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %103 to i64
  %arrayidx197 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom196
  store i32 %or195, i32* %arrayidx197, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %104 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom198
  %105 = load i32, i32* %arrayidx199, align 4
  %shl200 = shl i32 %105, 8
  %and201 = and i32 %shl200, -1
  %106 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %106 to i64
  %arrayidx203 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom202
  %107 = load i32, i32* %arrayidx203, align 4
  %shr204 = lshr i32 %107, 24
  %or205 = or i32 %and201, %shr204
  %108 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %108 to i64
  %arrayidx207 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom206
  store i32 %or205, i32* %arrayidx207, align 4
  br label %for.inc208

for.inc208:                                       ; preds = %cond.end172
  %109 = load i32, i32* %i, align 4
  %inc209 = add nsw i32 %109, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond67, !llvm.loop !12

for.end210:                                       ; preds = %for.cond67
  ret void
}

declare dso_local i32 @mbedtls_aesni_has_support(i32 noundef) #2

declare dso_local i32 @mbedtls_aesni_setkey_enc(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %cty = alloca %struct.mbedtls_aes_context, align 8
  %RK = alloca i32*, align 8
  %SK = alloca i32*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %cty) #5
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [68 x i32], [68 x i32]* %buf, i64 0, i64 0
  store i32* %arraydecay, i32** %RK, align 8
  %1 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %1, i32 0, i32 1
  store i32* %arraydecay, i32** %rk, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %keybits.addr, align 4
  %call = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %cty, i8* noundef %2, i32 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  br label %exit

if.end:                                           ; preds = %do.end2
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %cty, i32 0, i32 0
  %4 = load i32, i32* %nr, align 8
  %5 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr3 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %5, i32 0, i32 0
  store i32 %4, i32* %nr3, align 8
  %call4 = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #5
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk6 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %6, i32 0, i32 1
  %7 = load i32*, i32** %rk6, align 8
  %8 = bitcast i32* %7 to i8*
  %rk7 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %cty, i32 0, i32 1
  %9 = load i32*, i32** %rk7, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr8 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %11, i32 0, i32 0
  %12 = load i32, i32* %nr8, align 8
  call void @mbedtls_aesni_inverse_key(i8* noundef %8, i8* noundef %10, i32 noundef %12) #5
  br label %exit

if.end9:                                          ; preds = %if.end
  %rk10 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %cty, i32 0, i32 1
  %13 = load i32*, i32** %rk10, align 8
  %nr11 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %cty, i32 0, i32 0
  %14 = load i32, i32* %nr11, align 8
  %mul = mul nsw i32 %14, 4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  store i32* %add.ptr, i32** %SK, align 8
  %15 = load i32*, i32** %SK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %SK, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %RK, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr12, i32** %RK, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %SK, align 8
  %incdec.ptr13 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %incdec.ptr13, i32** %SK, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %RK, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %incdec.ptr14, i32** %RK, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %SK, align 8
  %incdec.ptr15 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr15, i32** %SK, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %RK, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr16, i32** %RK, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %SK, align 8
  %incdec.ptr17 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr17, i32** %SK, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %RK, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr18, i32** %RK, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr19 = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %27, i32 0, i32 0
  %28 = load i32, i32* %nr19, align 8
  %sub = sub nsw i32 %28, 1
  store i32 %sub, i32* %i, align 4
  %29 = load i32*, i32** %SK, align 8
  %add.ptr20 = getelementptr inbounds i32, i32* %29, i64 -8
  store i32* %add.ptr20, i32** %SK, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.end9
  %30 = load i32, i32* %i, align 4
  %cmp21 = icmp sgt i32 %30, 0
  br i1 %cmp21, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %31 = load i32, i32* %j, align 4
  %cmp23 = icmp slt i32 %31, 4
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %32 = load i32*, i32** %SK, align 8
  %33 = load i32, i32* %32, align 4
  %and = and i32 %33, 255
  %conv = trunc i32 %and to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx, align 1
  %idxprom25 = zext i8 %34 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom25
  %35 = load i32, i32* %arrayidx26, align 4
  %36 = load i32*, i32** %SK, align 8
  %37 = load i32, i32* %36, align 4
  %shr = lshr i32 %37, 8
  %and27 = and i32 %shr, 255
  %conv28 = trunc i32 %and27 to i8
  %idxprom29 = zext i8 %conv28 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom29
  %38 = load i8, i8* %arrayidx30, align 1
  %idxprom31 = zext i8 %38 to i64
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  %xor = xor i32 %35, %39
  %40 = load i32*, i32** %SK, align 8
  %41 = load i32, i32* %40, align 4
  %shr33 = lshr i32 %41, 16
  %and34 = and i32 %shr33, 255
  %conv35 = trunc i32 %and34 to i8
  %idxprom36 = zext i8 %conv35 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom36
  %42 = load i8, i8* %arrayidx37, align 1
  %idxprom38 = zext i8 %42 to i64
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom38
  %43 = load i32, i32* %arrayidx39, align 4
  %xor40 = xor i32 %xor, %43
  %44 = load i32*, i32** %SK, align 8
  %45 = load i32, i32* %44, align 4
  %shr41 = lshr i32 %45, 24
  %and42 = and i32 %shr41, 255
  %conv43 = trunc i32 %and42 to i8
  %idxprom44 = zext i8 %conv43 to i64
  %arrayidx45 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom44
  %46 = load i8, i8* %arrayidx45, align 1
  %idxprom46 = zext i8 %46 to i64
  %arrayidx47 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom46
  %47 = load i32, i32* %arrayidx47, align 4
  %xor48 = xor i32 %xor40, %47
  %48 = load i32*, i32** %RK, align 8
  %incdec.ptr49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr49, i32** %RK, align 8
  store i32 %xor48, i32* %48, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  %50 = load i32*, i32** %SK, align 8
  %incdec.ptr50 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr50, i32** %SK, align 8
  br label %for.cond22, !llvm.loop !13

for.end:                                          ; preds = %for.cond22
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %51 = load i32, i32* %i, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %i, align 4
  %52 = load i32*, i32** %SK, align 8
  %add.ptr52 = getelementptr inbounds i32, i32* %52, i64 -8
  store i32* %add.ptr52, i32** %SK, align 8
  br label %for.cond, !llvm.loop !14

for.end53:                                        ; preds = %for.cond
  %53 = load i32*, i32** %SK, align 8
  %incdec.ptr54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %incdec.ptr54, i32** %SK, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %RK, align 8
  %incdec.ptr55 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr55, i32** %RK, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %SK, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %incdec.ptr56, i32** %SK, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %RK, align 8
  %incdec.ptr57 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %incdec.ptr57, i32** %RK, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %SK, align 8
  %incdec.ptr58 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %incdec.ptr58, i32** %SK, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %RK, align 8
  %incdec.ptr59 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %incdec.ptr59, i32** %RK, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %SK, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr60, i32** %SK, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %RK, align 8
  %incdec.ptr61 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %incdec.ptr61, i32** %RK, align 8
  store i32 %63, i32* %64, align 4
  br label %exit

exit:                                             ; preds = %for.end53, %if.then5, %if.then
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %cty) #5
  %65 = load i32, i32* %ret, align 4
  ret i32 %65
}

declare dso_local void @mbedtls_aesni_inverse_key(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_xts_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %key1 = alloca i8*, align 8
  %key2 = alloca i8*, align 8
  %key1bits = alloca i32, align 4
  %key2bits = alloca i32, align 4
  store %struct.mbedtls_aes_xts_context* %ctx, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call i32 @mbedtls_aes_xts_decode_keys(i8* noundef %0, i32 noundef %1, i8** noundef %key1, i32* noundef %key1bits, i8** noundef %key2, i32* noundef %key2bits) #5
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %4 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %tweak = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %4, i32 0, i32 1
  %5 = load i8*, i8** %key2, align 8
  %6 = load i32, i32* %key2bits, align 4
  %call3 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %tweak, i8* noundef %5, i32 noundef %6) #5
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %9, i32 0, i32 0
  %10 = load i8*, i8** %key1, align 8
  %11 = load i32, i32* %key1bits, align 4
  %call7 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %crypt, i8* noundef %10, i32 noundef %11) #5
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_aes_xts_decode_keys(i8* noundef %key, i32 noundef %keybits, i8** noundef %key1, i32* noundef %key1bits, i8** noundef %key2, i32* noundef %key2bits) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %key1.addr = alloca i8**, align 8
  %key1bits.addr = alloca i32*, align 8
  %key2.addr = alloca i8**, align 8
  %key2bits.addr = alloca i32*, align 8
  %half_keybits = alloca i32, align 4
  %half_keybytes = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i8** %key1, i8*** %key1.addr, align 8
  store i32* %key1bits, i32** %key1bits.addr, align 8
  store i8** %key2, i8*** %key2.addr, align 8
  store i32* %key2bits, i32** %key2bits.addr, align 8
  %0 = load i32, i32* %keybits.addr, align 4
  %div = udiv i32 %0, 2
  store i32 %div, i32* %half_keybits, align 4
  %1 = load i32, i32* %half_keybits, align 4
  %div1 = udiv i32 %1, 8
  store i32 %div1, i32* %half_keybytes, align 4
  %2 = load i32, i32* %keybits.addr, align 4
  switch i32 %2, label %sw.default [
    i32 256, label %sw.bb
    i32 512, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -32, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %3 = load i32, i32* %half_keybits, align 4
  %4 = load i32*, i32** %key1bits.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %half_keybits, align 4
  %6 = load i32*, i32** %key2bits.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8**, i8*** %key1.addr, align 8
  store i8* %arrayidx, i8** %8, align 8
  %9 = load i8*, i8** %key.addr, align 8
  %10 = load i32, i32* %half_keybytes, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8**, i8*** %key2.addr, align 8
  store i8* %arrayidx3, i8** %11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_xts_setkey_dec(%struct.mbedtls_aes_xts_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_xts_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %key1 = alloca i8*, align 8
  %key2 = alloca i8*, align 8
  %key1bits = alloca i32, align 4
  %key2bits = alloca i32, align 4
  store %struct.mbedtls_aes_xts_context* %ctx, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call i32 @mbedtls_aes_xts_decode_keys(i8* noundef %0, i32 noundef %1, i8** noundef %key1, i32* noundef %key1bits, i8** noundef %key2, i32* noundef %key2bits) #5
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %4 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %tweak = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %4, i32 0, i32 1
  %5 = load i8*, i8** %key2, align 8
  %6 = load i32, i32* %key2bits, align 4
  %call3 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %tweak, i8* noundef %5, i32 noundef %6) #5
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %9, i32 0, i32 0
  %10 = load i8*, i8** %key1, align 8
  %11 = load i32, i32* %key1bits, align 4
  %call7 = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %crypt, i8* noundef %10, i32 noundef %11) #5
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_aes_encrypt(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %RK = alloca i32*, align 8
  %t = alloca %struct.anon, align 4
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %0, i32 0, i32 1
  %1 = load i32*, i32** %rk, align 8
  store i32* %1, i32** %RK, align 8
  %2 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %X = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  store i32 %or10, i32* %arrayidx11, align 4
  %10 = load i32*, i32** %RK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %RK, align 8
  %11 = load i32, i32* %10, align 4
  %X12 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %X12, i64 0, i64 0
  %12 = load i32, i32* %arrayidx13, align 4
  %xor = xor i32 %12, %11
  store i32 %xor, i32* %arrayidx13, align 4
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i8*, i8** %input.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %conv15, %shl18
  %17 = load i8*, i8** %input.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %shl22 = shl i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %19 = load i8*, i8** %input.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %shl26 = shl i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  %X28 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %X28, i64 0, i64 1
  store i32 %or27, i32* %arrayidx29, align 4
  %21 = load i32*, i32** %RK, align 8
  %incdec.ptr30 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr30, i32** %RK, align 8
  %22 = load i32, i32* %21, align 4
  %X31 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %X31, i64 0, i64 1
  %23 = load i32, i32* %arrayidx32, align 4
  %xor33 = xor i32 %23, %22
  store i32 %xor33, i32* %arrayidx32, align 4
  %24 = load i8*, i8** %input.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %24, i64 8
  %25 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %26 = load i8*, i8** %input.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 9
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %shl38 = shl i32 %conv37, 8
  %or39 = or i32 %conv35, %shl38
  %28 = load i8*, i8** %input.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 10
  %29 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %shl42 = shl i32 %conv41, 16
  %or43 = or i32 %or39, %shl42
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 11
  %31 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %31 to i32
  %shl46 = shl i32 %conv45, 24
  %or47 = or i32 %or43, %shl46
  %X48 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %X48, i64 0, i64 2
  store i32 %or47, i32* %arrayidx49, align 4
  %32 = load i32*, i32** %RK, align 8
  %incdec.ptr50 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr50, i32** %RK, align 8
  %33 = load i32, i32* %32, align 4
  %X51 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %X51, i64 0, i64 2
  %34 = load i32, i32* %arrayidx52, align 4
  %xor53 = xor i32 %34, %33
  store i32 %xor53, i32* %arrayidx52, align 4
  %35 = load i8*, i8** %input.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %35, i64 12
  %36 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %36 to i32
  %37 = load i8*, i8** %input.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %37, i64 13
  %38 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %38 to i32
  %shl58 = shl i32 %conv57, 8
  %or59 = or i32 %conv55, %shl58
  %39 = load i8*, i8** %input.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 14
  %40 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %40 to i32
  %shl62 = shl i32 %conv61, 16
  %or63 = or i32 %or59, %shl62
  %41 = load i8*, i8** %input.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %41, i64 15
  %42 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %42 to i32
  %shl66 = shl i32 %conv65, 24
  %or67 = or i32 %or63, %shl66
  %X68 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %X68, i64 0, i64 3
  store i32 %or67, i32* %arrayidx69, align 4
  %43 = load i32*, i32** %RK, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr70, i32** %RK, align 8
  %44 = load i32, i32* %43, align 4
  %X71 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %X71, i64 0, i64 3
  %45 = load i32, i32* %arrayidx72, align 4
  %xor73 = xor i32 %45, %44
  store i32 %xor73, i32* %arrayidx72, align 4
  %46 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %46, i32 0, i32 0
  %47 = load i32, i32* %nr, align 8
  %shr = ashr i32 %47, 1
  %sub = sub nsw i32 %shr, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %48 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %48, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %49 = load i32*, i32** %RK, align 8
  %incdec.ptr75 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr75, i32** %RK, align 8
  %50 = load i32, i32* %49, align 4
  %X76 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %X76, i64 0, i64 0
  %51 = load i32, i32* %arrayidx77, align 4
  %and = and i32 %51, 255
  %conv78 = trunc i32 %and to i8
  %idxprom = zext i8 %conv78 to i64
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom
  %52 = load i32, i32* %arrayidx79, align 4
  %xor80 = xor i32 %50, %52
  %X81 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %X81, i64 0, i64 1
  %53 = load i32, i32* %arrayidx82, align 4
  %shr83 = lshr i32 %53, 8
  %and84 = and i32 %shr83, 255
  %conv85 = trunc i32 %and84 to i8
  %idxprom86 = zext i8 %conv85 to i64
  %arrayidx87 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom86
  %54 = load i32, i32* %arrayidx87, align 4
  %xor88 = xor i32 %xor80, %54
  %X89 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %X89, i64 0, i64 2
  %55 = load i32, i32* %arrayidx90, align 4
  %shr91 = lshr i32 %55, 16
  %and92 = and i32 %shr91, 255
  %conv93 = trunc i32 %and92 to i8
  %idxprom94 = zext i8 %conv93 to i64
  %arrayidx95 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom94
  %56 = load i32, i32* %arrayidx95, align 4
  %xor96 = xor i32 %xor88, %56
  %X97 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %X97, i64 0, i64 3
  %57 = load i32, i32* %arrayidx98, align 4
  %shr99 = lshr i32 %57, 24
  %and100 = and i32 %shr99, 255
  %conv101 = trunc i32 %and100 to i8
  %idxprom102 = zext i8 %conv101 to i64
  %arrayidx103 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom102
  %58 = load i32, i32* %arrayidx103, align 4
  %xor104 = xor i32 %xor96, %58
  %Y = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %Y, i64 0, i64 0
  store i32 %xor104, i32* %arrayidx105, align 4
  %59 = load i32*, i32** %RK, align 8
  %incdec.ptr106 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %incdec.ptr106, i32** %RK, align 8
  %60 = load i32, i32* %59, align 4
  %X107 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %X107, i64 0, i64 1
  %61 = load i32, i32* %arrayidx108, align 4
  %and109 = and i32 %61, 255
  %conv110 = trunc i32 %and109 to i8
  %idxprom111 = zext i8 %conv110 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom111
  %62 = load i32, i32* %arrayidx112, align 4
  %xor113 = xor i32 %60, %62
  %X114 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %X114, i64 0, i64 2
  %63 = load i32, i32* %arrayidx115, align 4
  %shr116 = lshr i32 %63, 8
  %and117 = and i32 %shr116, 255
  %conv118 = trunc i32 %and117 to i8
  %idxprom119 = zext i8 %conv118 to i64
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom119
  %64 = load i32, i32* %arrayidx120, align 4
  %xor121 = xor i32 %xor113, %64
  %X122 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* %X122, i64 0, i64 3
  %65 = load i32, i32* %arrayidx123, align 4
  %shr124 = lshr i32 %65, 16
  %and125 = and i32 %shr124, 255
  %conv126 = trunc i32 %and125 to i8
  %idxprom127 = zext i8 %conv126 to i64
  %arrayidx128 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom127
  %66 = load i32, i32* %arrayidx128, align 4
  %xor129 = xor i32 %xor121, %66
  %X130 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %X130, i64 0, i64 0
  %67 = load i32, i32* %arrayidx131, align 4
  %shr132 = lshr i32 %67, 24
  %and133 = and i32 %shr132, 255
  %conv134 = trunc i32 %and133 to i8
  %idxprom135 = zext i8 %conv134 to i64
  %arrayidx136 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom135
  %68 = load i32, i32* %arrayidx136, align 4
  %xor137 = xor i32 %xor129, %68
  %Y138 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %Y138, i64 0, i64 1
  store i32 %xor137, i32* %arrayidx139, align 4
  %69 = load i32*, i32** %RK, align 8
  %incdec.ptr140 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %incdec.ptr140, i32** %RK, align 8
  %70 = load i32, i32* %69, align 4
  %X141 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %X141, i64 0, i64 2
  %71 = load i32, i32* %arrayidx142, align 4
  %and143 = and i32 %71, 255
  %conv144 = trunc i32 %and143 to i8
  %idxprom145 = zext i8 %conv144 to i64
  %arrayidx146 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom145
  %72 = load i32, i32* %arrayidx146, align 4
  %xor147 = xor i32 %70, %72
  %X148 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %X148, i64 0, i64 3
  %73 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %73, 8
  %and151 = and i32 %shr150, 255
  %conv152 = trunc i32 %and151 to i8
  %idxprom153 = zext i8 %conv152 to i64
  %arrayidx154 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom153
  %74 = load i32, i32* %arrayidx154, align 4
  %xor155 = xor i32 %xor147, %74
  %X156 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %X156, i64 0, i64 0
  %75 = load i32, i32* %arrayidx157, align 4
  %shr158 = lshr i32 %75, 16
  %and159 = and i32 %shr158, 255
  %conv160 = trunc i32 %and159 to i8
  %idxprom161 = zext i8 %conv160 to i64
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom161
  %76 = load i32, i32* %arrayidx162, align 4
  %xor163 = xor i32 %xor155, %76
  %X164 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [4 x i32], [4 x i32]* %X164, i64 0, i64 1
  %77 = load i32, i32* %arrayidx165, align 4
  %shr166 = lshr i32 %77, 24
  %and167 = and i32 %shr166, 255
  %conv168 = trunc i32 %and167 to i8
  %idxprom169 = zext i8 %conv168 to i64
  %arrayidx170 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom169
  %78 = load i32, i32* %arrayidx170, align 4
  %xor171 = xor i32 %xor163, %78
  %Y172 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %Y172, i64 0, i64 2
  store i32 %xor171, i32* %arrayidx173, align 4
  %79 = load i32*, i32** %RK, align 8
  %incdec.ptr174 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr174, i32** %RK, align 8
  %80 = load i32, i32* %79, align 4
  %X175 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %X175, i64 0, i64 3
  %81 = load i32, i32* %arrayidx176, align 4
  %and177 = and i32 %81, 255
  %conv178 = trunc i32 %and177 to i8
  %idxprom179 = zext i8 %conv178 to i64
  %arrayidx180 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom179
  %82 = load i32, i32* %arrayidx180, align 4
  %xor181 = xor i32 %80, %82
  %X182 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %X182, i64 0, i64 0
  %83 = load i32, i32* %arrayidx183, align 4
  %shr184 = lshr i32 %83, 8
  %and185 = and i32 %shr184, 255
  %conv186 = trunc i32 %and185 to i8
  %idxprom187 = zext i8 %conv186 to i64
  %arrayidx188 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom187
  %84 = load i32, i32* %arrayidx188, align 4
  %xor189 = xor i32 %xor181, %84
  %X190 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [4 x i32], [4 x i32]* %X190, i64 0, i64 1
  %85 = load i32, i32* %arrayidx191, align 4
  %shr192 = lshr i32 %85, 16
  %and193 = and i32 %shr192, 255
  %conv194 = trunc i32 %and193 to i8
  %idxprom195 = zext i8 %conv194 to i64
  %arrayidx196 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom195
  %86 = load i32, i32* %arrayidx196, align 4
  %xor197 = xor i32 %xor189, %86
  %X198 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %X198, i64 0, i64 2
  %87 = load i32, i32* %arrayidx199, align 4
  %shr200 = lshr i32 %87, 24
  %and201 = and i32 %shr200, 255
  %conv202 = trunc i32 %and201 to i8
  %idxprom203 = zext i8 %conv202 to i64
  %arrayidx204 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom203
  %88 = load i32, i32* %arrayidx204, align 4
  %xor205 = xor i32 %xor197, %88
  %Y206 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [4 x i32], [4 x i32]* %Y206, i64 0, i64 3
  store i32 %xor205, i32* %arrayidx207, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body208

do.body208:                                       ; preds = %do.end
  %89 = load i32*, i32** %RK, align 8
  %incdec.ptr209 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr209, i32** %RK, align 8
  %90 = load i32, i32* %89, align 4
  %Y210 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [4 x i32], [4 x i32]* %Y210, i64 0, i64 0
  %91 = load i32, i32* %arrayidx211, align 4
  %and212 = and i32 %91, 255
  %conv213 = trunc i32 %and212 to i8
  %idxprom214 = zext i8 %conv213 to i64
  %arrayidx215 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom214
  %92 = load i32, i32* %arrayidx215, align 4
  %xor216 = xor i32 %90, %92
  %Y217 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %Y217, i64 0, i64 1
  %93 = load i32, i32* %arrayidx218, align 4
  %shr219 = lshr i32 %93, 8
  %and220 = and i32 %shr219, 255
  %conv221 = trunc i32 %and220 to i8
  %idxprom222 = zext i8 %conv221 to i64
  %arrayidx223 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom222
  %94 = load i32, i32* %arrayidx223, align 4
  %xor224 = xor i32 %xor216, %94
  %Y225 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %Y225, i64 0, i64 2
  %95 = load i32, i32* %arrayidx226, align 4
  %shr227 = lshr i32 %95, 16
  %and228 = and i32 %shr227, 255
  %conv229 = trunc i32 %and228 to i8
  %idxprom230 = zext i8 %conv229 to i64
  %arrayidx231 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom230
  %96 = load i32, i32* %arrayidx231, align 4
  %xor232 = xor i32 %xor224, %96
  %Y233 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [4 x i32], [4 x i32]* %Y233, i64 0, i64 3
  %97 = load i32, i32* %arrayidx234, align 4
  %shr235 = lshr i32 %97, 24
  %and236 = and i32 %shr235, 255
  %conv237 = trunc i32 %and236 to i8
  %idxprom238 = zext i8 %conv237 to i64
  %arrayidx239 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom238
  %98 = load i32, i32* %arrayidx239, align 4
  %xor240 = xor i32 %xor232, %98
  %X241 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [4 x i32], [4 x i32]* %X241, i64 0, i64 0
  store i32 %xor240, i32* %arrayidx242, align 4
  %99 = load i32*, i32** %RK, align 8
  %incdec.ptr243 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %incdec.ptr243, i32** %RK, align 8
  %100 = load i32, i32* %99, align 4
  %Y244 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* %Y244, i64 0, i64 1
  %101 = load i32, i32* %arrayidx245, align 4
  %and246 = and i32 %101, 255
  %conv247 = trunc i32 %and246 to i8
  %idxprom248 = zext i8 %conv247 to i64
  %arrayidx249 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom248
  %102 = load i32, i32* %arrayidx249, align 4
  %xor250 = xor i32 %100, %102
  %Y251 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [4 x i32], [4 x i32]* %Y251, i64 0, i64 2
  %103 = load i32, i32* %arrayidx252, align 4
  %shr253 = lshr i32 %103, 8
  %and254 = and i32 %shr253, 255
  %conv255 = trunc i32 %and254 to i8
  %idxprom256 = zext i8 %conv255 to i64
  %arrayidx257 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom256
  %104 = load i32, i32* %arrayidx257, align 4
  %xor258 = xor i32 %xor250, %104
  %Y259 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [4 x i32], [4 x i32]* %Y259, i64 0, i64 3
  %105 = load i32, i32* %arrayidx260, align 4
  %shr261 = lshr i32 %105, 16
  %and262 = and i32 %shr261, 255
  %conv263 = trunc i32 %and262 to i8
  %idxprom264 = zext i8 %conv263 to i64
  %arrayidx265 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom264
  %106 = load i32, i32* %arrayidx265, align 4
  %xor266 = xor i32 %xor258, %106
  %Y267 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [4 x i32], [4 x i32]* %Y267, i64 0, i64 0
  %107 = load i32, i32* %arrayidx268, align 4
  %shr269 = lshr i32 %107, 24
  %and270 = and i32 %shr269, 255
  %conv271 = trunc i32 %and270 to i8
  %idxprom272 = zext i8 %conv271 to i64
  %arrayidx273 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom272
  %108 = load i32, i32* %arrayidx273, align 4
  %xor274 = xor i32 %xor266, %108
  %X275 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [4 x i32], [4 x i32]* %X275, i64 0, i64 1
  store i32 %xor274, i32* %arrayidx276, align 4
  %109 = load i32*, i32** %RK, align 8
  %incdec.ptr277 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %incdec.ptr277, i32** %RK, align 8
  %110 = load i32, i32* %109, align 4
  %Y278 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* %Y278, i64 0, i64 2
  %111 = load i32, i32* %arrayidx279, align 4
  %and280 = and i32 %111, 255
  %conv281 = trunc i32 %and280 to i8
  %idxprom282 = zext i8 %conv281 to i64
  %arrayidx283 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom282
  %112 = load i32, i32* %arrayidx283, align 4
  %xor284 = xor i32 %110, %112
  %Y285 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [4 x i32], [4 x i32]* %Y285, i64 0, i64 3
  %113 = load i32, i32* %arrayidx286, align 4
  %shr287 = lshr i32 %113, 8
  %and288 = and i32 %shr287, 255
  %conv289 = trunc i32 %and288 to i8
  %idxprom290 = zext i8 %conv289 to i64
  %arrayidx291 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom290
  %114 = load i32, i32* %arrayidx291, align 4
  %xor292 = xor i32 %xor284, %114
  %Y293 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [4 x i32], [4 x i32]* %Y293, i64 0, i64 0
  %115 = load i32, i32* %arrayidx294, align 4
  %shr295 = lshr i32 %115, 16
  %and296 = and i32 %shr295, 255
  %conv297 = trunc i32 %and296 to i8
  %idxprom298 = zext i8 %conv297 to i64
  %arrayidx299 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom298
  %116 = load i32, i32* %arrayidx299, align 4
  %xor300 = xor i32 %xor292, %116
  %Y301 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [4 x i32], [4 x i32]* %Y301, i64 0, i64 1
  %117 = load i32, i32* %arrayidx302, align 4
  %shr303 = lshr i32 %117, 24
  %and304 = and i32 %shr303, 255
  %conv305 = trunc i32 %and304 to i8
  %idxprom306 = zext i8 %conv305 to i64
  %arrayidx307 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom306
  %118 = load i32, i32* %arrayidx307, align 4
  %xor308 = xor i32 %xor300, %118
  %X309 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [4 x i32], [4 x i32]* %X309, i64 0, i64 2
  store i32 %xor308, i32* %arrayidx310, align 4
  %119 = load i32*, i32** %RK, align 8
  %incdec.ptr311 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr311, i32** %RK, align 8
  %120 = load i32, i32* %119, align 4
  %Y312 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [4 x i32], [4 x i32]* %Y312, i64 0, i64 3
  %121 = load i32, i32* %arrayidx313, align 4
  %and314 = and i32 %121, 255
  %conv315 = trunc i32 %and314 to i8
  %idxprom316 = zext i8 %conv315 to i64
  %arrayidx317 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom316
  %122 = load i32, i32* %arrayidx317, align 4
  %xor318 = xor i32 %120, %122
  %Y319 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [4 x i32], [4 x i32]* %Y319, i64 0, i64 0
  %123 = load i32, i32* %arrayidx320, align 4
  %shr321 = lshr i32 %123, 8
  %and322 = and i32 %shr321, 255
  %conv323 = trunc i32 %and322 to i8
  %idxprom324 = zext i8 %conv323 to i64
  %arrayidx325 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom324
  %124 = load i32, i32* %arrayidx325, align 4
  %xor326 = xor i32 %xor318, %124
  %Y327 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [4 x i32], [4 x i32]* %Y327, i64 0, i64 1
  %125 = load i32, i32* %arrayidx328, align 4
  %shr329 = lshr i32 %125, 16
  %and330 = and i32 %shr329, 255
  %conv331 = trunc i32 %and330 to i8
  %idxprom332 = zext i8 %conv331 to i64
  %arrayidx333 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom332
  %126 = load i32, i32* %arrayidx333, align 4
  %xor334 = xor i32 %xor326, %126
  %Y335 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [4 x i32], [4 x i32]* %Y335, i64 0, i64 2
  %127 = load i32, i32* %arrayidx336, align 4
  %shr337 = lshr i32 %127, 24
  %and338 = and i32 %shr337, 255
  %conv339 = trunc i32 %and338 to i8
  %idxprom340 = zext i8 %conv339 to i64
  %arrayidx341 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom340
  %128 = load i32, i32* %arrayidx341, align 4
  %xor342 = xor i32 %xor334, %128
  %X343 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [4 x i32], [4 x i32]* %X343, i64 0, i64 3
  store i32 %xor342, i32* %arrayidx344, align 4
  br label %do.end345

do.end345:                                        ; preds = %do.body208
  br label %for.inc

for.inc:                                          ; preds = %do.end345
  %129 = load i32, i32* %i, align 4
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %do.body346

do.body346:                                       ; preds = %for.end
  %130 = load i32*, i32** %RK, align 8
  %incdec.ptr347 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %incdec.ptr347, i32** %RK, align 8
  %131 = load i32, i32* %130, align 4
  %X348 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [4 x i32], [4 x i32]* %X348, i64 0, i64 0
  %132 = load i32, i32* %arrayidx349, align 4
  %and350 = and i32 %132, 255
  %conv351 = trunc i32 %and350 to i8
  %idxprom352 = zext i8 %conv351 to i64
  %arrayidx353 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom352
  %133 = load i32, i32* %arrayidx353, align 4
  %xor354 = xor i32 %131, %133
  %X355 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [4 x i32], [4 x i32]* %X355, i64 0, i64 1
  %134 = load i32, i32* %arrayidx356, align 4
  %shr357 = lshr i32 %134, 8
  %and358 = and i32 %shr357, 255
  %conv359 = trunc i32 %and358 to i8
  %idxprom360 = zext i8 %conv359 to i64
  %arrayidx361 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom360
  %135 = load i32, i32* %arrayidx361, align 4
  %xor362 = xor i32 %xor354, %135
  %X363 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [4 x i32], [4 x i32]* %X363, i64 0, i64 2
  %136 = load i32, i32* %arrayidx364, align 4
  %shr365 = lshr i32 %136, 16
  %and366 = and i32 %shr365, 255
  %conv367 = trunc i32 %and366 to i8
  %idxprom368 = zext i8 %conv367 to i64
  %arrayidx369 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom368
  %137 = load i32, i32* %arrayidx369, align 4
  %xor370 = xor i32 %xor362, %137
  %X371 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [4 x i32], [4 x i32]* %X371, i64 0, i64 3
  %138 = load i32, i32* %arrayidx372, align 4
  %shr373 = lshr i32 %138, 24
  %and374 = and i32 %shr373, 255
  %conv375 = trunc i32 %and374 to i8
  %idxprom376 = zext i8 %conv375 to i64
  %arrayidx377 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom376
  %139 = load i32, i32* %arrayidx377, align 4
  %xor378 = xor i32 %xor370, %139
  %Y379 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [4 x i32], [4 x i32]* %Y379, i64 0, i64 0
  store i32 %xor378, i32* %arrayidx380, align 4
  %140 = load i32*, i32** %RK, align 8
  %incdec.ptr381 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr381, i32** %RK, align 8
  %141 = load i32, i32* %140, align 4
  %X382 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [4 x i32], [4 x i32]* %X382, i64 0, i64 1
  %142 = load i32, i32* %arrayidx383, align 4
  %and384 = and i32 %142, 255
  %conv385 = trunc i32 %and384 to i8
  %idxprom386 = zext i8 %conv385 to i64
  %arrayidx387 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom386
  %143 = load i32, i32* %arrayidx387, align 4
  %xor388 = xor i32 %141, %143
  %X389 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [4 x i32], [4 x i32]* %X389, i64 0, i64 2
  %144 = load i32, i32* %arrayidx390, align 4
  %shr391 = lshr i32 %144, 8
  %and392 = and i32 %shr391, 255
  %conv393 = trunc i32 %and392 to i8
  %idxprom394 = zext i8 %conv393 to i64
  %arrayidx395 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom394
  %145 = load i32, i32* %arrayidx395, align 4
  %xor396 = xor i32 %xor388, %145
  %X397 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %X397, i64 0, i64 3
  %146 = load i32, i32* %arrayidx398, align 4
  %shr399 = lshr i32 %146, 16
  %and400 = and i32 %shr399, 255
  %conv401 = trunc i32 %and400 to i8
  %idxprom402 = zext i8 %conv401 to i64
  %arrayidx403 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom402
  %147 = load i32, i32* %arrayidx403, align 4
  %xor404 = xor i32 %xor396, %147
  %X405 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [4 x i32], [4 x i32]* %X405, i64 0, i64 0
  %148 = load i32, i32* %arrayidx406, align 4
  %shr407 = lshr i32 %148, 24
  %and408 = and i32 %shr407, 255
  %conv409 = trunc i32 %and408 to i8
  %idxprom410 = zext i8 %conv409 to i64
  %arrayidx411 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom410
  %149 = load i32, i32* %arrayidx411, align 4
  %xor412 = xor i32 %xor404, %149
  %Y413 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [4 x i32], [4 x i32]* %Y413, i64 0, i64 1
  store i32 %xor412, i32* %arrayidx414, align 4
  %150 = load i32*, i32** %RK, align 8
  %incdec.ptr415 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %incdec.ptr415, i32** %RK, align 8
  %151 = load i32, i32* %150, align 4
  %X416 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [4 x i32], [4 x i32]* %X416, i64 0, i64 2
  %152 = load i32, i32* %arrayidx417, align 4
  %and418 = and i32 %152, 255
  %conv419 = trunc i32 %and418 to i8
  %idxprom420 = zext i8 %conv419 to i64
  %arrayidx421 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom420
  %153 = load i32, i32* %arrayidx421, align 4
  %xor422 = xor i32 %151, %153
  %X423 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx424 = getelementptr inbounds [4 x i32], [4 x i32]* %X423, i64 0, i64 3
  %154 = load i32, i32* %arrayidx424, align 4
  %shr425 = lshr i32 %154, 8
  %and426 = and i32 %shr425, 255
  %conv427 = trunc i32 %and426 to i8
  %idxprom428 = zext i8 %conv427 to i64
  %arrayidx429 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom428
  %155 = load i32, i32* %arrayidx429, align 4
  %xor430 = xor i32 %xor422, %155
  %X431 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [4 x i32], [4 x i32]* %X431, i64 0, i64 0
  %156 = load i32, i32* %arrayidx432, align 4
  %shr433 = lshr i32 %156, 16
  %and434 = and i32 %shr433, 255
  %conv435 = trunc i32 %and434 to i8
  %idxprom436 = zext i8 %conv435 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom436
  %157 = load i32, i32* %arrayidx437, align 4
  %xor438 = xor i32 %xor430, %157
  %X439 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [4 x i32], [4 x i32]* %X439, i64 0, i64 1
  %158 = load i32, i32* %arrayidx440, align 4
  %shr441 = lshr i32 %158, 24
  %and442 = and i32 %shr441, 255
  %conv443 = trunc i32 %and442 to i8
  %idxprom444 = zext i8 %conv443 to i64
  %arrayidx445 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom444
  %159 = load i32, i32* %arrayidx445, align 4
  %xor446 = xor i32 %xor438, %159
  %Y447 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [4 x i32], [4 x i32]* %Y447, i64 0, i64 2
  store i32 %xor446, i32* %arrayidx448, align 4
  %160 = load i32*, i32** %RK, align 8
  %incdec.ptr449 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %incdec.ptr449, i32** %RK, align 8
  %161 = load i32, i32* %160, align 4
  %X450 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [4 x i32], [4 x i32]* %X450, i64 0, i64 3
  %162 = load i32, i32* %arrayidx451, align 4
  %and452 = and i32 %162, 255
  %conv453 = trunc i32 %and452 to i8
  %idxprom454 = zext i8 %conv453 to i64
  %arrayidx455 = getelementptr inbounds [256 x i32], [256 x i32]* @FT0, i64 0, i64 %idxprom454
  %163 = load i32, i32* %arrayidx455, align 4
  %xor456 = xor i32 %161, %163
  %X457 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [4 x i32], [4 x i32]* %X457, i64 0, i64 0
  %164 = load i32, i32* %arrayidx458, align 4
  %shr459 = lshr i32 %164, 8
  %and460 = and i32 %shr459, 255
  %conv461 = trunc i32 %and460 to i8
  %idxprom462 = zext i8 %conv461 to i64
  %arrayidx463 = getelementptr inbounds [256 x i32], [256 x i32]* @FT1, i64 0, i64 %idxprom462
  %165 = load i32, i32* %arrayidx463, align 4
  %xor464 = xor i32 %xor456, %165
  %X465 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [4 x i32], [4 x i32]* %X465, i64 0, i64 1
  %166 = load i32, i32* %arrayidx466, align 4
  %shr467 = lshr i32 %166, 16
  %and468 = and i32 %shr467, 255
  %conv469 = trunc i32 %and468 to i8
  %idxprom470 = zext i8 %conv469 to i64
  %arrayidx471 = getelementptr inbounds [256 x i32], [256 x i32]* @FT2, i64 0, i64 %idxprom470
  %167 = load i32, i32* %arrayidx471, align 4
  %xor472 = xor i32 %xor464, %167
  %X473 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [4 x i32], [4 x i32]* %X473, i64 0, i64 2
  %168 = load i32, i32* %arrayidx474, align 4
  %shr475 = lshr i32 %168, 24
  %and476 = and i32 %shr475, 255
  %conv477 = trunc i32 %and476 to i8
  %idxprom478 = zext i8 %conv477 to i64
  %arrayidx479 = getelementptr inbounds [256 x i32], [256 x i32]* @FT3, i64 0, i64 %idxprom478
  %169 = load i32, i32* %arrayidx479, align 4
  %xor480 = xor i32 %xor472, %169
  %Y481 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [4 x i32], [4 x i32]* %Y481, i64 0, i64 3
  store i32 %xor480, i32* %arrayidx482, align 4
  br label %do.end483

do.end483:                                        ; preds = %do.body346
  %170 = load i32*, i32** %RK, align 8
  %incdec.ptr484 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %incdec.ptr484, i32** %RK, align 8
  %171 = load i32, i32* %170, align 4
  %Y485 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [4 x i32], [4 x i32]* %Y485, i64 0, i64 0
  %172 = load i32, i32* %arrayidx486, align 4
  %and487 = and i32 %172, 255
  %conv488 = trunc i32 %and487 to i8
  %idxprom489 = zext i8 %conv488 to i64
  %arrayidx490 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom489
  %173 = load i8, i8* %arrayidx490, align 1
  %conv491 = zext i8 %173 to i32
  %xor492 = xor i32 %171, %conv491
  %Y493 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [4 x i32], [4 x i32]* %Y493, i64 0, i64 1
  %174 = load i32, i32* %arrayidx494, align 4
  %shr495 = lshr i32 %174, 8
  %and496 = and i32 %shr495, 255
  %conv497 = trunc i32 %and496 to i8
  %idxprom498 = zext i8 %conv497 to i64
  %arrayidx499 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom498
  %175 = load i8, i8* %arrayidx499, align 1
  %conv500 = zext i8 %175 to i32
  %shl501 = shl i32 %conv500, 8
  %xor502 = xor i32 %xor492, %shl501
  %Y503 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [4 x i32], [4 x i32]* %Y503, i64 0, i64 2
  %176 = load i32, i32* %arrayidx504, align 4
  %shr505 = lshr i32 %176, 16
  %and506 = and i32 %shr505, 255
  %conv507 = trunc i32 %and506 to i8
  %idxprom508 = zext i8 %conv507 to i64
  %arrayidx509 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom508
  %177 = load i8, i8* %arrayidx509, align 1
  %conv510 = zext i8 %177 to i32
  %shl511 = shl i32 %conv510, 16
  %xor512 = xor i32 %xor502, %shl511
  %Y513 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [4 x i32], [4 x i32]* %Y513, i64 0, i64 3
  %178 = load i32, i32* %arrayidx514, align 4
  %shr515 = lshr i32 %178, 24
  %and516 = and i32 %shr515, 255
  %conv517 = trunc i32 %and516 to i8
  %idxprom518 = zext i8 %conv517 to i64
  %arrayidx519 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom518
  %179 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %179 to i32
  %shl521 = shl i32 %conv520, 24
  %xor522 = xor i32 %xor512, %shl521
  %X523 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [4 x i32], [4 x i32]* %X523, i64 0, i64 0
  store i32 %xor522, i32* %arrayidx524, align 4
  %180 = load i32*, i32** %RK, align 8
  %incdec.ptr525 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr525, i32** %RK, align 8
  %181 = load i32, i32* %180, align 4
  %Y526 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [4 x i32], [4 x i32]* %Y526, i64 0, i64 1
  %182 = load i32, i32* %arrayidx527, align 4
  %and528 = and i32 %182, 255
  %conv529 = trunc i32 %and528 to i8
  %idxprom530 = zext i8 %conv529 to i64
  %arrayidx531 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom530
  %183 = load i8, i8* %arrayidx531, align 1
  %conv532 = zext i8 %183 to i32
  %xor533 = xor i32 %181, %conv532
  %Y534 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [4 x i32], [4 x i32]* %Y534, i64 0, i64 2
  %184 = load i32, i32* %arrayidx535, align 4
  %shr536 = lshr i32 %184, 8
  %and537 = and i32 %shr536, 255
  %conv538 = trunc i32 %and537 to i8
  %idxprom539 = zext i8 %conv538 to i64
  %arrayidx540 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom539
  %185 = load i8, i8* %arrayidx540, align 1
  %conv541 = zext i8 %185 to i32
  %shl542 = shl i32 %conv541, 8
  %xor543 = xor i32 %xor533, %shl542
  %Y544 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [4 x i32], [4 x i32]* %Y544, i64 0, i64 3
  %186 = load i32, i32* %arrayidx545, align 4
  %shr546 = lshr i32 %186, 16
  %and547 = and i32 %shr546, 255
  %conv548 = trunc i32 %and547 to i8
  %idxprom549 = zext i8 %conv548 to i64
  %arrayidx550 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom549
  %187 = load i8, i8* %arrayidx550, align 1
  %conv551 = zext i8 %187 to i32
  %shl552 = shl i32 %conv551, 16
  %xor553 = xor i32 %xor543, %shl552
  %Y554 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [4 x i32], [4 x i32]* %Y554, i64 0, i64 0
  %188 = load i32, i32* %arrayidx555, align 4
  %shr556 = lshr i32 %188, 24
  %and557 = and i32 %shr556, 255
  %conv558 = trunc i32 %and557 to i8
  %idxprom559 = zext i8 %conv558 to i64
  %arrayidx560 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom559
  %189 = load i8, i8* %arrayidx560, align 1
  %conv561 = zext i8 %189 to i32
  %shl562 = shl i32 %conv561, 24
  %xor563 = xor i32 %xor553, %shl562
  %X564 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [4 x i32], [4 x i32]* %X564, i64 0, i64 1
  store i32 %xor563, i32* %arrayidx565, align 4
  %190 = load i32*, i32** %RK, align 8
  %incdec.ptr566 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %incdec.ptr566, i32** %RK, align 8
  %191 = load i32, i32* %190, align 4
  %Y567 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [4 x i32], [4 x i32]* %Y567, i64 0, i64 2
  %192 = load i32, i32* %arrayidx568, align 4
  %and569 = and i32 %192, 255
  %conv570 = trunc i32 %and569 to i8
  %idxprom571 = zext i8 %conv570 to i64
  %arrayidx572 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom571
  %193 = load i8, i8* %arrayidx572, align 1
  %conv573 = zext i8 %193 to i32
  %xor574 = xor i32 %191, %conv573
  %Y575 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx576 = getelementptr inbounds [4 x i32], [4 x i32]* %Y575, i64 0, i64 3
  %194 = load i32, i32* %arrayidx576, align 4
  %shr577 = lshr i32 %194, 8
  %and578 = and i32 %shr577, 255
  %conv579 = trunc i32 %and578 to i8
  %idxprom580 = zext i8 %conv579 to i64
  %arrayidx581 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom580
  %195 = load i8, i8* %arrayidx581, align 1
  %conv582 = zext i8 %195 to i32
  %shl583 = shl i32 %conv582, 8
  %xor584 = xor i32 %xor574, %shl583
  %Y585 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [4 x i32], [4 x i32]* %Y585, i64 0, i64 0
  %196 = load i32, i32* %arrayidx586, align 4
  %shr587 = lshr i32 %196, 16
  %and588 = and i32 %shr587, 255
  %conv589 = trunc i32 %and588 to i8
  %idxprom590 = zext i8 %conv589 to i64
  %arrayidx591 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom590
  %197 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %197 to i32
  %shl593 = shl i32 %conv592, 16
  %xor594 = xor i32 %xor584, %shl593
  %Y595 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx596 = getelementptr inbounds [4 x i32], [4 x i32]* %Y595, i64 0, i64 1
  %198 = load i32, i32* %arrayidx596, align 4
  %shr597 = lshr i32 %198, 24
  %and598 = and i32 %shr597, 255
  %conv599 = trunc i32 %and598 to i8
  %idxprom600 = zext i8 %conv599 to i64
  %arrayidx601 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom600
  %199 = load i8, i8* %arrayidx601, align 1
  %conv602 = zext i8 %199 to i32
  %shl603 = shl i32 %conv602, 24
  %xor604 = xor i32 %xor594, %shl603
  %X605 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [4 x i32], [4 x i32]* %X605, i64 0, i64 2
  store i32 %xor604, i32* %arrayidx606, align 4
  %200 = load i32*, i32** %RK, align 8
  %incdec.ptr607 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %incdec.ptr607, i32** %RK, align 8
  %201 = load i32, i32* %200, align 4
  %Y608 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [4 x i32], [4 x i32]* %Y608, i64 0, i64 3
  %202 = load i32, i32* %arrayidx609, align 4
  %and610 = and i32 %202, 255
  %conv611 = trunc i32 %and610 to i8
  %idxprom612 = zext i8 %conv611 to i64
  %arrayidx613 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom612
  %203 = load i8, i8* %arrayidx613, align 1
  %conv614 = zext i8 %203 to i32
  %xor615 = xor i32 %201, %conv614
  %Y616 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx617 = getelementptr inbounds [4 x i32], [4 x i32]* %Y616, i64 0, i64 0
  %204 = load i32, i32* %arrayidx617, align 4
  %shr618 = lshr i32 %204, 8
  %and619 = and i32 %shr618, 255
  %conv620 = trunc i32 %and619 to i8
  %idxprom621 = zext i8 %conv620 to i64
  %arrayidx622 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom621
  %205 = load i8, i8* %arrayidx622, align 1
  %conv623 = zext i8 %205 to i32
  %shl624 = shl i32 %conv623, 8
  %xor625 = xor i32 %xor615, %shl624
  %Y626 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [4 x i32], [4 x i32]* %Y626, i64 0, i64 1
  %206 = load i32, i32* %arrayidx627, align 4
  %shr628 = lshr i32 %206, 16
  %and629 = and i32 %shr628, 255
  %conv630 = trunc i32 %and629 to i8
  %idxprom631 = zext i8 %conv630 to i64
  %arrayidx632 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom631
  %207 = load i8, i8* %arrayidx632, align 1
  %conv633 = zext i8 %207 to i32
  %shl634 = shl i32 %conv633, 16
  %xor635 = xor i32 %xor625, %shl634
  %Y636 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 1
  %arrayidx637 = getelementptr inbounds [4 x i32], [4 x i32]* %Y636, i64 0, i64 2
  %208 = load i32, i32* %arrayidx637, align 4
  %shr638 = lshr i32 %208, 24
  %and639 = and i32 %shr638, 255
  %conv640 = trunc i32 %and639 to i8
  %idxprom641 = zext i8 %conv640 to i64
  %arrayidx642 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom641
  %209 = load i8, i8* %arrayidx642, align 1
  %conv643 = zext i8 %209 to i32
  %shl644 = shl i32 %conv643, 24
  %xor645 = xor i32 %xor635, %shl644
  %X646 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [4 x i32], [4 x i32]* %X646, i64 0, i64 3
  store i32 %xor645, i32* %arrayidx647, align 4
  %X648 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [4 x i32], [4 x i32]* %X648, i64 0, i64 0
  %210 = load i32, i32* %arrayidx649, align 4
  %and650 = and i32 %210, 255
  %conv651 = trunc i32 %and650 to i8
  %211 = load i8*, i8** %output.addr, align 8
  %arrayidx652 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %conv651, i8* %arrayidx652, align 1
  %X653 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [4 x i32], [4 x i32]* %X653, i64 0, i64 0
  %212 = load i32, i32* %arrayidx654, align 4
  %shr655 = lshr i32 %212, 8
  %and656 = and i32 %shr655, 255
  %conv657 = trunc i32 %and656 to i8
  %213 = load i8*, i8** %output.addr, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %213, i64 1
  store i8 %conv657, i8* %arrayidx658, align 1
  %X659 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx660 = getelementptr inbounds [4 x i32], [4 x i32]* %X659, i64 0, i64 0
  %214 = load i32, i32* %arrayidx660, align 4
  %shr661 = lshr i32 %214, 16
  %and662 = and i32 %shr661, 255
  %conv663 = trunc i32 %and662 to i8
  %215 = load i8*, i8** %output.addr, align 8
  %arrayidx664 = getelementptr inbounds i8, i8* %215, i64 2
  store i8 %conv663, i8* %arrayidx664, align 1
  %X665 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [4 x i32], [4 x i32]* %X665, i64 0, i64 0
  %216 = load i32, i32* %arrayidx666, align 4
  %shr667 = lshr i32 %216, 24
  %and668 = and i32 %shr667, 255
  %conv669 = trunc i32 %and668 to i8
  %217 = load i8*, i8** %output.addr, align 8
  %arrayidx670 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 %conv669, i8* %arrayidx670, align 1
  %X671 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx672 = getelementptr inbounds [4 x i32], [4 x i32]* %X671, i64 0, i64 1
  %218 = load i32, i32* %arrayidx672, align 4
  %and673 = and i32 %218, 255
  %conv674 = trunc i32 %and673 to i8
  %219 = load i8*, i8** %output.addr, align 8
  %arrayidx675 = getelementptr inbounds i8, i8* %219, i64 4
  store i8 %conv674, i8* %arrayidx675, align 1
  %X676 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [4 x i32], [4 x i32]* %X676, i64 0, i64 1
  %220 = load i32, i32* %arrayidx677, align 4
  %shr678 = lshr i32 %220, 8
  %and679 = and i32 %shr678, 255
  %conv680 = trunc i32 %and679 to i8
  %221 = load i8*, i8** %output.addr, align 8
  %arrayidx681 = getelementptr inbounds i8, i8* %221, i64 5
  store i8 %conv680, i8* %arrayidx681, align 1
  %X682 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [4 x i32], [4 x i32]* %X682, i64 0, i64 1
  %222 = load i32, i32* %arrayidx683, align 4
  %shr684 = lshr i32 %222, 16
  %and685 = and i32 %shr684, 255
  %conv686 = trunc i32 %and685 to i8
  %223 = load i8*, i8** %output.addr, align 8
  %arrayidx687 = getelementptr inbounds i8, i8* %223, i64 6
  store i8 %conv686, i8* %arrayidx687, align 1
  %X688 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [4 x i32], [4 x i32]* %X688, i64 0, i64 1
  %224 = load i32, i32* %arrayidx689, align 4
  %shr690 = lshr i32 %224, 24
  %and691 = and i32 %shr690, 255
  %conv692 = trunc i32 %and691 to i8
  %225 = load i8*, i8** %output.addr, align 8
  %arrayidx693 = getelementptr inbounds i8, i8* %225, i64 7
  store i8 %conv692, i8* %arrayidx693, align 1
  %X694 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [4 x i32], [4 x i32]* %X694, i64 0, i64 2
  %226 = load i32, i32* %arrayidx695, align 4
  %and696 = and i32 %226, 255
  %conv697 = trunc i32 %and696 to i8
  %227 = load i8*, i8** %output.addr, align 8
  %arrayidx698 = getelementptr inbounds i8, i8* %227, i64 8
  store i8 %conv697, i8* %arrayidx698, align 1
  %X699 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx700 = getelementptr inbounds [4 x i32], [4 x i32]* %X699, i64 0, i64 2
  %228 = load i32, i32* %arrayidx700, align 4
  %shr701 = lshr i32 %228, 8
  %and702 = and i32 %shr701, 255
  %conv703 = trunc i32 %and702 to i8
  %229 = load i8*, i8** %output.addr, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %229, i64 9
  store i8 %conv703, i8* %arrayidx704, align 1
  %X705 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [4 x i32], [4 x i32]* %X705, i64 0, i64 2
  %230 = load i32, i32* %arrayidx706, align 4
  %shr707 = lshr i32 %230, 16
  %and708 = and i32 %shr707, 255
  %conv709 = trunc i32 %and708 to i8
  %231 = load i8*, i8** %output.addr, align 8
  %arrayidx710 = getelementptr inbounds i8, i8* %231, i64 10
  store i8 %conv709, i8* %arrayidx710, align 1
  %X711 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [4 x i32], [4 x i32]* %X711, i64 0, i64 2
  %232 = load i32, i32* %arrayidx712, align 4
  %shr713 = lshr i32 %232, 24
  %and714 = and i32 %shr713, 255
  %conv715 = trunc i32 %and714 to i8
  %233 = load i8*, i8** %output.addr, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %233, i64 11
  store i8 %conv715, i8* %arrayidx716, align 1
  %X717 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [4 x i32], [4 x i32]* %X717, i64 0, i64 3
  %234 = load i32, i32* %arrayidx718, align 4
  %and719 = and i32 %234, 255
  %conv720 = trunc i32 %and719 to i8
  %235 = load i8*, i8** %output.addr, align 8
  %arrayidx721 = getelementptr inbounds i8, i8* %235, i64 12
  store i8 %conv720, i8* %arrayidx721, align 1
  %X722 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [4 x i32], [4 x i32]* %X722, i64 0, i64 3
  %236 = load i32, i32* %arrayidx723, align 4
  %shr724 = lshr i32 %236, 8
  %and725 = and i32 %shr724, 255
  %conv726 = trunc i32 %and725 to i8
  %237 = load i8*, i8** %output.addr, align 8
  %arrayidx727 = getelementptr inbounds i8, i8* %237, i64 13
  store i8 %conv726, i8* %arrayidx727, align 1
  %X728 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx729 = getelementptr inbounds [4 x i32], [4 x i32]* %X728, i64 0, i64 3
  %238 = load i32, i32* %arrayidx729, align 4
  %shr730 = lshr i32 %238, 16
  %and731 = and i32 %shr730, 255
  %conv732 = trunc i32 %and731 to i8
  %239 = load i8*, i8** %output.addr, align 8
  %arrayidx733 = getelementptr inbounds i8, i8* %239, i64 14
  store i8 %conv732, i8* %arrayidx733, align 1
  %X734 = getelementptr inbounds %struct.anon, %struct.anon* %t, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [4 x i32], [4 x i32]* %X734, i64 0, i64 3
  %240 = load i32, i32* %arrayidx735, align 4
  %shr736 = lshr i32 %240, 24
  %and737 = and i32 %shr736, 255
  %conv738 = trunc i32 %and737 to i8
  %241 = load i8*, i8** %output.addr, align 8
  %arrayidx739 = getelementptr inbounds i8, i8* %241, i64 15
  store i8 %conv738, i8* %arrayidx739, align 1
  %242 = bitcast %struct.anon* %t to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %242, i64 noundef 32) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_aes_decrypt(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %RK = alloca i32*, align 8
  %t = alloca %struct.anon.0, align 4
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %0, i32 0, i32 1
  %1 = load i32*, i32** %rk, align 8
  store i32* %1, i32** %RK, align 8
  %2 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %X = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  store i32 %or10, i32* %arrayidx11, align 4
  %10 = load i32*, i32** %RK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %RK, align 8
  %11 = load i32, i32* %10, align 4
  %X12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %X12, i64 0, i64 0
  %12 = load i32, i32* %arrayidx13, align 4
  %xor = xor i32 %12, %11
  store i32 %xor, i32* %arrayidx13, align 4
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i8*, i8** %input.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %conv15, %shl18
  %17 = load i8*, i8** %input.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %shl22 = shl i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %19 = load i8*, i8** %input.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %shl26 = shl i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  %X28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %X28, i64 0, i64 1
  store i32 %or27, i32* %arrayidx29, align 4
  %21 = load i32*, i32** %RK, align 8
  %incdec.ptr30 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr30, i32** %RK, align 8
  %22 = load i32, i32* %21, align 4
  %X31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %X31, i64 0, i64 1
  %23 = load i32, i32* %arrayidx32, align 4
  %xor33 = xor i32 %23, %22
  store i32 %xor33, i32* %arrayidx32, align 4
  %24 = load i8*, i8** %input.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %24, i64 8
  %25 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %26 = load i8*, i8** %input.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %26, i64 9
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %shl38 = shl i32 %conv37, 8
  %or39 = or i32 %conv35, %shl38
  %28 = load i8*, i8** %input.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 10
  %29 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %shl42 = shl i32 %conv41, 16
  %or43 = or i32 %or39, %shl42
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 11
  %31 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %31 to i32
  %shl46 = shl i32 %conv45, 24
  %or47 = or i32 %or43, %shl46
  %X48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %X48, i64 0, i64 2
  store i32 %or47, i32* %arrayidx49, align 4
  %32 = load i32*, i32** %RK, align 8
  %incdec.ptr50 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr50, i32** %RK, align 8
  %33 = load i32, i32* %32, align 4
  %X51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %X51, i64 0, i64 2
  %34 = load i32, i32* %arrayidx52, align 4
  %xor53 = xor i32 %34, %33
  store i32 %xor53, i32* %arrayidx52, align 4
  %35 = load i8*, i8** %input.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %35, i64 12
  %36 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %36 to i32
  %37 = load i8*, i8** %input.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %37, i64 13
  %38 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %38 to i32
  %shl58 = shl i32 %conv57, 8
  %or59 = or i32 %conv55, %shl58
  %39 = load i8*, i8** %input.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %39, i64 14
  %40 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %40 to i32
  %shl62 = shl i32 %conv61, 16
  %or63 = or i32 %or59, %shl62
  %41 = load i8*, i8** %input.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %41, i64 15
  %42 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %42 to i32
  %shl66 = shl i32 %conv65, 24
  %or67 = or i32 %or63, %shl66
  %X68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %X68, i64 0, i64 3
  store i32 %or67, i32* %arrayidx69, align 4
  %43 = load i32*, i32** %RK, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr70, i32** %RK, align 8
  %44 = load i32, i32* %43, align 4
  %X71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %X71, i64 0, i64 3
  %45 = load i32, i32* %arrayidx72, align 4
  %xor73 = xor i32 %45, %44
  store i32 %xor73, i32* %arrayidx72, align 4
  %46 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %46, i32 0, i32 0
  %47 = load i32, i32* %nr, align 8
  %shr = ashr i32 %47, 1
  %sub = sub nsw i32 %shr, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %48 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %48, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %49 = load i32*, i32** %RK, align 8
  %incdec.ptr75 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr75, i32** %RK, align 8
  %50 = load i32, i32* %49, align 4
  %X76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %X76, i64 0, i64 0
  %51 = load i32, i32* %arrayidx77, align 4
  %and = and i32 %51, 255
  %conv78 = trunc i32 %and to i8
  %idxprom = zext i8 %conv78 to i64
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom
  %52 = load i32, i32* %arrayidx79, align 4
  %xor80 = xor i32 %50, %52
  %X81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %X81, i64 0, i64 3
  %53 = load i32, i32* %arrayidx82, align 4
  %shr83 = lshr i32 %53, 8
  %and84 = and i32 %shr83, 255
  %conv85 = trunc i32 %and84 to i8
  %idxprom86 = zext i8 %conv85 to i64
  %arrayidx87 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom86
  %54 = load i32, i32* %arrayidx87, align 4
  %xor88 = xor i32 %xor80, %54
  %X89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %X89, i64 0, i64 2
  %55 = load i32, i32* %arrayidx90, align 4
  %shr91 = lshr i32 %55, 16
  %and92 = and i32 %shr91, 255
  %conv93 = trunc i32 %and92 to i8
  %idxprom94 = zext i8 %conv93 to i64
  %arrayidx95 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom94
  %56 = load i32, i32* %arrayidx95, align 4
  %xor96 = xor i32 %xor88, %56
  %X97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %X97, i64 0, i64 1
  %57 = load i32, i32* %arrayidx98, align 4
  %shr99 = lshr i32 %57, 24
  %and100 = and i32 %shr99, 255
  %conv101 = trunc i32 %and100 to i8
  %idxprom102 = zext i8 %conv101 to i64
  %arrayidx103 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom102
  %58 = load i32, i32* %arrayidx103, align 4
  %xor104 = xor i32 %xor96, %58
  %Y = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %Y, i64 0, i64 0
  store i32 %xor104, i32* %arrayidx105, align 4
  %59 = load i32*, i32** %RK, align 8
  %incdec.ptr106 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %incdec.ptr106, i32** %RK, align 8
  %60 = load i32, i32* %59, align 4
  %X107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %X107, i64 0, i64 1
  %61 = load i32, i32* %arrayidx108, align 4
  %and109 = and i32 %61, 255
  %conv110 = trunc i32 %and109 to i8
  %idxprom111 = zext i8 %conv110 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom111
  %62 = load i32, i32* %arrayidx112, align 4
  %xor113 = xor i32 %60, %62
  %X114 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %X114, i64 0, i64 0
  %63 = load i32, i32* %arrayidx115, align 4
  %shr116 = lshr i32 %63, 8
  %and117 = and i32 %shr116, 255
  %conv118 = trunc i32 %and117 to i8
  %idxprom119 = zext i8 %conv118 to i64
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom119
  %64 = load i32, i32* %arrayidx120, align 4
  %xor121 = xor i32 %xor113, %64
  %X122 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* %X122, i64 0, i64 3
  %65 = load i32, i32* %arrayidx123, align 4
  %shr124 = lshr i32 %65, 16
  %and125 = and i32 %shr124, 255
  %conv126 = trunc i32 %and125 to i8
  %idxprom127 = zext i8 %conv126 to i64
  %arrayidx128 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom127
  %66 = load i32, i32* %arrayidx128, align 4
  %xor129 = xor i32 %xor121, %66
  %X130 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %X130, i64 0, i64 2
  %67 = load i32, i32* %arrayidx131, align 4
  %shr132 = lshr i32 %67, 24
  %and133 = and i32 %shr132, 255
  %conv134 = trunc i32 %and133 to i8
  %idxprom135 = zext i8 %conv134 to i64
  %arrayidx136 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom135
  %68 = load i32, i32* %arrayidx136, align 4
  %xor137 = xor i32 %xor129, %68
  %Y138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %Y138, i64 0, i64 1
  store i32 %xor137, i32* %arrayidx139, align 4
  %69 = load i32*, i32** %RK, align 8
  %incdec.ptr140 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %incdec.ptr140, i32** %RK, align 8
  %70 = load i32, i32* %69, align 4
  %X141 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %X141, i64 0, i64 2
  %71 = load i32, i32* %arrayidx142, align 4
  %and143 = and i32 %71, 255
  %conv144 = trunc i32 %and143 to i8
  %idxprom145 = zext i8 %conv144 to i64
  %arrayidx146 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom145
  %72 = load i32, i32* %arrayidx146, align 4
  %xor147 = xor i32 %70, %72
  %X148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %X148, i64 0, i64 1
  %73 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %73, 8
  %and151 = and i32 %shr150, 255
  %conv152 = trunc i32 %and151 to i8
  %idxprom153 = zext i8 %conv152 to i64
  %arrayidx154 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom153
  %74 = load i32, i32* %arrayidx154, align 4
  %xor155 = xor i32 %xor147, %74
  %X156 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %X156, i64 0, i64 0
  %75 = load i32, i32* %arrayidx157, align 4
  %shr158 = lshr i32 %75, 16
  %and159 = and i32 %shr158, 255
  %conv160 = trunc i32 %and159 to i8
  %idxprom161 = zext i8 %conv160 to i64
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom161
  %76 = load i32, i32* %arrayidx162, align 4
  %xor163 = xor i32 %xor155, %76
  %X164 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [4 x i32], [4 x i32]* %X164, i64 0, i64 3
  %77 = load i32, i32* %arrayidx165, align 4
  %shr166 = lshr i32 %77, 24
  %and167 = and i32 %shr166, 255
  %conv168 = trunc i32 %and167 to i8
  %idxprom169 = zext i8 %conv168 to i64
  %arrayidx170 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom169
  %78 = load i32, i32* %arrayidx170, align 4
  %xor171 = xor i32 %xor163, %78
  %Y172 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %Y172, i64 0, i64 2
  store i32 %xor171, i32* %arrayidx173, align 4
  %79 = load i32*, i32** %RK, align 8
  %incdec.ptr174 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr174, i32** %RK, align 8
  %80 = load i32, i32* %79, align 4
  %X175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %X175, i64 0, i64 3
  %81 = load i32, i32* %arrayidx176, align 4
  %and177 = and i32 %81, 255
  %conv178 = trunc i32 %and177 to i8
  %idxprom179 = zext i8 %conv178 to i64
  %arrayidx180 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom179
  %82 = load i32, i32* %arrayidx180, align 4
  %xor181 = xor i32 %80, %82
  %X182 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %X182, i64 0, i64 2
  %83 = load i32, i32* %arrayidx183, align 4
  %shr184 = lshr i32 %83, 8
  %and185 = and i32 %shr184, 255
  %conv186 = trunc i32 %and185 to i8
  %idxprom187 = zext i8 %conv186 to i64
  %arrayidx188 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom187
  %84 = load i32, i32* %arrayidx188, align 4
  %xor189 = xor i32 %xor181, %84
  %X190 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [4 x i32], [4 x i32]* %X190, i64 0, i64 1
  %85 = load i32, i32* %arrayidx191, align 4
  %shr192 = lshr i32 %85, 16
  %and193 = and i32 %shr192, 255
  %conv194 = trunc i32 %and193 to i8
  %idxprom195 = zext i8 %conv194 to i64
  %arrayidx196 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom195
  %86 = load i32, i32* %arrayidx196, align 4
  %xor197 = xor i32 %xor189, %86
  %X198 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %X198, i64 0, i64 0
  %87 = load i32, i32* %arrayidx199, align 4
  %shr200 = lshr i32 %87, 24
  %and201 = and i32 %shr200, 255
  %conv202 = trunc i32 %and201 to i8
  %idxprom203 = zext i8 %conv202 to i64
  %arrayidx204 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom203
  %88 = load i32, i32* %arrayidx204, align 4
  %xor205 = xor i32 %xor197, %88
  %Y206 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [4 x i32], [4 x i32]* %Y206, i64 0, i64 3
  store i32 %xor205, i32* %arrayidx207, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body208

do.body208:                                       ; preds = %do.end
  %89 = load i32*, i32** %RK, align 8
  %incdec.ptr209 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr209, i32** %RK, align 8
  %90 = load i32, i32* %89, align 4
  %Y210 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [4 x i32], [4 x i32]* %Y210, i64 0, i64 0
  %91 = load i32, i32* %arrayidx211, align 4
  %and212 = and i32 %91, 255
  %conv213 = trunc i32 %and212 to i8
  %idxprom214 = zext i8 %conv213 to i64
  %arrayidx215 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom214
  %92 = load i32, i32* %arrayidx215, align 4
  %xor216 = xor i32 %90, %92
  %Y217 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %Y217, i64 0, i64 3
  %93 = load i32, i32* %arrayidx218, align 4
  %shr219 = lshr i32 %93, 8
  %and220 = and i32 %shr219, 255
  %conv221 = trunc i32 %and220 to i8
  %idxprom222 = zext i8 %conv221 to i64
  %arrayidx223 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom222
  %94 = load i32, i32* %arrayidx223, align 4
  %xor224 = xor i32 %xor216, %94
  %Y225 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %Y225, i64 0, i64 2
  %95 = load i32, i32* %arrayidx226, align 4
  %shr227 = lshr i32 %95, 16
  %and228 = and i32 %shr227, 255
  %conv229 = trunc i32 %and228 to i8
  %idxprom230 = zext i8 %conv229 to i64
  %arrayidx231 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom230
  %96 = load i32, i32* %arrayidx231, align 4
  %xor232 = xor i32 %xor224, %96
  %Y233 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [4 x i32], [4 x i32]* %Y233, i64 0, i64 1
  %97 = load i32, i32* %arrayidx234, align 4
  %shr235 = lshr i32 %97, 24
  %and236 = and i32 %shr235, 255
  %conv237 = trunc i32 %and236 to i8
  %idxprom238 = zext i8 %conv237 to i64
  %arrayidx239 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom238
  %98 = load i32, i32* %arrayidx239, align 4
  %xor240 = xor i32 %xor232, %98
  %X241 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [4 x i32], [4 x i32]* %X241, i64 0, i64 0
  store i32 %xor240, i32* %arrayidx242, align 4
  %99 = load i32*, i32** %RK, align 8
  %incdec.ptr243 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %incdec.ptr243, i32** %RK, align 8
  %100 = load i32, i32* %99, align 4
  %Y244 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* %Y244, i64 0, i64 1
  %101 = load i32, i32* %arrayidx245, align 4
  %and246 = and i32 %101, 255
  %conv247 = trunc i32 %and246 to i8
  %idxprom248 = zext i8 %conv247 to i64
  %arrayidx249 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom248
  %102 = load i32, i32* %arrayidx249, align 4
  %xor250 = xor i32 %100, %102
  %Y251 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [4 x i32], [4 x i32]* %Y251, i64 0, i64 0
  %103 = load i32, i32* %arrayidx252, align 4
  %shr253 = lshr i32 %103, 8
  %and254 = and i32 %shr253, 255
  %conv255 = trunc i32 %and254 to i8
  %idxprom256 = zext i8 %conv255 to i64
  %arrayidx257 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom256
  %104 = load i32, i32* %arrayidx257, align 4
  %xor258 = xor i32 %xor250, %104
  %Y259 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [4 x i32], [4 x i32]* %Y259, i64 0, i64 3
  %105 = load i32, i32* %arrayidx260, align 4
  %shr261 = lshr i32 %105, 16
  %and262 = and i32 %shr261, 255
  %conv263 = trunc i32 %and262 to i8
  %idxprom264 = zext i8 %conv263 to i64
  %arrayidx265 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom264
  %106 = load i32, i32* %arrayidx265, align 4
  %xor266 = xor i32 %xor258, %106
  %Y267 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [4 x i32], [4 x i32]* %Y267, i64 0, i64 2
  %107 = load i32, i32* %arrayidx268, align 4
  %shr269 = lshr i32 %107, 24
  %and270 = and i32 %shr269, 255
  %conv271 = trunc i32 %and270 to i8
  %idxprom272 = zext i8 %conv271 to i64
  %arrayidx273 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom272
  %108 = load i32, i32* %arrayidx273, align 4
  %xor274 = xor i32 %xor266, %108
  %X275 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [4 x i32], [4 x i32]* %X275, i64 0, i64 1
  store i32 %xor274, i32* %arrayidx276, align 4
  %109 = load i32*, i32** %RK, align 8
  %incdec.ptr277 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %incdec.ptr277, i32** %RK, align 8
  %110 = load i32, i32* %109, align 4
  %Y278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* %Y278, i64 0, i64 2
  %111 = load i32, i32* %arrayidx279, align 4
  %and280 = and i32 %111, 255
  %conv281 = trunc i32 %and280 to i8
  %idxprom282 = zext i8 %conv281 to i64
  %arrayidx283 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom282
  %112 = load i32, i32* %arrayidx283, align 4
  %xor284 = xor i32 %110, %112
  %Y285 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [4 x i32], [4 x i32]* %Y285, i64 0, i64 1
  %113 = load i32, i32* %arrayidx286, align 4
  %shr287 = lshr i32 %113, 8
  %and288 = and i32 %shr287, 255
  %conv289 = trunc i32 %and288 to i8
  %idxprom290 = zext i8 %conv289 to i64
  %arrayidx291 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom290
  %114 = load i32, i32* %arrayidx291, align 4
  %xor292 = xor i32 %xor284, %114
  %Y293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [4 x i32], [4 x i32]* %Y293, i64 0, i64 0
  %115 = load i32, i32* %arrayidx294, align 4
  %shr295 = lshr i32 %115, 16
  %and296 = and i32 %shr295, 255
  %conv297 = trunc i32 %and296 to i8
  %idxprom298 = zext i8 %conv297 to i64
  %arrayidx299 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom298
  %116 = load i32, i32* %arrayidx299, align 4
  %xor300 = xor i32 %xor292, %116
  %Y301 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [4 x i32], [4 x i32]* %Y301, i64 0, i64 3
  %117 = load i32, i32* %arrayidx302, align 4
  %shr303 = lshr i32 %117, 24
  %and304 = and i32 %shr303, 255
  %conv305 = trunc i32 %and304 to i8
  %idxprom306 = zext i8 %conv305 to i64
  %arrayidx307 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom306
  %118 = load i32, i32* %arrayidx307, align 4
  %xor308 = xor i32 %xor300, %118
  %X309 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [4 x i32], [4 x i32]* %X309, i64 0, i64 2
  store i32 %xor308, i32* %arrayidx310, align 4
  %119 = load i32*, i32** %RK, align 8
  %incdec.ptr311 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr311, i32** %RK, align 8
  %120 = load i32, i32* %119, align 4
  %Y312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [4 x i32], [4 x i32]* %Y312, i64 0, i64 3
  %121 = load i32, i32* %arrayidx313, align 4
  %and314 = and i32 %121, 255
  %conv315 = trunc i32 %and314 to i8
  %idxprom316 = zext i8 %conv315 to i64
  %arrayidx317 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom316
  %122 = load i32, i32* %arrayidx317, align 4
  %xor318 = xor i32 %120, %122
  %Y319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [4 x i32], [4 x i32]* %Y319, i64 0, i64 2
  %123 = load i32, i32* %arrayidx320, align 4
  %shr321 = lshr i32 %123, 8
  %and322 = and i32 %shr321, 255
  %conv323 = trunc i32 %and322 to i8
  %idxprom324 = zext i8 %conv323 to i64
  %arrayidx325 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom324
  %124 = load i32, i32* %arrayidx325, align 4
  %xor326 = xor i32 %xor318, %124
  %Y327 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [4 x i32], [4 x i32]* %Y327, i64 0, i64 1
  %125 = load i32, i32* %arrayidx328, align 4
  %shr329 = lshr i32 %125, 16
  %and330 = and i32 %shr329, 255
  %conv331 = trunc i32 %and330 to i8
  %idxprom332 = zext i8 %conv331 to i64
  %arrayidx333 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom332
  %126 = load i32, i32* %arrayidx333, align 4
  %xor334 = xor i32 %xor326, %126
  %Y335 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [4 x i32], [4 x i32]* %Y335, i64 0, i64 0
  %127 = load i32, i32* %arrayidx336, align 4
  %shr337 = lshr i32 %127, 24
  %and338 = and i32 %shr337, 255
  %conv339 = trunc i32 %and338 to i8
  %idxprom340 = zext i8 %conv339 to i64
  %arrayidx341 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom340
  %128 = load i32, i32* %arrayidx341, align 4
  %xor342 = xor i32 %xor334, %128
  %X343 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [4 x i32], [4 x i32]* %X343, i64 0, i64 3
  store i32 %xor342, i32* %arrayidx344, align 4
  br label %do.end345

do.end345:                                        ; preds = %do.body208
  br label %for.inc

for.inc:                                          ; preds = %do.end345
  %129 = load i32, i32* %i, align 4
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %do.body346

do.body346:                                       ; preds = %for.end
  %130 = load i32*, i32** %RK, align 8
  %incdec.ptr347 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %incdec.ptr347, i32** %RK, align 8
  %131 = load i32, i32* %130, align 4
  %X348 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [4 x i32], [4 x i32]* %X348, i64 0, i64 0
  %132 = load i32, i32* %arrayidx349, align 4
  %and350 = and i32 %132, 255
  %conv351 = trunc i32 %and350 to i8
  %idxprom352 = zext i8 %conv351 to i64
  %arrayidx353 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom352
  %133 = load i32, i32* %arrayidx353, align 4
  %xor354 = xor i32 %131, %133
  %X355 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [4 x i32], [4 x i32]* %X355, i64 0, i64 3
  %134 = load i32, i32* %arrayidx356, align 4
  %shr357 = lshr i32 %134, 8
  %and358 = and i32 %shr357, 255
  %conv359 = trunc i32 %and358 to i8
  %idxprom360 = zext i8 %conv359 to i64
  %arrayidx361 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom360
  %135 = load i32, i32* %arrayidx361, align 4
  %xor362 = xor i32 %xor354, %135
  %X363 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [4 x i32], [4 x i32]* %X363, i64 0, i64 2
  %136 = load i32, i32* %arrayidx364, align 4
  %shr365 = lshr i32 %136, 16
  %and366 = and i32 %shr365, 255
  %conv367 = trunc i32 %and366 to i8
  %idxprom368 = zext i8 %conv367 to i64
  %arrayidx369 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom368
  %137 = load i32, i32* %arrayidx369, align 4
  %xor370 = xor i32 %xor362, %137
  %X371 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [4 x i32], [4 x i32]* %X371, i64 0, i64 1
  %138 = load i32, i32* %arrayidx372, align 4
  %shr373 = lshr i32 %138, 24
  %and374 = and i32 %shr373, 255
  %conv375 = trunc i32 %and374 to i8
  %idxprom376 = zext i8 %conv375 to i64
  %arrayidx377 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom376
  %139 = load i32, i32* %arrayidx377, align 4
  %xor378 = xor i32 %xor370, %139
  %Y379 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [4 x i32], [4 x i32]* %Y379, i64 0, i64 0
  store i32 %xor378, i32* %arrayidx380, align 4
  %140 = load i32*, i32** %RK, align 8
  %incdec.ptr381 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %incdec.ptr381, i32** %RK, align 8
  %141 = load i32, i32* %140, align 4
  %X382 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [4 x i32], [4 x i32]* %X382, i64 0, i64 1
  %142 = load i32, i32* %arrayidx383, align 4
  %and384 = and i32 %142, 255
  %conv385 = trunc i32 %and384 to i8
  %idxprom386 = zext i8 %conv385 to i64
  %arrayidx387 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom386
  %143 = load i32, i32* %arrayidx387, align 4
  %xor388 = xor i32 %141, %143
  %X389 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [4 x i32], [4 x i32]* %X389, i64 0, i64 0
  %144 = load i32, i32* %arrayidx390, align 4
  %shr391 = lshr i32 %144, 8
  %and392 = and i32 %shr391, 255
  %conv393 = trunc i32 %and392 to i8
  %idxprom394 = zext i8 %conv393 to i64
  %arrayidx395 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom394
  %145 = load i32, i32* %arrayidx395, align 4
  %xor396 = xor i32 %xor388, %145
  %X397 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %X397, i64 0, i64 3
  %146 = load i32, i32* %arrayidx398, align 4
  %shr399 = lshr i32 %146, 16
  %and400 = and i32 %shr399, 255
  %conv401 = trunc i32 %and400 to i8
  %idxprom402 = zext i8 %conv401 to i64
  %arrayidx403 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom402
  %147 = load i32, i32* %arrayidx403, align 4
  %xor404 = xor i32 %xor396, %147
  %X405 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [4 x i32], [4 x i32]* %X405, i64 0, i64 2
  %148 = load i32, i32* %arrayidx406, align 4
  %shr407 = lshr i32 %148, 24
  %and408 = and i32 %shr407, 255
  %conv409 = trunc i32 %and408 to i8
  %idxprom410 = zext i8 %conv409 to i64
  %arrayidx411 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom410
  %149 = load i32, i32* %arrayidx411, align 4
  %xor412 = xor i32 %xor404, %149
  %Y413 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [4 x i32], [4 x i32]* %Y413, i64 0, i64 1
  store i32 %xor412, i32* %arrayidx414, align 4
  %150 = load i32*, i32** %RK, align 8
  %incdec.ptr415 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %incdec.ptr415, i32** %RK, align 8
  %151 = load i32, i32* %150, align 4
  %X416 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [4 x i32], [4 x i32]* %X416, i64 0, i64 2
  %152 = load i32, i32* %arrayidx417, align 4
  %and418 = and i32 %152, 255
  %conv419 = trunc i32 %and418 to i8
  %idxprom420 = zext i8 %conv419 to i64
  %arrayidx421 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom420
  %153 = load i32, i32* %arrayidx421, align 4
  %xor422 = xor i32 %151, %153
  %X423 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx424 = getelementptr inbounds [4 x i32], [4 x i32]* %X423, i64 0, i64 1
  %154 = load i32, i32* %arrayidx424, align 4
  %shr425 = lshr i32 %154, 8
  %and426 = and i32 %shr425, 255
  %conv427 = trunc i32 %and426 to i8
  %idxprom428 = zext i8 %conv427 to i64
  %arrayidx429 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom428
  %155 = load i32, i32* %arrayidx429, align 4
  %xor430 = xor i32 %xor422, %155
  %X431 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [4 x i32], [4 x i32]* %X431, i64 0, i64 0
  %156 = load i32, i32* %arrayidx432, align 4
  %shr433 = lshr i32 %156, 16
  %and434 = and i32 %shr433, 255
  %conv435 = trunc i32 %and434 to i8
  %idxprom436 = zext i8 %conv435 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom436
  %157 = load i32, i32* %arrayidx437, align 4
  %xor438 = xor i32 %xor430, %157
  %X439 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [4 x i32], [4 x i32]* %X439, i64 0, i64 3
  %158 = load i32, i32* %arrayidx440, align 4
  %shr441 = lshr i32 %158, 24
  %and442 = and i32 %shr441, 255
  %conv443 = trunc i32 %and442 to i8
  %idxprom444 = zext i8 %conv443 to i64
  %arrayidx445 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom444
  %159 = load i32, i32* %arrayidx445, align 4
  %xor446 = xor i32 %xor438, %159
  %Y447 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [4 x i32], [4 x i32]* %Y447, i64 0, i64 2
  store i32 %xor446, i32* %arrayidx448, align 4
  %160 = load i32*, i32** %RK, align 8
  %incdec.ptr449 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %incdec.ptr449, i32** %RK, align 8
  %161 = load i32, i32* %160, align 4
  %X450 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [4 x i32], [4 x i32]* %X450, i64 0, i64 3
  %162 = load i32, i32* %arrayidx451, align 4
  %and452 = and i32 %162, 255
  %conv453 = trunc i32 %and452 to i8
  %idxprom454 = zext i8 %conv453 to i64
  %arrayidx455 = getelementptr inbounds [256 x i32], [256 x i32]* @RT0, i64 0, i64 %idxprom454
  %163 = load i32, i32* %arrayidx455, align 4
  %xor456 = xor i32 %161, %163
  %X457 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [4 x i32], [4 x i32]* %X457, i64 0, i64 2
  %164 = load i32, i32* %arrayidx458, align 4
  %shr459 = lshr i32 %164, 8
  %and460 = and i32 %shr459, 255
  %conv461 = trunc i32 %and460 to i8
  %idxprom462 = zext i8 %conv461 to i64
  %arrayidx463 = getelementptr inbounds [256 x i32], [256 x i32]* @RT1, i64 0, i64 %idxprom462
  %165 = load i32, i32* %arrayidx463, align 4
  %xor464 = xor i32 %xor456, %165
  %X465 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [4 x i32], [4 x i32]* %X465, i64 0, i64 1
  %166 = load i32, i32* %arrayidx466, align 4
  %shr467 = lshr i32 %166, 16
  %and468 = and i32 %shr467, 255
  %conv469 = trunc i32 %and468 to i8
  %idxprom470 = zext i8 %conv469 to i64
  %arrayidx471 = getelementptr inbounds [256 x i32], [256 x i32]* @RT2, i64 0, i64 %idxprom470
  %167 = load i32, i32* %arrayidx471, align 4
  %xor472 = xor i32 %xor464, %167
  %X473 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [4 x i32], [4 x i32]* %X473, i64 0, i64 0
  %168 = load i32, i32* %arrayidx474, align 4
  %shr475 = lshr i32 %168, 24
  %and476 = and i32 %shr475, 255
  %conv477 = trunc i32 %and476 to i8
  %idxprom478 = zext i8 %conv477 to i64
  %arrayidx479 = getelementptr inbounds [256 x i32], [256 x i32]* @RT3, i64 0, i64 %idxprom478
  %169 = load i32, i32* %arrayidx479, align 4
  %xor480 = xor i32 %xor472, %169
  %Y481 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [4 x i32], [4 x i32]* %Y481, i64 0, i64 3
  store i32 %xor480, i32* %arrayidx482, align 4
  br label %do.end483

do.end483:                                        ; preds = %do.body346
  %170 = load i32*, i32** %RK, align 8
  %incdec.ptr484 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %incdec.ptr484, i32** %RK, align 8
  %171 = load i32, i32* %170, align 4
  %Y485 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [4 x i32], [4 x i32]* %Y485, i64 0, i64 0
  %172 = load i32, i32* %arrayidx486, align 4
  %and487 = and i32 %172, 255
  %conv488 = trunc i32 %and487 to i8
  %idxprom489 = zext i8 %conv488 to i64
  %arrayidx490 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom489
  %173 = load i8, i8* %arrayidx490, align 1
  %conv491 = zext i8 %173 to i32
  %xor492 = xor i32 %171, %conv491
  %Y493 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [4 x i32], [4 x i32]* %Y493, i64 0, i64 3
  %174 = load i32, i32* %arrayidx494, align 4
  %shr495 = lshr i32 %174, 8
  %and496 = and i32 %shr495, 255
  %conv497 = trunc i32 %and496 to i8
  %idxprom498 = zext i8 %conv497 to i64
  %arrayidx499 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom498
  %175 = load i8, i8* %arrayidx499, align 1
  %conv500 = zext i8 %175 to i32
  %shl501 = shl i32 %conv500, 8
  %xor502 = xor i32 %xor492, %shl501
  %Y503 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [4 x i32], [4 x i32]* %Y503, i64 0, i64 2
  %176 = load i32, i32* %arrayidx504, align 4
  %shr505 = lshr i32 %176, 16
  %and506 = and i32 %shr505, 255
  %conv507 = trunc i32 %and506 to i8
  %idxprom508 = zext i8 %conv507 to i64
  %arrayidx509 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom508
  %177 = load i8, i8* %arrayidx509, align 1
  %conv510 = zext i8 %177 to i32
  %shl511 = shl i32 %conv510, 16
  %xor512 = xor i32 %xor502, %shl511
  %Y513 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [4 x i32], [4 x i32]* %Y513, i64 0, i64 1
  %178 = load i32, i32* %arrayidx514, align 4
  %shr515 = lshr i32 %178, 24
  %and516 = and i32 %shr515, 255
  %conv517 = trunc i32 %and516 to i8
  %idxprom518 = zext i8 %conv517 to i64
  %arrayidx519 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom518
  %179 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %179 to i32
  %shl521 = shl i32 %conv520, 24
  %xor522 = xor i32 %xor512, %shl521
  %X523 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [4 x i32], [4 x i32]* %X523, i64 0, i64 0
  store i32 %xor522, i32* %arrayidx524, align 4
  %180 = load i32*, i32** %RK, align 8
  %incdec.ptr525 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr525, i32** %RK, align 8
  %181 = load i32, i32* %180, align 4
  %Y526 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [4 x i32], [4 x i32]* %Y526, i64 0, i64 1
  %182 = load i32, i32* %arrayidx527, align 4
  %and528 = and i32 %182, 255
  %conv529 = trunc i32 %and528 to i8
  %idxprom530 = zext i8 %conv529 to i64
  %arrayidx531 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom530
  %183 = load i8, i8* %arrayidx531, align 1
  %conv532 = zext i8 %183 to i32
  %xor533 = xor i32 %181, %conv532
  %Y534 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [4 x i32], [4 x i32]* %Y534, i64 0, i64 0
  %184 = load i32, i32* %arrayidx535, align 4
  %shr536 = lshr i32 %184, 8
  %and537 = and i32 %shr536, 255
  %conv538 = trunc i32 %and537 to i8
  %idxprom539 = zext i8 %conv538 to i64
  %arrayidx540 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom539
  %185 = load i8, i8* %arrayidx540, align 1
  %conv541 = zext i8 %185 to i32
  %shl542 = shl i32 %conv541, 8
  %xor543 = xor i32 %xor533, %shl542
  %Y544 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [4 x i32], [4 x i32]* %Y544, i64 0, i64 3
  %186 = load i32, i32* %arrayidx545, align 4
  %shr546 = lshr i32 %186, 16
  %and547 = and i32 %shr546, 255
  %conv548 = trunc i32 %and547 to i8
  %idxprom549 = zext i8 %conv548 to i64
  %arrayidx550 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom549
  %187 = load i8, i8* %arrayidx550, align 1
  %conv551 = zext i8 %187 to i32
  %shl552 = shl i32 %conv551, 16
  %xor553 = xor i32 %xor543, %shl552
  %Y554 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [4 x i32], [4 x i32]* %Y554, i64 0, i64 2
  %188 = load i32, i32* %arrayidx555, align 4
  %shr556 = lshr i32 %188, 24
  %and557 = and i32 %shr556, 255
  %conv558 = trunc i32 %and557 to i8
  %idxprom559 = zext i8 %conv558 to i64
  %arrayidx560 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom559
  %189 = load i8, i8* %arrayidx560, align 1
  %conv561 = zext i8 %189 to i32
  %shl562 = shl i32 %conv561, 24
  %xor563 = xor i32 %xor553, %shl562
  %X564 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [4 x i32], [4 x i32]* %X564, i64 0, i64 1
  store i32 %xor563, i32* %arrayidx565, align 4
  %190 = load i32*, i32** %RK, align 8
  %incdec.ptr566 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %incdec.ptr566, i32** %RK, align 8
  %191 = load i32, i32* %190, align 4
  %Y567 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [4 x i32], [4 x i32]* %Y567, i64 0, i64 2
  %192 = load i32, i32* %arrayidx568, align 4
  %and569 = and i32 %192, 255
  %conv570 = trunc i32 %and569 to i8
  %idxprom571 = zext i8 %conv570 to i64
  %arrayidx572 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom571
  %193 = load i8, i8* %arrayidx572, align 1
  %conv573 = zext i8 %193 to i32
  %xor574 = xor i32 %191, %conv573
  %Y575 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx576 = getelementptr inbounds [4 x i32], [4 x i32]* %Y575, i64 0, i64 1
  %194 = load i32, i32* %arrayidx576, align 4
  %shr577 = lshr i32 %194, 8
  %and578 = and i32 %shr577, 255
  %conv579 = trunc i32 %and578 to i8
  %idxprom580 = zext i8 %conv579 to i64
  %arrayidx581 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom580
  %195 = load i8, i8* %arrayidx581, align 1
  %conv582 = zext i8 %195 to i32
  %shl583 = shl i32 %conv582, 8
  %xor584 = xor i32 %xor574, %shl583
  %Y585 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [4 x i32], [4 x i32]* %Y585, i64 0, i64 0
  %196 = load i32, i32* %arrayidx586, align 4
  %shr587 = lshr i32 %196, 16
  %and588 = and i32 %shr587, 255
  %conv589 = trunc i32 %and588 to i8
  %idxprom590 = zext i8 %conv589 to i64
  %arrayidx591 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom590
  %197 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %197 to i32
  %shl593 = shl i32 %conv592, 16
  %xor594 = xor i32 %xor584, %shl593
  %Y595 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx596 = getelementptr inbounds [4 x i32], [4 x i32]* %Y595, i64 0, i64 3
  %198 = load i32, i32* %arrayidx596, align 4
  %shr597 = lshr i32 %198, 24
  %and598 = and i32 %shr597, 255
  %conv599 = trunc i32 %and598 to i8
  %idxprom600 = zext i8 %conv599 to i64
  %arrayidx601 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom600
  %199 = load i8, i8* %arrayidx601, align 1
  %conv602 = zext i8 %199 to i32
  %shl603 = shl i32 %conv602, 24
  %xor604 = xor i32 %xor594, %shl603
  %X605 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [4 x i32], [4 x i32]* %X605, i64 0, i64 2
  store i32 %xor604, i32* %arrayidx606, align 4
  %200 = load i32*, i32** %RK, align 8
  %incdec.ptr607 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %incdec.ptr607, i32** %RK, align 8
  %201 = load i32, i32* %200, align 4
  %Y608 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [4 x i32], [4 x i32]* %Y608, i64 0, i64 3
  %202 = load i32, i32* %arrayidx609, align 4
  %and610 = and i32 %202, 255
  %conv611 = trunc i32 %and610 to i8
  %idxprom612 = zext i8 %conv611 to i64
  %arrayidx613 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom612
  %203 = load i8, i8* %arrayidx613, align 1
  %conv614 = zext i8 %203 to i32
  %xor615 = xor i32 %201, %conv614
  %Y616 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx617 = getelementptr inbounds [4 x i32], [4 x i32]* %Y616, i64 0, i64 2
  %204 = load i32, i32* %arrayidx617, align 4
  %shr618 = lshr i32 %204, 8
  %and619 = and i32 %shr618, 255
  %conv620 = trunc i32 %and619 to i8
  %idxprom621 = zext i8 %conv620 to i64
  %arrayidx622 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom621
  %205 = load i8, i8* %arrayidx622, align 1
  %conv623 = zext i8 %205 to i32
  %shl624 = shl i32 %conv623, 8
  %xor625 = xor i32 %xor615, %shl624
  %Y626 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [4 x i32], [4 x i32]* %Y626, i64 0, i64 1
  %206 = load i32, i32* %arrayidx627, align 4
  %shr628 = lshr i32 %206, 16
  %and629 = and i32 %shr628, 255
  %conv630 = trunc i32 %and629 to i8
  %idxprom631 = zext i8 %conv630 to i64
  %arrayidx632 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom631
  %207 = load i8, i8* %arrayidx632, align 1
  %conv633 = zext i8 %207 to i32
  %shl634 = shl i32 %conv633, 16
  %xor635 = xor i32 %xor625, %shl634
  %Y636 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 1
  %arrayidx637 = getelementptr inbounds [4 x i32], [4 x i32]* %Y636, i64 0, i64 0
  %208 = load i32, i32* %arrayidx637, align 4
  %shr638 = lshr i32 %208, 24
  %and639 = and i32 %shr638, 255
  %conv640 = trunc i32 %and639 to i8
  %idxprom641 = zext i8 %conv640 to i64
  %arrayidx642 = getelementptr inbounds [256 x i8], [256 x i8]* @RSb, i64 0, i64 %idxprom641
  %209 = load i8, i8* %arrayidx642, align 1
  %conv643 = zext i8 %209 to i32
  %shl644 = shl i32 %conv643, 24
  %xor645 = xor i32 %xor635, %shl644
  %X646 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [4 x i32], [4 x i32]* %X646, i64 0, i64 3
  store i32 %xor645, i32* %arrayidx647, align 4
  %X648 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [4 x i32], [4 x i32]* %X648, i64 0, i64 0
  %210 = load i32, i32* %arrayidx649, align 4
  %and650 = and i32 %210, 255
  %conv651 = trunc i32 %and650 to i8
  %211 = load i8*, i8** %output.addr, align 8
  %arrayidx652 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %conv651, i8* %arrayidx652, align 1
  %X653 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [4 x i32], [4 x i32]* %X653, i64 0, i64 0
  %212 = load i32, i32* %arrayidx654, align 4
  %shr655 = lshr i32 %212, 8
  %and656 = and i32 %shr655, 255
  %conv657 = trunc i32 %and656 to i8
  %213 = load i8*, i8** %output.addr, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %213, i64 1
  store i8 %conv657, i8* %arrayidx658, align 1
  %X659 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx660 = getelementptr inbounds [4 x i32], [4 x i32]* %X659, i64 0, i64 0
  %214 = load i32, i32* %arrayidx660, align 4
  %shr661 = lshr i32 %214, 16
  %and662 = and i32 %shr661, 255
  %conv663 = trunc i32 %and662 to i8
  %215 = load i8*, i8** %output.addr, align 8
  %arrayidx664 = getelementptr inbounds i8, i8* %215, i64 2
  store i8 %conv663, i8* %arrayidx664, align 1
  %X665 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [4 x i32], [4 x i32]* %X665, i64 0, i64 0
  %216 = load i32, i32* %arrayidx666, align 4
  %shr667 = lshr i32 %216, 24
  %and668 = and i32 %shr667, 255
  %conv669 = trunc i32 %and668 to i8
  %217 = load i8*, i8** %output.addr, align 8
  %arrayidx670 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 %conv669, i8* %arrayidx670, align 1
  %X671 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx672 = getelementptr inbounds [4 x i32], [4 x i32]* %X671, i64 0, i64 1
  %218 = load i32, i32* %arrayidx672, align 4
  %and673 = and i32 %218, 255
  %conv674 = trunc i32 %and673 to i8
  %219 = load i8*, i8** %output.addr, align 8
  %arrayidx675 = getelementptr inbounds i8, i8* %219, i64 4
  store i8 %conv674, i8* %arrayidx675, align 1
  %X676 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [4 x i32], [4 x i32]* %X676, i64 0, i64 1
  %220 = load i32, i32* %arrayidx677, align 4
  %shr678 = lshr i32 %220, 8
  %and679 = and i32 %shr678, 255
  %conv680 = trunc i32 %and679 to i8
  %221 = load i8*, i8** %output.addr, align 8
  %arrayidx681 = getelementptr inbounds i8, i8* %221, i64 5
  store i8 %conv680, i8* %arrayidx681, align 1
  %X682 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [4 x i32], [4 x i32]* %X682, i64 0, i64 1
  %222 = load i32, i32* %arrayidx683, align 4
  %shr684 = lshr i32 %222, 16
  %and685 = and i32 %shr684, 255
  %conv686 = trunc i32 %and685 to i8
  %223 = load i8*, i8** %output.addr, align 8
  %arrayidx687 = getelementptr inbounds i8, i8* %223, i64 6
  store i8 %conv686, i8* %arrayidx687, align 1
  %X688 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [4 x i32], [4 x i32]* %X688, i64 0, i64 1
  %224 = load i32, i32* %arrayidx689, align 4
  %shr690 = lshr i32 %224, 24
  %and691 = and i32 %shr690, 255
  %conv692 = trunc i32 %and691 to i8
  %225 = load i8*, i8** %output.addr, align 8
  %arrayidx693 = getelementptr inbounds i8, i8* %225, i64 7
  store i8 %conv692, i8* %arrayidx693, align 1
  %X694 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [4 x i32], [4 x i32]* %X694, i64 0, i64 2
  %226 = load i32, i32* %arrayidx695, align 4
  %and696 = and i32 %226, 255
  %conv697 = trunc i32 %and696 to i8
  %227 = load i8*, i8** %output.addr, align 8
  %arrayidx698 = getelementptr inbounds i8, i8* %227, i64 8
  store i8 %conv697, i8* %arrayidx698, align 1
  %X699 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx700 = getelementptr inbounds [4 x i32], [4 x i32]* %X699, i64 0, i64 2
  %228 = load i32, i32* %arrayidx700, align 4
  %shr701 = lshr i32 %228, 8
  %and702 = and i32 %shr701, 255
  %conv703 = trunc i32 %and702 to i8
  %229 = load i8*, i8** %output.addr, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %229, i64 9
  store i8 %conv703, i8* %arrayidx704, align 1
  %X705 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [4 x i32], [4 x i32]* %X705, i64 0, i64 2
  %230 = load i32, i32* %arrayidx706, align 4
  %shr707 = lshr i32 %230, 16
  %and708 = and i32 %shr707, 255
  %conv709 = trunc i32 %and708 to i8
  %231 = load i8*, i8** %output.addr, align 8
  %arrayidx710 = getelementptr inbounds i8, i8* %231, i64 10
  store i8 %conv709, i8* %arrayidx710, align 1
  %X711 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [4 x i32], [4 x i32]* %X711, i64 0, i64 2
  %232 = load i32, i32* %arrayidx712, align 4
  %shr713 = lshr i32 %232, 24
  %and714 = and i32 %shr713, 255
  %conv715 = trunc i32 %and714 to i8
  %233 = load i8*, i8** %output.addr, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %233, i64 11
  store i8 %conv715, i8* %arrayidx716, align 1
  %X717 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [4 x i32], [4 x i32]* %X717, i64 0, i64 3
  %234 = load i32, i32* %arrayidx718, align 4
  %and719 = and i32 %234, 255
  %conv720 = trunc i32 %and719 to i8
  %235 = load i8*, i8** %output.addr, align 8
  %arrayidx721 = getelementptr inbounds i8, i8* %235, i64 12
  store i8 %conv720, i8* %arrayidx721, align 1
  %X722 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [4 x i32], [4 x i32]* %X722, i64 0, i64 3
  %236 = load i32, i32* %arrayidx723, align 4
  %shr724 = lshr i32 %236, 8
  %and725 = and i32 %shr724, 255
  %conv726 = trunc i32 %and725 to i8
  %237 = load i8*, i8** %output.addr, align 8
  %arrayidx727 = getelementptr inbounds i8, i8* %237, i64 13
  store i8 %conv726, i8* %arrayidx727, align 1
  %X728 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx729 = getelementptr inbounds [4 x i32], [4 x i32]* %X728, i64 0, i64 3
  %238 = load i32, i32* %arrayidx729, align 4
  %shr730 = lshr i32 %238, 16
  %and731 = and i32 %shr730, 255
  %conv732 = trunc i32 %and731 to i8
  %239 = load i8*, i8** %output.addr, align 8
  %arrayidx733 = getelementptr inbounds i8, i8* %239, i64 14
  store i8 %conv732, i8* %arrayidx733, align 1
  %X734 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %t, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [4 x i32], [4 x i32]* %X734, i64 0, i64 3
  %240 = load i32, i32* %arrayidx735, align 4
  %shr736 = lshr i32 %240, 24
  %and737 = and i32 %shr736, 255
  %conv738 = trunc i32 %and737 to i8
  %241 = load i8*, i8** %output.addr, align 8
  %arrayidx739 = getelementptr inbounds i8, i8* %241, i64 15
  store i8 %conv738, i8* %arrayidx739, align 1
  %242 = bitcast %struct.anon.0* %t to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %242, i64 noundef 32) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %mode, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %call = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i8*, i8** %output.addr, align 8
  %call9 = call i32 @mbedtls_aesni_crypt_ecb(%struct.mbedtls_aes_context* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %4 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %5 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_internal_aes_encrypt(%struct.mbedtls_aes_context* noundef %5, i8* noundef %6, i8* noundef %7) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i8*, i8** %output.addr, align 8
  %call12 = call i32 @mbedtls_internal_aes_decrypt(%struct.mbedtls_aes_context* noundef %8, i8* noundef %9, i8* noundef %10) #5
  store i32 %call12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then10, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_aesni_crypt_ecb(%struct.mbedtls_aes_context* noundef, i32 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %temp = alloca [16 x i8], align 16
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %0 = load i64, i64* %length.addr, align 8
  %rem = urem i64 %0, 16
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -34, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %1 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then9
  %2 = load i64, i64* %length.addr, align 8
  %cmp10 = icmp ugt i64 %2, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  %3 = load i8*, i8** %input.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %3, i64 noundef 16) #4
  %4 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #5
  store i32 %call11, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %8, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  br label %exit

if.end14:                                         ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %9 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %9, 16
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i8*, i8** %iv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %xor = xor i32 %conv, %conv18
  %conv19 = trunc i32 %xor to i8
  %16 = load i8*, i8** %output.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %iv.addr, align 8
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  %call23 = call i8* @memcpy(i8* noundef %19, i8* noundef %arraydecay22, i64 noundef 16) #4
  %20 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 16
  store i8* %add.ptr, i8** %input.addr, align 8
  %21 = load i8*, i8** %output.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %21, i64 16
  store i8* %add.ptr24, i8** %output.addr, align 8
  %22 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %22, 16
  store i64 %sub, i64* %length.addr, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  br label %if.end56

if.else:                                          ; preds = %if.end
  br label %while.cond25

while.cond25:                                     ; preds = %if.end50, %if.else
  %23 = load i64, i64* %length.addr, align 8
  %cmp26 = icmp ugt i64 %23, 0
  br i1 %cmp26, label %while.body28, label %while.end55

while.body28:                                     ; preds = %while.cond25
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc43, %while.body28
  %24 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %24, 16
  br i1 %cmp30, label %for.body32, label %for.end45

for.body32:                                       ; preds = %for.cond29
  %25 = load i8*, i8** %input.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 %idxprom33
  %27 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  %28 = load i8*, i8** %iv.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %28, i64 %idxprom36
  %30 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  %xor39 = xor i32 %conv35, %conv38
  %conv40 = trunc i32 %xor39 to i8
  %31 = load i8*, i8** %output.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %31, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body32
  %33 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %33, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond29, !llvm.loop !19

for.end45:                                        ; preds = %for.cond29
  %34 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %35 = load i32, i32* %mode.addr, align 4
  %36 = load i8*, i8** %output.addr, align 8
  %37 = load i8*, i8** %output.addr, align 8
  %call46 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %34, i32 noundef %35, i8* noundef %36, i8* noundef %37) #5
  store i32 %call46, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp47 = icmp ne i32 %38, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.end45
  br label %exit

if.end50:                                         ; preds = %for.end45
  %39 = load i8*, i8** %iv.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %call51 = call i8* @memcpy(i8* noundef %39, i8* noundef %40, i64 noundef 16) #4
  %41 = load i8*, i8** %input.addr, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %41, i64 16
  store i8* %add.ptr52, i8** %input.addr, align 8
  %42 = load i8*, i8** %output.addr, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %42, i64 16
  store i8* %add.ptr53, i8** %output.addr, align 8
  %43 = load i64, i64* %length.addr, align 8
  %sub54 = sub i64 %43, 16
  store i64 %sub54, i64* %length.addr, align 8
  br label %while.cond25, !llvm.loop !20

while.end55:                                      ; preds = %while.cond25
  br label %if.end56

if.end56:                                         ; preds = %while.end55, %while.end
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end56, %if.then49, %if.then13
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %data_unit, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_xts_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %data_unit.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %blocks = alloca i64, align 8
  %leftover = alloca i64, align 8
  %tweak = alloca [16 x i8], align 16
  %prev_tweak = alloca [16 x i8], align 16
  %tmp = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  %t = alloca i8*, align 8
  %i62 = alloca i64, align 8
  %prev_output = alloca i8*, align 8
  store %struct.mbedtls_aes_xts_context* %ctx, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %data_unit, i8** %data_unit.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %length.addr, align 8
  %div = udiv i64 %0, 16
  store i64 %div, i64* %blocks, align 8
  %1 = load i64, i64* %length.addr, align 8
  %rem = urem i64 %1, 16
  store i64 %rem, i64* %leftover, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %2 = load i64, i64* %length.addr, align 8
  %cmp = icmp ult i64 %2, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -34, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %3 = load i64, i64* %length.addr, align 8
  %cmp9 = icmp ugt i64 %3, 16777216
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -34, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %tweak12 = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %4, i32 0, i32 1
  %5 = load i8*, i8** %data_unit.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  %call = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %tweak12, i32 noundef 1, i8* noundef %5, i8* noundef %arraydecay) #5
  store i32 %call, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %6, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  br label %while.cond

while.cond:                                       ; preds = %for.end52, %if.end15
  %8 = load i64, i64* %blocks, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %blocks, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %leftover, align 8
  %tobool16 = icmp ne i64 %9, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %10, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end26

land.lhs.true18:                                  ; preds = %land.lhs.true
  %11 = load i64, i64* %blocks, align 8
  %cmp19 = icmp eq i64 %11, 0
  br i1 %cmp19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %land.lhs.true18
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %prev_tweak, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  %call23 = call i8* @memcpy(i8* noundef %arraydecay21, i8* noundef %arraydecay22, i64 noundef 16) #4
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  call void @mbedtls_gf128mul_x_ble(i8* noundef %arraydecay24, i8* noundef %arraydecay25) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.lhs.true18, %land.lhs.true, %while.body
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %12 = load i64, i64* %i, align 8
  %cmp27 = icmp ult i64 %12, 16
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %16 = load i64, i64* %i, align 8
  %arrayidx28 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 %16
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %xor = xor i32 %conv, %conv29
  %conv30 = trunc i32 %xor to i8
  %18 = load i64, i64* %i, align 8
  %arrayidx31 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 %18
  store i8 %conv30, i8* %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %20 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %20, i32 0, i32 0
  %21 = load i32, i32* %mode.addr, align 4
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %call34 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %crypt, i32 noundef %21, i8* noundef %arraydecay32, i8* noundef %arraydecay33) #5
  store i32 %call34, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp35 = icmp ne i32 %22, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc50, %if.end38
  %24 = load i64, i64* %i, align 8
  %cmp40 = icmp ult i64 %24, 16
  br i1 %cmp40, label %for.body42, label %for.end52

for.body42:                                       ; preds = %for.cond39
  %25 = load i64, i64* %i, align 8
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 %25
  %26 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %26 to i32
  %27 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 %27
  %28 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %28 to i32
  %xor47 = xor i32 %conv44, %conv46
  %conv48 = trunc i32 %xor47 to i8
  %29 = load i8*, i8** %output.addr, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %conv48, i8* %arrayidx49, align 1
  br label %for.inc50

for.inc50:                                        ; preds = %for.body42
  %31 = load i64, i64* %i, align 8
  %inc51 = add i64 %31, 1
  store i64 %inc51, i64* %i, align 8
  br label %for.cond39, !llvm.loop !22

for.end52:                                        ; preds = %for.cond39
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  call void @mbedtls_gf128mul_x_ble(i8* noundef %arraydecay53, i8* noundef %arraydecay54) #5
  %32 = load i8*, i8** %output.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 16
  store i8* %add.ptr, i8** %output.addr, align 8
  %33 = load i8*, i8** %input.addr, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %33, i64 16
  store i8* %add.ptr55, i8** %input.addr, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %34 = load i64, i64* %leftover, align 8
  %tobool56 = icmp ne i64 %34, 0
  br i1 %tobool56, label %if.then57, label %if.end116

if.then57:                                        ; preds = %while.end
  %35 = load i32, i32* %mode.addr, align 4
  %cmp58 = icmp eq i32 %35, 0
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then57
  %arraydecay60 = getelementptr inbounds [16 x i8], [16 x i8]* %prev_tweak, i64 0, i64 0
  br label %cond.end

cond.false:                                       ; preds = %if.then57
  %arraydecay61 = getelementptr inbounds [16 x i8], [16 x i8]* %tweak, i64 0, i64 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay60, %cond.true ], [ %arraydecay61, %cond.false ]
  store i8* %cond, i8** %t, align 8
  %36 = load i8*, i8** %output.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %36, i64 -16
  store i8* %add.ptr63, i8** %prev_output, align 8
  store i64 0, i64* %i62, align 8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc77, %cond.end
  %37 = load i64, i64* %i62, align 8
  %38 = load i64, i64* %leftover, align 8
  %cmp65 = icmp ult i64 %37, %38
  br i1 %cmp65, label %for.body67, label %for.end79

for.body67:                                       ; preds = %for.cond64
  %39 = load i8*, i8** %prev_output, align 8
  %40 = load i64, i64* %i62, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i8, i8* %arrayidx68, align 1
  %42 = load i8*, i8** %output.addr, align 8
  %43 = load i64, i64* %i62, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %arrayidx69, align 1
  %44 = load i8*, i8** %input.addr, align 8
  %45 = load i64, i64* %i62, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %44, i64 %45
  %46 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %46 to i32
  %47 = load i8*, i8** %t, align 8
  %48 = load i64, i64* %i62, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %47, i64 %48
  %49 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %49 to i32
  %xor74 = xor i32 %conv71, %conv73
  %conv75 = trunc i32 %xor74 to i8
  %50 = load i64, i64* %i62, align 8
  %arrayidx76 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 %50
  store i8 %conv75, i8* %arrayidx76, align 1
  br label %for.inc77

for.inc77:                                        ; preds = %for.body67
  %51 = load i64, i64* %i62, align 8
  %inc78 = add i64 %51, 1
  store i64 %inc78, i64* %i62, align 8
  br label %for.cond64, !llvm.loop !24

for.end79:                                        ; preds = %for.cond64
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %for.end79
  %52 = load i64, i64* %i62, align 8
  %cmp81 = icmp ult i64 %52, 16
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %53 = load i8*, i8** %prev_output, align 8
  %54 = load i64, i64* %i62, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %53, i64 %54
  %55 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %55 to i32
  %56 = load i8*, i8** %t, align 8
  %57 = load i64, i64* %i62, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %56, i64 %57
  %58 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %58 to i32
  %xor88 = xor i32 %conv85, %conv87
  %conv89 = trunc i32 %xor88 to i8
  %59 = load i64, i64* %i62, align 8
  %arrayidx90 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 %59
  store i8 %conv89, i8* %arrayidx90, align 1
  br label %for.inc91

for.inc91:                                        ; preds = %for.body83
  %60 = load i64, i64* %i62, align 8
  %inc92 = add i64 %60, 1
  store i64 %inc92, i64* %i62, align 8
  br label %for.cond80, !llvm.loop !25

for.end93:                                        ; preds = %for.cond80
  %61 = load %struct.mbedtls_aes_xts_context*, %struct.mbedtls_aes_xts_context** %ctx.addr, align 8
  %crypt94 = getelementptr inbounds %struct.mbedtls_aes_xts_context, %struct.mbedtls_aes_xts_context* %61, i32 0, i32 0
  %62 = load i32, i32* %mode.addr, align 4
  %arraydecay95 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %arraydecay96 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %call97 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %crypt94, i32 noundef %62, i8* noundef %arraydecay95, i8* noundef %arraydecay96) #5
  store i32 %call97, i32* %ret, align 4
  %63 = load i32, i32* %ret, align 4
  %cmp98 = icmp ne i32 %63, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %for.end93
  %64 = load i32, i32* %ret, align 4
  store i32 %64, i32* %retval, align 4
  br label %return

if.end101:                                        ; preds = %for.end93
  store i64 0, i64* %i62, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc113, %if.end101
  %65 = load i64, i64* %i62, align 8
  %cmp103 = icmp ult i64 %65, 16
  br i1 %cmp103, label %for.body105, label %for.end115

for.body105:                                      ; preds = %for.cond102
  %66 = load i64, i64* %i62, align 8
  %arrayidx106 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 %66
  %67 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %67 to i32
  %68 = load i8*, i8** %t, align 8
  %69 = load i64, i64* %i62, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %68, i64 %69
  %70 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %70 to i32
  %xor110 = xor i32 %conv107, %conv109
  %conv111 = trunc i32 %xor110 to i8
  %71 = load i8*, i8** %prev_output, align 8
  %72 = load i64, i64* %i62, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 %conv111, i8* %arrayidx112, align 1
  br label %for.inc113

for.inc113:                                       ; preds = %for.body105
  %73 = load i64, i64* %i62, align 8
  %inc114 = add i64 %73, 1
  store i64 %inc114, i64* %i62, align 8
  br label %for.cond102, !llvm.loop !26

for.end115:                                       ; preds = %for.cond102
  br label %if.end116

if.end116:                                        ; preds = %for.end115, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end116, %if.then100, %if.then37, %if.then14, %if.then10, %if.then
  %74 = load i32, i32* %retval, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_gf128mul_x_ble(i8* noundef %r, i8* noundef %x) #0 {
entry:
  %r.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %ra = alloca i64, align 8
  %rb = alloca i64, align 8
  store i8* %r, i8** %r.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 7
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  %2 = load i8*, i8** %x.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 6
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  %or = or i64 %shl, %shl3
  %4 = load i8*, i8** %x.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 5
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  %or7 = or i64 %or, %shl6
  %6 = load i8*, i8** %x.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %shl10 = shl i64 %conv9, 32
  %or11 = or i64 %or7, %shl10
  %8 = load i8*, i8** %x.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i64
  %shl14 = shl i64 %conv13, 24
  %or15 = or i64 %or11, %shl14
  %10 = load i8*, i8** %x.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %11 to i64
  %shl18 = shl i64 %conv17, 16
  %or19 = or i64 %or15, %shl18
  %12 = load i8*, i8** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %13 to i64
  %shl22 = shl i64 %conv21, 8
  %or23 = or i64 %or19, %shl22
  %14 = load i8*, i8** %x.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %15 to i64
  %or26 = or i64 %or23, %conv25
  store i64 %or26, i64* %a, align 8
  %16 = load i8*, i8** %x.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 15
  %17 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %17 to i64
  %shl29 = shl i64 %conv28, 56
  %18 = load i8*, i8** %x.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %18, i64 14
  %19 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %19 to i64
  %shl32 = shl i64 %conv31, 48
  %or33 = or i64 %shl29, %shl32
  %20 = load i8*, i8** %x.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %20, i64 13
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %21 to i64
  %shl36 = shl i64 %conv35, 40
  %or37 = or i64 %or33, %shl36
  %22 = load i8*, i8** %x.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 12
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %23 to i64
  %shl40 = shl i64 %conv39, 32
  %or41 = or i64 %or37, %shl40
  %24 = load i8*, i8** %x.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %24, i64 11
  %25 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %25 to i64
  %shl44 = shl i64 %conv43, 24
  %or45 = or i64 %or41, %shl44
  %26 = load i8*, i8** %x.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %26, i64 10
  %27 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %27 to i64
  %shl48 = shl i64 %conv47, 16
  %or49 = or i64 %or45, %shl48
  %28 = load i8*, i8** %x.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %28, i64 9
  %29 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %29 to i64
  %shl52 = shl i64 %conv51, 8
  %or53 = or i64 %or49, %shl52
  %30 = load i8*, i8** %x.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %30, i64 8
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %31 to i64
  %or56 = or i64 %or53, %conv55
  store i64 %or56, i64* %b, align 8
  %32 = load i64, i64* %a, align 8
  %shl57 = shl i64 %32, 1
  %33 = load i64, i64* %b, align 8
  %shr = lshr i64 %33, 63
  %shl58 = shl i64 %shr, 3
  %sub = sub i64 8, %shl58
  %sh_prom = trunc i64 %sub to i32
  %shr59 = ashr i32 135, %sh_prom
  %conv60 = sext i32 %shr59 to i64
  %xor = xor i64 %shl57, %conv60
  store i64 %xor, i64* %ra, align 8
  %34 = load i64, i64* %a, align 8
  %shr61 = lshr i64 %34, 63
  %35 = load i64, i64* %b, align 8
  %shl62 = shl i64 %35, 1
  %or63 = or i64 %shr61, %shl62
  store i64 %or63, i64* %rb, align 8
  %36 = load i64, i64* %ra, align 8
  %and = and i64 %36, 255
  %conv64 = trunc i64 %and to i8
  %37 = load i8*, i8** %r.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %conv64, i8* %arrayidx65, align 1
  %38 = load i64, i64* %ra, align 8
  %shr66 = lshr i64 %38, 8
  %and67 = and i64 %shr66, 255
  %conv68 = trunc i64 %and67 to i8
  %39 = load i8*, i8** %r.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %conv68, i8* %arrayidx69, align 1
  %40 = load i64, i64* %ra, align 8
  %shr70 = lshr i64 %40, 16
  %and71 = and i64 %shr70, 255
  %conv72 = trunc i64 %and71 to i8
  %41 = load i8*, i8** %r.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %conv72, i8* %arrayidx73, align 1
  %42 = load i64, i64* %ra, align 8
  %shr74 = lshr i64 %42, 24
  %and75 = and i64 %shr74, 255
  %conv76 = trunc i64 %and75 to i8
  %43 = load i8*, i8** %r.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %conv76, i8* %arrayidx77, align 1
  %44 = load i64, i64* %ra, align 8
  %shr78 = lshr i64 %44, 32
  %and79 = and i64 %shr78, 255
  %conv80 = trunc i64 %and79 to i8
  %45 = load i8*, i8** %r.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %45, i64 4
  store i8 %conv80, i8* %arrayidx81, align 1
  %46 = load i64, i64* %ra, align 8
  %shr82 = lshr i64 %46, 40
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %47 = load i8*, i8** %r.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %47, i64 5
  store i8 %conv84, i8* %arrayidx85, align 1
  %48 = load i64, i64* %ra, align 8
  %shr86 = lshr i64 %48, 48
  %and87 = and i64 %shr86, 255
  %conv88 = trunc i64 %and87 to i8
  %49 = load i8*, i8** %r.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %49, i64 6
  store i8 %conv88, i8* %arrayidx89, align 1
  %50 = load i64, i64* %ra, align 8
  %shr90 = lshr i64 %50, 56
  %and91 = and i64 %shr90, 255
  %conv92 = trunc i64 %and91 to i8
  %51 = load i8*, i8** %r.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %51, i64 7
  store i8 %conv92, i8* %arrayidx93, align 1
  %52 = load i64, i64* %rb, align 8
  %and94 = and i64 %52, 255
  %conv95 = trunc i64 %and94 to i8
  %53 = load i8*, i8** %r.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %53, i64 8
  store i8 %conv95, i8* %arrayidx96, align 1
  %54 = load i64, i64* %rb, align 8
  %shr97 = lshr i64 %54, 8
  %and98 = and i64 %shr97, 255
  %conv99 = trunc i64 %and98 to i8
  %55 = load i8*, i8** %r.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %55, i64 9
  store i8 %conv99, i8* %arrayidx100, align 1
  %56 = load i64, i64* %rb, align 8
  %shr101 = lshr i64 %56, 16
  %and102 = and i64 %shr101, 255
  %conv103 = trunc i64 %and102 to i8
  %57 = load i8*, i8** %r.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %57, i64 10
  store i8 %conv103, i8* %arrayidx104, align 1
  %58 = load i64, i64* %rb, align 8
  %shr105 = lshr i64 %58, 24
  %and106 = and i64 %shr105, 255
  %conv107 = trunc i64 %and106 to i8
  %59 = load i8*, i8** %r.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %59, i64 11
  store i8 %conv107, i8* %arrayidx108, align 1
  %60 = load i64, i64* %rb, align 8
  %shr109 = lshr i64 %60, 32
  %and110 = and i64 %shr109, 255
  %conv111 = trunc i64 %and110 to i8
  %61 = load i8*, i8** %r.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %61, i64 12
  store i8 %conv111, i8* %arrayidx112, align 1
  %62 = load i64, i64* %rb, align 8
  %shr113 = lshr i64 %62, 40
  %and114 = and i64 %shr113, 255
  %conv115 = trunc i64 %and114 to i8
  %63 = load i8*, i8** %r.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %63, i64 13
  store i8 %conv115, i8* %arrayidx116, align 1
  %64 = load i64, i64* %rb, align 8
  %shr117 = lshr i64 %64, 48
  %and118 = and i64 %shr117, 255
  %conv119 = trunc i64 %and118 to i8
  %65 = load i8*, i8** %r.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %65, i64 14
  store i8 %conv119, i8* %arrayidx120, align 1
  %66 = load i64, i64* %rb, align 8
  %shr121 = lshr i64 %66, 56
  %and122 = and i64 %shr121, 255
  %conv123 = trunc i64 %and122 to i8
  %67 = load i8*, i8** %r.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %67, i64 15
  store i8 %conv123, i8* %arrayidx124, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_cfb128(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load i64*, i64** %iv_off.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  store i32 -33, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  %3 = load i32, i32* %mode.addr, align 4
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.then12
  %4 = load i64, i64* %length.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %n, align 8
  %cmp13 = icmp eq i64 %5, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %while.body
  %6 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i8*, i8** %iv.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %6, i32 noundef 1, i8* noundef %7, i8* noundef %8) #5
  store i32 %call, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  br label %exit

if.end17:                                         ; preds = %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %while.body
  %10 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %13 = load i8*, i8** %iv.addr, align 8
  %14 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx, align 1
  %conv19 = zext i8 %15 to i32
  %xor = xor i32 %12, %conv19
  %conv20 = trunc i32 %xor to i8
  %16 = load i8*, i8** %output.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr21, i8** %output.addr, align 8
  store i8 %conv20, i8* %16, align 1
  %17 = load i32, i32* %c, align 4
  %conv22 = trunc i32 %17 to i8
  %18 = load i8*, i8** %iv.addr, align 8
  %19 = load i64, i64* %n, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 %conv22, i8* %arrayidx23, align 1
  %20 = load i64, i64* %n, align 8
  %add = add i64 %20, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  br label %if.end48

if.else:                                          ; preds = %if.end
  br label %while.cond24

while.cond24:                                     ; preds = %if.end36, %if.else
  %21 = load i64, i64* %length.addr, align 8
  %dec25 = add i64 %21, -1
  store i64 %dec25, i64* %length.addr, align 8
  %tobool26 = icmp ne i64 %21, 0
  br i1 %tobool26, label %while.body27, label %while.end47

while.body27:                                     ; preds = %while.cond24
  %22 = load i64, i64* %n, align 8
  %cmp28 = icmp eq i64 %22, 0
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %while.body27
  %23 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %24 = load i8*, i8** %iv.addr, align 8
  %25 = load i8*, i8** %iv.addr, align 8
  %call31 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %23, i32 noundef 1, i8* noundef %24, i8* noundef %25) #5
  store i32 %call31, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %26, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  br label %exit

if.end35:                                         ; preds = %if.then30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %while.body27
  %27 = load i8*, i8** %iv.addr, align 8
  %28 = load i64, i64* %n, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %29 to i32
  %30 = load i8*, i8** %input.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr39, i8** %input.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv40 = zext i8 %31 to i32
  %xor41 = xor i32 %conv38, %conv40
  %conv42 = trunc i32 %xor41 to i8
  %32 = load i8*, i8** %output.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr43, i8** %output.addr, align 8
  store i8 %conv42, i8* %32, align 1
  %33 = load i8*, i8** %iv.addr, align 8
  %34 = load i64, i64* %n, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 %conv42, i8* %arrayidx44, align 1
  %35 = load i64, i64* %n, align 8
  %add45 = add i64 %35, 1
  %and46 = and i64 %add45, 15
  store i64 %and46, i64* %n, align 8
  br label %while.cond24, !llvm.loop !28

while.end47:                                      ; preds = %while.cond24
  br label %if.end48

if.end48:                                         ; preds = %while.end47, %while.end
  %36 = load i64, i64* %n, align 8
  %37 = load i64*, i64** %iv_off.addr, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end48, %if.then34, %if.then16
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_cfb8(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %ov = alloca [17 x i8], align 16
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %do.end8
  %0 = load i64, i64* %length.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %ov, i64 0, i64 0
  %1 = load i8*, i8** %iv.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %1, i64 noundef 16) #4
  %2 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %3 = load i8*, i8** %iv.addr, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %call9 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %2, i32 noundef 1, i8* noundef %3, i8* noundef %4) #5
  store i32 %call9, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %exit

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %mode.addr, align 4
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %7 = load i8*, i8** %input.addr, align 8
  %8 = load i8, i8* %7, align 1
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %ov, i64 0, i64 16
  store i8 %8, i8* %arrayidx, align 16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %9 = load i8*, i8** %iv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv14 = zext i8 %12 to i32
  %xor = xor i32 %conv, %conv14
  %conv15 = trunc i32 %xor to i8
  %13 = load i8*, i8** %output.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr16, i8** %output.addr, align 8
  store i8 %conv15, i8* %13, align 1
  store i8 %conv15, i8* %c, align 1
  %14 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %14, 1
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end12
  %15 = load i8, i8* %c, align 1
  %arrayidx20 = getelementptr inbounds [17 x i8], [17 x i8]* %ov, i64 0, i64 16
  store i8 %15, i8* %arrayidx20, align 16
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end12
  %16 = load i8*, i8** %iv.addr, align 8
  %arraydecay22 = getelementptr inbounds [17 x i8], [17 x i8]* %ov, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay22, i64 1
  %call23 = call i8* @memcpy(i8* noundef %16, i8* noundef %add.ptr, i64 noundef 16) #4
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %while.end, %if.then
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_ofb(%struct.mbedtls_aes_context* noundef %ctx, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %0 = load i64*, i64** %iv_off.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -33, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %3 = load i64, i64* %length.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %n, align 8
  %cmp9 = icmp eq i64 %4, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %while.body
  %5 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %6 = load i8*, i8** %iv.addr, align 8
  %7 = load i8*, i8** %iv.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #5
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  br label %exit

if.end13:                                         ; preds = %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %while.body
  %9 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8*, i8** %iv.addr, align 8
  %12 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %14 = load i8*, i8** %output.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8
  store i8 %conv16, i8* %14, align 1
  %15 = load i64, i64* %n, align 8
  %add = add i64 %15, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %n, align 8
  %17 = load i64*, i64** %iv_off.addr, align 8
  store i64 %16, i64* %17, align 8
  br label %exit

exit:                                             ; preds = %while.end, %if.then12
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_ctr(%struct.mbedtls_aes_context* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %nc_off, i64** %nc_off.addr, align 8
  store i8* %nonce_counter, i8** %nonce_counter.addr, align 8
  store i8* %stream_block, i8** %stream_block.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load i64*, i64** %nc_off.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %2, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  store i32 -33, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end
  %3 = load i64, i64* %length.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %n, align 8
  %cmp11 = icmp eq i64 %4, 0
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %while.body
  %5 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %6 = load i8*, i8** %nonce_counter.addr, align 8
  %7 = load i8*, i8** %stream_block.addr, align 8
  %call = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #5
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %8, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  br label %exit

if.end15:                                         ; preds = %if.then12
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %9 = load i32, i32* %i, align 4
  %cmp16 = icmp sgt i32 %9, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %nonce_counter.addr, align 8
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %12, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = zext i8 %inc to i32
  %cmp17 = icmp ne i32 %conv, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  br label %for.end

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %13 = load i32, i32* %i, align 4
  %dec21 = add nsw i32 %13, -1
  store i32 %dec21, i32* %i, align 4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %if.then19, %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %while.body
  %14 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv23 = zext i8 %15 to i32
  store i32 %conv23, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load i8*, i8** %stream_block.addr, align 8
  %18 = load i64, i64* %n, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %19 to i32
  %xor = xor i32 %16, %conv25
  %conv26 = trunc i32 %xor to i8
  %20 = load i8*, i8** %output.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr27, i8** %output.addr, align 8
  store i8 %conv26, i8* %20, align 1
  %21 = load i64, i64* %n, align 8
  %add = add i64 %21, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %22 = load i64, i64* %n, align 8
  %23 = load i64*, i64** %nc_off.addr, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %while.end, %if.then14
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %mode = alloca i32, align 4
  %keybits = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %buf = alloca [64 x i8], align 16
  %aes_tests = alloca i8*, align 8
  %iv = alloca [16 x i8], align 16
  %prv = alloca [16 x i8], align 16
  %offset = alloca i64, align 8
  %len = alloca i32, align 4
  %nonce_counter = alloca [16 x i8], align 16
  %stream_block = alloca [16 x i8], align 16
  %ctx = alloca %struct.mbedtls_aes_context, align 8
  %tmp = alloca [16 x i8], align 16
  %ctx_xts = alloca %struct.mbedtls_aes_xts_context, align 8
  %data_unit = alloca i8*, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 32) #4
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %ctx) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %u, align 4
  %2 = load i32, i32* %u, align 4
  %mul = mul nsw i32 %2, 64
  %add = add nsw i32 128, %mul
  store i32 %add, i32* %keybits, align 4
  %3 = load i32, i32* %i, align 4
  %and = and i32 %3, 1
  store i32 %and, i32* %mode, align 4
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %keybits, align 4
  %6 = load i32, i32* %mode, align 4
  %cmp2 = icmp eq i32 %6, 0
  %7 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i8* noundef %cond) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call5 = call i8* @memset(i8* noundef %arraydecay4, i32 noundef 0, i64 noundef 16) #4
  %8 = load i32, i32* %mode, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %9 = load i32, i32* %keybits, align 4
  %call9 = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay8, i32 noundef %9) #5
  store i32 %call9, i32* %ret, align 4
  %10 = load i32, i32* %u, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_ecb_dec, i64 0, i64 %idxprom
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 0
  store i8* %arraydecay10, i8** %aes_tests, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %11 = load i32, i32* %keybits, align 4
  %call12 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay11, i32 noundef %11) #5
  store i32 %call12, i32* %ret, align 4
  %12 = load i32, i32* %u, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_ecb_enc, i64 0, i64 %idxprom13
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx14, i64 0, i64 0
  store i8* %arraydecay15, i8** %aes_tests, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then7
  %13 = load i32, i32* %ret, align 4
  %cmp17 = icmp eq i32 %13, -114
  br i1 %cmp17, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.end16
  %14 = load i32, i32* %keybits, align 4
  %cmp18 = icmp eq i32 %14, 192
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %land.lhs.true
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %for.inc44

if.else21:                                        ; preds = %land.lhs.true, %if.end16
  %15 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %15, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else21
  br label %exit

if.end24:                                         ; preds = %if.else21
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.end25
  %16 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %16, 10000
  br i1 %cmp27, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond26
  %17 = load i32, i32* %mode, align 4
  %arraydecay29 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call31 = call i32 @mbedtls_aes_crypt_ecb(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %17, i8* noundef %arraydecay29, i8* noundef %arraydecay30) #5
  store i32 %call31, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %18, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body28
  br label %exit

if.end34:                                         ; preds = %for.body28
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond26, !llvm.loop !33

for.end:                                          ; preds = %for.cond26
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %20 = load i8*, i8** %aes_tests, align 8
  %call36 = call i32 @memcmp(i8* noundef %arraydecay35, i8* noundef %20, i64 noundef 16) #6
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end
  store i32 1, i32* %ret, align 4
  br label %exit

if.end39:                                         ; preds = %for.end
  %21 = load i32, i32* %verbose.addr, align 4
  %cmp40 = icmp ne i32 %21, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43, %if.then19
  %22 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %22, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond, !llvm.loop !34

for.end46:                                        ; preds = %for.cond
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp47 = icmp ne i32 %23, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.end46
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.end46
  store i32 0, i32* %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc128, %if.end50
  %24 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %24, 6
  br i1 %cmp52, label %for.body53, label %for.end130

for.body53:                                       ; preds = %for.cond51
  %25 = load i32, i32* %i, align 4
  %shr54 = ashr i32 %25, 1
  store i32 %shr54, i32* %u, align 4
  %26 = load i32, i32* %u, align 4
  %mul55 = mul nsw i32 %26, 64
  %add56 = add nsw i32 128, %mul55
  store i32 %add56, i32* %keybits, align 4
  %27 = load i32, i32* %i, align 4
  %and57 = and i32 %27, 1
  store i32 %and57, i32* %mode, align 4
  %28 = load i32, i32* %verbose.addr, align 4
  %cmp58 = icmp ne i32 %28, 0
  br i1 %cmp58, label %if.then59, label %if.end63

if.then59:                                        ; preds = %for.body53
  %29 = load i32, i32* %keybits, align 4
  %30 = load i32, i32* %mode, align 4
  %cmp60 = icmp eq i32 %30, 0
  %31 = zext i1 %cmp60 to i64
  %cond61 = select i1 %cmp60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %29, i8* noundef %cond61) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %for.body53
  %arraydecay64 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call65 = call i8* @memset(i8* noundef %arraydecay64, i32 noundef 0, i64 noundef 16) #4
  %arraydecay66 = getelementptr inbounds [16 x i8], [16 x i8]* %prv, i64 0, i64 0
  %call67 = call i8* @memset(i8* noundef %arraydecay66, i32 noundef 0, i64 noundef 16) #4
  %arraydecay68 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call69 = call i8* @memset(i8* noundef %arraydecay68, i32 noundef 0, i64 noundef 16) #4
  %32 = load i32, i32* %mode, align 4
  %cmp70 = icmp eq i32 %32, 0
  br i1 %cmp70, label %if.then71, label %if.else77

if.then71:                                        ; preds = %if.end63
  %arraydecay72 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %33 = load i32, i32* %keybits, align 4
  %call73 = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay72, i32 noundef %33) #5
  store i32 %call73, i32* %ret, align 4
  %34 = load i32, i32* %u, align 4
  %idxprom74 = sext i32 %34 to i64
  %arrayidx75 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_cbc_dec, i64 0, i64 %idxprom74
  %arraydecay76 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx75, i64 0, i64 0
  store i8* %arraydecay76, i8** %aes_tests, align 8
  br label %if.end83

if.else77:                                        ; preds = %if.end63
  %arraydecay78 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %35 = load i32, i32* %keybits, align 4
  %call79 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay78, i32 noundef %35) #5
  store i32 %call79, i32* %ret, align 4
  %36 = load i32, i32* %u, align 4
  %idxprom80 = sext i32 %36 to i64
  %arrayidx81 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_cbc_enc, i64 0, i64 %idxprom80
  %arraydecay82 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx81, i64 0, i64 0
  store i8* %arraydecay82, i8** %aes_tests, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %if.then71
  %37 = load i32, i32* %ret, align 4
  %cmp84 = icmp eq i32 %37, -114
  br i1 %cmp84, label %land.lhs.true85, label %if.else89

land.lhs.true85:                                  ; preds = %if.end83
  %38 = load i32, i32* %keybits, align 4
  %cmp86 = icmp eq i32 %38, 192
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %land.lhs.true85
  %call88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %for.inc128

if.else89:                                        ; preds = %land.lhs.true85, %if.end83
  %39 = load i32, i32* %ret, align 4
  %cmp90 = icmp ne i32 %39, 0
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.else89
  br label %exit

if.end92:                                         ; preds = %if.else89
  br label %if.end93

if.end93:                                         ; preds = %if.end92
  store i32 0, i32* %j, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc116, %if.end93
  %40 = load i32, i32* %j, align 4
  %cmp95 = icmp slt i32 %40, 10000
  br i1 %cmp95, label %for.body96, label %for.end118

for.body96:                                       ; preds = %for.cond94
  %41 = load i32, i32* %mode, align 4
  %cmp97 = icmp eq i32 %41, 1
  br i1 %cmp97, label %if.then98, label %if.end108

if.then98:                                        ; preds = %for.body96
  %arraydecay99 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %arraydecay100 = getelementptr inbounds [16 x i8], [16 x i8]* %prv, i64 0, i64 0
  %call101 = call i8* @memcpy(i8* noundef %arraydecay99, i8* noundef %arraydecay100, i64 noundef 16) #4
  %arraydecay102 = getelementptr inbounds [16 x i8], [16 x i8]* %prv, i64 0, i64 0
  %arraydecay103 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call104 = call i8* @memcpy(i8* noundef %arraydecay102, i8* noundef %arraydecay103, i64 noundef 16) #4
  %arraydecay105 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp, i64 0, i64 0
  %call107 = call i8* @memcpy(i8* noundef %arraydecay105, i8* noundef %arraydecay106, i64 noundef 16) #4
  br label %if.end108

if.end108:                                        ; preds = %if.then98, %for.body96
  %42 = load i32, i32* %mode, align 4
  %arraydecay109 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay110 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay111 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call112 = call i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %42, i64 noundef 16, i8* noundef %arraydecay109, i8* noundef %arraydecay110, i8* noundef %arraydecay111) #5
  store i32 %call112, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp113 = icmp ne i32 %43, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end108
  br label %exit

if.end115:                                        ; preds = %if.end108
  br label %for.inc116

for.inc116:                                       ; preds = %if.end115
  %44 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %44, 1
  store i32 %inc117, i32* %j, align 4
  br label %for.cond94, !llvm.loop !35

for.end118:                                       ; preds = %for.cond94
  %arraydecay119 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %45 = load i8*, i8** %aes_tests, align 8
  %call120 = call i32 @memcmp(i8* noundef %arraydecay119, i8* noundef %45, i64 noundef 16) #6
  %cmp121 = icmp ne i32 %call120, 0
  br i1 %cmp121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.end118
  store i32 1, i32* %ret, align 4
  br label %exit

if.end123:                                        ; preds = %for.end118
  %46 = load i32, i32* %verbose.addr, align 4
  %cmp124 = icmp ne i32 %46, 0
  br i1 %cmp124, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end123
  %call126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  br label %for.inc128

for.inc128:                                       ; preds = %if.end127, %if.then87
  %47 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %47, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond51, !llvm.loop !36

for.end130:                                       ; preds = %for.cond51
  %48 = load i32, i32* %verbose.addr, align 4
  %cmp131 = icmp ne i32 %48, 0
  br i1 %cmp131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %for.end130
  %call133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %for.end130
  store i32 0, i32* %i, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc204, %if.end134
  %49 = load i32, i32* %i, align 4
  %cmp136 = icmp slt i32 %49, 6
  br i1 %cmp136, label %for.body137, label %for.end206

for.body137:                                      ; preds = %for.cond135
  %50 = load i32, i32* %i, align 4
  %shr138 = ashr i32 %50, 1
  store i32 %shr138, i32* %u, align 4
  %51 = load i32, i32* %u, align 4
  %mul139 = mul nsw i32 %51, 64
  %add140 = add nsw i32 128, %mul139
  store i32 %add140, i32* %keybits, align 4
  %52 = load i32, i32* %i, align 4
  %and141 = and i32 %52, 1
  store i32 %and141, i32* %mode, align 4
  %53 = load i32, i32* %verbose.addr, align 4
  %cmp142 = icmp ne i32 %53, 0
  br i1 %cmp142, label %if.then143, label %if.end147

if.then143:                                       ; preds = %for.body137
  %54 = load i32, i32* %keybits, align 4
  %55 = load i32, i32* %mode, align 4
  %cmp144 = icmp eq i32 %55, 0
  %56 = zext i1 %cmp144 to i64
  %cond145 = select i1 %cmp144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call146 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef %54, i8* noundef %cond145) #5
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %for.body137
  %arraydecay148 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call149 = call i8* @memcpy(i8* noundef %arraydecay148, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aes_test_cfb128_iv, i64 0, i64 0), i64 noundef 16) #4
  %arraydecay150 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %57 = load i32, i32* %u, align 4
  %idxprom151 = sext i32 %57 to i64
  %arrayidx152 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @aes_test_cfb128_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom151
  %arraydecay153 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx152, i64 0, i64 0
  %58 = load i32, i32* %keybits, align 4
  %div = udiv i32 %58, 8
  %conv = zext i32 %div to i64
  %call154 = call i8* @memcpy(i8* noundef %arraydecay150, i8* noundef %arraydecay153, i64 noundef %conv) #4
  store i64 0, i64* %offset, align 8
  %arraydecay155 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %59 = load i32, i32* %keybits, align 4
  %call156 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay155, i32 noundef %59) #5
  store i32 %call156, i32* %ret, align 4
  %60 = load i32, i32* %ret, align 4
  %cmp157 = icmp eq i32 %60, -114
  br i1 %cmp157, label %land.lhs.true159, label %if.else164

land.lhs.true159:                                 ; preds = %if.end147
  %61 = load i32, i32* %keybits, align 4
  %cmp160 = icmp eq i32 %61, 192
  br i1 %cmp160, label %if.then162, label %if.else164

if.then162:                                       ; preds = %land.lhs.true159
  %call163 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %for.inc204

if.else164:                                       ; preds = %land.lhs.true159, %if.end147
  %62 = load i32, i32* %ret, align 4
  %cmp165 = icmp ne i32 %62, 0
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.else164
  br label %exit

if.end168:                                        ; preds = %if.else164
  br label %if.end169

if.end169:                                        ; preds = %if.end168
  %63 = load i32, i32* %mode, align 4
  %cmp170 = icmp eq i32 %63, 0
  br i1 %cmp170, label %if.then172, label %if.else178

if.then172:                                       ; preds = %if.end169
  %arraydecay173 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %64 = load i32, i32* %u, align 4
  %idxprom174 = sext i32 %64 to i64
  %arrayidx175 = getelementptr inbounds [3 x [64 x i8]], [3 x [64 x i8]]* @aes_test_cfb128_ct, i64 0, i64 %idxprom174
  %arraydecay176 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx175, i64 0, i64 0
  %call177 = call i8* @memcpy(i8* noundef %arraydecay173, i8* noundef %arraydecay176, i64 noundef 64) #4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @aes_test_cfb128_pt, i64 0, i64 0), i8** %aes_tests, align 8
  br label %if.end184

if.else178:                                       ; preds = %if.end169
  %arraydecay179 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call180 = call i8* @memcpy(i8* noundef %arraydecay179, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @aes_test_cfb128_pt, i64 0, i64 0), i64 noundef 64) #4
  %65 = load i32, i32* %u, align 4
  %idxprom181 = sext i32 %65 to i64
  %arrayidx182 = getelementptr inbounds [3 x [64 x i8]], [3 x [64 x i8]]* @aes_test_cfb128_ct, i64 0, i64 %idxprom181
  %arraydecay183 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx182, i64 0, i64 0
  store i8* %arraydecay183, i8** %aes_tests, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.else178, %if.then172
  %66 = load i32, i32* %mode, align 4
  %arraydecay185 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay186 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay187 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call188 = call i32 @mbedtls_aes_crypt_cfb128(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %66, i64 noundef 64, i64* noundef %offset, i8* noundef %arraydecay185, i8* noundef %arraydecay186, i8* noundef %arraydecay187) #5
  store i32 %call188, i32* %ret, align 4
  %67 = load i32, i32* %ret, align 4
  %cmp189 = icmp ne i32 %67, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end184
  br label %exit

if.end192:                                        ; preds = %if.end184
  %arraydecay193 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %68 = load i8*, i8** %aes_tests, align 8
  %call194 = call i32 @memcmp(i8* noundef %arraydecay193, i8* noundef %68, i64 noundef 64) #6
  %cmp195 = icmp ne i32 %call194, 0
  br i1 %cmp195, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.end192
  store i32 1, i32* %ret, align 4
  br label %exit

if.end198:                                        ; preds = %if.end192
  %69 = load i32, i32* %verbose.addr, align 4
  %cmp199 = icmp ne i32 %69, 0
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %if.end198
  %call202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %if.end198
  br label %for.inc204

for.inc204:                                       ; preds = %if.end203, %if.then162
  %70 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %70, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond135, !llvm.loop !37

for.end206:                                       ; preds = %for.cond135
  %71 = load i32, i32* %verbose.addr, align 4
  %cmp207 = icmp ne i32 %71, 0
  br i1 %cmp207, label %if.then209, label %if.end211

if.then209:                                       ; preds = %for.end206
  %call210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %for.end206
  store i32 0, i32* %i, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc286, %if.end211
  %72 = load i32, i32* %i, align 4
  %cmp213 = icmp slt i32 %72, 6
  br i1 %cmp213, label %for.body215, label %for.end288

for.body215:                                      ; preds = %for.cond212
  %73 = load i32, i32* %i, align 4
  %shr216 = ashr i32 %73, 1
  store i32 %shr216, i32* %u, align 4
  %74 = load i32, i32* %u, align 4
  %mul217 = mul nsw i32 %74, 64
  %add218 = add nsw i32 128, %mul217
  store i32 %add218, i32* %keybits, align 4
  %75 = load i32, i32* %i, align 4
  %and219 = and i32 %75, 1
  store i32 %and219, i32* %mode, align 4
  %76 = load i32, i32* %verbose.addr, align 4
  %cmp220 = icmp ne i32 %76, 0
  br i1 %cmp220, label %if.then222, label %if.end227

if.then222:                                       ; preds = %for.body215
  %77 = load i32, i32* %keybits, align 4
  %78 = load i32, i32* %mode, align 4
  %cmp223 = icmp eq i32 %78, 0
  %79 = zext i1 %cmp223 to i64
  %cond225 = select i1 %cmp223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call226 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %77, i8* noundef %cond225) #5
  br label %if.end227

if.end227:                                        ; preds = %if.then222, %for.body215
  %arraydecay228 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call229 = call i8* @memcpy(i8* noundef %arraydecay228, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aes_test_ofb_iv, i64 0, i64 0), i64 noundef 16) #4
  %arraydecay230 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %80 = load i32, i32* %u, align 4
  %idxprom231 = sext i32 %80 to i64
  %arrayidx232 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @aes_test_ofb_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom231
  %arraydecay233 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx232, i64 0, i64 0
  %81 = load i32, i32* %keybits, align 4
  %div234 = udiv i32 %81, 8
  %conv235 = zext i32 %div234 to i64
  %call236 = call i8* @memcpy(i8* noundef %arraydecay230, i8* noundef %arraydecay233, i64 noundef %conv235) #4
  store i64 0, i64* %offset, align 8
  %arraydecay237 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %82 = load i32, i32* %keybits, align 4
  %call238 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay237, i32 noundef %82) #5
  store i32 %call238, i32* %ret, align 4
  %83 = load i32, i32* %ret, align 4
  %cmp239 = icmp eq i32 %83, -114
  br i1 %cmp239, label %land.lhs.true241, label %if.else246

land.lhs.true241:                                 ; preds = %if.end227
  %84 = load i32, i32* %keybits, align 4
  %cmp242 = icmp eq i32 %84, 192
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %land.lhs.true241
  %call245 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %for.inc286

if.else246:                                       ; preds = %land.lhs.true241, %if.end227
  %85 = load i32, i32* %ret, align 4
  %cmp247 = icmp ne i32 %85, 0
  br i1 %cmp247, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.else246
  br label %exit

if.end250:                                        ; preds = %if.else246
  br label %if.end251

if.end251:                                        ; preds = %if.end250
  %86 = load i32, i32* %mode, align 4
  %cmp252 = icmp eq i32 %86, 0
  br i1 %cmp252, label %if.then254, label %if.else260

if.then254:                                       ; preds = %if.end251
  %arraydecay255 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %87 = load i32, i32* %u, align 4
  %idxprom256 = sext i32 %87 to i64
  %arrayidx257 = getelementptr inbounds [3 x [64 x i8]], [3 x [64 x i8]]* @aes_test_ofb_ct, i64 0, i64 %idxprom256
  %arraydecay258 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx257, i64 0, i64 0
  %call259 = call i8* @memcpy(i8* noundef %arraydecay255, i8* noundef %arraydecay258, i64 noundef 64) #4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @aes_test_ofb_pt, i64 0, i64 0), i8** %aes_tests, align 8
  br label %if.end266

if.else260:                                       ; preds = %if.end251
  %arraydecay261 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call262 = call i8* @memcpy(i8* noundef %arraydecay261, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @aes_test_ofb_pt, i64 0, i64 0), i64 noundef 64) #4
  %88 = load i32, i32* %u, align 4
  %idxprom263 = sext i32 %88 to i64
  %arrayidx264 = getelementptr inbounds [3 x [64 x i8]], [3 x [64 x i8]]* @aes_test_ofb_ct, i64 0, i64 %idxprom263
  %arraydecay265 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx264, i64 0, i64 0
  store i8* %arraydecay265, i8** %aes_tests, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.else260, %if.then254
  %arraydecay267 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay268 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay269 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call270 = call i32 @mbedtls_aes_crypt_ofb(%struct.mbedtls_aes_context* noundef %ctx, i64 noundef 64, i64* noundef %offset, i8* noundef %arraydecay267, i8* noundef %arraydecay268, i8* noundef %arraydecay269) #5
  store i32 %call270, i32* %ret, align 4
  %89 = load i32, i32* %ret, align 4
  %cmp271 = icmp ne i32 %89, 0
  br i1 %cmp271, label %if.then273, label %if.end274

if.then273:                                       ; preds = %if.end266
  br label %exit

if.end274:                                        ; preds = %if.end266
  %arraydecay275 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %90 = load i8*, i8** %aes_tests, align 8
  %call276 = call i32 @memcmp(i8* noundef %arraydecay275, i8* noundef %90, i64 noundef 64) #6
  %cmp277 = icmp ne i32 %call276, 0
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.end274
  store i32 1, i32* %ret, align 4
  br label %exit

if.end280:                                        ; preds = %if.end274
  %91 = load i32, i32* %verbose.addr, align 4
  %cmp281 = icmp ne i32 %91, 0
  br i1 %cmp281, label %if.then283, label %if.end285

if.then283:                                       ; preds = %if.end280
  %call284 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end285

if.end285:                                        ; preds = %if.then283, %if.end280
  br label %for.inc286

for.inc286:                                       ; preds = %if.end285, %if.then244
  %92 = load i32, i32* %i, align 4
  %inc287 = add nsw i32 %92, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond212, !llvm.loop !38

for.end288:                                       ; preds = %for.cond212
  %93 = load i32, i32* %verbose.addr, align 4
  %cmp289 = icmp ne i32 %93, 0
  br i1 %cmp289, label %if.then291, label %if.end293

if.then291:                                       ; preds = %for.end288
  %call292 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end293

if.end293:                                        ; preds = %if.then291, %for.end288
  store i32 0, i32* %i, align 4
  br label %for.cond294

for.cond294:                                      ; preds = %for.inc371, %if.end293
  %94 = load i32, i32* %i, align 4
  %cmp295 = icmp slt i32 %94, 6
  br i1 %cmp295, label %for.body297, label %for.end373

for.body297:                                      ; preds = %for.cond294
  %95 = load i32, i32* %i, align 4
  %shr298 = ashr i32 %95, 1
  store i32 %shr298, i32* %u, align 4
  %96 = load i32, i32* %i, align 4
  %and299 = and i32 %96, 1
  store i32 %and299, i32* %mode, align 4
  %97 = load i32, i32* %verbose.addr, align 4
  %cmp300 = icmp ne i32 %97, 0
  br i1 %cmp300, label %if.then302, label %if.end307

if.then302:                                       ; preds = %for.body297
  %98 = load i32, i32* %mode, align 4
  %cmp303 = icmp eq i32 %98, 0
  %99 = zext i1 %cmp303 to i64
  %cond305 = select i1 %cmp303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call306 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* noundef %cond305) #5
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %for.body297
  %arraydecay308 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce_counter, i64 0, i64 0
  %100 = load i32, i32* %u, align 4
  %idxprom309 = sext i32 %100 to i64
  %arrayidx310 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_ctr_nonce_counter, i64 0, i64 %idxprom309
  %arraydecay311 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx310, i64 0, i64 0
  %call312 = call i8* @memcpy(i8* noundef %arraydecay308, i8* noundef %arraydecay311, i64 noundef 16) #4
  %arraydecay313 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %101 = load i32, i32* %u, align 4
  %idxprom314 = sext i32 %101 to i64
  %arrayidx315 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aes_test_ctr_key, i64 0, i64 %idxprom314
  %arraydecay316 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx315, i64 0, i64 0
  %call317 = call i8* @memcpy(i8* noundef %arraydecay313, i8* noundef %arraydecay316, i64 noundef 16) #4
  store i64 0, i64* %offset, align 8
  %arraydecay318 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call319 = call i32 @mbedtls_aes_setkey_enc(%struct.mbedtls_aes_context* noundef %ctx, i8* noundef %arraydecay318, i32 noundef 128) #5
  store i32 %call319, i32* %ret, align 4
  %cmp320 = icmp ne i32 %call319, 0
  br i1 %cmp320, label %if.then322, label %if.end323

if.then322:                                       ; preds = %if.end307
  br label %exit

if.end323:                                        ; preds = %if.end307
  %102 = load i32, i32* %u, align 4
  %idxprom324 = sext i32 %102 to i64
  %arrayidx325 = getelementptr inbounds [3 x i32], [3 x i32]* @aes_test_ctr_len, i64 0, i64 %idxprom324
  %103 = load i32, i32* %arrayidx325, align 4
  store i32 %103, i32* %len, align 4
  %104 = load i32, i32* %mode, align 4
  %cmp326 = icmp eq i32 %104, 0
  br i1 %cmp326, label %if.then328, label %if.else338

if.then328:                                       ; preds = %if.end323
  %arraydecay329 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %105 = load i32, i32* %u, align 4
  %idxprom330 = sext i32 %105 to i64
  %arrayidx331 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @aes_test_ctr_ct to [3 x [48 x i8]]*), i64 0, i64 %idxprom330
  %arraydecay332 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx331, i64 0, i64 0
  %106 = load i32, i32* %len, align 4
  %conv333 = sext i32 %106 to i64
  %call334 = call i8* @memcpy(i8* noundef %arraydecay329, i8* noundef %arraydecay332, i64 noundef %conv333) #4
  %107 = load i32, i32* %u, align 4
  %idxprom335 = sext i32 %107 to i64
  %arrayidx336 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @aes_test_ctr_pt to [3 x [48 x i8]]*), i64 0, i64 %idxprom335
  %arraydecay337 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx336, i64 0, i64 0
  store i8* %arraydecay337, i8** %aes_tests, align 8
  br label %if.end348

if.else338:                                       ; preds = %if.end323
  %arraydecay339 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %108 = load i32, i32* %u, align 4
  %idxprom340 = sext i32 %108 to i64
  %arrayidx341 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @aes_test_ctr_pt to [3 x [48 x i8]]*), i64 0, i64 %idxprom340
  %arraydecay342 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx341, i64 0, i64 0
  %109 = load i32, i32* %len, align 4
  %conv343 = sext i32 %109 to i64
  %call344 = call i8* @memcpy(i8* noundef %arraydecay339, i8* noundef %arraydecay342, i64 noundef %conv343) #4
  %110 = load i32, i32* %u, align 4
  %idxprom345 = sext i32 %110 to i64
  %arrayidx346 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @aes_test_ctr_ct to [3 x [48 x i8]]*), i64 0, i64 %idxprom345
  %arraydecay347 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx346, i64 0, i64 0
  store i8* %arraydecay347, i8** %aes_tests, align 8
  br label %if.end348

if.end348:                                        ; preds = %if.else338, %if.then328
  %111 = load i32, i32* %len, align 4
  %conv349 = sext i32 %111 to i64
  %arraydecay350 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce_counter, i64 0, i64 0
  %arraydecay351 = getelementptr inbounds [16 x i8], [16 x i8]* %stream_block, i64 0, i64 0
  %arraydecay352 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay353 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call354 = call i32 @mbedtls_aes_crypt_ctr(%struct.mbedtls_aes_context* noundef %ctx, i64 noundef %conv349, i64* noundef %offset, i8* noundef %arraydecay350, i8* noundef %arraydecay351, i8* noundef %arraydecay352, i8* noundef %arraydecay353) #5
  store i32 %call354, i32* %ret, align 4
  %112 = load i32, i32* %ret, align 4
  %cmp355 = icmp ne i32 %112, 0
  br i1 %cmp355, label %if.then357, label %if.end358

if.then357:                                       ; preds = %if.end348
  br label %exit

if.end358:                                        ; preds = %if.end348
  %arraydecay359 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %113 = load i8*, i8** %aes_tests, align 8
  %114 = load i32, i32* %len, align 4
  %conv360 = sext i32 %114 to i64
  %call361 = call i32 @memcmp(i8* noundef %arraydecay359, i8* noundef %113, i64 noundef %conv360) #6
  %cmp362 = icmp ne i32 %call361, 0
  br i1 %cmp362, label %if.then364, label %if.end365

if.then364:                                       ; preds = %if.end358
  store i32 1, i32* %ret, align 4
  br label %exit

if.end365:                                        ; preds = %if.end358
  %115 = load i32, i32* %verbose.addr, align 4
  %cmp366 = icmp ne i32 %115, 0
  br i1 %cmp366, label %if.then368, label %if.end370

if.then368:                                       ; preds = %if.end365
  %call369 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end370

if.end370:                                        ; preds = %if.then368, %if.end365
  br label %for.inc371

for.inc371:                                       ; preds = %if.end370
  %116 = load i32, i32* %i, align 4
  %inc372 = add nsw i32 %116, 1
  store i32 %inc372, i32* %i, align 4
  br label %for.cond294, !llvm.loop !39

for.end373:                                       ; preds = %for.cond294
  %117 = load i32, i32* %verbose.addr, align 4
  %cmp374 = icmp ne i32 %117, 0
  br i1 %cmp374, label %if.then376, label %if.end378

if.then376:                                       ; preds = %for.end373
  %call377 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end378

if.end378:                                        ; preds = %if.then376, %for.end373
  call void @mbedtls_aes_xts_init(%struct.mbedtls_aes_xts_context* noundef %ctx_xts) #5
  store i32 0, i32* %i, align 4
  br label %for.cond379

for.cond379:                                      ; preds = %for.inc458, %if.end378
  %118 = load i32, i32* %i, align 4
  %cmp380 = icmp slt i32 %118, 6
  br i1 %cmp380, label %for.body382, label %for.end460

for.body382:                                      ; preds = %for.cond379
  %119 = load i32, i32* %i, align 4
  %shr383 = ashr i32 %119, 1
  store i32 %shr383, i32* %u, align 4
  %120 = load i32, i32* %i, align 4
  %and384 = and i32 %120, 1
  store i32 %and384, i32* %mode, align 4
  %121 = load i32, i32* %verbose.addr, align 4
  %cmp385 = icmp ne i32 %121, 0
  br i1 %cmp385, label %if.then387, label %if.end392

if.then387:                                       ; preds = %for.body382
  %122 = load i32, i32* %mode, align 4
  %cmp388 = icmp eq i32 %122, 0
  %123 = zext i1 %cmp388 to i64
  %cond390 = select i1 %cmp388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call391 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %cond390) #5
  br label %if.end392

if.end392:                                        ; preds = %if.then387, %for.body382
  %arraydecay393 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call394 = call i8* @memset(i8* noundef %arraydecay393, i32 noundef 0, i64 noundef 32) #4
  %arraydecay395 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %124 = load i32, i32* %u, align 4
  %idxprom396 = sext i32 %124 to i64
  %arrayidx397 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @aes_test_xts_key, i64 0, i64 %idxprom396
  %arraydecay398 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx397, i64 0, i64 0
  %call399 = call i8* @memcpy(i8* noundef %arraydecay395, i8* noundef %arraydecay398, i64 noundef 32) #4
  %125 = load i32, i32* %u, align 4
  %idxprom400 = sext i32 %125 to i64
  %arrayidx401 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* bitcast (<{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> }>* @aes_test_xts_data_unit to [3 x [16 x i8]]*), i64 0, i64 %idxprom400
  %arraydecay402 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx401, i64 0, i64 0
  store i8* %arraydecay402, i8** %data_unit, align 8
  store i32 32, i32* %len, align 4
  %126 = load i32, i32* %mode, align 4
  %cmp403 = icmp eq i32 %126, 0
  br i1 %cmp403, label %if.then405, label %if.else421

if.then405:                                       ; preds = %if.end392
  %arraydecay406 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call407 = call i32 @mbedtls_aes_xts_setkey_dec(%struct.mbedtls_aes_xts_context* noundef %ctx_xts, i8* noundef %arraydecay406, i32 noundef 256) #5
  store i32 %call407, i32* %ret, align 4
  %127 = load i32, i32* %ret, align 4
  %cmp408 = icmp ne i32 %127, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.then405
  br label %exit

if.end411:                                        ; preds = %if.then405
  %arraydecay412 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %128 = load i32, i32* %u, align 4
  %idxprom413 = sext i32 %128 to i64
  %arrayidx414 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @aes_test_xts_ct32, i64 0, i64 %idxprom413
  %arraydecay415 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx414, i64 0, i64 0
  %129 = load i32, i32* %len, align 4
  %conv416 = sext i32 %129 to i64
  %call417 = call i8* @memcpy(i8* noundef %arraydecay412, i8* noundef %arraydecay415, i64 noundef %conv416) #4
  %130 = load i32, i32* %u, align 4
  %idxprom418 = sext i32 %130 to i64
  %arrayidx419 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @aes_test_xts_pt32, i64 0, i64 %idxprom418
  %arraydecay420 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx419, i64 0, i64 0
  store i8* %arraydecay420, i8** %aes_tests, align 8
  br label %if.end437

if.else421:                                       ; preds = %if.end392
  %arraydecay422 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call423 = call i32 @mbedtls_aes_xts_setkey_enc(%struct.mbedtls_aes_xts_context* noundef %ctx_xts, i8* noundef %arraydecay422, i32 noundef 256) #5
  store i32 %call423, i32* %ret, align 4
  %131 = load i32, i32* %ret, align 4
  %cmp424 = icmp ne i32 %131, 0
  br i1 %cmp424, label %if.then426, label %if.end427

if.then426:                                       ; preds = %if.else421
  br label %exit

if.end427:                                        ; preds = %if.else421
  %arraydecay428 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %132 = load i32, i32* %u, align 4
  %idxprom429 = sext i32 %132 to i64
  %arrayidx430 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @aes_test_xts_pt32, i64 0, i64 %idxprom429
  %arraydecay431 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx430, i64 0, i64 0
  %133 = load i32, i32* %len, align 4
  %conv432 = sext i32 %133 to i64
  %call433 = call i8* @memcpy(i8* noundef %arraydecay428, i8* noundef %arraydecay431, i64 noundef %conv432) #4
  %134 = load i32, i32* %u, align 4
  %idxprom434 = sext i32 %134 to i64
  %arrayidx435 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @aes_test_xts_ct32, i64 0, i64 %idxprom434
  %arraydecay436 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx435, i64 0, i64 0
  store i8* %arraydecay436, i8** %aes_tests, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.end427, %if.end411
  %135 = load i32, i32* %mode, align 4
  %136 = load i32, i32* %len, align 4
  %conv438 = sext i32 %136 to i64
  %137 = load i8*, i8** %data_unit, align 8
  %arraydecay439 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay440 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call441 = call i32 @mbedtls_aes_crypt_xts(%struct.mbedtls_aes_xts_context* noundef %ctx_xts, i32 noundef %135, i64 noundef %conv438, i8* noundef %137, i8* noundef %arraydecay439, i8* noundef %arraydecay440) #5
  store i32 %call441, i32* %ret, align 4
  %138 = load i32, i32* %ret, align 4
  %cmp442 = icmp ne i32 %138, 0
  br i1 %cmp442, label %if.then444, label %if.end445

if.then444:                                       ; preds = %if.end437
  br label %exit

if.end445:                                        ; preds = %if.end437
  %arraydecay446 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %139 = load i8*, i8** %aes_tests, align 8
  %140 = load i32, i32* %len, align 4
  %conv447 = sext i32 %140 to i64
  %call448 = call i32 @memcmp(i8* noundef %arraydecay446, i8* noundef %139, i64 noundef %conv447) #6
  %cmp449 = icmp ne i32 %call448, 0
  br i1 %cmp449, label %if.then451, label %if.end452

if.then451:                                       ; preds = %if.end445
  store i32 1, i32* %ret, align 4
  br label %exit

if.end452:                                        ; preds = %if.end445
  %141 = load i32, i32* %verbose.addr, align 4
  %cmp453 = icmp ne i32 %141, 0
  br i1 %cmp453, label %if.then455, label %if.end457

if.then455:                                       ; preds = %if.end452
  %call456 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end457

if.end457:                                        ; preds = %if.then455, %if.end452
  br label %for.inc458

for.inc458:                                       ; preds = %if.end457
  %142 = load i32, i32* %i, align 4
  %inc459 = add nsw i32 %142, 1
  store i32 %inc459, i32* %i, align 4
  br label %for.cond379, !llvm.loop !40

for.end460:                                       ; preds = %for.cond379
  %143 = load i32, i32* %verbose.addr, align 4
  %cmp461 = icmp ne i32 %143, 0
  br i1 %cmp461, label %if.then463, label %if.end465

if.then463:                                       ; preds = %for.end460
  %call464 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end465

if.end465:                                        ; preds = %if.then463, %for.end460
  call void @mbedtls_aes_xts_free(%struct.mbedtls_aes_xts_context* noundef %ctx_xts) #5
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end465, %if.then451, %if.then444, %if.then426, %if.then410, %if.then364, %if.then357, %if.then322, %if.then279, %if.then273, %if.then249, %if.then197, %if.then191, %if.then167, %if.then122, %if.then114, %if.then91, %if.then38, %if.then33, %if.then23
  %144 = load i32, i32* %ret, align 4
  %cmp466 = icmp ne i32 %144, 0
  br i1 %cmp466, label %land.lhs.true468, label %if.end473

land.lhs.true468:                                 ; preds = %exit
  %145 = load i32, i32* %verbose.addr, align 4
  %cmp469 = icmp ne i32 %145, 0
  br i1 %cmp469, label %if.then471, label %if.end473

if.then471:                                       ; preds = %land.lhs.true468
  %call472 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %if.end473

if.end473:                                        ; preds = %if.then471, %land.lhs.true468, %exit
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %ctx) #5
  %146 = load i32, i32* %ret, align 4
  ret i32 %146
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
