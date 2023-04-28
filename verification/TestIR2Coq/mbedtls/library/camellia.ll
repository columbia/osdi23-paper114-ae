; ModuleID = 'camellia.c'
source_filename = "camellia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_camellia_context = type { i32, [68 x i32] }

@SIGMA_CHARS = internal constant [6 x [8 x i8]] [[8 x i8] c"\A0\9Ef\7F;\CC\90\8B", [8 x i8] c"\B6z\E8XL\AAs\B2", [8 x i8] c"\C6\EF7/\E9O\82\BE", [8 x i8] c"T\FFS\A5\F1\D3o\1C", [8 x i8] c"\10\E5'\FA\DEh-\1D", [8 x i8] c"\B0V\88\C2\B3\E6\C1\FD"], align 16
@shifts = internal constant [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\01\01\01\01", [4 x i8] zeroinitializer, [4 x i8] c"\01\01\01\01", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\01\00\01\01", [4 x i8] c"\01\01\00\01", [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\00\01"]], align 16
@indexes = internal constant [2 x [4 x [20 x i8]]] [[4 x [20 x i8]] [[20 x i8] c"\00\01\02\03\08\09\0A\0B&'$%\17\14\15\16\1B\FF\FF\1A", [20 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [20 x i8] c"\04\05\06\07\0C\0D\0E\0F\10\11\12\13\FF\18\19\FF\1F\1C\1D\1E", [20 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [4 x [20 x i8]] [[20 x i8] c"\00\01\02\03=>?<\FF\FF\FF\FF\1B\18\19\1A# !\22", [20 x i8] c"\FF\FF\FF\FF\08\09\0A\0B\10\11\12\13\FF\FF\FF\FF'$%&", [20 x i8] c"\FF\FF\FF\FF\0C\0D\0E\0F:;89\1F\1C\1D\1E\FF\FF\FF\FF", [20 x i8] c"\04\05\06\07ABC@\14\15\16\17\FF\FF\FF\FF+()*"]], align 16
@transposes = internal constant [2 x [20 x i8]] [[20 x i8] c"\15\16\17\14\FF\FF\FF\FF\12\13\10\11\0B\08\09\0A\0F\0C\0D\0E", [20 x i8] c"\19\1A\1B\18\1D\1E\1F\1C\12\13\10\11\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@.str = private unnamed_addr constant [26 x i8] c"  CAMELLIA-ECB-%3d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@camellia_test_ecb_cipher = internal constant [3 x [2 x [16 x i8]]] [[2 x [16 x i8]] [[16 x i8] c"gg18T\96is\08W\06VH\EA\BEC", [16 x i8] c"8<l*\AB\EF\7F\DE%\CDG\0B\F7t\A31"], [2 x [16 x i8]] [[16 x i8] c"\B4\994\01\B3\E9\96\F8N\E5\CE\E7\D7\9B\09\B9", [16 x i8] c"\D1v?\C0\19\D7|\C90\BF\F2\A5o|\93d"], [2 x [16 x i8]] [[16 x i8] c"\9A\CC#}\FF\16\D7l \EF|\91\9E:u\09", [16 x i8] c"\05\03\FB\10\AB$\1E|\F4]\8C\DE\EEGC5"]], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  CAMELLIA-CBC-%3d (%s): \00", align 1
@camellia_test_cbc_iv = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@camellia_test_cbc_cipher = internal constant [3 x [3 x [16 x i8]]] [[3 x [16 x i8]] [[16 x i8] c"\16\07\CFIK6\BB\F0\0D\AE\B0\B5\03\C81\AB", [16 x i8] c"\A2\F2\CFg\16)\EFx@\C5\A5\DF\B5\07H\87", [16 x i8] c"\0F\06\16P\08\CF\8B\8BZcXcbT>T"], [3 x [16 x i8]] [[16 x i8] c"*H0\ABZ\C4\A1\A2@YU\FD!\95\CF\93", [16 x i8] c"]Z\86\9B\D1L\E5Bd\F8\92\A6\DD.\C3\D5", [16 x i8] c"7\D3Y\C34\986\D8\84\E3\10\AD\DFh\C4I"], [3 x [16 x i8]] [[16 x i8] c"\E6\CF\A3_\C0+\13JM,\0Bg7\AC>\DA", [16 x i8] c"6\CB\EBs\BDPK@p\B1\B7\DE+!\EBP", [16 x i8] c"\E3\1A`U)}\96\CA30\CD\F1\B1\86\0A\83"]], align 16
@camellia_test_cbc_plain = internal constant [3 x [16 x i8]] [[16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", [16 x i8] c"\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ", [16 x i8] c"0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF"], align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"  CAMELLIA-CTR-128 (%s): \00", align 1
@camellia_test_ctr_nonce_counter = internal constant [3 x [16 x i8]] [[16 x i8] c"\00\00\000\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] c"\00l\B6\DB\C0T;Y\DAH\D9\0B\00\00\00\01", [16 x i8] c"\00\E0\01{'w\7F?J\17\86\F0\00\00\00\01"], align 16
@camellia_test_ctr_key = internal constant [3 x [16 x i8]] [[16 x i8] c"\AEhR\F8\12\10g\CCK\F7\A5vUw\F3\9E", [16 x i8] c"~$\06x\17\FA\E0\D7C\D6\CE\1F2S\91c", [16 x i8] c"v\91\BE\03^P \A8\ACna\85)\F9\A0\DC"], align 16
@camellia_test_ctr_len = internal constant [3 x i32] [i32 16, i32 32, i32 36], align 4
@FSb = internal constant [256 x i8] c"p\82,\EC\B3'\C0\E5\E4\85W5\EA\0C\AEA#\EFk\93E\19\A5!\ED\0EON\1De\92\BD\86\B8\AF\8F|\EB\1F\CE>0\DC_^\C5\0B\1A\A6\E19\CA\D5G]=\D9\01Z\D6QVlM\8B\0D\9Af\FB\CC\B0-t\12+ \F0\B1\84\99\DFL\CB\C24~v\05m\B7\A91\D1\17\04\D7\14X:a\DE\1B\11\1C2\0F\9C\16S\18\F2\22\FED\CF\B2\C3\B5z\91$\08\E8\A8`\FCiP\AA\D0\A0}\A1\89b\97T[\1E\95\E0\FFd\D2\10\C4\00H\A3\F7u\DB\8A\03\E6\DA\09?\DD\94\87\\\83\02\CDJ\903sg\F6\F3\9D\7F\BF\E2R\9B\D8&\C87\C6;\81\96oK\13\BEc.\E9y\A7\8C\9Fn\BC\8E)\F5\F9\B6/\FD\B4Yx\98\06j\E7Fq\BA\D4%\ABB\88\A2\8D\FAr\07\B9U\F8\EE\AC\0A6I*h<8\F1\A4@(\D3{\BB\C9C\C1\15\E3\AD\F4w\C7\80\9E", align 16
@FSb2 = internal constant [256 x i8] c"\E0\05X\D9gN\81\CB\C9\0B\AEj\D5\18]\82F\DF\D6'\8A2KB\DB\1C\9E\9C:\CA%{\0Dq_\1F\F8\D7>\9D|`\B9\BE\BC\8B\164M\C3r\95\AB\8E\BAz\B3\02\B4\AD\A2\AC\D8\9A\17\1A5\CC\F7\99aZ\E8$V@\E1c\093\BF\98\97\85h\FC\EC\0A\DAoSb\A3.\08\AF(\B0t\C2\BD6\228d\1E9,\A60\E5D\FD\88\9Fe\87k\F4#H\10\D1Q\C0\F9\D2\A0U\A1A\FAC\13\C4/\A8\B6<+\C1\FF\C8\A5 \89\00\90G\EF\EA\B7\15\06\CD\B5\12~\BB)\0F\B8\07\04\9B\94!f\E6\CE\ED\E7;\FE\7F\C5\A47\B1L\91n\8Dv\03-\DE\96&}\C6\\\D3\F2O\19?\DCy\1DR\EB\F3m^\FBi\B2\F01\0C\D4\CF\8C\E2u\A9JW\84\11E\1B\F5\E4\0Es\AA\F1\DDY\14l\92T\D0xp\E3I\80P\A7\F6w\93\86\83*\C7[\E9\EE\8F\01=", align 16
@FSb3 = internal constant [256 x i8] c"8A\16v\D9\93`\F2r\C2\AB\9Au\06W\A0\91\F7\B5\C9\A2\8C\D2\90\F6\07\A7'\8E\B2I\DEC\\\D7\C7>\F5\8Fg\1F\18n\AF/\E2\85\0DS\F0\9Ce\EA\A3\AE\9E\EC\80-k\A8+6\A6\C5\86M3\FDfX\96:\09\95\10x\D8B\CC\EF&\E5a\1A?;\82\B6\DB\D4\98\E8\8B\02\EB\0A,\1D\B0o\8D\88\0E\19\87N\0B\A9\0Cy\11\7F\22\E7Y\E1\DA=\C8\12\04tT0~\B4(UhP\BE\D0\C41\CB*\AD\0F\CAp\FF2i\08b\00$\D1\FB\BA\EDE\81sm\84\9F\EEJ\C3.\C1\01\E6%H\99\B9\B3{\F9\CE\BF\DFq)\CDl\13d\9Bc\9D\C0K\B7\A5\89_\B1\17\F4\BC\D3F\CF7^G\94\FA\FC[\97\FEZ\AC<L\035\F3#\B8]j\92\D5!DQ\C6}9\83\DC\AA|wV\05\1B\A4\154\1E\1C\F8R \14\E9\BD\DD\E4\A1\E0\8A\F1\D6z\BB\E3@O", align 16
@FSb4 = internal constant [256 x i8] c"p,\B3\C0\E4W\EA\AE#kE\A5\EDO\1D\92\86\AF|\1F>\DC^\0B\A69\D5]\D9ZQl\8B\9A\FB\B0t+\F0\84\DF\CB4vm\A9\D1\04\14:\DE\112\9CS\F2\FE\CF\C3z$\E8`i\AA\A0\A1bT\1E\E0d\10\00\A3u\8A\E6\09\DD\87\83\CD\90s\F6\9D\BFR\D8\C8\C6\81o\13c\E9\A7\9F\BC)\F9/\B4x\06\E7q\D4\AB\88\8Dr\B9\F8\AC6*<\F1@\D3\BBC\15\ADw\80\82\EC'\E5\855\0CA\EF\93\19!\0ENe\BD\B8\8F\EB\CE0_\C5\1A\E1\CAG=\01\D6VM\0Df\CC-\12 \B1\99L\C2~\05\B71\17\D7Xa\1B\1C\0F\16\18\22D\B2\B5\91\08\A8\FCP\D0}\89\97[\95\FF\D2\C4H\F7\DB\03\DA?\94\\\02J3g\F3\7F\E2\9B&7;\96K\BE.y\8Cn\8E\F5\B6\FDY\98jF\BA%B\A2\FA\07U\EE\0AIh8\A4({\C9\C1\E3\F4\C7\9E", align 16
@camellia_test_ecb_key = internal constant <{ <{ <{ [16 x i8], [16 x i8] }>, [32 x i8] }>, <{ <{ [24 x i8], [8 x i8] }>, [32 x i8] }>, [2 x [32 x i8]] }> <{ <{ <{ [16 x i8], [16 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", [16 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }>, <{ <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\00\11\223DUfw", [8 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }>, [2 x [32 x i8]] [[32 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", [32 x i8] zeroinitializer] }>, align 16
@camellia_test_ecb_plain = internal constant <{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }> }> <{ [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 2, [11 x i8] zeroinitializer }> }>, align 16
@camellia_test_cbc_key = internal constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", [8 x i8] zeroinitializer }>, [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4" }>, align 16
@camellia_test_ctr_ct = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\D0\9D\C2\9A\82\14a\9A \87|v\DB\1F\0B?", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\DB\F3\C7\8D\C0\83\96\D4\DA|\90we\BB\CBD+\8E\8E\0F1\F0\DC\A7,t\17\E3S`\E0H", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\B1\9D\1F\CD\CBu\EB\88/\84\9C\E2M\85\CFs\9C\E6K+\\\9Ds\F1O-]\9D\CE\98\89\CD\DFP\86\96", [12 x i8] zeroinitializer }> }>, align 16
@camellia_test_ctr_pt = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"Single block msg", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [12 x i8] zeroinitializer }> }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_camellia_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 276) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_camellia_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_camellia_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 276) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %i = alloca i64, align 8
  %RK = alloca i32*, align 8
  %t = alloca [64 x i8], align 16
  %SIGMA = alloca [6 x [2 x i32]], align 16
  %KC = alloca [16 x i32], align 16
  %TK = alloca [20 x i32], align 16
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
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
  %0 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [68 x i32], [68 x i32]* %rk, i64 0, i64 0
  store i32* %arraydecay, i32** %RK, align 8
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay3, i32 noundef 0, i64 noundef 64) #4
  %1 = load i32*, i32** %RK, align 8
  %2 = bitcast i32* %1 to i8*
  %call4 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 272) #4
  %3 = load i32, i32* %keybits.addr, align 4
  switch i32 %3, label %sw.default [
    i32 128, label %sw.bb
    i32 192, label %sw.bb5
    i32 256, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end2
  %4 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %4, i32 0, i32 0
  store i32 3, i32* %nr, align 4
  store i32 0, i32* %idx, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end2, %do.end2
  %5 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %nr6 = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %5, i32 0, i32 0
  store i32 4, i32* %nr6, align 4
  store i32 1, i32* %idx, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end2
  store i32 -36, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %6 = load i64, i64* %i, align 8
  %7 = load i32, i32* %keybits.addr, align 4
  %div = udiv i32 %7, 8
  %conv = zext i32 %div to i64
  %cmp = icmp ult i64 %6, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %key.addr, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %11
  store i8 %10, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %keybits.addr, align 4
  %cmp9 = icmp eq i32 %13, 192
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %if.then
  %14 = load i64, i64* %i, align 8
  %cmp12 = icmp ult i64 %14, 8
  br i1 %cmp12, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond11
  %15 = load i64, i64* %i, align 8
  %add = add i64 16, %15
  %arrayidx15 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %add
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %neg = xor i32 %conv16, -1
  %conv17 = trunc i32 %neg to i8
  %17 = load i64, i64* %i, align 8
  %add18 = add i64 24, %17
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %add18
  store i8 %conv17, i8* %arrayidx19, align 1
  br label %for.inc20

for.inc20:                                        ; preds = %for.body14
  %18 = load i64, i64* %i, align 8
  %inc21 = add i64 %18, 1
  store i64 %inc21, i64* %i, align 8
  br label %for.cond11, !llvm.loop !6

for.end22:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end22, %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc65, %if.end
  %19 = load i64, i64* %i, align 8
  %cmp24 = icmp ult i64 %19, 6
  br i1 %cmp24, label %for.body26, label %for.end67

for.body26:                                       ; preds = %for.cond23
  %20 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %20
  %arrayidx28 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx27, i64 0, i64 0
  %21 = load i8, i8* %arrayidx28, align 8
  %conv29 = zext i8 %21 to i32
  %shl = shl i32 %conv29, 24
  %22 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %22
  %arrayidx31 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx30, i64 0, i64 1
  %23 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %23 to i32
  %shl33 = shl i32 %conv32, 16
  %or = or i32 %shl, %shl33
  %24 = load i64, i64* %i, align 8
  %arrayidx34 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %24
  %arrayidx35 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx34, i64 0, i64 2
  %25 = load i8, i8* %arrayidx35, align 2
  %conv36 = zext i8 %25 to i32
  %shl37 = shl i32 %conv36, 8
  %or38 = or i32 %or, %shl37
  %26 = load i64, i64* %i, align 8
  %arrayidx39 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %26
  %arrayidx40 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx39, i64 0, i64 3
  %27 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %27 to i32
  %or42 = or i32 %or38, %conv41
  %28 = load i64, i64* %i, align 8
  %arrayidx43 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 %28
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i64 0, i64 0
  store i32 %or42, i32* %arrayidx44, align 8
  %29 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %29
  %arrayidx46 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx45, i64 0, i64 4
  %30 = load i8, i8* %arrayidx46, align 4
  %conv47 = zext i8 %30 to i32
  %shl48 = shl i32 %conv47, 24
  %31 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %31
  %arrayidx50 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx49, i64 0, i64 5
  %32 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %32 to i32
  %shl52 = shl i32 %conv51, 16
  %or53 = or i32 %shl48, %shl52
  %33 = load i64, i64* %i, align 8
  %arrayidx54 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %33
  %arrayidx55 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx54, i64 0, i64 6
  %34 = load i8, i8* %arrayidx55, align 2
  %conv56 = zext i8 %34 to i32
  %shl57 = shl i32 %conv56, 8
  %or58 = or i32 %or53, %shl57
  %35 = load i64, i64* %i, align 8
  %arrayidx59 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @SIGMA_CHARS, i64 0, i64 %35
  %arrayidx60 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx59, i64 0, i64 7
  %36 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %36 to i32
  %or62 = or i32 %or58, %conv61
  %37 = load i64, i64* %i, align 8
  %arrayidx63 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 %37
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx63, i64 0, i64 1
  store i32 %or62, i32* %arrayidx64, align 4
  br label %for.inc65

for.inc65:                                        ; preds = %for.body26
  %38 = load i64, i64* %i, align 8
  %inc66 = add i64 %38, 1
  store i64 %inc66, i64* %i, align 8
  br label %for.cond23, !llvm.loop !7

for.end67:                                        ; preds = %for.cond23
  %arraydecay68 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %39 = bitcast i32* %arraydecay68 to i8*
  %call69 = call i8* @memset(i8* noundef %39, i32 noundef 0, i64 noundef 64) #4
  store i64 0, i64* %i, align 8
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc95, %for.end67
  %40 = load i64, i64* %i, align 8
  %cmp71 = icmp ult i64 %40, 8
  br i1 %cmp71, label %for.body73, label %for.end97

for.body73:                                       ; preds = %for.cond70
  %41 = load i64, i64* %i, align 8
  %mul = mul i64 %41, 4
  %arrayidx74 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %mul
  %42 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %42 to i32
  %shl76 = shl i32 %conv75, 24
  %43 = load i64, i64* %i, align 8
  %mul77 = mul i64 %43, 4
  %add78 = add i64 %mul77, 1
  %arrayidx79 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %add78
  %44 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %44 to i32
  %shl81 = shl i32 %conv80, 16
  %or82 = or i32 %shl76, %shl81
  %45 = load i64, i64* %i, align 8
  %mul83 = mul i64 %45, 4
  %add84 = add i64 %mul83, 2
  %arrayidx85 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %add84
  %46 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %46 to i32
  %shl87 = shl i32 %conv86, 8
  %or88 = or i32 %or82, %shl87
  %47 = load i64, i64* %i, align 8
  %mul89 = mul i64 %47, 4
  %add90 = add i64 %mul89, 3
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %t, i64 0, i64 %add90
  %48 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %48 to i32
  %or93 = or i32 %or88, %conv92
  %49 = load i64, i64* %i, align 8
  %arrayidx94 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %49
  store i32 %or93, i32* %arrayidx94, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body73
  %50 = load i64, i64* %i, align 8
  %inc96 = add i64 %50, 1
  store i64 %inc96, i64* %i, align 8
  br label %for.cond70, !llvm.loop !8

for.end97:                                        ; preds = %for.cond70
  store i64 0, i64* %i, align 8
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc107, %for.end97
  %51 = load i64, i64* %i, align 8
  %cmp99 = icmp ult i64 %51, 4
  br i1 %cmp99, label %for.body101, label %for.end109

for.body101:                                      ; preds = %for.cond98
  %52 = load i64, i64* %i, align 8
  %arrayidx102 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %52
  %53 = load i32, i32* %arrayidx102, align 4
  %54 = load i64, i64* %i, align 8
  %add103 = add i64 4, %54
  %arrayidx104 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add103
  %55 = load i32, i32* %arrayidx104, align 4
  %xor = xor i32 %53, %55
  %56 = load i64, i64* %i, align 8
  %add105 = add i64 8, %56
  %arrayidx106 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add105
  store i32 %xor, i32* %arrayidx106, align 4
  br label %for.inc107

for.inc107:                                       ; preds = %for.body101
  %57 = load i64, i64* %i, align 8
  %inc108 = add i64 %57, 1
  store i64 %inc108, i64* %i, align 8
  br label %for.cond98, !llvm.loop !9

for.end109:                                       ; preds = %for.cond98
  %arraydecay110 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay110, i64 8
  %arrayidx111 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 0
  %arraydecay112 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx111, i64 0, i64 0
  %arraydecay113 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr114 = getelementptr inbounds i32, i32* %arraydecay113, i64 10
  call void @camellia_feistel(i32* noundef %add.ptr, i32* noundef %arraydecay112, i32* noundef %add.ptr114) #5
  %arraydecay115 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr116 = getelementptr inbounds i32, i32* %arraydecay115, i64 10
  %arrayidx117 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 1
  %arraydecay118 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx117, i64 0, i64 0
  %arraydecay119 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr120 = getelementptr inbounds i32, i32* %arraydecay119, i64 8
  call void @camellia_feistel(i32* noundef %add.ptr116, i32* noundef %arraydecay118, i32* noundef %add.ptr120) #5
  store i64 0, i64* %i, align 8
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc129, %for.end109
  %58 = load i64, i64* %i, align 8
  %cmp122 = icmp ult i64 %58, 4
  br i1 %cmp122, label %for.body124, label %for.end131

for.body124:                                      ; preds = %for.cond121
  %59 = load i64, i64* %i, align 8
  %arrayidx125 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %59
  %60 = load i32, i32* %arrayidx125, align 4
  %61 = load i64, i64* %i, align 8
  %add126 = add i64 8, %61
  %arrayidx127 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add126
  %62 = load i32, i32* %arrayidx127, align 4
  %xor128 = xor i32 %62, %60
  store i32 %xor128, i32* %arrayidx127, align 4
  br label %for.inc129

for.inc129:                                       ; preds = %for.body124
  %63 = load i64, i64* %i, align 8
  %inc130 = add i64 %63, 1
  store i64 %inc130, i64* %i, align 8
  br label %for.cond121, !llvm.loop !10

for.end131:                                       ; preds = %for.cond121
  %arraydecay132 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr133 = getelementptr inbounds i32, i32* %arraydecay132, i64 8
  %arrayidx134 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 2
  %arraydecay135 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx134, i64 0, i64 0
  %arraydecay136 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr137 = getelementptr inbounds i32, i32* %arraydecay136, i64 10
  call void @camellia_feistel(i32* noundef %add.ptr133, i32* noundef %arraydecay135, i32* noundef %add.ptr137) #5
  %arraydecay138 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr139 = getelementptr inbounds i32, i32* %arraydecay138, i64 10
  %arrayidx140 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 3
  %arraydecay141 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx140, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr143 = getelementptr inbounds i32, i32* %arraydecay142, i64 8
  call void @camellia_feistel(i32* noundef %add.ptr139, i32* noundef %arraydecay141, i32* noundef %add.ptr143) #5
  %64 = load i32, i32* %keybits.addr, align 4
  %cmp144 = icmp ugt i32 %64, 128
  br i1 %cmp144, label %if.then146, label %if.end173

if.then146:                                       ; preds = %for.end131
  store i64 0, i64* %i, align 8
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc158, %if.then146
  %65 = load i64, i64* %i, align 8
  %cmp148 = icmp ult i64 %65, 4
  br i1 %cmp148, label %for.body150, label %for.end160

for.body150:                                      ; preds = %for.cond147
  %66 = load i64, i64* %i, align 8
  %add151 = add i64 4, %66
  %arrayidx152 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add151
  %67 = load i32, i32* %arrayidx152, align 4
  %68 = load i64, i64* %i, align 8
  %add153 = add i64 8, %68
  %arrayidx154 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add153
  %69 = load i32, i32* %arrayidx154, align 4
  %xor155 = xor i32 %67, %69
  %70 = load i64, i64* %i, align 8
  %add156 = add i64 12, %70
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 %add156
  store i32 %xor155, i32* %arrayidx157, align 4
  br label %for.inc158

for.inc158:                                       ; preds = %for.body150
  %71 = load i64, i64* %i, align 8
  %inc159 = add i64 %71, 1
  store i64 %inc159, i64* %i, align 8
  br label %for.cond147, !llvm.loop !11

for.end160:                                       ; preds = %for.cond147
  %arraydecay161 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr162 = getelementptr inbounds i32, i32* %arraydecay161, i64 12
  %arrayidx163 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 4
  %arraydecay164 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx163, i64 0, i64 0
  %arraydecay165 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr166 = getelementptr inbounds i32, i32* %arraydecay165, i64 14
  call void @camellia_feistel(i32* noundef %add.ptr162, i32* noundef %arraydecay164, i32* noundef %add.ptr166) #5
  %arraydecay167 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr168 = getelementptr inbounds i32, i32* %arraydecay167, i64 14
  %arrayidx169 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %SIGMA, i64 0, i64 5
  %arraydecay170 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx169, i64 0, i64 0
  %arraydecay171 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %add.ptr172 = getelementptr inbounds i32, i32* %arraydecay171, i64 12
  call void @camellia_feistel(i32* noundef %add.ptr168, i32* noundef %arraydecay170, i32* noundef %add.ptr172) #5
  br label %if.end173

if.end173:                                        ; preds = %for.end160, %for.end131
  %arrayidx174 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 0
  %72 = load i32, i32* %arrayidx174, align 16
  %arrayidx175 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  store i32 %72, i32* %arrayidx175, align 16
  %arrayidx176 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 1
  %73 = load i32, i32* %arrayidx176, align 4
  %arrayidx177 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  store i32 %73, i32* %arrayidx177, align 4
  %arrayidx178 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 2
  %74 = load i32, i32* %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  store i32 %74, i32* %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 3
  %75 = load i32, i32* %arrayidx180, align 4
  %arrayidx181 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  store i32 %75, i32* %arrayidx181, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc252, %if.end173
  %76 = load i64, i64* %i, align 8
  %cmp183 = icmp ule i64 %76, 4
  br i1 %cmp183, label %for.body185, label %for.end254

for.body185:                                      ; preds = %for.cond182
  %77 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %77 to i64
  %arrayidx186 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @shifts, i64 0, i64 %idxprom
  %arrayidx187 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx186, i64 0, i64 0
  %78 = load i64, i64* %i, align 8
  %sub = sub i64 %78, 1
  %arrayidx188 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx187, i64 0, i64 %sub
  %79 = load i8, i8* %arrayidx188, align 1
  %tobool = icmp ne i8 %79, 0
  br i1 %tobool, label %if.then189, label %if.end251

if.then189:                                       ; preds = %for.body185
  %arrayidx190 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %80 = load i32, i32* %arrayidx190, align 16
  %81 = load i64, i64* %i, align 8
  %mul191 = mul i64 15, %81
  %rem = urem i64 %mul191, 32
  %sh_prom = trunc i64 %rem to i32
  %shl192 = shl i32 %80, %sh_prom
  %arrayidx193 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %82 = load i32, i32* %arrayidx193, align 4
  %83 = load i64, i64* %i, align 8
  %mul194 = mul i64 15, %83
  %rem195 = urem i64 %mul194, 32
  %sub196 = sub i64 32, %rem195
  %sh_prom197 = trunc i64 %sub196 to i32
  %shr = lshr i32 %82, %sh_prom197
  %xor198 = xor i32 %shl192, %shr
  %arraydecay199 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %84 = load i64, i64* %i, align 8
  %mul200 = mul i64 %84, 4
  %add.ptr201 = getelementptr inbounds i32, i32* %arraydecay199, i64 %mul200
  %arrayidx202 = getelementptr inbounds i32, i32* %add.ptr201, i64 0
  store i32 %xor198, i32* %arrayidx202, align 4
  %arrayidx203 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %85 = load i32, i32* %arrayidx203, align 4
  %86 = load i64, i64* %i, align 8
  %mul204 = mul i64 15, %86
  %rem205 = urem i64 %mul204, 32
  %sh_prom206 = trunc i64 %rem205 to i32
  %shl207 = shl i32 %85, %sh_prom206
  %arrayidx208 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %87 = load i32, i32* %arrayidx208, align 8
  %88 = load i64, i64* %i, align 8
  %mul209 = mul i64 15, %88
  %rem210 = urem i64 %mul209, 32
  %sub211 = sub i64 32, %rem210
  %sh_prom212 = trunc i64 %sub211 to i32
  %shr213 = lshr i32 %87, %sh_prom212
  %xor214 = xor i32 %shl207, %shr213
  %arraydecay215 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %89 = load i64, i64* %i, align 8
  %mul216 = mul i64 %89, 4
  %add.ptr217 = getelementptr inbounds i32, i32* %arraydecay215, i64 %mul216
  %arrayidx218 = getelementptr inbounds i32, i32* %add.ptr217, i64 1
  store i32 %xor214, i32* %arrayidx218, align 4
  %arrayidx219 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %90 = load i32, i32* %arrayidx219, align 8
  %91 = load i64, i64* %i, align 8
  %mul220 = mul i64 15, %91
  %rem221 = urem i64 %mul220, 32
  %sh_prom222 = trunc i64 %rem221 to i32
  %shl223 = shl i32 %90, %sh_prom222
  %arrayidx224 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %92 = load i32, i32* %arrayidx224, align 4
  %93 = load i64, i64* %i, align 8
  %mul225 = mul i64 15, %93
  %rem226 = urem i64 %mul225, 32
  %sub227 = sub i64 32, %rem226
  %sh_prom228 = trunc i64 %sub227 to i32
  %shr229 = lshr i32 %92, %sh_prom228
  %xor230 = xor i32 %shl223, %shr229
  %arraydecay231 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %94 = load i64, i64* %i, align 8
  %mul232 = mul i64 %94, 4
  %add.ptr233 = getelementptr inbounds i32, i32* %arraydecay231, i64 %mul232
  %arrayidx234 = getelementptr inbounds i32, i32* %add.ptr233, i64 2
  store i32 %xor230, i32* %arrayidx234, align 4
  %arrayidx235 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %95 = load i32, i32* %arrayidx235, align 4
  %96 = load i64, i64* %i, align 8
  %mul236 = mul i64 15, %96
  %rem237 = urem i64 %mul236, 32
  %sh_prom238 = trunc i64 %rem237 to i32
  %shl239 = shl i32 %95, %sh_prom238
  %arrayidx240 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %97 = load i32, i32* %arrayidx240, align 16
  %98 = load i64, i64* %i, align 8
  %mul241 = mul i64 15, %98
  %rem242 = urem i64 %mul241, 32
  %sub243 = sub i64 32, %rem242
  %sh_prom244 = trunc i64 %sub243 to i32
  %shr245 = lshr i32 %97, %sh_prom244
  %xor246 = xor i32 %shl239, %shr245
  %arraydecay247 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %99 = load i64, i64* %i, align 8
  %mul248 = mul i64 %99, 4
  %add.ptr249 = getelementptr inbounds i32, i32* %arraydecay247, i64 %mul248
  %arrayidx250 = getelementptr inbounds i32, i32* %add.ptr249, i64 3
  store i32 %xor246, i32* %arrayidx250, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.then189, %for.body185
  br label %for.inc252

for.inc252:                                       ; preds = %if.end251
  %100 = load i64, i64* %i, align 8
  %inc253 = add i64 %100, 1
  store i64 %inc253, i64* %i, align 8
  br label %for.cond182, !llvm.loop !12

for.end254:                                       ; preds = %for.cond182
  store i64 0, i64* %i, align 8
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc275, %for.end254
  %101 = load i64, i64* %i, align 8
  %cmp256 = icmp ult i64 %101, 20
  br i1 %cmp256, label %for.body258, label %for.end277

for.body258:                                      ; preds = %for.cond255
  %102 = load i32, i32* %idx, align 4
  %idxprom259 = sext i32 %102 to i64
  %arrayidx260 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom259
  %arrayidx261 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx260, i64 0, i64 0
  %103 = load i64, i64* %i, align 8
  %arrayidx262 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx261, i64 0, i64 %103
  %104 = load i8, i8* %arrayidx262, align 1
  %conv263 = sext i8 %104 to i32
  %cmp264 = icmp ne i32 %conv263, -1
  br i1 %cmp264, label %if.then266, label %if.end274

if.then266:                                       ; preds = %for.body258
  %105 = load i64, i64* %i, align 8
  %arrayidx267 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 %105
  %106 = load i32, i32* %arrayidx267, align 4
  %107 = load i32*, i32** %RK, align 8
  %108 = load i32, i32* %idx, align 4
  %idxprom268 = sext i32 %108 to i64
  %arrayidx269 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx269, i64 0, i64 0
  %109 = load i64, i64* %i, align 8
  %arrayidx271 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx270, i64 0, i64 %109
  %110 = load i8, i8* %arrayidx271, align 1
  %idxprom272 = sext i8 %110 to i64
  %arrayidx273 = getelementptr inbounds i32, i32* %107, i64 %idxprom272
  store i32 %106, i32* %arrayidx273, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then266, %for.body258
  br label %for.inc275

for.inc275:                                       ; preds = %if.end274
  %111 = load i64, i64* %i, align 8
  %inc276 = add i64 %111, 1
  store i64 %inc276, i64* %i, align 8
  br label %for.cond255, !llvm.loop !13

for.end277:                                       ; preds = %for.cond255
  %112 = load i32, i32* %keybits.addr, align 4
  %cmp278 = icmp ugt i32 %112, 128
  br i1 %cmp278, label %if.then280, label %if.end391

if.then280:                                       ; preds = %for.end277
  %arrayidx281 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 4
  %113 = load i32, i32* %arrayidx281, align 16
  %arrayidx282 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  store i32 %113, i32* %arrayidx282, align 16
  %arrayidx283 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 5
  %114 = load i32, i32* %arrayidx283, align 4
  %arrayidx284 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  store i32 %114, i32* %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 6
  %115 = load i32, i32* %arrayidx285, align 8
  %arrayidx286 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  store i32 %115, i32* %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 7
  %116 = load i32, i32* %arrayidx287, align 4
  %arrayidx288 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  store i32 %116, i32* %arrayidx288, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc365, %if.then280
  %117 = load i64, i64* %i, align 8
  %cmp290 = icmp ule i64 %117, 4
  br i1 %cmp290, label %for.body292, label %for.end367

for.body292:                                      ; preds = %for.cond289
  %118 = load i32, i32* %idx, align 4
  %idxprom293 = sext i32 %118 to i64
  %arrayidx294 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @shifts, i64 0, i64 %idxprom293
  %arrayidx295 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx294, i64 0, i64 1
  %119 = load i64, i64* %i, align 8
  %sub296 = sub i64 %119, 1
  %arrayidx297 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx295, i64 0, i64 %sub296
  %120 = load i8, i8* %arrayidx297, align 1
  %tobool298 = icmp ne i8 %120, 0
  br i1 %tobool298, label %if.then299, label %if.end364

if.then299:                                       ; preds = %for.body292
  %arrayidx300 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %121 = load i32, i32* %arrayidx300, align 16
  %122 = load i64, i64* %i, align 8
  %mul301 = mul i64 15, %122
  %rem302 = urem i64 %mul301, 32
  %sh_prom303 = trunc i64 %rem302 to i32
  %shl304 = shl i32 %121, %sh_prom303
  %arrayidx305 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %123 = load i32, i32* %arrayidx305, align 4
  %124 = load i64, i64* %i, align 8
  %mul306 = mul i64 15, %124
  %rem307 = urem i64 %mul306, 32
  %sub308 = sub i64 32, %rem307
  %sh_prom309 = trunc i64 %sub308 to i32
  %shr310 = lshr i32 %123, %sh_prom309
  %xor311 = xor i32 %shl304, %shr310
  %arraydecay312 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %125 = load i64, i64* %i, align 8
  %mul313 = mul i64 %125, 4
  %add.ptr314 = getelementptr inbounds i32, i32* %arraydecay312, i64 %mul313
  %arrayidx315 = getelementptr inbounds i32, i32* %add.ptr314, i64 0
  store i32 %xor311, i32* %arrayidx315, align 4
  %arrayidx316 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %126 = load i32, i32* %arrayidx316, align 4
  %127 = load i64, i64* %i, align 8
  %mul317 = mul i64 15, %127
  %rem318 = urem i64 %mul317, 32
  %sh_prom319 = trunc i64 %rem318 to i32
  %shl320 = shl i32 %126, %sh_prom319
  %arrayidx321 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %128 = load i32, i32* %arrayidx321, align 8
  %129 = load i64, i64* %i, align 8
  %mul322 = mul i64 15, %129
  %rem323 = urem i64 %mul322, 32
  %sub324 = sub i64 32, %rem323
  %sh_prom325 = trunc i64 %sub324 to i32
  %shr326 = lshr i32 %128, %sh_prom325
  %xor327 = xor i32 %shl320, %shr326
  %arraydecay328 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %130 = load i64, i64* %i, align 8
  %mul329 = mul i64 %130, 4
  %add.ptr330 = getelementptr inbounds i32, i32* %arraydecay328, i64 %mul329
  %arrayidx331 = getelementptr inbounds i32, i32* %add.ptr330, i64 1
  store i32 %xor327, i32* %arrayidx331, align 4
  %arrayidx332 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %131 = load i32, i32* %arrayidx332, align 8
  %132 = load i64, i64* %i, align 8
  %mul333 = mul i64 15, %132
  %rem334 = urem i64 %mul333, 32
  %sh_prom335 = trunc i64 %rem334 to i32
  %shl336 = shl i32 %131, %sh_prom335
  %arrayidx337 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %133 = load i32, i32* %arrayidx337, align 4
  %134 = load i64, i64* %i, align 8
  %mul338 = mul i64 15, %134
  %rem339 = urem i64 %mul338, 32
  %sub340 = sub i64 32, %rem339
  %sh_prom341 = trunc i64 %sub340 to i32
  %shr342 = lshr i32 %133, %sh_prom341
  %xor343 = xor i32 %shl336, %shr342
  %arraydecay344 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %135 = load i64, i64* %i, align 8
  %mul345 = mul i64 %135, 4
  %add.ptr346 = getelementptr inbounds i32, i32* %arraydecay344, i64 %mul345
  %arrayidx347 = getelementptr inbounds i32, i32* %add.ptr346, i64 2
  store i32 %xor343, i32* %arrayidx347, align 4
  %arrayidx348 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %136 = load i32, i32* %arrayidx348, align 4
  %137 = load i64, i64* %i, align 8
  %mul349 = mul i64 15, %137
  %rem350 = urem i64 %mul349, 32
  %sh_prom351 = trunc i64 %rem350 to i32
  %shl352 = shl i32 %136, %sh_prom351
  %arrayidx353 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %138 = load i32, i32* %arrayidx353, align 16
  %139 = load i64, i64* %i, align 8
  %mul354 = mul i64 15, %139
  %rem355 = urem i64 %mul354, 32
  %sub356 = sub i64 32, %rem355
  %sh_prom357 = trunc i64 %sub356 to i32
  %shr358 = lshr i32 %138, %sh_prom357
  %xor359 = xor i32 %shl352, %shr358
  %arraydecay360 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %140 = load i64, i64* %i, align 8
  %mul361 = mul i64 %140, 4
  %add.ptr362 = getelementptr inbounds i32, i32* %arraydecay360, i64 %mul361
  %arrayidx363 = getelementptr inbounds i32, i32* %add.ptr362, i64 3
  store i32 %xor359, i32* %arrayidx363, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.then299, %for.body292
  br label %for.inc365

for.inc365:                                       ; preds = %if.end364
  %141 = load i64, i64* %i, align 8
  %inc366 = add i64 %141, 1
  store i64 %inc366, i64* %i, align 8
  br label %for.cond289, !llvm.loop !14

for.end367:                                       ; preds = %for.cond289
  store i64 0, i64* %i, align 8
  br label %for.cond368

for.cond368:                                      ; preds = %for.inc388, %for.end367
  %142 = load i64, i64* %i, align 8
  %cmp369 = icmp ult i64 %142, 20
  br i1 %cmp369, label %for.body371, label %for.end390

for.body371:                                      ; preds = %for.cond368
  %143 = load i32, i32* %idx, align 4
  %idxprom372 = sext i32 %143 to i64
  %arrayidx373 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom372
  %arrayidx374 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx373, i64 0, i64 1
  %144 = load i64, i64* %i, align 8
  %arrayidx375 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx374, i64 0, i64 %144
  %145 = load i8, i8* %arrayidx375, align 1
  %conv376 = sext i8 %145 to i32
  %cmp377 = icmp ne i32 %conv376, -1
  br i1 %cmp377, label %if.then379, label %if.end387

if.then379:                                       ; preds = %for.body371
  %146 = load i64, i64* %i, align 8
  %arrayidx380 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 %146
  %147 = load i32, i32* %arrayidx380, align 4
  %148 = load i32*, i32** %RK, align 8
  %149 = load i32, i32* %idx, align 4
  %idxprom381 = sext i32 %149 to i64
  %arrayidx382 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom381
  %arrayidx383 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx382, i64 0, i64 1
  %150 = load i64, i64* %i, align 8
  %arrayidx384 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx383, i64 0, i64 %150
  %151 = load i8, i8* %arrayidx384, align 1
  %idxprom385 = sext i8 %151 to i64
  %arrayidx386 = getelementptr inbounds i32, i32* %148, i64 %idxprom385
  store i32 %147, i32* %arrayidx386, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.then379, %for.body371
  br label %for.inc388

for.inc388:                                       ; preds = %if.end387
  %152 = load i64, i64* %i, align 8
  %inc389 = add i64 %152, 1
  store i64 %inc389, i64* %i, align 8
  br label %for.cond368, !llvm.loop !15

for.end390:                                       ; preds = %for.cond368
  br label %if.end391

if.end391:                                        ; preds = %for.end390, %for.end277
  %arrayidx392 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 8
  %153 = load i32, i32* %arrayidx392, align 16
  %arrayidx393 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  store i32 %153, i32* %arrayidx393, align 16
  %arrayidx394 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 9
  %154 = load i32, i32* %arrayidx394, align 4
  %arrayidx395 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  store i32 %154, i32* %arrayidx395, align 4
  %arrayidx396 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 10
  %155 = load i32, i32* %arrayidx396, align 8
  %arrayidx397 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  store i32 %155, i32* %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 11
  %156 = load i32, i32* %arrayidx398, align 4
  %arrayidx399 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  store i32 %156, i32* %arrayidx399, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond400

for.cond400:                                      ; preds = %for.inc476, %if.end391
  %157 = load i64, i64* %i, align 8
  %cmp401 = icmp ule i64 %157, 4
  br i1 %cmp401, label %for.body403, label %for.end478

for.body403:                                      ; preds = %for.cond400
  %158 = load i32, i32* %idx, align 4
  %idxprom404 = sext i32 %158 to i64
  %arrayidx405 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @shifts, i64 0, i64 %idxprom404
  %arrayidx406 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx405, i64 0, i64 2
  %159 = load i64, i64* %i, align 8
  %sub407 = sub i64 %159, 1
  %arrayidx408 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx406, i64 0, i64 %sub407
  %160 = load i8, i8* %arrayidx408, align 1
  %tobool409 = icmp ne i8 %160, 0
  br i1 %tobool409, label %if.then410, label %if.end475

if.then410:                                       ; preds = %for.body403
  %arrayidx411 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %161 = load i32, i32* %arrayidx411, align 16
  %162 = load i64, i64* %i, align 8
  %mul412 = mul i64 15, %162
  %rem413 = urem i64 %mul412, 32
  %sh_prom414 = trunc i64 %rem413 to i32
  %shl415 = shl i32 %161, %sh_prom414
  %arrayidx416 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %163 = load i32, i32* %arrayidx416, align 4
  %164 = load i64, i64* %i, align 8
  %mul417 = mul i64 15, %164
  %rem418 = urem i64 %mul417, 32
  %sub419 = sub i64 32, %rem418
  %sh_prom420 = trunc i64 %sub419 to i32
  %shr421 = lshr i32 %163, %sh_prom420
  %xor422 = xor i32 %shl415, %shr421
  %arraydecay423 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %165 = load i64, i64* %i, align 8
  %mul424 = mul i64 %165, 4
  %add.ptr425 = getelementptr inbounds i32, i32* %arraydecay423, i64 %mul424
  %arrayidx426 = getelementptr inbounds i32, i32* %add.ptr425, i64 0
  store i32 %xor422, i32* %arrayidx426, align 4
  %arrayidx427 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %166 = load i32, i32* %arrayidx427, align 4
  %167 = load i64, i64* %i, align 8
  %mul428 = mul i64 15, %167
  %rem429 = urem i64 %mul428, 32
  %sh_prom430 = trunc i64 %rem429 to i32
  %shl431 = shl i32 %166, %sh_prom430
  %arrayidx432 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %168 = load i32, i32* %arrayidx432, align 8
  %169 = load i64, i64* %i, align 8
  %mul433 = mul i64 15, %169
  %rem434 = urem i64 %mul433, 32
  %sub435 = sub i64 32, %rem434
  %sh_prom436 = trunc i64 %sub435 to i32
  %shr437 = lshr i32 %168, %sh_prom436
  %xor438 = xor i32 %shl431, %shr437
  %arraydecay439 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %170 = load i64, i64* %i, align 8
  %mul440 = mul i64 %170, 4
  %add.ptr441 = getelementptr inbounds i32, i32* %arraydecay439, i64 %mul440
  %arrayidx442 = getelementptr inbounds i32, i32* %add.ptr441, i64 1
  store i32 %xor438, i32* %arrayidx442, align 4
  %arrayidx443 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %171 = load i32, i32* %arrayidx443, align 8
  %172 = load i64, i64* %i, align 8
  %mul444 = mul i64 15, %172
  %rem445 = urem i64 %mul444, 32
  %sh_prom446 = trunc i64 %rem445 to i32
  %shl447 = shl i32 %171, %sh_prom446
  %arrayidx448 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %173 = load i32, i32* %arrayidx448, align 4
  %174 = load i64, i64* %i, align 8
  %mul449 = mul i64 15, %174
  %rem450 = urem i64 %mul449, 32
  %sub451 = sub i64 32, %rem450
  %sh_prom452 = trunc i64 %sub451 to i32
  %shr453 = lshr i32 %173, %sh_prom452
  %xor454 = xor i32 %shl447, %shr453
  %arraydecay455 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %175 = load i64, i64* %i, align 8
  %mul456 = mul i64 %175, 4
  %add.ptr457 = getelementptr inbounds i32, i32* %arraydecay455, i64 %mul456
  %arrayidx458 = getelementptr inbounds i32, i32* %add.ptr457, i64 2
  store i32 %xor454, i32* %arrayidx458, align 4
  %arrayidx459 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %176 = load i32, i32* %arrayidx459, align 4
  %177 = load i64, i64* %i, align 8
  %mul460 = mul i64 15, %177
  %rem461 = urem i64 %mul460, 32
  %sh_prom462 = trunc i64 %rem461 to i32
  %shl463 = shl i32 %176, %sh_prom462
  %arrayidx464 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %178 = load i32, i32* %arrayidx464, align 16
  %179 = load i64, i64* %i, align 8
  %mul465 = mul i64 15, %179
  %rem466 = urem i64 %mul465, 32
  %sub467 = sub i64 32, %rem466
  %sh_prom468 = trunc i64 %sub467 to i32
  %shr469 = lshr i32 %178, %sh_prom468
  %xor470 = xor i32 %shl463, %shr469
  %arraydecay471 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %180 = load i64, i64* %i, align 8
  %mul472 = mul i64 %180, 4
  %add.ptr473 = getelementptr inbounds i32, i32* %arraydecay471, i64 %mul472
  %arrayidx474 = getelementptr inbounds i32, i32* %add.ptr473, i64 3
  store i32 %xor470, i32* %arrayidx474, align 4
  br label %if.end475

if.end475:                                        ; preds = %if.then410, %for.body403
  br label %for.inc476

for.inc476:                                       ; preds = %if.end475
  %181 = load i64, i64* %i, align 8
  %inc477 = add i64 %181, 1
  store i64 %inc477, i64* %i, align 8
  br label %for.cond400, !llvm.loop !16

for.end478:                                       ; preds = %for.cond400
  store i64 0, i64* %i, align 8
  br label %for.cond479

for.cond479:                                      ; preds = %for.inc499, %for.end478
  %182 = load i64, i64* %i, align 8
  %cmp480 = icmp ult i64 %182, 20
  br i1 %cmp480, label %for.body482, label %for.end501

for.body482:                                      ; preds = %for.cond479
  %183 = load i32, i32* %idx, align 4
  %idxprom483 = sext i32 %183 to i64
  %arrayidx484 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom483
  %arrayidx485 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx484, i64 0, i64 2
  %184 = load i64, i64* %i, align 8
  %arrayidx486 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx485, i64 0, i64 %184
  %185 = load i8, i8* %arrayidx486, align 1
  %conv487 = sext i8 %185 to i32
  %cmp488 = icmp ne i32 %conv487, -1
  br i1 %cmp488, label %if.then490, label %if.end498

if.then490:                                       ; preds = %for.body482
  %186 = load i64, i64* %i, align 8
  %arrayidx491 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 %186
  %187 = load i32, i32* %arrayidx491, align 4
  %188 = load i32*, i32** %RK, align 8
  %189 = load i32, i32* %idx, align 4
  %idxprom492 = sext i32 %189 to i64
  %arrayidx493 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom492
  %arrayidx494 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx493, i64 0, i64 2
  %190 = load i64, i64* %i, align 8
  %arrayidx495 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx494, i64 0, i64 %190
  %191 = load i8, i8* %arrayidx495, align 1
  %idxprom496 = sext i8 %191 to i64
  %arrayidx497 = getelementptr inbounds i32, i32* %188, i64 %idxprom496
  store i32 %187, i32* %arrayidx497, align 4
  br label %if.end498

if.end498:                                        ; preds = %if.then490, %for.body482
  br label %for.inc499

for.inc499:                                       ; preds = %if.end498
  %192 = load i64, i64* %i, align 8
  %inc500 = add i64 %192, 1
  store i64 %inc500, i64* %i, align 8
  br label %for.cond479, !llvm.loop !17

for.end501:                                       ; preds = %for.cond479
  %193 = load i32, i32* %keybits.addr, align 4
  %cmp502 = icmp ugt i32 %193, 128
  br i1 %cmp502, label %if.then504, label %if.end615

if.then504:                                       ; preds = %for.end501
  %arrayidx505 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 12
  %194 = load i32, i32* %arrayidx505, align 16
  %arrayidx506 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  store i32 %194, i32* %arrayidx506, align 16
  %arrayidx507 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 13
  %195 = load i32, i32* %arrayidx507, align 4
  %arrayidx508 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  store i32 %195, i32* %arrayidx508, align 4
  %arrayidx509 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 14
  %196 = load i32, i32* %arrayidx509, align 8
  %arrayidx510 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  store i32 %196, i32* %arrayidx510, align 8
  %arrayidx511 = getelementptr inbounds [16 x i32], [16 x i32]* %KC, i64 0, i64 15
  %197 = load i32, i32* %arrayidx511, align 4
  %arrayidx512 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  store i32 %197, i32* %arrayidx512, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond513

for.cond513:                                      ; preds = %for.inc589, %if.then504
  %198 = load i64, i64* %i, align 8
  %cmp514 = icmp ule i64 %198, 4
  br i1 %cmp514, label %for.body516, label %for.end591

for.body516:                                      ; preds = %for.cond513
  %199 = load i32, i32* %idx, align 4
  %idxprom517 = sext i32 %199 to i64
  %arrayidx518 = getelementptr inbounds [2 x [4 x [4 x i8]]], [2 x [4 x [4 x i8]]]* @shifts, i64 0, i64 %idxprom517
  %arrayidx519 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %arrayidx518, i64 0, i64 3
  %200 = load i64, i64* %i, align 8
  %sub520 = sub i64 %200, 1
  %arrayidx521 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx519, i64 0, i64 %sub520
  %201 = load i8, i8* %arrayidx521, align 1
  %tobool522 = icmp ne i8 %201, 0
  br i1 %tobool522, label %if.then523, label %if.end588

if.then523:                                       ; preds = %for.body516
  %arrayidx524 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %202 = load i32, i32* %arrayidx524, align 16
  %203 = load i64, i64* %i, align 8
  %mul525 = mul i64 15, %203
  %rem526 = urem i64 %mul525, 32
  %sh_prom527 = trunc i64 %rem526 to i32
  %shl528 = shl i32 %202, %sh_prom527
  %arrayidx529 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %204 = load i32, i32* %arrayidx529, align 4
  %205 = load i64, i64* %i, align 8
  %mul530 = mul i64 15, %205
  %rem531 = urem i64 %mul530, 32
  %sub532 = sub i64 32, %rem531
  %sh_prom533 = trunc i64 %sub532 to i32
  %shr534 = lshr i32 %204, %sh_prom533
  %xor535 = xor i32 %shl528, %shr534
  %arraydecay536 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %206 = load i64, i64* %i, align 8
  %mul537 = mul i64 %206, 4
  %add.ptr538 = getelementptr inbounds i32, i32* %arraydecay536, i64 %mul537
  %arrayidx539 = getelementptr inbounds i32, i32* %add.ptr538, i64 0
  store i32 %xor535, i32* %arrayidx539, align 4
  %arrayidx540 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 1
  %207 = load i32, i32* %arrayidx540, align 4
  %208 = load i64, i64* %i, align 8
  %mul541 = mul i64 15, %208
  %rem542 = urem i64 %mul541, 32
  %sh_prom543 = trunc i64 %rem542 to i32
  %shl544 = shl i32 %207, %sh_prom543
  %arrayidx545 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %209 = load i32, i32* %arrayidx545, align 8
  %210 = load i64, i64* %i, align 8
  %mul546 = mul i64 15, %210
  %rem547 = urem i64 %mul546, 32
  %sub548 = sub i64 32, %rem547
  %sh_prom549 = trunc i64 %sub548 to i32
  %shr550 = lshr i32 %209, %sh_prom549
  %xor551 = xor i32 %shl544, %shr550
  %arraydecay552 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %211 = load i64, i64* %i, align 8
  %mul553 = mul i64 %211, 4
  %add.ptr554 = getelementptr inbounds i32, i32* %arraydecay552, i64 %mul553
  %arrayidx555 = getelementptr inbounds i32, i32* %add.ptr554, i64 1
  store i32 %xor551, i32* %arrayidx555, align 4
  %arrayidx556 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 2
  %212 = load i32, i32* %arrayidx556, align 8
  %213 = load i64, i64* %i, align 8
  %mul557 = mul i64 15, %213
  %rem558 = urem i64 %mul557, 32
  %sh_prom559 = trunc i64 %rem558 to i32
  %shl560 = shl i32 %212, %sh_prom559
  %arrayidx561 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %214 = load i32, i32* %arrayidx561, align 4
  %215 = load i64, i64* %i, align 8
  %mul562 = mul i64 15, %215
  %rem563 = urem i64 %mul562, 32
  %sub564 = sub i64 32, %rem563
  %sh_prom565 = trunc i64 %sub564 to i32
  %shr566 = lshr i32 %214, %sh_prom565
  %xor567 = xor i32 %shl560, %shr566
  %arraydecay568 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %216 = load i64, i64* %i, align 8
  %mul569 = mul i64 %216, 4
  %add.ptr570 = getelementptr inbounds i32, i32* %arraydecay568, i64 %mul569
  %arrayidx571 = getelementptr inbounds i32, i32* %add.ptr570, i64 2
  store i32 %xor567, i32* %arrayidx571, align 4
  %arrayidx572 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 3
  %217 = load i32, i32* %arrayidx572, align 4
  %218 = load i64, i64* %i, align 8
  %mul573 = mul i64 15, %218
  %rem574 = urem i64 %mul573, 32
  %sh_prom575 = trunc i64 %rem574 to i32
  %shl576 = shl i32 %217, %sh_prom575
  %arrayidx577 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %219 = load i32, i32* %arrayidx577, align 16
  %220 = load i64, i64* %i, align 8
  %mul578 = mul i64 15, %220
  %rem579 = urem i64 %mul578, 32
  %sub580 = sub i64 32, %rem579
  %sh_prom581 = trunc i64 %sub580 to i32
  %shr582 = lshr i32 %219, %sh_prom581
  %xor583 = xor i32 %shl576, %shr582
  %arraydecay584 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 0
  %221 = load i64, i64* %i, align 8
  %mul585 = mul i64 %221, 4
  %add.ptr586 = getelementptr inbounds i32, i32* %arraydecay584, i64 %mul585
  %arrayidx587 = getelementptr inbounds i32, i32* %add.ptr586, i64 3
  store i32 %xor583, i32* %arrayidx587, align 4
  br label %if.end588

if.end588:                                        ; preds = %if.then523, %for.body516
  br label %for.inc589

for.inc589:                                       ; preds = %if.end588
  %222 = load i64, i64* %i, align 8
  %inc590 = add i64 %222, 1
  store i64 %inc590, i64* %i, align 8
  br label %for.cond513, !llvm.loop !18

for.end591:                                       ; preds = %for.cond513
  store i64 0, i64* %i, align 8
  br label %for.cond592

for.cond592:                                      ; preds = %for.inc612, %for.end591
  %223 = load i64, i64* %i, align 8
  %cmp593 = icmp ult i64 %223, 20
  br i1 %cmp593, label %for.body595, label %for.end614

for.body595:                                      ; preds = %for.cond592
  %224 = load i32, i32* %idx, align 4
  %idxprom596 = sext i32 %224 to i64
  %arrayidx597 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom596
  %arrayidx598 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx597, i64 0, i64 3
  %225 = load i64, i64* %i, align 8
  %arrayidx599 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx598, i64 0, i64 %225
  %226 = load i8, i8* %arrayidx599, align 1
  %conv600 = sext i8 %226 to i32
  %cmp601 = icmp ne i32 %conv600, -1
  br i1 %cmp601, label %if.then603, label %if.end611

if.then603:                                       ; preds = %for.body595
  %227 = load i64, i64* %i, align 8
  %arrayidx604 = getelementptr inbounds [20 x i32], [20 x i32]* %TK, i64 0, i64 %227
  %228 = load i32, i32* %arrayidx604, align 4
  %229 = load i32*, i32** %RK, align 8
  %230 = load i32, i32* %idx, align 4
  %idxprom605 = sext i32 %230 to i64
  %arrayidx606 = getelementptr inbounds [2 x [4 x [20 x i8]]], [2 x [4 x [20 x i8]]]* @indexes, i64 0, i64 %idxprom605
  %arrayidx607 = getelementptr inbounds [4 x [20 x i8]], [4 x [20 x i8]]* %arrayidx606, i64 0, i64 3
  %231 = load i64, i64* %i, align 8
  %arrayidx608 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx607, i64 0, i64 %231
  %232 = load i8, i8* %arrayidx608, align 1
  %idxprom609 = sext i8 %232 to i64
  %arrayidx610 = getelementptr inbounds i32, i32* %229, i64 %idxprom609
  store i32 %228, i32* %arrayidx610, align 4
  br label %if.end611

if.end611:                                        ; preds = %if.then603, %for.body595
  br label %for.inc612

for.inc612:                                       ; preds = %if.end611
  %233 = load i64, i64* %i, align 8
  %inc613 = add i64 %233, 1
  store i64 %inc613, i64* %i, align 8
  br label %for.cond592, !llvm.loop !19

for.end614:                                       ; preds = %for.cond592
  br label %if.end615

if.end615:                                        ; preds = %for.end614, %for.end501
  store i64 0, i64* %i, align 8
  br label %for.cond616

for.cond616:                                      ; preds = %for.inc638, %if.end615
  %234 = load i64, i64* %i, align 8
  %cmp617 = icmp ult i64 %234, 20
  br i1 %cmp617, label %for.body619, label %for.end640

for.body619:                                      ; preds = %for.cond616
  %235 = load i32, i32* %idx, align 4
  %idxprom620 = sext i32 %235 to i64
  %arrayidx621 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @transposes, i64 0, i64 %idxprom620
  %236 = load i64, i64* %i, align 8
  %arrayidx622 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx621, i64 0, i64 %236
  %237 = load i8, i8* %arrayidx622, align 1
  %conv623 = sext i8 %237 to i32
  %cmp624 = icmp ne i32 %conv623, -1
  br i1 %cmp624, label %if.then626, label %if.end637

if.then626:                                       ; preds = %for.body619
  %238 = load i32*, i32** %RK, align 8
  %239 = load i32, i32* %idx, align 4
  %idxprom627 = sext i32 %239 to i64
  %arrayidx628 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @transposes, i64 0, i64 %idxprom627
  %240 = load i64, i64* %i, align 8
  %arrayidx629 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx628, i64 0, i64 %240
  %241 = load i8, i8* %arrayidx629, align 1
  %idxprom630 = sext i8 %241 to i64
  %arrayidx631 = getelementptr inbounds i32, i32* %238, i64 %idxprom630
  %242 = load i32, i32* %arrayidx631, align 4
  %243 = load i32*, i32** %RK, align 8
  %244 = load i32, i32* %idx, align 4
  %mul632 = mul nsw i32 12, %244
  %add633 = add nsw i32 32, %mul632
  %conv634 = sext i32 %add633 to i64
  %245 = load i64, i64* %i, align 8
  %add635 = add i64 %conv634, %245
  %arrayidx636 = getelementptr inbounds i32, i32* %243, i64 %add635
  store i32 %242, i32* %arrayidx636, align 4
  br label %if.end637

if.end637:                                        ; preds = %if.then626, %for.body619
  br label %for.inc638

for.inc638:                                       ; preds = %if.end637
  %246 = load i64, i64* %i, align 8
  %inc639 = add i64 %246, 1
  store i64 %inc639, i64* %i, align 8
  br label %for.cond616, !llvm.loop !20

for.end640:                                       ; preds = %for.cond616
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end640, %sw.default
  %247 = load i32, i32* %retval, align 4
  ret i32 %247
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_feistel(i32* noundef %x, i32* noundef %k, i32* noundef %z) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %z.addr = alloca i32*, align 8
  %I0 = alloca i32, align 4
  %I1 = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %k, i32** %k.addr, align 8
  store i32* %z, i32** %z.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %k.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %xor = xor i32 %1, %3
  store i32 %xor, i32* %I0, align 4
  %4 = load i32*, i32** %x.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %k.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %xor4 = xor i32 %5, %7
  store i32 %xor4, i32* %I1, align 4
  %8 = load i32, i32* %I0, align 4
  %shr = lshr i32 %8, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %shl = shl i32 %conv6, 24
  %10 = load i32, i32* %I0, align 4
  %shr7 = lshr i32 %10, 16
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %idxprom10 = zext i8 %conv9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb2, i64 0, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 16
  %or = or i32 %shl, %shl13
  %12 = load i32, i32* %I0, align 4
  %shr14 = lshr i32 %12, 8
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %idxprom17 = zext i8 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb3, i64 0, i64 %idxprom17
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or, %shl20
  %14 = load i32, i32* %I0, align 4
  %and22 = and i32 %14, 255
  %conv23 = trunc i32 %and22 to i8
  %idxprom24 = zext i8 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb4, i64 0, i64 %idxprom24
  %15 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %or27 = or i32 %or21, %conv26
  store i32 %or27, i32* %I0, align 4
  %16 = load i32, i32* %I1, align 4
  %shr28 = lshr i32 %16, 24
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %idxprom31 = zext i8 %conv30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb2, i64 0, i64 %idxprom31
  %17 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %17 to i32
  %shl34 = shl i32 %conv33, 24
  %18 = load i32, i32* %I1, align 4
  %shr35 = lshr i32 %18, 16
  %and36 = and i32 %shr35, 255
  %conv37 = trunc i32 %and36 to i8
  %idxprom38 = zext i8 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb3, i64 0, i64 %idxprom38
  %19 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %19 to i32
  %shl41 = shl i32 %conv40, 16
  %or42 = or i32 %shl34, %shl41
  %20 = load i32, i32* %I1, align 4
  %shr43 = lshr i32 %20, 8
  %and44 = and i32 %shr43, 255
  %conv45 = trunc i32 %and44 to i8
  %idxprom46 = zext i8 %conv45 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb4, i64 0, i64 %idxprom46
  %21 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %21 to i32
  %shl49 = shl i32 %conv48, 8
  %or50 = or i32 %or42, %shl49
  %22 = load i32, i32* %I1, align 4
  %and51 = and i32 %22, 255
  %conv52 = trunc i32 %and51 to i8
  %idxprom53 = zext i8 %conv52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @FSb, i64 0, i64 %idxprom53
  %23 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %23 to i32
  %or56 = or i32 %or50, %conv55
  store i32 %or56, i32* %I1, align 4
  %24 = load i32, i32* %I1, align 4
  %shl57 = shl i32 %24, 8
  %25 = load i32, i32* %I1, align 4
  %shr58 = lshr i32 %25, 24
  %or59 = or i32 %shl57, %shr58
  %26 = load i32, i32* %I0, align 4
  %xor60 = xor i32 %26, %or59
  store i32 %xor60, i32* %I0, align 4
  %27 = load i32, i32* %I0, align 4
  %shl61 = shl i32 %27, 16
  %28 = load i32, i32* %I0, align 4
  %shr62 = lshr i32 %28, 16
  %or63 = or i32 %shl61, %shr62
  %29 = load i32, i32* %I1, align 4
  %xor64 = xor i32 %29, %or63
  store i32 %xor64, i32* %I1, align 4
  %30 = load i32, i32* %I1, align 4
  %shr65 = lshr i32 %30, 8
  %31 = load i32, i32* %I1, align 4
  %shl66 = shl i32 %31, 24
  %or67 = or i32 %shr65, %shl66
  %32 = load i32, i32* %I0, align 4
  %xor68 = xor i32 %32, %or67
  store i32 %xor68, i32* %I0, align 4
  %33 = load i32, i32* %I0, align 4
  %shr69 = lshr i32 %33, 8
  %34 = load i32, i32* %I0, align 4
  %shl70 = shl i32 %34, 24
  %or71 = or i32 %shr69, %shl70
  %35 = load i32, i32* %I1, align 4
  %xor72 = xor i32 %35, %or71
  store i32 %xor72, i32* %I1, align 4
  %36 = load i32, i32* %I1, align 4
  %37 = load i32*, i32** %z.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx73, align 4
  %xor74 = xor i32 %38, %36
  store i32 %xor74, i32* %arrayidx73, align 4
  %39 = load i32, i32* %I0, align 4
  %40 = load i32*, i32** %z.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %40, i64 1
  %41 = load i32, i32* %arrayidx75, align 4
  %xor76 = xor i32 %41, %39
  store i32 %xor76, i32* %arrayidx75, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_setkey_dec(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %cty = alloca %struct.mbedtls_camellia_context, align 4
  %RK = alloca i32*, align 8
  %SK = alloca i32*, align 8
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
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
  call void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef %cty) #5
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i32, i32* %keybits.addr, align 4
  %call = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %cty, i8* noundef %0, i32 noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  br label %exit

if.end:                                           ; preds = %do.end2
  %nr = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %cty, i32 0, i32 0
  %2 = load i32, i32* %nr, align 4
  %3 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %nr3 = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %3, i32 0, i32 0
  store i32 %2, i32* %nr3, align 4
  %4 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %nr4 = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %4, i32 0, i32 0
  %5 = load i32, i32* %nr4, align 4
  %cmp5 = icmp eq i32 %5, 4
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %idx, align 4
  %6 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [68 x i32], [68 x i32]* %rk, i64 0, i64 0
  store i32* %arraydecay, i32** %RK, align 8
  %rk6 = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %cty, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [68 x i32], [68 x i32]* %rk6, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay7, i64 48
  %7 = load i32, i32* %idx, align 4
  %mul = mul nsw i32 8, %7
  %mul8 = mul nsw i32 %mul, 2
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext
  store i32* %add.ptr9, i32** %SK, align 8
  %8 = load i32*, i32** %SK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %SK, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %RK, align 8
  %incdec.ptr10 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr10, i32** %RK, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %SK, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr11, i32** %SK, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %RK, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr12, i32** %RK, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %SK, align 8
  %incdec.ptr13 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr13, i32** %SK, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %RK, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr14, i32** %RK, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %SK, align 8
  %incdec.ptr15 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr15, i32** %SK, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %RK, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr16, i32** %RK, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %idx, align 4
  %mul17 = mul nsw i32 8, %20
  %add = add nsw i32 22, %mul17
  %conv18 = sext i32 %add to i64
  store i64 %conv18, i64* %i, align 8
  %21 = load i32*, i32** %SK, align 8
  %add.ptr19 = getelementptr inbounds i32, i32* %21, i64 -6
  store i32* %add.ptr19, i32** %SK, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i64, i64* %i, align 8
  %cmp20 = icmp ugt i64 %22, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32*, i32** %SK, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr22, i32** %SK, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %RK, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %incdec.ptr23, i32** %RK, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %SK, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr24, i32** %SK, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %RK, align 8
  %incdec.ptr25 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr25, i32** %RK, align 8
  store i32 %27, i32* %28, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %i, align 8
  %30 = load i32*, i32** %SK, align 8
  %add.ptr26 = getelementptr inbounds i32, i32* %30, i64 -4
  store i32* %add.ptr26, i32** %SK, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %31 = load i32*, i32** %SK, align 8
  %add.ptr27 = getelementptr inbounds i32, i32* %31, i64 -2
  store i32* %add.ptr27, i32** %SK, align 8
  %32 = load i32*, i32** %SK, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr28, i32** %SK, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %RK, align 8
  %incdec.ptr29 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr29, i32** %RK, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %SK, align 8
  %incdec.ptr30 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr30, i32** %SK, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %RK, align 8
  %incdec.ptr31 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr31, i32** %RK, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %SK, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr32, i32** %SK, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %RK, align 8
  %incdec.ptr33 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr33, i32** %RK, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %SK, align 8
  %incdec.ptr34 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr34, i32** %SK, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %RK, align 8
  %incdec.ptr35 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr35, i32** %RK, align 8
  store i32 %42, i32* %43, align 4
  br label %exit

exit:                                             ; preds = %for.end, %if.then
  call void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef %cty) #5
  %44 = load i32, i32* %ret, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %ctx, i32 noundef %mode, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %NR = alloca i32, align 4
  %RK = alloca i32*, align 8
  %X = alloca [4 x i32], align 16
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
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
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %1, i32 0, i32 0
  %2 = load i32, i32* %nr, align 4
  store i32 %2, i32* %NR, align 4
  %3 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_camellia_context, %struct.mbedtls_camellia_context* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [68 x i32], [68 x i32]* %rk, i64 0, i64 0
  store i32* %arraydecay, i32** %RK, align 8
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 24
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 16
  %or = or i32 %shl, %shl9
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl i32 %conv11, 8
  %or13 = or i32 %or, %shl12
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %or16 = or i32 %or13, %conv15
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  store i32 %or16, i32* %arrayidx17, align 16
  %12 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 4
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %shl20 = shl i32 %conv19, 24
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 5
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  %shl23 = shl i32 %conv22, 16
  %or24 = or i32 %shl20, %shl23
  %16 = load i8*, i8** %input.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 6
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %shl27 = shl i32 %conv26, 8
  %or28 = or i32 %or24, %shl27
  %18 = load i8*, i8** %input.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 7
  %19 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %or31 = or i32 %or28, %conv30
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  store i32 %or31, i32* %arrayidx32, align 4
  %20 = load i8*, i8** %input.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %20, i64 8
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %shl35 = shl i32 %conv34, 24
  %22 = load i8*, i8** %input.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %22, i64 9
  %23 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %23 to i32
  %shl38 = shl i32 %conv37, 16
  %or39 = or i32 %shl35, %shl38
  %24 = load i8*, i8** %input.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 10
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %shl42 = shl i32 %conv41, 8
  %or43 = or i32 %or39, %shl42
  %26 = load i8*, i8** %input.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 11
  %27 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %27 to i32
  %or46 = or i32 %or43, %conv45
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  store i32 %or46, i32* %arrayidx47, align 8
  %28 = load i8*, i8** %input.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %28, i64 12
  %29 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %29 to i32
  %shl50 = shl i32 %conv49, 24
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %30, i64 13
  %31 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %31 to i32
  %shl53 = shl i32 %conv52, 16
  %or54 = or i32 %shl50, %shl53
  %32 = load i8*, i8** %input.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %32, i64 14
  %33 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %33 to i32
  %shl57 = shl i32 %conv56, 8
  %or58 = or i32 %or54, %shl57
  %34 = load i8*, i8** %input.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %34, i64 15
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %35 to i32
  %or61 = or i32 %or58, %conv60
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  store i32 %or61, i32* %arrayidx62, align 4
  %36 = load i32*, i32** %RK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %incdec.ptr, i32** %RK, align 8
  %37 = load i32, i32* %36, align 4
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %38 = load i32, i32* %arrayidx63, align 16
  %xor = xor i32 %38, %37
  store i32 %xor, i32* %arrayidx63, align 16
  %39 = load i32*, i32** %RK, align 8
  %incdec.ptr64 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr64, i32** %RK, align 8
  %40 = load i32, i32* %39, align 4
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %41 = load i32, i32* %arrayidx65, align 4
  %xor66 = xor i32 %41, %40
  store i32 %xor66, i32* %arrayidx65, align 4
  %42 = load i32*, i32** %RK, align 8
  %incdec.ptr67 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr67, i32** %RK, align 8
  %43 = load i32, i32* %42, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %44 = load i32, i32* %arrayidx68, align 8
  %xor69 = xor i32 %44, %43
  store i32 %xor69, i32* %arrayidx68, align 8
  %45 = load i32*, i32** %RK, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %incdec.ptr70, i32** %RK, align 8
  %46 = load i32, i32* %45, align 4
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %47 = load i32, i32* %arrayidx71, align 4
  %xor72 = xor i32 %47, %46
  store i32 %xor72, i32* %arrayidx71, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.end6
  %48 = load i32, i32* %NR, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load i32, i32* %NR, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %NR, align 4
  %arraydecay73 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %50 = load i32*, i32** %RK, align 8
  %arraydecay74 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay74, i64 2
  call void @camellia_feistel(i32* noundef %arraydecay73, i32* noundef %50, i32* noundef %add.ptr) #5
  %51 = load i32*, i32** %RK, align 8
  %add.ptr75 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %add.ptr75, i32** %RK, align 8
  %arraydecay76 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr77 = getelementptr inbounds i32, i32* %arraydecay76, i64 2
  %52 = load i32*, i32** %RK, align 8
  %arraydecay78 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  call void @camellia_feistel(i32* noundef %add.ptr77, i32* noundef %52, i32* noundef %arraydecay78) #5
  %53 = load i32*, i32** %RK, align 8
  %add.ptr79 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %add.ptr79, i32** %RK, align 8
  %arraydecay80 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %54 = load i32*, i32** %RK, align 8
  %arraydecay81 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr82 = getelementptr inbounds i32, i32* %arraydecay81, i64 2
  call void @camellia_feistel(i32* noundef %arraydecay80, i32* noundef %54, i32* noundef %add.ptr82) #5
  %55 = load i32*, i32** %RK, align 8
  %add.ptr83 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %add.ptr83, i32** %RK, align 8
  %arraydecay84 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr85 = getelementptr inbounds i32, i32* %arraydecay84, i64 2
  %56 = load i32*, i32** %RK, align 8
  %arraydecay86 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  call void @camellia_feistel(i32* noundef %add.ptr85, i32* noundef %56, i32* noundef %arraydecay86) #5
  %57 = load i32*, i32** %RK, align 8
  %add.ptr87 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %add.ptr87, i32** %RK, align 8
  %arraydecay88 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %58 = load i32*, i32** %RK, align 8
  %arraydecay89 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr90 = getelementptr inbounds i32, i32* %arraydecay89, i64 2
  call void @camellia_feistel(i32* noundef %arraydecay88, i32* noundef %58, i32* noundef %add.ptr90) #5
  %59 = load i32*, i32** %RK, align 8
  %add.ptr91 = getelementptr inbounds i32, i32* %59, i64 2
  store i32* %add.ptr91, i32** %RK, align 8
  %arraydecay92 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %add.ptr93 = getelementptr inbounds i32, i32* %arraydecay92, i64 2
  %60 = load i32*, i32** %RK, align 8
  %arraydecay94 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  call void @camellia_feistel(i32* noundef %add.ptr93, i32* noundef %60, i32* noundef %arraydecay94) #5
  %61 = load i32*, i32** %RK, align 8
  %add.ptr95 = getelementptr inbounds i32, i32* %61, i64 2
  store i32* %add.ptr95, i32** %RK, align 8
  %62 = load i32, i32* %NR, align 4
  %tobool96 = icmp ne i32 %62, 0
  br i1 %tobool96, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %63 = load i32, i32* %arrayidx97, align 16
  %64 = load i32*, i32** %RK, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx98, align 4
  %and = and i32 %63, %65
  %shl99 = shl i32 %and, 1
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %66 = load i32, i32* %arrayidx100, align 16
  %67 = load i32*, i32** %RK, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx101, align 4
  %and102 = and i32 %66, %68
  %shr = lshr i32 %and102, 31
  %or103 = or i32 %shl99, %shr
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %69 = load i32, i32* %arrayidx104, align 4
  %xor105 = xor i32 %or103, %69
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  store i32 %xor105, i32* %arrayidx106, align 4
  %arrayidx107 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %70 = load i32, i32* %arrayidx107, align 4
  %71 = load i32*, i32** %RK, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %71, i64 1
  %72 = load i32, i32* %arrayidx108, align 4
  %or109 = or i32 %70, %72
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %73 = load i32, i32* %arrayidx110, align 16
  %xor111 = xor i32 %or109, %73
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  store i32 %xor111, i32* %arrayidx112, align 16
  %74 = load i32*, i32** %RK, align 8
  %add.ptr113 = getelementptr inbounds i32, i32* %74, i64 2
  store i32* %add.ptr113, i32** %RK, align 8
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %75 = load i32, i32* %arrayidx114, align 4
  %76 = load i32*, i32** %RK, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %76, i64 1
  %77 = load i32, i32* %arrayidx115, align 4
  %or116 = or i32 %75, %77
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %78 = load i32, i32* %arrayidx117, align 8
  %xor118 = xor i32 %or116, %78
  %arrayidx119 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  store i32 %xor118, i32* %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %79 = load i32, i32* %arrayidx120, align 8
  %80 = load i32*, i32** %RK, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %80, i64 0
  %81 = load i32, i32* %arrayidx121, align 4
  %and122 = and i32 %79, %81
  %shl123 = shl i32 %and122, 1
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %82 = load i32, i32* %arrayidx124, align 8
  %83 = load i32*, i32** %RK, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx125, align 4
  %and126 = and i32 %82, %84
  %shr127 = lshr i32 %and126, 31
  %or128 = or i32 %shl123, %shr127
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %85 = load i32, i32* %arrayidx129, align 4
  %xor130 = xor i32 %or128, %85
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  store i32 %xor130, i32* %arrayidx131, align 4
  %86 = load i32*, i32** %RK, align 8
  %add.ptr132 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %add.ptr132, i32** %RK, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %87 = load i32*, i32** %RK, align 8
  %incdec.ptr133 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr133, i32** %RK, align 8
  %88 = load i32, i32* %87, align 4
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %89 = load i32, i32* %arrayidx134, align 8
  %xor135 = xor i32 %89, %88
  store i32 %xor135, i32* %arrayidx134, align 8
  %90 = load i32*, i32** %RK, align 8
  %incdec.ptr136 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %incdec.ptr136, i32** %RK, align 8
  %91 = load i32, i32* %90, align 4
  %arrayidx137 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %92 = load i32, i32* %arrayidx137, align 4
  %xor138 = xor i32 %92, %91
  store i32 %xor138, i32* %arrayidx137, align 4
  %93 = load i32*, i32** %RK, align 8
  %incdec.ptr139 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %incdec.ptr139, i32** %RK, align 8
  %94 = load i32, i32* %93, align 4
  %arrayidx140 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %95 = load i32, i32* %arrayidx140, align 16
  %xor141 = xor i32 %95, %94
  store i32 %xor141, i32* %arrayidx140, align 16
  %96 = load i32*, i32** %RK, align 8
  %incdec.ptr142 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr142, i32** %RK, align 8
  %97 = load i32, i32* %96, align 4
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %98 = load i32, i32* %arrayidx143, align 4
  %xor144 = xor i32 %98, %97
  store i32 %xor144, i32* %arrayidx143, align 4
  %arrayidx145 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %99 = load i32, i32* %arrayidx145, align 8
  %shr146 = lshr i32 %99, 24
  %and147 = and i32 %shr146, 255
  %conv148 = trunc i32 %and147 to i8
  %100 = load i8*, i8** %output.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 %conv148, i8* %arrayidx149, align 1
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %101 = load i32, i32* %arrayidx150, align 8
  %shr151 = lshr i32 %101, 16
  %and152 = and i32 %shr151, 255
  %conv153 = trunc i32 %and152 to i8
  %102 = load i8*, i8** %output.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 %conv153, i8* %arrayidx154, align 1
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %103 = load i32, i32* %arrayidx155, align 8
  %shr156 = lshr i32 %103, 8
  %and157 = and i32 %shr156, 255
  %conv158 = trunc i32 %and157 to i8
  %104 = load i8*, i8** %output.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %104, i64 2
  store i8 %conv158, i8* %arrayidx159, align 1
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 2
  %105 = load i32, i32* %arrayidx160, align 8
  %and161 = and i32 %105, 255
  %conv162 = trunc i32 %and161 to i8
  %106 = load i8*, i8** %output.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %106, i64 3
  store i8 %conv162, i8* %arrayidx163, align 1
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %107 = load i32, i32* %arrayidx164, align 4
  %shr165 = lshr i32 %107, 24
  %and166 = and i32 %shr165, 255
  %conv167 = trunc i32 %and166 to i8
  %108 = load i8*, i8** %output.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %108, i64 4
  store i8 %conv167, i8* %arrayidx168, align 1
  %arrayidx169 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %109 = load i32, i32* %arrayidx169, align 4
  %shr170 = lshr i32 %109, 16
  %and171 = and i32 %shr170, 255
  %conv172 = trunc i32 %and171 to i8
  %110 = load i8*, i8** %output.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %110, i64 5
  store i8 %conv172, i8* %arrayidx173, align 1
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %111 = load i32, i32* %arrayidx174, align 4
  %shr175 = lshr i32 %111, 8
  %and176 = and i32 %shr175, 255
  %conv177 = trunc i32 %and176 to i8
  %112 = load i8*, i8** %output.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %112, i64 6
  store i8 %conv177, i8* %arrayidx178, align 1
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 3
  %113 = load i32, i32* %arrayidx179, align 4
  %and180 = and i32 %113, 255
  %conv181 = trunc i32 %and180 to i8
  %114 = load i8*, i8** %output.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %114, i64 7
  store i8 %conv181, i8* %arrayidx182, align 1
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %115 = load i32, i32* %arrayidx183, align 16
  %shr184 = lshr i32 %115, 24
  %and185 = and i32 %shr184, 255
  %conv186 = trunc i32 %and185 to i8
  %116 = load i8*, i8** %output.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %116, i64 8
  store i8 %conv186, i8* %arrayidx187, align 1
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %117 = load i32, i32* %arrayidx188, align 16
  %shr189 = lshr i32 %117, 16
  %and190 = and i32 %shr189, 255
  %conv191 = trunc i32 %and190 to i8
  %118 = load i8*, i8** %output.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %118, i64 9
  store i8 %conv191, i8* %arrayidx192, align 1
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %119 = load i32, i32* %arrayidx193, align 16
  %shr194 = lshr i32 %119, 8
  %and195 = and i32 %shr194, 255
  %conv196 = trunc i32 %and195 to i8
  %120 = load i8*, i8** %output.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %120, i64 10
  store i8 %conv196, i8* %arrayidx197, align 1
  %arrayidx198 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 0
  %121 = load i32, i32* %arrayidx198, align 16
  %and199 = and i32 %121, 255
  %conv200 = trunc i32 %and199 to i8
  %122 = load i8*, i8** %output.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %122, i64 11
  store i8 %conv200, i8* %arrayidx201, align 1
  %arrayidx202 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %123 = load i32, i32* %arrayidx202, align 4
  %shr203 = lshr i32 %123, 24
  %and204 = and i32 %shr203, 255
  %conv205 = trunc i32 %and204 to i8
  %124 = load i8*, i8** %output.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %124, i64 12
  store i8 %conv205, i8* %arrayidx206, align 1
  %arrayidx207 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %125 = load i32, i32* %arrayidx207, align 4
  %shr208 = lshr i32 %125, 16
  %and209 = and i32 %shr208, 255
  %conv210 = trunc i32 %and209 to i8
  %126 = load i8*, i8** %output.addr, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %126, i64 13
  store i8 %conv210, i8* %arrayidx211, align 1
  %arrayidx212 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %127 = load i32, i32* %arrayidx212, align 4
  %shr213 = lshr i32 %127, 8
  %and214 = and i32 %shr213, 255
  %conv215 = trunc i32 %and214 to i8
  %128 = load i8*, i8** %output.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %128, i64 14
  store i8 %conv215, i8* %arrayidx216, align 1
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %X, i64 0, i64 1
  %129 = load i32, i32* %arrayidx217, align 4
  %and218 = and i32 %129, 255
  %conv219 = trunc i32 %and218 to i8
  %130 = load i8*, i8** %output.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %130, i64 15
  store i8 %conv219, i8* %arrayidx220, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %temp = alloca [16 x i8], align 16
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
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
  %0 = load i64, i64* %length.addr, align 8
  %rem = urem i64 %0, 16
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -38, i32* %retval, align 4
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
  %4 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %4, i32 noundef %5, i8* noundef %6, i8* noundef %7) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %8, 16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %output.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %iv.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %15 = load i8*, i8** %output.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %iv.addr, align 8
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  %call20 = call i8* @memcpy(i8* noundef %18, i8* noundef %arraydecay19, i64 noundef 16) #4
  %19 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 16
  store i8* %add.ptr, i8** %input.addr, align 8
  %20 = load i8*, i8** %output.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %20, i64 16
  store i8* %add.ptr21, i8** %output.addr, align 8
  %21 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %21, 16
  store i64 %sub, i64* %length.addr, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  br label %if.end49

if.else:                                          ; preds = %if.end
  br label %while.cond22

while.cond22:                                     ; preds = %for.end42, %if.else
  %22 = load i64, i64* %length.addr, align 8
  %cmp23 = icmp ugt i64 %22, 0
  br i1 %cmp23, label %while.body25, label %while.end48

while.body25:                                     ; preds = %while.cond22
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %while.body25
  %23 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %23, 16
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %24 = load i8*, i8** %input.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 %idxprom30
  %26 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %27 = load i8*, i8** %iv.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %xor36 = xor i32 %conv32, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %30 = load i8*, i8** %output.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %32 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %32, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond26, !llvm.loop !25

for.end42:                                        ; preds = %for.cond26
  %33 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %34 = load i32, i32* %mode.addr, align 4
  %35 = load i8*, i8** %output.addr, align 8
  %36 = load i8*, i8** %output.addr, align 8
  %call43 = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %33, i32 noundef %34, i8* noundef %35, i8* noundef %36) #5
  %37 = load i8*, i8** %iv.addr, align 8
  %38 = load i8*, i8** %output.addr, align 8
  %call44 = call i8* @memcpy(i8* noundef %37, i8* noundef %38, i64 noundef 16) #4
  %39 = load i8*, i8** %input.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %39, i64 16
  store i8* %add.ptr45, i8** %input.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %40, i64 16
  store i8* %add.ptr46, i8** %output.addr, align 8
  %41 = load i64, i64* %length.addr, align 8
  %sub47 = sub i64 %41, 16
  store i64 %sub47, i64* %length.addr, align 8
  br label %while.cond22, !llvm.loop !26

while.end48:                                      ; preds = %while.cond22
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_cfb128(%struct.mbedtls_camellia_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i64* %iv_off, i64** %iv_off.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
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
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load i64*, i64** %iv_off.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp uge i64 %2, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  store i32 -36, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  %3 = load i32, i32* %mode.addr, align 4
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.then12
  %4 = load i64, i64* %length.addr, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %n, align 8
  %cmp13 = icmp eq i64 %5, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  %6 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i8*, i8** %iv.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %6, i32 noundef 1, i8* noundef %7, i8* noundef %8) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body
  %9 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %12 = load i8*, i8** %iv.addr, align 8
  %13 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %14 to i32
  %xor = xor i32 %11, %conv16
  %conv17 = trunc i32 %xor to i8
  %15 = load i8*, i8** %output.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8
  store i8 %conv17, i8* %15, align 1
  %16 = load i32, i32* %c, align 4
  %conv19 = trunc i32 %16 to i8
  %17 = load i8*, i8** %iv.addr, align 8
  %18 = load i64, i64* %n, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 %conv19, i8* %arrayidx20, align 1
  %19 = load i64, i64* %n, align 8
  %add = add i64 %19, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  br label %if.end41

if.else:                                          ; preds = %if.end
  br label %while.cond21

while.cond21:                                     ; preds = %if.end29, %if.else
  %20 = load i64, i64* %length.addr, align 8
  %dec22 = add i64 %20, -1
  store i64 %dec22, i64* %length.addr, align 8
  %tobool23 = icmp ne i64 %20, 0
  br i1 %tobool23, label %while.body24, label %while.end40

while.body24:                                     ; preds = %while.cond21
  %21 = load i64, i64* %n, align 8
  %cmp25 = icmp eq i64 %21, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %while.body24
  %22 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %23 = load i8*, i8** %iv.addr, align 8
  %24 = load i8*, i8** %iv.addr, align 8
  %call28 = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %22, i32 noundef 1, i8* noundef %23, i8* noundef %24) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.body24
  %25 = load i8*, i8** %iv.addr, align 8
  %26 = load i64, i64* %n, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %27 to i32
  %28 = load i8*, i8** %input.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr32, i8** %input.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv33 = zext i8 %29 to i32
  %xor34 = xor i32 %conv31, %conv33
  %conv35 = trunc i32 %xor34 to i8
  %30 = load i8*, i8** %output.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr36, i8** %output.addr, align 8
  store i8 %conv35, i8* %30, align 1
  %31 = load i8*, i8** %iv.addr, align 8
  %32 = load i64, i64* %n, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %conv35, i8* %arrayidx37, align 1
  %33 = load i64, i64* %n, align 8
  %add38 = add i64 %33, 1
  %and39 = and i64 %add38, 15
  store i64 %and39, i64* %n, align 8
  br label %while.cond21, !llvm.loop !28

while.end40:                                      ; preds = %while.cond21
  br label %if.end41

if.end41:                                         ; preds = %while.end40, %while.end
  %34 = load i64, i64* %n, align 8
  %35 = load i64*, i64** %iv_off.addr, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_crypt_ctr(%struct.mbedtls_camellia_context* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_camellia_context*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_camellia_context* %ctx, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %nc_off, i64** %nc_off.addr, align 8
  store i8* %nonce_counter, i8** %nonce_counter.addr, align 8
  store i8* %stream_block, i8** %stream_block.addr, align 8
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
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load i64*, i64** %nc_off.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp uge i64 %2, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  store i32 -36, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end
  %3 = load i64, i64* %length.addr, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %length.addr, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %n, align 8
  %cmp11 = icmp eq i64 %4, 0
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %while.body
  %5 = load %struct.mbedtls_camellia_context*, %struct.mbedtls_camellia_context** %ctx.addr, align 8
  %6 = load i8*, i8** %nonce_counter.addr, align 8
  %7 = load i8*, i8** %stream_block.addr, align 8
  %call = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #5
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %8 = load i32, i32* %i, align 4
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %nonce_counter.addr, align 8
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %11, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = zext i8 %inc to i32
  %cmp14 = icmp ne i32 %conv, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.end

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %12 = load i32, i32* %i, align 4
  %dec18 = add nsw i32 %12, -1
  store i32 %dec18, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %if.then16, %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %while.body
  %13 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv20 = zext i8 %14 to i32
  store i32 %conv20, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %16 = load i8*, i8** %stream_block.addr, align 8
  %17 = load i64, i64* %n, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 %17
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  %xor = xor i32 %15, %conv22
  %conv23 = trunc i32 %xor to i8
  %19 = load i8*, i8** %output.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr24, i8** %output.addr, align 8
  store i8 %conv23, i8* %19, align 1
  %20 = load i64, i64* %n, align 8
  %add = add i64 %20, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %21 = load i64, i64* %n, align 8
  %22 = load i64*, i64** %nc_off.addr, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_camellia_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %buf = alloca [64 x i8], align 16
  %src = alloca [16 x i8], align 16
  %dst = alloca [16 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %offset = alloca i64, align 8
  %len = alloca i64, align 8
  %nonce_counter = alloca [16 x i8], align 16
  %stream_block = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_camellia_context, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 1, i32* %ret, align 4
  call void @mbedtls_camellia_init(%struct.mbedtls_camellia_context* noundef %ctx) #5
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 32) #4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc70, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end72

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %u, align 4
  %2 = load i32, i32* %j, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %v, align 4
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %u, align 4
  %mul = mul nsw i32 %4, 64
  %add = add nsw i32 128, %mul
  %5 = load i32, i32* %v, align 4
  %cmp2 = icmp eq i32 %5, 0
  %6 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %add, i8* noundef %cond) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 2
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %8 = load i32, i32* %u, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x [2 x [32 x i8]]], [3 x [2 x [32 x i8]]]* bitcast (<{ <{ <{ [16 x i8], [16 x i8] }>, [32 x i8] }>, <{ <{ [24 x i8], [8 x i8] }>, [32 x i8] }>, [2 x [32 x i8]] }>* @camellia_test_ecb_key to [3 x [2 x [32 x i8]]]*), i64 0, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* %arrayidx, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx9, i64 0, i64 0
  %10 = load i32, i32* %u, align 4
  %mul11 = mul nsw i32 8, %10
  %add12 = add nsw i32 16, %mul11
  %conv = sext i32 %add12 to i64
  %call13 = call i8* @memcpy(i8* noundef %arraydecay7, i8* noundef %arraydecay10, i64 noundef %conv) #4
  %11 = load i32, i32* %v, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body6
  %arraydecay17 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %12 = load i32, i32* %u, align 4
  %mul18 = mul nsw i32 %12, 64
  %add19 = add nsw i32 128, %mul18
  %call20 = call i32 @mbedtls_camellia_setkey_dec(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %arraydecay17, i32 noundef %add19) #5
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %13 = load i32, i32* %u, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [3 x [2 x [16 x i8]]], [3 x [2 x [16 x i8]]]* @camellia_test_ecb_cipher, i64 0, i64 %idxprom22
  %14 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %arrayidx23, i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx25, i64 0, i64 0
  %call27 = call i8* @memcpy(i8* noundef %arraydecay21, i8* noundef %arraydecay26, i64 noundef 16) #4
  %arraydecay28 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %15 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* bitcast (<{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }> }>* @camellia_test_ecb_plain to [2 x [16 x i8]]*), i64 0, i64 %idxprom29
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx30, i64 0, i64 0
  %call32 = call i8* @memcpy(i8* noundef %arraydecay28, i8* noundef %arraydecay31, i64 noundef 16) #4
  br label %if.end49

if.else:                                          ; preds = %for.body6
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %16 = load i32, i32* %u, align 4
  %mul34 = mul nsw i32 %16, 64
  %add35 = add nsw i32 128, %mul34
  %call36 = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %arraydecay33, i32 noundef %add35) #5
  %arraydecay37 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %17 to i64
  %arrayidx39 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* bitcast (<{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }> }>* @camellia_test_ecb_plain to [2 x [16 x i8]]*), i64 0, i64 %idxprom38
  %arraydecay40 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx39, i64 0, i64 0
  %call41 = call i8* @memcpy(i8* noundef %arraydecay37, i8* noundef %arraydecay40, i64 noundef 16) #4
  %arraydecay42 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %18 = load i32, i32* %u, align 4
  %idxprom43 = sext i32 %18 to i64
  %arrayidx44 = getelementptr inbounds [3 x [2 x [16 x i8]]], [3 x [2 x [16 x i8]]]* @camellia_test_ecb_cipher, i64 0, i64 %idxprom43
  %19 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %19 to i64
  %arrayidx46 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %arrayidx44, i64 0, i64 %idxprom45
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx46, i64 0, i64 0
  %call48 = call i8* @memcpy(i8* noundef %arraydecay42, i8* noundef %arraydecay47, i64 noundef 16) #4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then16
  %20 = load i32, i32* %v, align 4
  %arraydecay50 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call52 = call i32 @mbedtls_camellia_crypt_ecb(%struct.mbedtls_camellia_context* noundef %ctx, i32 noundef %20, i8* noundef %arraydecay50, i8* noundef %arraydecay51) #5
  %arraydecay53 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay54 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %call55 = call i32 @memcmp(i8* noundef %arraydecay53, i8* noundef %arraydecay54, i64 noundef 16) #6
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end49
  %21 = load i32, i32* %verbose.addr, align 4
  %cmp59 = icmp ne i32 %21, 0
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then58
  %call62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then58
  br label %exit

if.end64:                                         ; preds = %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end64
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond4, !llvm.loop !31

for.end:                                          ; preds = %for.cond4
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp65 = icmp ne i32 %23, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %24 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %24, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond, !llvm.loop !32

for.end72:                                        ; preds = %for.cond
  %25 = load i32, i32* %verbose.addr, align 4
  %cmp73 = icmp ne i32 %25, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %for.end72
  %call76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %for.end72
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc182, %if.end77
  %26 = load i32, i32* %j, align 4
  %cmp79 = icmp slt i32 %26, 6
  br i1 %cmp79, label %for.body81, label %for.end184

for.body81:                                       ; preds = %for.cond78
  %27 = load i32, i32* %j, align 4
  %shr82 = ashr i32 %27, 1
  store i32 %shr82, i32* %u, align 4
  %28 = load i32, i32* %j, align 4
  %and83 = and i32 %28, 1
  store i32 %and83, i32* %v, align 4
  %29 = load i32, i32* %verbose.addr, align 4
  %cmp84 = icmp ne i32 %29, 0
  br i1 %cmp84, label %if.then86, label %if.end93

if.then86:                                        ; preds = %for.body81
  %30 = load i32, i32* %u, align 4
  %mul87 = mul nsw i32 %30, 64
  %add88 = add nsw i32 128, %mul87
  %31 = load i32, i32* %v, align 4
  %cmp89 = icmp eq i32 %31, 0
  %32 = zext i1 %cmp89 to i64
  %cond91 = select i1 %cmp89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 noundef %add88, i8* noundef %cond91) #5
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %for.body81
  %arraydecay94 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %call95 = call i8* @memcpy(i8* noundef %arraydecay94, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @camellia_test_cbc_iv, i64 0, i64 0), i64 noundef 16) #4
  %arraydecay96 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %call97 = call i8* @memcpy(i8* noundef %arraydecay96, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @camellia_test_cbc_iv, i64 0, i64 0), i64 noundef 16) #4
  %arraydecay98 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %33 = load i32, i32* %u, align 4
  %idxprom99 = sext i32 %33 to i64
  %arrayidx100 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* bitcast (<{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }>* @camellia_test_cbc_key to [3 x [32 x i8]]*), i64 0, i64 %idxprom99
  %arraydecay101 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx100, i64 0, i64 0
  %34 = load i32, i32* %u, align 4
  %mul102 = mul nsw i32 8, %34
  %add103 = add nsw i32 16, %mul102
  %conv104 = sext i32 %add103 to i64
  %call105 = call i8* @memcpy(i8* noundef %arraydecay98, i8* noundef %arraydecay101, i64 noundef %conv104) #4
  %35 = load i32, i32* %v, align 4
  %cmp106 = icmp eq i32 %35, 0
  br i1 %cmp106, label %if.then108, label %if.else113

if.then108:                                       ; preds = %if.end93
  %arraydecay109 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %36 = load i32, i32* %u, align 4
  %mul110 = mul nsw i32 %36, 64
  %add111 = add nsw i32 128, %mul110
  %call112 = call i32 @mbedtls_camellia_setkey_dec(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %arraydecay109, i32 noundef %add111) #5
  br label %if.end118

if.else113:                                       ; preds = %if.end93
  %arraydecay114 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %37 = load i32, i32* %u, align 4
  %mul115 = mul nsw i32 %37, 64
  %add116 = add nsw i32 128, %mul115
  %call117 = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %arraydecay114, i32 noundef %add116) #5
  br label %if.end118

if.end118:                                        ; preds = %if.else113, %if.then108
  store i32 0, i32* %i, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc174, %if.end118
  %38 = load i32, i32* %i, align 4
  %cmp120 = icmp slt i32 %38, 3
  br i1 %cmp120, label %for.body122, label %for.end176

for.body122:                                      ; preds = %for.cond119
  %39 = load i32, i32* %v, align 4
  %cmp123 = icmp eq i32 %39, 0
  br i1 %cmp123, label %if.then125, label %if.else141

if.then125:                                       ; preds = %for.body122
  %arraydecay126 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay127 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %call128 = call i8* @memcpy(i8* noundef %arraydecay126, i8* noundef %arraydecay127, i64 noundef 16) #4
  %arraydecay129 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %40 = load i32, i32* %u, align 4
  %idxprom130 = sext i32 %40 to i64
  %arrayidx131 = getelementptr inbounds [3 x [3 x [16 x i8]]], [3 x [3 x [16 x i8]]]* @camellia_test_cbc_cipher, i64 0, i64 %idxprom130
  %41 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %41 to i64
  %arrayidx133 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* %arrayidx131, i64 0, i64 %idxprom132
  %arraydecay134 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx133, i64 0, i64 0
  %call135 = call i8* @memcpy(i8* noundef %arraydecay129, i8* noundef %arraydecay134, i64 noundef 16) #4
  %arraydecay136 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %42 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %42 to i64
  %arrayidx138 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @camellia_test_cbc_plain, i64 0, i64 %idxprom137
  %arraydecay139 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx138, i64 0, i64 0
  %call140 = call i8* @memcpy(i8* noundef %arraydecay136, i8* noundef %arraydecay139, i64 noundef 16) #4
  br label %if.end157

if.else141:                                       ; preds = %for.body122
  %arraydecay142 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay143 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %call144 = call i8* @memcpy(i8* noundef %arraydecay142, i8* noundef %arraydecay143, i64 noundef 16) #4
  %arraydecay145 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %43 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %43 to i64
  %arrayidx147 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @camellia_test_cbc_plain, i64 0, i64 %idxprom146
  %arraydecay148 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx147, i64 0, i64 0
  %call149 = call i8* @memcpy(i8* noundef %arraydecay145, i8* noundef %arraydecay148, i64 noundef 16) #4
  %arraydecay150 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %44 = load i32, i32* %u, align 4
  %idxprom151 = sext i32 %44 to i64
  %arrayidx152 = getelementptr inbounds [3 x [3 x [16 x i8]]], [3 x [3 x [16 x i8]]]* @camellia_test_cbc_cipher, i64 0, i64 %idxprom151
  %45 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %45 to i64
  %arrayidx154 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* %arrayidx152, i64 0, i64 %idxprom153
  %arraydecay155 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx154, i64 0, i64 0
  %call156 = call i8* @memcpy(i8* noundef %arraydecay150, i8* noundef %arraydecay155, i64 noundef 16) #4
  br label %if.end157

if.end157:                                        ; preds = %if.else141, %if.then125
  %46 = load i32, i32* %v, align 4
  %arraydecay158 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay159 = getelementptr inbounds [16 x i8], [16 x i8]* %src, i64 0, i64 0
  %arraydecay160 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call161 = call i32 @mbedtls_camellia_crypt_cbc(%struct.mbedtls_camellia_context* noundef %ctx, i32 noundef %46, i64 noundef 16, i8* noundef %arraydecay158, i8* noundef %arraydecay159, i8* noundef %arraydecay160) #5
  %arraydecay162 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay163 = getelementptr inbounds [16 x i8], [16 x i8]* %dst, i64 0, i64 0
  %call164 = call i32 @memcmp(i8* noundef %arraydecay162, i8* noundef %arraydecay163, i64 noundef 16) #6
  %cmp165 = icmp ne i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.end173

if.then167:                                       ; preds = %if.end157
  %47 = load i32, i32* %verbose.addr, align 4
  %cmp168 = icmp ne i32 %47, 0
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.then167
  %call171 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then167
  br label %exit

if.end173:                                        ; preds = %if.end157
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %48 = load i32, i32* %i, align 4
  %inc175 = add nsw i32 %48, 1
  store i32 %inc175, i32* %i, align 4
  br label %for.cond119, !llvm.loop !33

for.end176:                                       ; preds = %for.cond119
  %49 = load i32, i32* %verbose.addr, align 4
  %cmp177 = icmp ne i32 %49, 0
  br i1 %cmp177, label %if.then179, label %if.end181

if.then179:                                       ; preds = %for.end176
  %call180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %for.end176
  br label %for.inc182

for.inc182:                                       ; preds = %if.end181
  %50 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %50, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond78, !llvm.loop !34

for.end184:                                       ; preds = %for.cond78
  %51 = load i32, i32* %verbose.addr, align 4
  %cmp185 = icmp ne i32 %51, 0
  br i1 %cmp185, label %if.then187, label %if.end189

if.then187:                                       ; preds = %for.end184
  %call188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %for.end184
  store i32 0, i32* %i, align 4
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc280, %if.end189
  %52 = load i32, i32* %i, align 4
  %cmp191 = icmp slt i32 %52, 6
  br i1 %cmp191, label %for.body193, label %for.end282

for.body193:                                      ; preds = %for.cond190
  %53 = load i32, i32* %i, align 4
  %shr194 = ashr i32 %53, 1
  store i32 %shr194, i32* %u, align 4
  %54 = load i32, i32* %i, align 4
  %and195 = and i32 %54, 1
  store i32 %and195, i32* %v, align 4
  %55 = load i32, i32* %verbose.addr, align 4
  %cmp196 = icmp ne i32 %55, 0
  br i1 %cmp196, label %if.then198, label %if.end203

if.then198:                                       ; preds = %for.body193
  %56 = load i32, i32* %v, align 4
  %cmp199 = icmp eq i32 %56, 0
  %57 = zext i1 %cmp199 to i64
  %cond201 = select i1 %cmp199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef %cond201) #5
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %for.body193
  %arraydecay204 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce_counter, i64 0, i64 0
  %58 = load i32, i32* %u, align 4
  %idxprom205 = sext i32 %58 to i64
  %arrayidx206 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @camellia_test_ctr_nonce_counter, i64 0, i64 %idxprom205
  %arraydecay207 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx206, i64 0, i64 0
  %call208 = call i8* @memcpy(i8* noundef %arraydecay204, i8* noundef %arraydecay207, i64 noundef 16) #4
  %arraydecay209 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %59 = load i32, i32* %u, align 4
  %idxprom210 = sext i32 %59 to i64
  %arrayidx211 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @camellia_test_ctr_key, i64 0, i64 %idxprom210
  %arraydecay212 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx211, i64 0, i64 0
  %call213 = call i8* @memcpy(i8* noundef %arraydecay209, i8* noundef %arraydecay212, i64 noundef 16) #4
  store i64 0, i64* %offset, align 8
  %arraydecay214 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call215 = call i32 @mbedtls_camellia_setkey_enc(%struct.mbedtls_camellia_context* noundef %ctx, i8* noundef %arraydecay214, i32 noundef 128) #5
  %60 = load i32, i32* %v, align 4
  %cmp216 = icmp eq i32 %60, 0
  br i1 %cmp216, label %if.then218, label %if.else246

if.then218:                                       ; preds = %if.end203
  %61 = load i32, i32* %u, align 4
  %idxprom219 = sext i32 %61 to i64
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* @camellia_test_ctr_len, i64 0, i64 %idxprom219
  %62 = load i32, i32* %arrayidx220, align 4
  %conv221 = sext i32 %62 to i64
  store i64 %conv221, i64* %len, align 8
  %arraydecay222 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %63 = load i32, i32* %u, align 4
  %idxprom223 = sext i32 %63 to i64
  %arrayidx224 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @camellia_test_ctr_ct to [3 x [48 x i8]]*), i64 0, i64 %idxprom223
  %arraydecay225 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx224, i64 0, i64 0
  %64 = load i64, i64* %len, align 8
  %call226 = call i8* @memcpy(i8* noundef %arraydecay222, i8* noundef %arraydecay225, i64 noundef %64) #4
  %65 = load i64, i64* %len, align 8
  %arraydecay227 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce_counter, i64 0, i64 0
  %arraydecay228 = getelementptr inbounds [16 x i8], [16 x i8]* %stream_block, i64 0, i64 0
  %arraydecay229 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay230 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call231 = call i32 @mbedtls_camellia_crypt_ctr(%struct.mbedtls_camellia_context* noundef %ctx, i64 noundef %65, i64* noundef %offset, i8* noundef %arraydecay227, i8* noundef %arraydecay228, i8* noundef %arraydecay229, i8* noundef %arraydecay230) #5
  %arraydecay232 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %66 = load i32, i32* %u, align 4
  %idxprom233 = sext i32 %66 to i64
  %arrayidx234 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @camellia_test_ctr_pt to [3 x [48 x i8]]*), i64 0, i64 %idxprom233
  %arraydecay235 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx234, i64 0, i64 0
  %67 = load i64, i64* %len, align 8
  %call236 = call i32 @memcmp(i8* noundef %arraydecay232, i8* noundef %arraydecay235, i64 noundef %67) #6
  %cmp237 = icmp ne i32 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.end245

if.then239:                                       ; preds = %if.then218
  %68 = load i32, i32* %verbose.addr, align 4
  %cmp240 = icmp ne i32 %68, 0
  br i1 %cmp240, label %if.then242, label %if.end244

if.then242:                                       ; preds = %if.then239
  %call243 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end244

if.end244:                                        ; preds = %if.then242, %if.then239
  br label %exit

if.end245:                                        ; preds = %if.then218
  br label %if.end274

if.else246:                                       ; preds = %if.end203
  %69 = load i32, i32* %u, align 4
  %idxprom247 = sext i32 %69 to i64
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* @camellia_test_ctr_len, i64 0, i64 %idxprom247
  %70 = load i32, i32* %arrayidx248, align 4
  %conv249 = sext i32 %70 to i64
  store i64 %conv249, i64* %len, align 8
  %arraydecay250 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %71 = load i32, i32* %u, align 4
  %idxprom251 = sext i32 %71 to i64
  %arrayidx252 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @camellia_test_ctr_pt to [3 x [48 x i8]]*), i64 0, i64 %idxprom251
  %arraydecay253 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx252, i64 0, i64 0
  %72 = load i64, i64* %len, align 8
  %call254 = call i8* @memcpy(i8* noundef %arraydecay250, i8* noundef %arraydecay253, i64 noundef %72) #4
  %73 = load i64, i64* %len, align 8
  %arraydecay255 = getelementptr inbounds [16 x i8], [16 x i8]* %nonce_counter, i64 0, i64 0
  %arraydecay256 = getelementptr inbounds [16 x i8], [16 x i8]* %stream_block, i64 0, i64 0
  %arraydecay257 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %arraydecay258 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %call259 = call i32 @mbedtls_camellia_crypt_ctr(%struct.mbedtls_camellia_context* noundef %ctx, i64 noundef %73, i64* noundef %offset, i8* noundef %arraydecay255, i8* noundef %arraydecay256, i8* noundef %arraydecay257, i8* noundef %arraydecay258) #5
  %arraydecay260 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  %74 = load i32, i32* %u, align 4
  %idxprom261 = sext i32 %74 to i64
  %arrayidx262 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* bitcast (<{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }>* @camellia_test_ctr_ct to [3 x [48 x i8]]*), i64 0, i64 %idxprom261
  %arraydecay263 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx262, i64 0, i64 0
  %75 = load i64, i64* %len, align 8
  %call264 = call i32 @memcmp(i8* noundef %arraydecay260, i8* noundef %arraydecay263, i64 noundef %75) #6
  %cmp265 = icmp ne i32 %call264, 0
  br i1 %cmp265, label %if.then267, label %if.end273

if.then267:                                       ; preds = %if.else246
  %76 = load i32, i32* %verbose.addr, align 4
  %cmp268 = icmp ne i32 %76, 0
  br i1 %cmp268, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.then267
  %call271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.then267
  br label %exit

if.end273:                                        ; preds = %if.else246
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end245
  %77 = load i32, i32* %verbose.addr, align 4
  %cmp275 = icmp ne i32 %77, 0
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.end274
  %call278 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end274
  br label %for.inc280

for.inc280:                                       ; preds = %if.end279
  %78 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %78, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond190, !llvm.loop !35

for.end282:                                       ; preds = %for.cond190
  %79 = load i32, i32* %verbose.addr, align 4
  %cmp283 = icmp ne i32 %79, 0
  br i1 %cmp283, label %if.then285, label %if.end287

if.then285:                                       ; preds = %for.end282
  %call286 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %for.end282
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end287, %if.end272, %if.end244, %if.end172, %if.end63
  call void @mbedtls_camellia_free(%struct.mbedtls_camellia_context* noundef %ctx) #5
  %80 = load i32, i32* %ret, align 4
  ret i32 %80
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
