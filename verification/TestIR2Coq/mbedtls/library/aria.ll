; ModuleID = 'aria.c'
source_filename = "aria.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_aria_context = type { i8, [17 x [4 x i32]] }

@__const.mbedtls_aria_setkey_enc.rc = private unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 -1212056495, i32 -1811275225, i32 -391441410, i32 -529622278], [4 x i32] [i32 -867520147, i32 549986718, i32 -709809921, i32 -1327342097], [4 x i32] [i32 490181339, i32 1894327841, i32 1972839427, i32 248113156]], align 16
@aria_sb1 = internal constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@aria_sb2 = internal constant [256 x i8] c"\E2NT\FC\94\C2J\CCb\0DjF<M\8B\D1^\FAd\CB\B4\97\BE+\BCw.\03\D3\19Y\C1\1D\06AkU\F0\99i\EA\9C\18\AEc\DF\E7\BB\00sf\FB\96L\85\E4:\09E\AA\0F\EE\10\EB-\7F\F4)\AC\CF\AD\91\8Dx\C8\95\F9/\CE\CD\08z\888\\\83*(G\DB\B8\C7\93\A4\12S\FF\87\0E16!XH\01\8E7t2\CA\E9\B1\B7\AB\0C\D7\C4VB&\07\98`\D9\B6\B9\11@\EC \8C\BD\A0\C9\84\04I#\F1OP\1F\13\DC\D8\C0\9EW\E3\C3{e;\02\8F>\E8%\92\E5\15\DD\FD\17\A9\BF\D4\9A~\C59g\FEv\9DC\A7\E1\D0\F5h\F2\1B4p\05\A3\8A\D5y\86\A80\C6QK\1E\A6'\F65\D2n$\16\82_\DA\E6u\A2\EF,\B2\1C\9F]o\80\0ArD\9Bl\90\0B[3}ZR\F3a\A1\F7\B0\D6?|m\ED\14\E0\A5=\22\B3\F8\89\DEq\1A\AF\BA\B5\81", align 16
@aria_is1 = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16
@aria_is2 = internal constant [256 x i8] c"0h\99\1B\87\B9!xP9\DB\E1r\09b<>~^\8E\F1\A0\CC\A3*\1D\FB\B6\D6 \C4\8D\81e\F5\89\CB\9Dw\C6WCV\17\D4@\1AM\C0cl\E3\B7\C8djS\AA8\98\0C\F4\9B\ED\7F\22v\AF\DD:\0BXg\88\06\C35\0D\01\8B\8C\C2\E6_\02$u\93f\1E\E5\E2T\D8\10\CEz\E8\08,\12\972\AB\B4'\0A#\DF\EF\CA\D9\B8\FA\DC1k\D1\AD\19I\BDQ\96\EE\E4\A8A\DA\FF\CDU\866\BEaR\F8\BB\0E\82Hi\9A\E0G\9E\\\04K4\15y&\A7\DE)\AE\92\D7\84\E9\D2\BA]\F3\C5\B0\BF\A4;qDF+\FC\EBo\D5\F6\14\FE|pZ}\FD/\18\83\16\A5\91\1F\05\95t\A9\C1[J\85m\13\07ONE\B2\0F\C9\1C\A6\BC\ECs\90{\CFY\8F\A1\F9-\F2\B1\00\947\9F\D0.\9Cn(?\80\F0=\D3%\8A\B5\E7B\B3\C7\EA\F7L\113\03\A2\AC`", align 16
@.str = private unnamed_addr constant [22 x i8] c"  ARIA-ECB-%d (enc): \00", align 1
@aria_test1_ecb_key = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@aria_test1_ecb_pt = internal constant [16 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", align 16
@aria_test1_ecb_ct = internal constant [3 x [16 x i8]] [[16 x i8] c"\D7\18\FB\D6\ABdLs\9D\A9_;\E6E\17x", [16 x i8] c"&D\9C\18\05\DB\E7\AA%\A4h\CE&:\9Ey", [16 x i8] c"\F9+\D7\C7\9F\B7./+\8F\80\C1\97-$\FC"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  ARIA-ECB-%d (dec): \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  ARIA-CBC-%d (enc): \00", align 1
@aria_test2_key = internal constant [32 x i8] c"\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", align 16
@aria_test2_iv = internal constant [16 x i8] c"\0F\1E-<KZix\87\96\A5\B4\C3\D2\E1\F0", align 16
@aria_test2_pt = internal constant [48 x i8] c"\11\11\11\11\AA\AA\AA\AA\11\11\11\11\BB\BB\BB\BB\11\11\11\11\CC\CC\CC\CC\11\11\11\11\DD\DD\DD\DD\22\22\22\22\AA\AA\AA\AA\22\22\22\22\BB\BB\BB\BB", align 16
@aria_test2_cbc_ct = internal constant [3 x [48 x i8]] [[48 x i8] c"I\D6\18`\B1I\09\10\9C\EF\0D\22\A9&\814\FA\DF\9F\B21Q\E9d_\BAu\01\8B\DB\158\B534cK\BF}L\D4\B57p3\06\0C\15", [48 x i8] c"\AF\E6\CF#\97KS<g*\82bd\EAx_NO\7Fx\0D\C7\F3\F1\E0\96+\80\90#\86\D5\14\E9\C3\E7rY\DE\92\DD\11\02\FF\AB\08l\1E", [48 x i8] c"R:\8A\80j\E6!\F1U\FD\D2\8D\BC4\E1\AB{\9BBC*\D8\B2\EF\B9n#\B1?\0AnR\F3a\85\D5\0A\D0\02\C5\F6\01\BE\E5I?\11\8B"], align 16
@.str.6 = private unnamed_addr constant [22 x i8] c"  ARIA-CBC-%d (dec): \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  ARIA-CFB-%d (enc): \00", align 1
@aria_test2_cfb_ct = internal constant [3 x [48 x i8]] [[48 x i8] c"7 \E5;\A7\D6\1584\06\B0\9F\0A\05\A2\00\C0|!\E67\0FA:]\13%\00\A6\82\85\01|a\B44\C7\B7\CA\96\85\A5\10q\86\1EMK", [48 x i8] c"Aq\F7\19+\F4IT\94\D2sa)d\0F\\M\87\A9\A2\13fL\94HG|n\CC \13Y\8D\97f\95-\D8\C3\86\8F\17\E3n\F6o\D8K", [48 x i8] c"&\83G\05\B0\F2\C0\E2X\8DJ\7F\09\00\965\F2\8B\B9=\8C1\F8p\EC\1E\0B\DB\08+f\FA@-\D9\C2\02\BE0\0CE\17\D1\96\B1ML\E1"], align 16
@.str.8 = private unnamed_addr constant [22 x i8] c"  ARIA-CFB-%d (dec): \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"  ARIA-CTR-%d (enc): \00", align 1
@aria_test2_ctr_ct = internal constant [3 x [48 x i8]] [[48 x i8] c"\AC]}\E8\05\A0\BF\1CW\C8TP\1A\F6\0F\A1\14\97\E2\A3E\19\DE\A1V\9E\91\E5\B5\CC\AE/\F3\BF\A1\BF\97_Eq\F4\8B\E1\91a5F\C3", [48 x i8] c"\08b\\\A8\FEV\9C\19\BAz\F3v\0An\D1\CE\F4\D1\99&>\99\9D\DE\14\08-\BB\A7V\0By\A4\C6\B4V\B8p}\CEu\1F\98T\F1\88\93\DF", [48 x i8] c"0\02l2\96f\14\17!\17\8B\99\C0\A1\F1\B2\F0i@%?{0\89\E2\A3\0E\A8j\A3\C8\8FY@\F0Z\D7\EEA\D7\13G\BBra\E3H\F1"], align 16
@.str.10 = private unnamed_addr constant [22 x i8] c"  ARIA-CTR-%d (dec): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %rc = alloca [3 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %w = alloca [4 x [4 x i32]], align 16
  %w2 = alloca i32*, align 8
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keybits, i32* %keybits.addr, align 4
  %0 = bitcast [3 x [4 x i32]]* %rc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x [4 x i32]]* @__const.mbedtls_aria_setkey_enc.rc to i8*), i64 48, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i32, i32* %keybits.addr, align 4
  %cmp = icmp ne i32 %1, 128
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end2
  %2 = load i32, i32* %keybits.addr, align 4
  %cmp3 = icmp ne i32 %2, 192
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %keybits.addr, align 4
  %cmp5 = icmp ne i32 %3, 256
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 -92, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %do.end2
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl = shl i32 %conv7, 8
  %or = or i32 %conv, %shl
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %10 = load i8*, i8** %key.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %shl14 = shl i32 %conv13, 24
  %or15 = or i32 %or11, %shl14
  %arrayidx16 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx16, i64 0, i64 0
  store i32 %or15, i32* %arrayidx17, align 16
  %12 = load i8*, i8** %key.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 4
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %14 = load i8*, i8** %key.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 5
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %15 to i32
  %shl22 = shl i32 %conv21, 8
  %or23 = or i32 %conv19, %shl22
  %16 = load i8*, i8** %key.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %16, i64 6
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %shl26 = shl i32 %conv25, 16
  %or27 = or i32 %or23, %shl26
  %18 = load i8*, i8** %key.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %18, i64 7
  %19 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %19 to i32
  %shl30 = shl i32 %conv29, 24
  %or31 = or i32 %or27, %shl30
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i64 0, i64 1
  store i32 %or31, i32* %arrayidx33, align 4
  %20 = load i8*, i8** %key.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %20, i64 8
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %21 to i32
  %22 = load i8*, i8** %key.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %22, i64 9
  %23 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %23 to i32
  %shl38 = shl i32 %conv37, 8
  %or39 = or i32 %conv35, %shl38
  %24 = load i8*, i8** %key.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 10
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %shl42 = shl i32 %conv41, 16
  %or43 = or i32 %or39, %shl42
  %26 = load i8*, i8** %key.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 11
  %27 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %27 to i32
  %shl46 = shl i32 %conv45, 24
  %or47 = or i32 %or43, %shl46
  %arrayidx48 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx48, i64 0, i64 2
  store i32 %or47, i32* %arrayidx49, align 8
  %28 = load i8*, i8** %key.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %28, i64 12
  %29 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %29 to i32
  %30 = load i8*, i8** %key.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %30, i64 13
  %31 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %31 to i32
  %shl54 = shl i32 %conv53, 8
  %or55 = or i32 %conv51, %shl54
  %32 = load i8*, i8** %key.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %32, i64 14
  %33 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %33 to i32
  %shl58 = shl i32 %conv57, 16
  %or59 = or i32 %or55, %shl58
  %34 = load i8*, i8** %key.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %34, i64 15
  %35 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %35 to i32
  %shl62 = shl i32 %conv61, 24
  %or63 = or i32 %or59, %shl62
  %arrayidx64 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx64, i64 0, i64 3
  store i32 %or63, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx66, i64 0, i64 0
  %36 = bitcast i32* %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %36, i32 noundef 0, i64 noundef 16) #5
  %37 = load i32, i32* %keybits.addr, align 4
  %cmp67 = icmp uge i32 %37, 192
  br i1 %cmp67, label %if.then69, label %if.end102

if.then69:                                        ; preds = %if.end
  %38 = load i8*, i8** %key.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %38, i64 16
  %39 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %39 to i32
  %40 = load i8*, i8** %key.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %40, i64 17
  %41 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %41 to i32
  %shl74 = shl i32 %conv73, 8
  %or75 = or i32 %conv71, %shl74
  %42 = load i8*, i8** %key.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %42, i64 18
  %43 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %43 to i32
  %shl78 = shl i32 %conv77, 16
  %or79 = or i32 %or75, %shl78
  %44 = load i8*, i8** %key.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %44, i64 19
  %45 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %45 to i32
  %shl82 = shl i32 %conv81, 24
  %or83 = or i32 %or79, %shl82
  %arrayidx84 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx84, i64 0, i64 0
  store i32 %or83, i32* %arrayidx85, align 16
  %46 = load i8*, i8** %key.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %46, i64 20
  %47 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %47 to i32
  %48 = load i8*, i8** %key.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %48, i64 21
  %49 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %49 to i32
  %shl90 = shl i32 %conv89, 8
  %or91 = or i32 %conv87, %shl90
  %50 = load i8*, i8** %key.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %50, i64 22
  %51 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %51 to i32
  %shl94 = shl i32 %conv93, 16
  %or95 = or i32 %or91, %shl94
  %52 = load i8*, i8** %key.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %52, i64 23
  %53 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %53 to i32
  %shl98 = shl i32 %conv97, 24
  %or99 = or i32 %or95, %shl98
  %arrayidx100 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx100, i64 0, i64 1
  store i32 %or99, i32* %arrayidx101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then69, %if.end
  %54 = load i32, i32* %keybits.addr, align 4
  %cmp103 = icmp eq i32 %54, 256
  br i1 %cmp103, label %if.then105, label %if.end138

if.then105:                                       ; preds = %if.end102
  %55 = load i8*, i8** %key.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %55, i64 24
  %56 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %56 to i32
  %57 = load i8*, i8** %key.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %57, i64 25
  %58 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %58 to i32
  %shl110 = shl i32 %conv109, 8
  %or111 = or i32 %conv107, %shl110
  %59 = load i8*, i8** %key.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %59, i64 26
  %60 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %60 to i32
  %shl114 = shl i32 %conv113, 16
  %or115 = or i32 %or111, %shl114
  %61 = load i8*, i8** %key.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %61, i64 27
  %62 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %62 to i32
  %shl118 = shl i32 %conv117, 24
  %or119 = or i32 %or115, %shl118
  %arrayidx120 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx120, i64 0, i64 2
  store i32 %or119, i32* %arrayidx121, align 8
  %63 = load i8*, i8** %key.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %63, i64 28
  %64 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %64 to i32
  %65 = load i8*, i8** %key.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %65, i64 29
  %66 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %66 to i32
  %shl126 = shl i32 %conv125, 8
  %or127 = or i32 %conv123, %shl126
  %67 = load i8*, i8** %key.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %67, i64 30
  %68 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %68 to i32
  %shl130 = shl i32 %conv129, 16
  %or131 = or i32 %or127, %shl130
  %69 = load i8*, i8** %key.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %69, i64 31
  %70 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %70 to i32
  %shl134 = shl i32 %conv133, 24
  %or135 = or i32 %or131, %shl134
  %arrayidx136 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arrayidx137 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx136, i64 0, i64 3
  store i32 %or135, i32* %arrayidx137, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then105, %if.end102
  %71 = load i32, i32* %keybits.addr, align 4
  %sub = sub i32 %71, 128
  %shr = lshr i32 %sub, 6
  store i32 %shr, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %72
  %add = add nsw i32 12, %mul
  %conv139 = trunc i32 %add to i8
  %73 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %73, i32 0, i32 0
  store i8 %conv139, i8* %nr, align 4
  %arrayidx140 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay141 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx140, i64 0, i64 0
  %arrayidx142 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arraydecay143 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx142, i64 0, i64 0
  %74 = load i32, i32* %i, align 4
  %idxprom = sext i32 %74 to i64
  %arrayidx144 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %rc, i64 0, i64 %idxprom
  %arraydecay145 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx144, i64 0, i64 0
  %arrayidx146 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay147 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx146, i64 0, i64 0
  call void @aria_fo_xor(i32* noundef %arraydecay141, i32* noundef %arraydecay143, i32* noundef %arraydecay145, i32* noundef %arraydecay147) #6
  %75 = load i32, i32* %i, align 4
  %cmp148 = icmp slt i32 %75, 2
  br i1 %cmp148, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end138
  %76 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %76, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end138
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add150, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %arrayidx151 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 2
  %arraydecay152 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx151, i64 0, i64 0
  %arrayidx153 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay154 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx153, i64 0, i64 0
  %77 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %77 to i64
  %arrayidx156 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %rc, i64 0, i64 %idxprom155
  %arraydecay157 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx156, i64 0, i64 0
  %arrayidx158 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arraydecay159 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx158, i64 0, i64 0
  call void @aria_fe_xor(i32* noundef %arraydecay152, i32* noundef %arraydecay154, i32* noundef %arraydecay157, i32* noundef %arraydecay159) #6
  %78 = load i32, i32* %i, align 4
  %cmp160 = icmp slt i32 %78, 2
  br i1 %cmp160, label %cond.true162, label %cond.false164

cond.true162:                                     ; preds = %cond.end
  %79 = load i32, i32* %i, align 4
  %add163 = add nsw i32 %79, 1
  br label %cond.end165

cond.false164:                                    ; preds = %cond.end
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false164, %cond.true162
  %cond166 = phi i32 [ %add163, %cond.true162 ], [ 0, %cond.false164 ]
  store i32 %cond166, i32* %i, align 4
  %arrayidx167 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 3
  %arraydecay168 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx167, i64 0, i64 0
  %arrayidx169 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 2
  %arraydecay170 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx169, i64 0, i64 0
  %80 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %80 to i64
  %arrayidx172 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %rc, i64 0, i64 %idxprom171
  %arraydecay173 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx172, i64 0, i64 0
  %arrayidx174 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay175 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx174, i64 0, i64 0
  call void @aria_fo_xor(i32* noundef %arraydecay168, i32* noundef %arraydecay170, i32* noundef %arraydecay173, i32* noundef %arraydecay175) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end165
  %81 = load i32, i32* %i, align 4
  %cmp176 = icmp slt i32 %81, 4
  br i1 %cmp176, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %82 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %82, 1
  %and = and i32 %add178, 3
  %idxprom179 = sext i32 %and to i64
  %arrayidx180 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 %idxprom179
  %arraydecay181 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx180, i64 0, i64 0
  store i32* %arraydecay181, i32** %w2, align 8
  %83 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %83, i32 0, i32 1
  %84 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %84 to i64
  %arrayidx183 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk, i64 0, i64 %idxprom182
  %arraydecay184 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx183, i64 0, i64 0
  %85 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %85 to i64
  %arrayidx186 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 %idxprom185
  %arraydecay187 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx186, i64 0, i64 0
  %86 = load i32*, i32** %w2, align 8
  call void @aria_rot128(i32* noundef %arraydecay184, i32* noundef %arraydecay187, i32* noundef %86, i8 noundef zeroext 109) #6
  %87 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk188 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %87, i32 0, i32 1
  %88 = load i32, i32* %i, align 4
  %add189 = add nsw i32 %88, 4
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk188, i64 0, i64 %idxprom190
  %arraydecay192 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx191, i64 0, i64 0
  %89 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %89 to i64
  %arrayidx194 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 %idxprom193
  %arraydecay195 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx194, i64 0, i64 0
  %90 = load i32*, i32** %w2, align 8
  call void @aria_rot128(i32* noundef %arraydecay192, i32* noundef %arraydecay195, i32* noundef %90, i8 noundef zeroext 97) #6
  %91 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk196 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %91, i32 0, i32 1
  %92 = load i32, i32* %i, align 4
  %add197 = add nsw i32 %92, 8
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk196, i64 0, i64 %idxprom198
  %arraydecay200 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx199, i64 0, i64 0
  %93 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %93 to i64
  %arrayidx202 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 %idxprom201
  %arraydecay203 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx202, i64 0, i64 0
  %94 = load i32*, i32** %w2, align 8
  call void @aria_rot128(i32* noundef %arraydecay200, i32* noundef %arraydecay203, i32* noundef %94, i8 noundef zeroext 61) #6
  %95 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk204 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %95, i32 0, i32 1
  %96 = load i32, i32* %i, align 4
  %add205 = add nsw i32 %96, 12
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk204, i64 0, i64 %idxprom206
  %arraydecay208 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx207, i64 0, i64 0
  %97 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %97 to i64
  %arrayidx210 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 %idxprom209
  %arraydecay211 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx210, i64 0, i64 0
  %98 = load i32*, i32** %w2, align 8
  call void @aria_rot128(i32* noundef %arraydecay208, i32* noundef %arraydecay211, i32* noundef %98, i8 noundef zeroext 31) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %100 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk212 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %100, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk212, i64 0, i64 16
  %arraydecay214 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx213, i64 0, i64 0
  %arrayidx215 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %arraydecay216 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx215, i64 0, i64 0
  %arrayidx217 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 1
  %arraydecay218 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx217, i64 0, i64 0
  call void @aria_rot128(i32* noundef %arraydecay214, i32* noundef %arraydecay216, i32* noundef %arraydecay218, i8 noundef zeroext 19) #6
  %arraydecay219 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %w, i64 0, i64 0
  %101 = bitcast [4 x i32]* %arraydecay219 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %101, i64 noundef 64) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %102 = load i32, i32* %retval, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_fo_xor(i32* noundef %r, i32* noundef %p, i32* noundef %k, i32* noundef %x) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i32* %k, i32** %k.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %k.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %xor = xor i32 %1, %3
  store i32 %xor, i32* %a, align 4
  %4 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %k.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %xor4 = xor i32 %5, %7
  store i32 %xor4, i32* %b, align 4
  %8 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32*, i32** %k.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 2
  %11 = load i32, i32* %arrayidx6, align 4
  %xor7 = xor i32 %9, %11
  store i32 %xor7, i32* %c, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 3
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i32*, i32** %k.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 3
  %15 = load i32, i32* %arrayidx9, align 4
  %xor10 = xor i32 %13, %15
  store i32 %xor10, i32* %d, align 4
  call void @aria_sl(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb2, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is2, i64 0, i64 0)) #6
  call void @aria_a(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d) #6
  %16 = load i32, i32* %a, align 4
  %17 = load i32*, i32** %x.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 %16, %18
  %19 = load i32*, i32** %r.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %xor12, i32* %arrayidx13, align 4
  %20 = load i32, i32* %b, align 4
  %21 = load i32*, i32** %x.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx14, align 4
  %xor15 = xor i32 %20, %22
  %23 = load i32*, i32** %r.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %xor15, i32* %arrayidx16, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32*, i32** %x.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %24, %26
  %27 = load i32*, i32** %r.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %xor18, i32* %arrayidx19, align 4
  %28 = load i32, i32* %d, align 4
  %29 = load i32*, i32** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 3
  %30 = load i32, i32* %arrayidx20, align 4
  %xor21 = xor i32 %28, %30
  %31 = load i32*, i32** %r.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %xor21, i32* %arrayidx22, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_fe_xor(i32* noundef %r, i32* noundef %p, i32* noundef %k, i32* noundef %x) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i32* %k, i32** %k.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %k.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %xor = xor i32 %1, %3
  store i32 %xor, i32* %a, align 4
  %4 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %k.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %xor4 = xor i32 %5, %7
  store i32 %xor4, i32* %b, align 4
  %8 = load i32*, i32** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32*, i32** %k.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 2
  %11 = load i32, i32* %arrayidx6, align 4
  %xor7 = xor i32 %9, %11
  store i32 %xor7, i32* %c, align 4
  %12 = load i32*, i32** %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 3
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i32*, i32** %k.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 3
  %15 = load i32, i32* %arrayidx9, align 4
  %xor10 = xor i32 %13, %15
  store i32 %xor10, i32* %d, align 4
  call void @aria_sl(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is2, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb2, i64 0, i64 0)) #6
  call void @aria_a(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d) #6
  %16 = load i32, i32* %a, align 4
  %17 = load i32*, i32** %x.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 %16, %18
  %19 = load i32*, i32** %r.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %xor12, i32* %arrayidx13, align 4
  %20 = load i32, i32* %b, align 4
  %21 = load i32*, i32** %x.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx14, align 4
  %xor15 = xor i32 %20, %22
  %23 = load i32*, i32** %r.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %xor15, i32* %arrayidx16, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32*, i32** %x.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 2
  %26 = load i32, i32* %arrayidx17, align 4
  %xor18 = xor i32 %24, %26
  %27 = load i32*, i32** %r.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %xor18, i32* %arrayidx19, align 4
  %28 = load i32, i32* %d, align 4
  %29 = load i32*, i32** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 3
  %30 = load i32, i32* %arrayidx20, align 4
  %xor21 = xor i32 %28, %30
  %31 = load i32*, i32** %r.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %xor21, i32* %arrayidx22, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_rot128(i32* noundef %r, i32* noundef %a, i32* noundef %b, i8 noundef zeroext %n) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %n.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %t = alloca i32, align 4
  %u = alloca i32, align 4
  %n1 = alloca i8, align 1
  %n2 = alloca i8, align 1
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i8 %n, i8* %n.addr, align 1
  %0 = load i8, i8* %n.addr, align 1
  %conv = zext i8 %0 to i32
  %rem = srem i32 %conv, 32
  %conv1 = trunc i32 %rem to i8
  store i8 %conv1, i8* %n1, align 1
  %1 = load i8, i8* %n1, align 1
  %conv2 = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %n1, align 1
  %conv3 = zext i8 %2 to i32
  %sub = sub nsw i32 32, %conv3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  store i8 %conv4, i8* %n2, align 1
  %3 = load i8, i8* %n.addr, align 1
  %conv5 = zext i8 %3 to i32
  %div = sdiv i32 %conv5, 32
  %rem6 = srem i32 %div, 4
  %conv7 = trunc i32 %rem6 to i8
  store i8 %conv7, i8* %j, align 1
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i8, i8* %j, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 @aria_p3(i32 noundef %6) #6
  store i32 %call, i32* %t, align 4
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i8, i8* %i, align 1
  %conv8 = zext i8 %7 to i32
  %cmp = icmp slt i32 %conv8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8, i8* %j, align 1
  %conv10 = zext i8 %8 to i32
  %add = add nsw i32 %conv10, 1
  %rem11 = srem i32 %add, 4
  %conv12 = trunc i32 %rem11 to i8
  store i8 %conv12, i8* %j, align 1
  %9 = load i32*, i32** %b.addr, align 8
  %10 = load i8, i8* %j, align 1
  %idxprom13 = zext i8 %10 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %9, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 @aria_p3(i32 noundef %11) #6
  store i32 %call15, i32* %u, align 4
  %12 = load i8, i8* %n1, align 1
  %conv16 = zext i8 %12 to i32
  %13 = load i32, i32* %t, align 4
  %shl = shl i32 %13, %conv16
  store i32 %shl, i32* %t, align 4
  %14 = load i32, i32* %u, align 4
  %15 = load i8, i8* %n2, align 1
  %conv17 = zext i8 %15 to i32
  %shr = lshr i32 %14, %conv17
  %16 = load i32, i32* %t, align 4
  %or = or i32 %16, %shr
  store i32 %or, i32* %t, align 4
  %17 = load i32, i32* %t, align 4
  %call18 = call i32 @aria_p3(i32 noundef %17) #6
  store i32 %call18, i32* %t, align 4
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i8, i8* %i, align 1
  %idxprom19 = zext i8 %19 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %21 = load i32, i32* %t, align 4
  %xor = xor i32 %20, %21
  %22 = load i32*, i32** %r.addr, align 8
  %23 = load i8, i8* %i, align 1
  %idxprom21 = zext i8 %23 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %22, i64 %idxprom21
  store i32 %xor, i32* %arrayidx22, align 4
  %24 = load i32, i32* %u, align 4
  store i32 %24, i32* %t, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i8, i8* %i, align 1
  %inc = add i8 %25, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_setkey_dec(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef %key, i32 noundef %keybits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %key.addr = alloca i8*, align 8
  %keybits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ret = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
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
  %0 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %keybits.addr, align 4
  %call = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %0, i8* noundef %1, i32 noundef %2) #6
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  store i32 0, i32* %i, align 4
  %5 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %5, i32 0, i32 0
  %6 = load i8, i8* %nr, align 4
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %9, 4
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %10 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %10, i32 0, i32 1
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk, i64 0, i64 %idxprom
  %12 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  store i32 %13, i32* %t, align 4
  %14 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk11 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %14, i32 0, i32 1
  %15 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk11, i64 0, i64 %idxprom12
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %18 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk16 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %18, i32 0, i32 1
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk16, i64 0, i64 %idxprom17
  %20 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  store i32 %17, i32* %arrayidx20, align 4
  %21 = load i32, i32* %t, align 4
  %22 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk21 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %22, i32 0, i32 1
  %23 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk21, i64 0, i64 %idxprom22
  %24 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  store i32 %21, i32* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5, !llvm.loop !7

for.end:                                          ; preds = %for.cond5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end28:                                        ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc51, %for.end28
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %nr30 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %29, i32 0, i32 0
  %30 = load i8, i8* %nr30, align 4
  %conv31 = zext i8 %30 to i32
  %cmp32 = icmp slt i32 %28, %conv31
  br i1 %cmp32, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond29
  %31 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk35 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %31, i32 0, i32 1
  %32 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk35, i64 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx37, i64 0, i64 0
  %33 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk39 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %33, i32 0, i32 1
  %34 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk39, i64 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx41, i64 0, i64 1
  %35 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk43 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %35, i32 0, i32 1
  %36 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk43, i64 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx45, i64 0, i64 2
  %37 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk47 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %37, i32 0, i32 1
  %38 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk47, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx49, i64 0, i64 3
  call void @aria_a(i32* noundef %arrayidx38, i32* noundef %arrayidx42, i32* noundef %arrayidx46, i32* noundef %arrayidx50) #6
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34
  %39 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond29, !llvm.loop !9

for.end53:                                        ; preds = %for.cond29
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end53, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_a(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  %ta = alloca i32, align 4
  %tb = alloca i32, align 4
  %tc = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32* %d, i32** %d.addr, align 8
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %ta, align 4
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %b.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %ta, align 4
  %shr = lshr i32 %5, 16
  %6 = load i32, i32* %ta, align 4
  %shl = shl i32 %6, 16
  %xor = xor i32 %shr, %shl
  %7 = load i32*, i32** %a.addr, align 8
  store i32 %xor, i32* %7, align 4
  %8 = load i32*, i32** %d.addr, align 8
  %9 = load i32, i32* %8, align 4
  %shr1 = lshr i32 %9, 16
  %10 = load i32*, i32** %d.addr, align 8
  %11 = load i32, i32* %10, align 4
  %shl2 = shl i32 %11, 16
  %xor3 = xor i32 %shr1, %shl2
  store i32 %xor3, i32* %tb, align 4
  %12 = load i32*, i32** %c.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call = call i32 @aria_p3(i32 noundef %13) #6
  %shr4 = lshr i32 %call, 16
  %14 = load i32*, i32** %c.addr, align 8
  %15 = load i32, i32* %14, align 4
  %call5 = call i32 @aria_p3(i32 noundef %15) #6
  %shl6 = shl i32 %call5, 16
  %xor7 = xor i32 %shr4, %shl6
  %16 = load i32*, i32** %d.addr, align 8
  store i32 %xor7, i32* %16, align 4
  %17 = load i32, i32* %tb, align 4
  %call8 = call i32 @aria_p3(i32 noundef %17) #6
  %shr9 = lshr i32 %call8, 16
  %18 = load i32, i32* %tb, align 4
  %call10 = call i32 @aria_p3(i32 noundef %18) #6
  %shl11 = shl i32 %call10, 16
  %xor12 = xor i32 %shr9, %shl11
  %19 = load i32*, i32** %c.addr, align 8
  store i32 %xor12, i32* %19, align 4
  %20 = load i32*, i32** %d.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %ta, align 4
  %xor13 = xor i32 %22, %21
  store i32 %xor13, i32* %ta, align 4
  %23 = load i32*, i32** %b.addr, align 8
  %24 = load i32, i32* %23, align 4
  %shr14 = lshr i32 %24, 16
  %25 = load i32*, i32** %b.addr, align 8
  %26 = load i32, i32* %25, align 4
  %shl15 = shl i32 %26, 16
  %xor16 = xor i32 %shr14, %shl15
  store i32 %xor16, i32* %tc, align 4
  %27 = load i32, i32* %ta, align 4
  %call17 = call i32 @aria_p3(i32 noundef %27) #6
  %shr18 = lshr i32 %call17, 16
  %28 = load i32, i32* %ta, align 4
  %call19 = call i32 @aria_p3(i32 noundef %28) #6
  %shl20 = shl i32 %call19, 16
  %xor21 = xor i32 %shr18, %shl20
  %29 = load i32, i32* %tc, align 4
  %xor22 = xor i32 %xor21, %29
  %30 = load i32*, i32** %c.addr, align 8
  %31 = load i32, i32* %30, align 4
  %xor23 = xor i32 %xor22, %31
  store i32 %xor23, i32* %ta, align 4
  %32 = load i32*, i32** %d.addr, align 8
  %33 = load i32, i32* %32, align 4
  %shr24 = lshr i32 %33, 16
  %34 = load i32*, i32** %d.addr, align 8
  %35 = load i32, i32* %34, align 4
  %shl25 = shl i32 %35, 16
  %xor26 = xor i32 %shr24, %shl25
  %36 = load i32, i32* %tb, align 4
  %xor27 = xor i32 %36, %xor26
  store i32 %xor27, i32* %tb, align 4
  %37 = load i32*, i32** %a.addr, align 8
  %38 = load i32, i32* %37, align 4
  %call28 = call i32 @aria_p3(i32 noundef %38) #6
  %shr29 = lshr i32 %call28, 16
  %39 = load i32*, i32** %a.addr, align 8
  %40 = load i32, i32* %39, align 4
  %call30 = call i32 @aria_p3(i32 noundef %40) #6
  %shl31 = shl i32 %call30, 16
  %xor32 = xor i32 %shr29, %shl31
  %41 = load i32, i32* %tc, align 4
  %xor33 = xor i32 %41, %xor32
  store i32 %xor33, i32* %tc, align 4
  %42 = load i32, i32* %ta, align 4
  %43 = load i32, i32* %tb, align 4
  %xor34 = xor i32 %42, %43
  %44 = load i32*, i32** %b.addr, align 8
  %45 = load i32, i32* %44, align 4
  %xor35 = xor i32 %45, %xor34
  store i32 %xor35, i32* %44, align 4
  %46 = load i32, i32* %tb, align 4
  %shr36 = lshr i32 %46, 16
  %47 = load i32, i32* %tb, align 4
  %shl37 = shl i32 %47, 16
  %xor38 = xor i32 %shr36, %shl37
  %48 = load i32, i32* %ta, align 4
  %xor39 = xor i32 %xor38, %48
  store i32 %xor39, i32* %tb, align 4
  %49 = load i32, i32* %tb, align 4
  %call40 = call i32 @aria_p3(i32 noundef %49) #6
  %shr41 = lshr i32 %call40, 16
  %50 = load i32, i32* %tb, align 4
  %call42 = call i32 @aria_p3(i32 noundef %50) #6
  %shl43 = shl i32 %call42, 16
  %xor44 = xor i32 %shr41, %shl43
  %51 = load i32*, i32** %a.addr, align 8
  %52 = load i32, i32* %51, align 4
  %xor45 = xor i32 %52, %xor44
  store i32 %xor45, i32* %51, align 4
  %53 = load i32, i32* %ta, align 4
  %shr46 = lshr i32 %53, 16
  %54 = load i32, i32* %ta, align 4
  %shl47 = shl i32 %54, 16
  %xor48 = xor i32 %shr46, %shl47
  store i32 %xor48, i32* %ta, align 4
  %55 = load i32, i32* %ta, align 4
  %call49 = call i32 @aria_p3(i32 noundef %55) #6
  %shr50 = lshr i32 %call49, 16
  %56 = load i32, i32* %ta, align 4
  %call51 = call i32 @aria_p3(i32 noundef %56) #6
  %shl52 = shl i32 %call51, 16
  %xor53 = xor i32 %shr50, %shl52
  %57 = load i32, i32* %tc, align 4
  %xor54 = xor i32 %xor53, %57
  %58 = load i32*, i32** %d.addr, align 8
  %59 = load i32, i32* %58, align 4
  %xor55 = xor i32 %59, %xor54
  store i32 %xor55, i32* %58, align 4
  %60 = load i32, i32* %tc, align 4
  %shr56 = lshr i32 %60, 16
  %61 = load i32, i32* %tc, align 4
  %shl57 = shl i32 %61, 16
  %xor58 = xor i32 %shr56, %shl57
  store i32 %xor58, i32* %tc, align 4
  %62 = load i32, i32* %tc, align 4
  %call59 = call i32 @aria_p3(i32 noundef %62) #6
  %shr60 = lshr i32 %call59, 16
  %63 = load i32, i32* %tc, align 4
  %call61 = call i32 @aria_p3(i32 noundef %63) #6
  %shl62 = shl i32 %call61, 16
  %xor63 = xor i32 %shr60, %shl62
  %64 = load i32, i32* %ta, align 4
  %xor64 = xor i32 %xor63, %64
  %65 = load i32*, i32** %c.addr, align 8
  %66 = load i32, i32* %65, align 4
  %xor65 = xor i32 %66, %xor64
  store i32 %xor65, i32* %65, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
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
  %0 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %input.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %shl = shl i32 %conv6, 8
  %or = or i32 %conv, %shl
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %5 to i32
  %shl9 = shl i32 %conv8, 16
  %or10 = or i32 %or, %shl9
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %shl13 = shl i32 %conv12, 24
  %or14 = or i32 %or10, %shl13
  store i32 %or14, i32* %a, align 4
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %shl19 = shl i32 %conv18, 8
  %or20 = or i32 %conv16, %shl19
  %12 = load i8*, i8** %input.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %shl23 = shl i32 %conv22, 16
  %or24 = or i32 %or20, %shl23
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl i32 %conv26, 24
  %or28 = or i32 %or24, %shl27
  store i32 %or28, i32* %b, align 4
  %16 = load i8*, i8** %input.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %17 to i32
  %18 = load i8*, i8** %input.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %18, i64 9
  %19 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %shl33 = shl i32 %conv32, 8
  %or34 = or i32 %conv30, %shl33
  %20 = load i8*, i8** %input.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %20, i64 10
  %21 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %21 to i32
  %shl37 = shl i32 %conv36, 16
  %or38 = or i32 %or34, %shl37
  %22 = load i8*, i8** %input.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %22, i64 11
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %23 to i32
  %shl41 = shl i32 %conv40, 24
  %or42 = or i32 %or38, %shl41
  store i32 %or42, i32* %c, align 4
  %24 = load i8*, i8** %input.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %24, i64 12
  %25 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %25 to i32
  %26 = load i8*, i8** %input.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %26, i64 13
  %27 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %27 to i32
  %shl47 = shl i32 %conv46, 8
  %or48 = or i32 %conv44, %shl47
  %28 = load i8*, i8** %input.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %28, i64 14
  %29 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %29 to i32
  %shl51 = shl i32 %conv50, 16
  %or52 = or i32 %or48, %shl51
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %30, i64 15
  %31 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %31 to i32
  %shl55 = shl i32 %conv54, 24
  %or56 = or i32 %or52, %shl55
  store i32 %or56, i32* %d, align 4
  store i32 0, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %do.end4, %if.end
  %32 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %32, i32 0, i32 1
  %33 = load i32, i32* %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx57 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk, i64 0, i64 %idxprom
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx57, i64 0, i64 0
  %34 = load i32, i32* %arrayidx58, align 4
  %35 = load i32, i32* %a, align 4
  %xor = xor i32 %35, %34
  store i32 %xor, i32* %a, align 4
  %36 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk59 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %36, i32 0, i32 1
  %37 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk59, i64 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx61, i64 0, i64 1
  %38 = load i32, i32* %arrayidx62, align 4
  %39 = load i32, i32* %b, align 4
  %xor63 = xor i32 %39, %38
  store i32 %xor63, i32* %b, align 4
  %40 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk64 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %40, i32 0, i32 1
  %41 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk64, i64 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx66, i64 0, i64 2
  %42 = load i32, i32* %arrayidx67, align 4
  %43 = load i32, i32* %c, align 4
  %xor68 = xor i32 %43, %42
  store i32 %xor68, i32* %c, align 4
  %44 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk69 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %44, i32 0, i32 1
  %45 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk69, i64 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx71, i64 0, i64 3
  %46 = load i32, i32* %arrayidx72, align 4
  %47 = load i32, i32* %d, align 4
  %xor73 = xor i32 %47, %46
  store i32 %xor73, i32* %d, align 4
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  call void @aria_sl(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb2, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is2, i64 0, i64 0)) #6
  call void @aria_a(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d) #6
  %49 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk74 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %49, i32 0, i32 1
  %50 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk74, i64 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx76, i64 0, i64 0
  %51 = load i32, i32* %arrayidx77, align 4
  %52 = load i32, i32* %a, align 4
  %xor78 = xor i32 %52, %51
  store i32 %xor78, i32* %a, align 4
  %53 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk79 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %53, i32 0, i32 1
  %54 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %54 to i64
  %arrayidx81 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk79, i64 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx81, i64 0, i64 1
  %55 = load i32, i32* %arrayidx82, align 4
  %56 = load i32, i32* %b, align 4
  %xor83 = xor i32 %56, %55
  store i32 %xor83, i32* %b, align 4
  %57 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk84 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %57, i32 0, i32 1
  %58 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %58 to i64
  %arrayidx86 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk84, i64 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx86, i64 0, i64 2
  %59 = load i32, i32* %arrayidx87, align 4
  %60 = load i32, i32* %c, align 4
  %xor88 = xor i32 %60, %59
  store i32 %xor88, i32* %c, align 4
  %61 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk89 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %61, i32 0, i32 1
  %62 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %62 to i64
  %arrayidx91 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk89, i64 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx91, i64 0, i64 3
  %63 = load i32, i32* %arrayidx92, align 4
  %64 = load i32, i32* %d, align 4
  %xor93 = xor i32 %64, %63
  store i32 %xor93, i32* %d, align 4
  %65 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %65, 1
  store i32 %inc94, i32* %i, align 4
  call void @aria_sl(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_is2, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb1, i64 0, i64 0), i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @aria_sb2, i64 0, i64 0)) #6
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %67, i32 0, i32 0
  %68 = load i8, i8* %nr, align 4
  %conv95 = zext i8 %68 to i32
  %cmp = icmp sge i32 %66, %conv95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @aria_a(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d) #6
  br label %while.body

while.end:                                        ; preds = %if.then
  %69 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk97 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %69, i32 0, i32 1
  %70 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %70 to i64
  %arrayidx99 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk97, i64 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx99, i64 0, i64 0
  %71 = load i32, i32* %arrayidx100, align 4
  %72 = load i32, i32* %a, align 4
  %xor101 = xor i32 %72, %71
  store i32 %xor101, i32* %a, align 4
  %73 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk102 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %73, i32 0, i32 1
  %74 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %74 to i64
  %arrayidx104 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk102, i64 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx104, i64 0, i64 1
  %75 = load i32, i32* %arrayidx105, align 4
  %76 = load i32, i32* %b, align 4
  %xor106 = xor i32 %76, %75
  store i32 %xor106, i32* %b, align 4
  %77 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk107 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %77, i32 0, i32 1
  %78 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %78 to i64
  %arrayidx109 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk107, i64 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx109, i64 0, i64 2
  %79 = load i32, i32* %arrayidx110, align 4
  %80 = load i32, i32* %c, align 4
  %xor111 = xor i32 %80, %79
  store i32 %xor111, i32* %c, align 4
  %81 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %rk112 = getelementptr inbounds %struct.mbedtls_aria_context, %struct.mbedtls_aria_context* %81, i32 0, i32 1
  %82 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %82 to i64
  %arrayidx114 = getelementptr inbounds [17 x [4 x i32]], [17 x [4 x i32]]* %rk112, i64 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx114, i64 0, i64 3
  %83 = load i32, i32* %arrayidx115, align 4
  %84 = load i32, i32* %d, align 4
  %xor116 = xor i32 %84, %83
  store i32 %xor116, i32* %d, align 4
  %85 = load i32, i32* %a, align 4
  %and = and i32 %85, 255
  %conv117 = trunc i32 %and to i8
  %86 = load i8*, i8** %output.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %conv117, i8* %arrayidx118, align 1
  %87 = load i32, i32* %a, align 4
  %shr = lshr i32 %87, 8
  %and119 = and i32 %shr, 255
  %conv120 = trunc i32 %and119 to i8
  %88 = load i8*, i8** %output.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %conv120, i8* %arrayidx121, align 1
  %89 = load i32, i32* %a, align 4
  %shr122 = lshr i32 %89, 16
  %and123 = and i32 %shr122, 255
  %conv124 = trunc i32 %and123 to i8
  %90 = load i8*, i8** %output.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %conv124, i8* %arrayidx125, align 1
  %91 = load i32, i32* %a, align 4
  %shr126 = lshr i32 %91, 24
  %and127 = and i32 %shr126, 255
  %conv128 = trunc i32 %and127 to i8
  %92 = load i8*, i8** %output.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %92, i64 3
  store i8 %conv128, i8* %arrayidx129, align 1
  %93 = load i32, i32* %b, align 4
  %and130 = and i32 %93, 255
  %conv131 = trunc i32 %and130 to i8
  %94 = load i8*, i8** %output.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %94, i64 4
  store i8 %conv131, i8* %arrayidx132, align 1
  %95 = load i32, i32* %b, align 4
  %shr133 = lshr i32 %95, 8
  %and134 = and i32 %shr133, 255
  %conv135 = trunc i32 %and134 to i8
  %96 = load i8*, i8** %output.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %96, i64 5
  store i8 %conv135, i8* %arrayidx136, align 1
  %97 = load i32, i32* %b, align 4
  %shr137 = lshr i32 %97, 16
  %and138 = and i32 %shr137, 255
  %conv139 = trunc i32 %and138 to i8
  %98 = load i8*, i8** %output.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %98, i64 6
  store i8 %conv139, i8* %arrayidx140, align 1
  %99 = load i32, i32* %b, align 4
  %shr141 = lshr i32 %99, 24
  %and142 = and i32 %shr141, 255
  %conv143 = trunc i32 %and142 to i8
  %100 = load i8*, i8** %output.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %100, i64 7
  store i8 %conv143, i8* %arrayidx144, align 1
  %101 = load i32, i32* %c, align 4
  %and145 = and i32 %101, 255
  %conv146 = trunc i32 %and145 to i8
  %102 = load i8*, i8** %output.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %102, i64 8
  store i8 %conv146, i8* %arrayidx147, align 1
  %103 = load i32, i32* %c, align 4
  %shr148 = lshr i32 %103, 8
  %and149 = and i32 %shr148, 255
  %conv150 = trunc i32 %and149 to i8
  %104 = load i8*, i8** %output.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %104, i64 9
  store i8 %conv150, i8* %arrayidx151, align 1
  %105 = load i32, i32* %c, align 4
  %shr152 = lshr i32 %105, 16
  %and153 = and i32 %shr152, 255
  %conv154 = trunc i32 %and153 to i8
  %106 = load i8*, i8** %output.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %106, i64 10
  store i8 %conv154, i8* %arrayidx155, align 1
  %107 = load i32, i32* %c, align 4
  %shr156 = lshr i32 %107, 24
  %and157 = and i32 %shr156, 255
  %conv158 = trunc i32 %and157 to i8
  %108 = load i8*, i8** %output.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %108, i64 11
  store i8 %conv158, i8* %arrayidx159, align 1
  %109 = load i32, i32* %d, align 4
  %and160 = and i32 %109, 255
  %conv161 = trunc i32 %and160 to i8
  %110 = load i8*, i8** %output.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %110, i64 12
  store i8 %conv161, i8* %arrayidx162, align 1
  %111 = load i32, i32* %d, align 4
  %shr163 = lshr i32 %111, 8
  %and164 = and i32 %shr163, 255
  %conv165 = trunc i32 %and164 to i8
  %112 = load i8*, i8** %output.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %112, i64 13
  store i8 %conv165, i8* %arrayidx166, align 1
  %113 = load i32, i32* %d, align 4
  %shr167 = lshr i32 %113, 16
  %and168 = and i32 %shr167, 255
  %conv169 = trunc i32 %and168 to i8
  %114 = load i8*, i8** %output.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %114, i64 14
  store i8 %conv169, i8* %arrayidx170, align 1
  %115 = load i32, i32* %d, align 4
  %shr171 = lshr i32 %115, 24
  %and172 = and i32 %shr171, 255
  %conv173 = trunc i32 %and172 to i8
  %116 = load i8*, i8** %output.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %116, i64 15
  store i8 %conv173, i8* %arrayidx174, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aria_sl(i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d, i8* noundef %sa, i8* noundef %sb, i8* noundef %sc, i8* noundef %sd) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  %sa.addr = alloca i8*, align 8
  %sb.addr = alloca i8*, align 8
  %sc.addr = alloca i8*, align 8
  %sd.addr = alloca i8*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32* %d, i32** %d.addr, align 8
  store i8* %sa, i8** %sa.addr, align 8
  store i8* %sb, i8** %sb.addr, align 8
  store i8* %sc, i8** %sc.addr, align 8
  store i8* %sd, i8** %sd.addr, align 8
  %0 = load i8*, i8** %sa.addr, align 8
  %1 = load i32*, i32** %a.addr, align 8
  %2 = load i32, i32* %1, align 4
  %and = and i32 %2, 255
  %conv = trunc i32 %and to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %4 = load i8*, i8** %sb.addr, align 8
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %5, align 4
  %shr = lshr i32 %6, 8
  %and2 = and i32 %shr, 255
  %conv3 = trunc i32 %and2 to i8
  %idxprom4 = zext i8 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %shl = shl i32 %conv6, 8
  %xor = xor i32 %conv1, %shl
  %8 = load i8*, i8** %sc.addr, align 8
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %9, align 4
  %shr7 = lshr i32 %10, 16
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %idxprom10 = zext i8 %conv9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 16
  %xor14 = xor i32 %xor, %shl13
  %12 = load i8*, i8** %sd.addr, align 8
  %13 = load i32*, i32** %a.addr, align 8
  %14 = load i32, i32* %13, align 4
  %shr15 = lshr i32 %14, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %idxprom18 = zext i8 %conv17 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %shl21 = shl i32 %conv20, 24
  %xor22 = xor i32 %xor14, %shl21
  %16 = load i32*, i32** %a.addr, align 8
  store i32 %xor22, i32* %16, align 4
  %17 = load i8*, i8** %sa.addr, align 8
  %18 = load i32*, i32** %b.addr, align 8
  %19 = load i32, i32* %18, align 4
  %and23 = and i32 %19, 255
  %conv24 = trunc i32 %and23 to i8
  %idxprom25 = zext i8 %conv24 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %20 to i32
  %21 = load i8*, i8** %sb.addr, align 8
  %22 = load i32*, i32** %b.addr, align 8
  %23 = load i32, i32* %22, align 4
  %shr28 = lshr i32 %23, 8
  %and29 = and i32 %shr28, 255
  %conv30 = trunc i32 %and29 to i8
  %idxprom31 = zext i8 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 %idxprom31
  %24 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %24 to i32
  %shl34 = shl i32 %conv33, 8
  %xor35 = xor i32 %conv27, %shl34
  %25 = load i8*, i8** %sc.addr, align 8
  %26 = load i32*, i32** %b.addr, align 8
  %27 = load i32, i32* %26, align 4
  %shr36 = lshr i32 %27, 16
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i8
  %idxprom39 = zext i8 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %25, i64 %idxprom39
  %28 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %28 to i32
  %shl42 = shl i32 %conv41, 16
  %xor43 = xor i32 %xor35, %shl42
  %29 = load i8*, i8** %sd.addr, align 8
  %30 = load i32*, i32** %b.addr, align 8
  %31 = load i32, i32* %30, align 4
  %shr44 = lshr i32 %31, 24
  %and45 = and i32 %shr44, 255
  %conv46 = trunc i32 %and45 to i8
  %idxprom47 = zext i8 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i8, i8* %29, i64 %idxprom47
  %32 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %32 to i32
  %shl50 = shl i32 %conv49, 24
  %xor51 = xor i32 %xor43, %shl50
  %33 = load i32*, i32** %b.addr, align 8
  store i32 %xor51, i32* %33, align 4
  %34 = load i8*, i8** %sa.addr, align 8
  %35 = load i32*, i32** %c.addr, align 8
  %36 = load i32, i32* %35, align 4
  %and52 = and i32 %36, 255
  %conv53 = trunc i32 %and52 to i8
  %idxprom54 = zext i8 %conv53 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %34, i64 %idxprom54
  %37 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %37 to i32
  %38 = load i8*, i8** %sb.addr, align 8
  %39 = load i32*, i32** %c.addr, align 8
  %40 = load i32, i32* %39, align 4
  %shr57 = lshr i32 %40, 8
  %and58 = and i32 %shr57, 255
  %conv59 = trunc i32 %and58 to i8
  %idxprom60 = zext i8 %conv59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %38, i64 %idxprom60
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %41 to i32
  %shl63 = shl i32 %conv62, 8
  %xor64 = xor i32 %conv56, %shl63
  %42 = load i8*, i8** %sc.addr, align 8
  %43 = load i32*, i32** %c.addr, align 8
  %44 = load i32, i32* %43, align 4
  %shr65 = lshr i32 %44, 16
  %and66 = and i32 %shr65, 255
  %conv67 = trunc i32 %and66 to i8
  %idxprom68 = zext i8 %conv67 to i64
  %arrayidx69 = getelementptr inbounds i8, i8* %42, i64 %idxprom68
  %45 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %45 to i32
  %shl71 = shl i32 %conv70, 16
  %xor72 = xor i32 %xor64, %shl71
  %46 = load i8*, i8** %sd.addr, align 8
  %47 = load i32*, i32** %c.addr, align 8
  %48 = load i32, i32* %47, align 4
  %shr73 = lshr i32 %48, 24
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %idxprom76 = zext i8 %conv75 to i64
  %arrayidx77 = getelementptr inbounds i8, i8* %46, i64 %idxprom76
  %49 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %49 to i32
  %shl79 = shl i32 %conv78, 24
  %xor80 = xor i32 %xor72, %shl79
  %50 = load i32*, i32** %c.addr, align 8
  store i32 %xor80, i32* %50, align 4
  %51 = load i8*, i8** %sa.addr, align 8
  %52 = load i32*, i32** %d.addr, align 8
  %53 = load i32, i32* %52, align 4
  %and81 = and i32 %53, 255
  %conv82 = trunc i32 %and81 to i8
  %idxprom83 = zext i8 %conv82 to i64
  %arrayidx84 = getelementptr inbounds i8, i8* %51, i64 %idxprom83
  %54 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %54 to i32
  %55 = load i8*, i8** %sb.addr, align 8
  %56 = load i32*, i32** %d.addr, align 8
  %57 = load i32, i32* %56, align 4
  %shr86 = lshr i32 %57, 8
  %and87 = and i32 %shr86, 255
  %conv88 = trunc i32 %and87 to i8
  %idxprom89 = zext i8 %conv88 to i64
  %arrayidx90 = getelementptr inbounds i8, i8* %55, i64 %idxprom89
  %58 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %58 to i32
  %shl92 = shl i32 %conv91, 8
  %xor93 = xor i32 %conv85, %shl92
  %59 = load i8*, i8** %sc.addr, align 8
  %60 = load i32*, i32** %d.addr, align 8
  %61 = load i32, i32* %60, align 4
  %shr94 = lshr i32 %61, 16
  %and95 = and i32 %shr94, 255
  %conv96 = trunc i32 %and95 to i8
  %idxprom97 = zext i8 %conv96 to i64
  %arrayidx98 = getelementptr inbounds i8, i8* %59, i64 %idxprom97
  %62 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %62 to i32
  %shl100 = shl i32 %conv99, 16
  %xor101 = xor i32 %xor93, %shl100
  %63 = load i8*, i8** %sd.addr, align 8
  %64 = load i32*, i32** %d.addr, align 8
  %65 = load i32, i32* %64, align 4
  %shr102 = lshr i32 %65, 24
  %and103 = and i32 %shr102, 255
  %conv104 = trunc i32 %and103 to i8
  %idxprom105 = zext i8 %conv104 to i64
  %arrayidx106 = getelementptr inbounds i8, i8* %63, i64 %idxprom105
  %66 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %66 to i32
  %shl108 = shl i32 %conv107, 24
  %xor109 = xor i32 %xor101, %shl108
  %67 = load i32*, i32** %d.addr, align 8
  store i32 %xor109, i32* %67, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_aria_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 276) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_aria_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_aria_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 276) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %temp = alloca [16 x i8], align 16
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
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
  store i32 -94, i32* %retval, align 4
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
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %3, i64 noundef 16) #5
  %4 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %4, i8* noundef %5, i8* noundef %6) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %7, 16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %output.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8*, i8** %iv.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv15
  %conv16 = trunc i32 %xor to i8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %iv.addr, align 8
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %temp, i64 0, i64 0
  %call20 = call i8* @memcpy(i8* noundef %17, i8* noundef %arraydecay19, i64 noundef 16) #5
  %18 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 16
  store i8* %add.ptr, i8** %input.addr, align 8
  %19 = load i8*, i8** %output.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %19, i64 16
  store i8* %add.ptr21, i8** %output.addr, align 8
  %20 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %20, 16
  store i64 %sub, i64* %length.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %if.end49

if.else:                                          ; preds = %if.end
  br label %while.cond22

while.cond22:                                     ; preds = %for.end42, %if.else
  %21 = load i64, i64* %length.addr, align 8
  %cmp23 = icmp ugt i64 %21, 0
  br i1 %cmp23, label %while.body25, label %while.end48

while.body25:                                     ; preds = %while.cond22
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %while.body25
  %22 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %22, 16
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %23 = load i8*, i8** %input.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 %idxprom30
  %25 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %25 to i32
  %26 = load i8*, i8** %iv.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i64 %idxprom33
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %28 to i32
  %xor36 = xor i32 %conv32, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %29 = load i8*, i8** %output.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %29, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %31 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %31, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond26, !llvm.loop !12

for.end42:                                        ; preds = %for.cond26
  %32 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %33 = load i8*, i8** %output.addr, align 8
  %34 = load i8*, i8** %output.addr, align 8
  %call43 = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %32, i8* noundef %33, i8* noundef %34) #6
  %35 = load i8*, i8** %iv.addr, align 8
  %36 = load i8*, i8** %output.addr, align 8
  %call44 = call i8* @memcpy(i8* noundef %35, i8* noundef %36, i64 noundef 16) #5
  %37 = load i8*, i8** %input.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %37, i64 16
  store i8* %add.ptr45, i8** %input.addr, align 8
  %38 = load i8*, i8** %output.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %38, i64 16
  store i8* %add.ptr46, i8** %output.addr, align 8
  %39 = load i64, i64* %length.addr, align 8
  %sub47 = sub i64 %39, 16
  store i64 %sub47, i64* %length.addr, align 8
  br label %while.cond22, !llvm.loop !13

while.end48:                                      ; preds = %while.cond22
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_crypt_cfb128(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i64* noundef %iv_off, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv_off.addr = alloca i64*, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %n = alloca i64, align 8
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
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
  store i32 -92, i32* %retval, align 4
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
  %6 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i8*, i8** %iv.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %6, i8* noundef %7, i8* noundef %8) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body
  %9 = load i8*, i8** %input.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %input.addr, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %c, align 1
  %11 = load i8, i8* %c, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8*, i8** %iv.addr, align 8
  %13 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %14 to i32
  %xor = xor i32 %conv, %conv16
  %conv17 = trunc i32 %xor to i8
  %15 = load i8*, i8** %output.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8
  store i8 %conv17, i8* %15, align 1
  %16 = load i8, i8* %c, align 1
  %17 = load i8*, i8** %iv.addr, align 8
  %18 = load i64, i64* %n, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 %16, i8* %arrayidx19, align 1
  %19 = load i64, i64* %n, align 8
  %add = add i64 %19, 1
  %and = and i64 %add, 15
  store i64 %and, i64* %n, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end40

if.else:                                          ; preds = %if.end
  br label %while.cond20

while.cond20:                                     ; preds = %if.end28, %if.else
  %20 = load i64, i64* %length.addr, align 8
  %dec21 = add i64 %20, -1
  store i64 %dec21, i64* %length.addr, align 8
  %tobool22 = icmp ne i64 %20, 0
  br i1 %tobool22, label %while.body23, label %while.end39

while.body23:                                     ; preds = %while.cond20
  %21 = load i64, i64* %n, align 8
  %cmp24 = icmp eq i64 %21, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.body23
  %22 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %23 = load i8*, i8** %iv.addr, align 8
  %24 = load i8*, i8** %iv.addr, align 8
  %call27 = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %22, i8* noundef %23, i8* noundef %24) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.body23
  %25 = load i8*, i8** %iv.addr, align 8
  %26 = load i64, i64* %n, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %27 to i32
  %28 = load i8*, i8** %input.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr31, i8** %input.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv32 = zext i8 %29 to i32
  %xor33 = xor i32 %conv30, %conv32
  %conv34 = trunc i32 %xor33 to i8
  %30 = load i8*, i8** %output.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr35, i8** %output.addr, align 8
  store i8 %conv34, i8* %30, align 1
  %31 = load i8*, i8** %iv.addr, align 8
  %32 = load i64, i64* %n, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %conv34, i8* %arrayidx36, align 1
  %33 = load i64, i64* %n, align 8
  %add37 = add i64 %33, 1
  %and38 = and i64 %add37, 15
  store i64 %and38, i64* %n, align 8
  br label %while.cond20, !llvm.loop !15

while.end39:                                      ; preds = %while.cond20
  br label %if.end40

if.end40:                                         ; preds = %while.end39, %while.end
  %34 = load i64, i64* %n, align 8
  %35 = load i64*, i64** %iv_off.addr, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aria_crypt_ctr(%struct.mbedtls_aria_context* noundef %ctx, i64 noundef %length, i64* noundef %nc_off, i8* noundef %nonce_counter, i8* noundef %stream_block, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_aria_context*, align 8
  %length.addr = alloca i64, align 8
  %nc_off.addr = alloca i64*, align 8
  %nonce_counter.addr = alloca i8*, align 8
  %stream_block.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.mbedtls_aria_context* %ctx, %struct.mbedtls_aria_context** %ctx.addr, align 8
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
  store i32 -92, i32* %retval, align 4
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
  %5 = load %struct.mbedtls_aria_context*, %struct.mbedtls_aria_context** %ctx.addr, align 8
  %6 = load i8*, i8** %nonce_counter.addr, align 8
  %7 = load i8*, i8** %stream_block.addr, align 8
  %call = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %5, i8* noundef %6, i8* noundef %7) #6
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
  br label %for.cond, !llvm.loop !16

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
  br label %while.cond, !llvm.loop !17

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
define dso_local i32 @mbedtls_aria_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %blk = alloca [16 x i8], align 16
  %ctx = alloca %struct.mbedtls_aria_context, align 4
  %ret = alloca i32, align 4
  %j = alloca i64, align 8
  %buf = alloca [48 x i8], align 16
  %iv = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 1, i32* %ret, align 4
  call void @mbedtls_aria_init(%struct.mbedtls_aria_context* noundef %ctx) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 64, %2
  %add = add nsw i32 128, %mul
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 64, %3
  %add2 = add nsw i32 128, %mul1
  %call3 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test1_ecb_key, i64 0, i64 0), i32 noundef %add2) #6
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %call4 = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test1_ecb_pt, i64 0, i64 0), i8* noundef %arraydecay) #6
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aria_test1_ecb_ct, i64 0, i64 %idxprom
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 0
  %call7 = call i32 @memcmp(i8* noundef %arraydecay5, i8* noundef %arraydecay6, i64 noundef 16) #7
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %5 = load i32, i32* %verbose.addr, align 4
  %tobool10 = icmp ne i32 %5, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %exit

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %verbose.addr, align 4
  %tobool14 = icmp ne i32 %6, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %7 = load i32, i32* %verbose.addr, align 4
  %tobool19 = icmp ne i32 %7, 0
  br i1 %tobool19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end18
  %8 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 64, %8
  %add22 = add nsw i32 128, %mul21
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %add22) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end18
  %9 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 64, %9
  %add26 = add nsw i32 128, %mul25
  %call27 = call i32 @mbedtls_aria_setkey_dec(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test1_ecb_key, i64 0, i64 0), i32 noundef %add26) #6
  %10 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %10 to i64
  %arrayidx29 = getelementptr inbounds [3 x [16 x i8]], [3 x [16 x i8]]* @aria_test1_ecb_ct, i64 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx29, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %call32 = call i32 @mbedtls_aria_crypt_ecb(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef %arraydecay30, i8* noundef %arraydecay31) #6
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %call34 = call i32 @memcmp(i8* noundef %arraydecay33, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test1_ecb_pt, i64 0, i64 0), i64 noundef 16) #7
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.else41

if.then36:                                        ; preds = %if.end24
  %11 = load i32, i32* %verbose.addr, align 4
  %tobool37 = icmp ne i32 %11, 0
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then36
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36
  br label %exit

if.else41:                                        ; preds = %if.end24
  %12 = load i32, i32* %verbose.addr, align 4
  %tobool42 = icmp ne i32 %12, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else41
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else41
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %for.inc

for.inc:                                          ; preds = %if.end46
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %verbose.addr, align 4
  %tobool47 = icmp ne i32 %14, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.end
  %call49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc120, %if.end50
  %15 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %15, 3
  br i1 %cmp52, label %for.body53, label %for.end122

for.body53:                                       ; preds = %for.cond51
  %16 = load i32, i32* %verbose.addr, align 4
  %tobool54 = icmp ne i32 %16, 0
  br i1 %tobool54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %for.body53
  %17 = load i32, i32* %i, align 4
  %mul56 = mul nsw i32 64, %17
  %add57 = add nsw i32 128, %mul56
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 noundef %add57) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %for.body53
  %18 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 64, %18
  %add61 = add nsw i32 128, %mul60
  %call62 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add61) #6
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call64 = call i8* @memcpy(i8* noundef %arraydecay63, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test2_iv, i64 0, i64 0), i64 noundef 16) #5
  %arraydecay65 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call66 = call i8* @memset(i8* noundef %arraydecay65, i32 noundef 85, i64 noundef 48) #5
  %arraydecay67 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay68 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call69 = call i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef 1, i64 noundef 48, i8* noundef %arraydecay67, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i8* noundef %arraydecay68) #6
  %arraydecay70 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %19 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %19 to i64
  %arrayidx72 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_cbc_ct, i64 0, i64 %idxprom71
  %arraydecay73 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx72, i64 0, i64 0
  %call74 = call i32 @memcmp(i8* noundef %arraydecay70, i8* noundef %arraydecay73, i64 noundef 48) #7
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.else81

if.then76:                                        ; preds = %if.end59
  %20 = load i32, i32* %verbose.addr, align 4
  %tobool77 = icmp ne i32 %20, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then76
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then76
  br label %exit

if.else81:                                        ; preds = %if.end59
  %21 = load i32, i32* %verbose.addr, align 4
  %tobool82 = icmp ne i32 %21, 0
  br i1 %tobool82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.else81
  %call84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.else81
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  %22 = load i32, i32* %verbose.addr, align 4
  %tobool87 = icmp ne i32 %22, 0
  br i1 %tobool87, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end86
  %23 = load i32, i32* %i, align 4
  %mul89 = mul nsw i32 64, %23
  %add90 = add nsw i32 128, %mul89
  %call91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 noundef %add90) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end86
  %24 = load i32, i32* %i, align 4
  %mul93 = mul nsw i32 64, %24
  %add94 = add nsw i32 128, %mul93
  %call95 = call i32 @mbedtls_aria_setkey_dec(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add94) #6
  %arraydecay96 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call97 = call i8* @memcpy(i8* noundef %arraydecay96, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test2_iv, i64 0, i64 0), i64 noundef 16) #5
  %arraydecay98 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call99 = call i8* @memset(i8* noundef %arraydecay98, i32 noundef 170, i64 noundef 48) #5
  %arraydecay100 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %25 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %25 to i64
  %arrayidx102 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_cbc_ct, i64 0, i64 %idxprom101
  %arraydecay103 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx102, i64 0, i64 0
  %arraydecay104 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call105 = call i32 @mbedtls_aria_crypt_cbc(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef 0, i64 noundef 48, i8* noundef %arraydecay100, i8* noundef %arraydecay103, i8* noundef %arraydecay104) #6
  %arraydecay106 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call107 = call i32 @memcmp(i8* noundef %arraydecay106, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i64 noundef 48) #7
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.else114

if.then109:                                       ; preds = %if.end92
  %26 = load i32, i32* %verbose.addr, align 4
  %tobool110 = icmp ne i32 %26, 0
  br i1 %tobool110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then109
  %call112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then109
  br label %exit

if.else114:                                       ; preds = %if.end92
  %27 = load i32, i32* %verbose.addr, align 4
  %tobool115 = icmp ne i32 %27, 0
  br i1 %tobool115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.else114
  %call117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.else114
  br label %if.end119

if.end119:                                        ; preds = %if.end118
  br label %for.inc120

for.inc120:                                       ; preds = %if.end119
  %28 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %28, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond51, !llvm.loop !19

for.end122:                                       ; preds = %for.cond51
  %29 = load i32, i32* %verbose.addr, align 4
  %tobool123 = icmp ne i32 %29, 0
  br i1 %tobool123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %for.end122
  %call125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %for.end122
  store i32 0, i32* %i, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc196, %if.end126
  %30 = load i32, i32* %i, align 4
  %cmp128 = icmp slt i32 %30, 3
  br i1 %cmp128, label %for.body129, label %for.end198

for.body129:                                      ; preds = %for.cond127
  %31 = load i32, i32* %verbose.addr, align 4
  %tobool130 = icmp ne i32 %31, 0
  br i1 %tobool130, label %if.then131, label %if.end135

if.then131:                                       ; preds = %for.body129
  %32 = load i32, i32* %i, align 4
  %mul132 = mul nsw i32 64, %32
  %add133 = add nsw i32 128, %mul132
  %call134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef %add133) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %for.body129
  %33 = load i32, i32* %i, align 4
  %mul136 = mul nsw i32 64, %33
  %add137 = add nsw i32 128, %mul136
  %call138 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add137) #6
  %arraydecay139 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call140 = call i8* @memcpy(i8* noundef %arraydecay139, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test2_iv, i64 0, i64 0), i64 noundef 16) #5
  %arraydecay141 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call142 = call i8* @memset(i8* noundef %arraydecay141, i32 noundef 85, i64 noundef 48) #5
  store i64 0, i64* %j, align 8
  %arraydecay143 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay144 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call145 = call i32 @mbedtls_aria_crypt_cfb128(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef 1, i64 noundef 48, i64* noundef %j, i8* noundef %arraydecay143, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i8* noundef %arraydecay144) #6
  %arraydecay146 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %34 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %34 to i64
  %arrayidx148 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_cfb_ct, i64 0, i64 %idxprom147
  %arraydecay149 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx148, i64 0, i64 0
  %call150 = call i32 @memcmp(i8* noundef %arraydecay146, i8* noundef %arraydecay149, i64 noundef 48) #7
  %cmp151 = icmp ne i32 %call150, 0
  br i1 %cmp151, label %if.then152, label %if.else157

if.then152:                                       ; preds = %if.end135
  %35 = load i32, i32* %verbose.addr, align 4
  %tobool153 = icmp ne i32 %35, 0
  br i1 %tobool153, label %if.then154, label %if.end156

if.then154:                                       ; preds = %if.then152
  %call155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.then152
  br label %exit

if.else157:                                       ; preds = %if.end135
  %36 = load i32, i32* %verbose.addr, align 4
  %tobool158 = icmp ne i32 %36, 0
  br i1 %tobool158, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.else157
  %call160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.else157
  br label %if.end162

if.end162:                                        ; preds = %if.end161
  %37 = load i32, i32* %verbose.addr, align 4
  %tobool163 = icmp ne i32 %37, 0
  br i1 %tobool163, label %if.then164, label %if.end168

if.then164:                                       ; preds = %if.end162
  %38 = load i32, i32* %i, align 4
  %mul165 = mul nsw i32 64, %38
  %add166 = add nsw i32 128, %mul165
  %call167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef %add166) #6
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %if.end162
  %39 = load i32, i32* %i, align 4
  %mul169 = mul nsw i32 64, %39
  %add170 = add nsw i32 128, %mul169
  %call171 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add170) #6
  %arraydecay172 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call173 = call i8* @memcpy(i8* noundef %arraydecay172, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @aria_test2_iv, i64 0, i64 0), i64 noundef 16) #5
  %arraydecay174 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call175 = call i8* @memset(i8* noundef %arraydecay174, i32 noundef 170, i64 noundef 48) #5
  store i64 0, i64* %j, align 8
  %arraydecay176 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %40 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %40 to i64
  %arrayidx178 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_cfb_ct, i64 0, i64 %idxprom177
  %arraydecay179 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx178, i64 0, i64 0
  %arraydecay180 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call181 = call i32 @mbedtls_aria_crypt_cfb128(%struct.mbedtls_aria_context* noundef %ctx, i32 noundef 0, i64 noundef 48, i64* noundef %j, i8* noundef %arraydecay176, i8* noundef %arraydecay179, i8* noundef %arraydecay180) #6
  %arraydecay182 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call183 = call i32 @memcmp(i8* noundef %arraydecay182, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i64 noundef 48) #7
  %cmp184 = icmp ne i32 %call183, 0
  br i1 %cmp184, label %if.then185, label %if.else190

if.then185:                                       ; preds = %if.end168
  %41 = load i32, i32* %verbose.addr, align 4
  %tobool186 = icmp ne i32 %41, 0
  br i1 %tobool186, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.then185
  %call188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.then185
  br label %exit

if.else190:                                       ; preds = %if.end168
  %42 = load i32, i32* %verbose.addr, align 4
  %tobool191 = icmp ne i32 %42, 0
  br i1 %tobool191, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.else190
  %call193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.else190
  br label %if.end195

if.end195:                                        ; preds = %if.end194
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195
  %43 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %43, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond127, !llvm.loop !20

for.end198:                                       ; preds = %for.cond127
  %44 = load i32, i32* %verbose.addr, align 4
  %tobool199 = icmp ne i32 %44, 0
  br i1 %tobool199, label %if.then200, label %if.end202

if.then200:                                       ; preds = %for.end198
  %call201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %for.end198
  store i32 0, i32* %i, align 4
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc274, %if.end202
  %45 = load i32, i32* %i, align 4
  %cmp204 = icmp slt i32 %45, 3
  br i1 %cmp204, label %for.body205, label %for.end276

for.body205:                                      ; preds = %for.cond203
  %46 = load i32, i32* %verbose.addr, align 4
  %tobool206 = icmp ne i32 %46, 0
  br i1 %tobool206, label %if.then207, label %if.end211

if.then207:                                       ; preds = %for.body205
  %47 = load i32, i32* %i, align 4
  %mul208 = mul nsw i32 64, %47
  %add209 = add nsw i32 128, %mul208
  %call210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 noundef %add209) #6
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %for.body205
  %48 = load i32, i32* %i, align 4
  %mul212 = mul nsw i32 64, %48
  %add213 = add nsw i32 128, %mul212
  %call214 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add213) #6
  %arraydecay215 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call216 = call i8* @memset(i8* noundef %arraydecay215, i32 noundef 0, i64 noundef 16) #5
  %arraydecay217 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call218 = call i8* @memset(i8* noundef %arraydecay217, i32 noundef 85, i64 noundef 48) #5
  store i64 0, i64* %j, align 8
  %arraydecay219 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay220 = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %arraydecay221 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call222 = call i32 @mbedtls_aria_crypt_ctr(%struct.mbedtls_aria_context* noundef %ctx, i64 noundef 48, i64* noundef %j, i8* noundef %arraydecay219, i8* noundef %arraydecay220, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i8* noundef %arraydecay221) #6
  %arraydecay223 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %49 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %49 to i64
  %arrayidx225 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_ctr_ct, i64 0, i64 %idxprom224
  %arraydecay226 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx225, i64 0, i64 0
  %call227 = call i32 @memcmp(i8* noundef %arraydecay223, i8* noundef %arraydecay226, i64 noundef 48) #7
  %cmp228 = icmp ne i32 %call227, 0
  br i1 %cmp228, label %if.then229, label %if.else234

if.then229:                                       ; preds = %if.end211
  %50 = load i32, i32* %verbose.addr, align 4
  %tobool230 = icmp ne i32 %50, 0
  br i1 %tobool230, label %if.then231, label %if.end233

if.then231:                                       ; preds = %if.then229
  %call232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end233

if.end233:                                        ; preds = %if.then231, %if.then229
  br label %exit

if.else234:                                       ; preds = %if.end211
  %51 = load i32, i32* %verbose.addr, align 4
  %tobool235 = icmp ne i32 %51, 0
  br i1 %tobool235, label %if.then236, label %if.end238

if.then236:                                       ; preds = %if.else234
  %call237 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end238

if.end238:                                        ; preds = %if.then236, %if.else234
  br label %if.end239

if.end239:                                        ; preds = %if.end238
  %52 = load i32, i32* %verbose.addr, align 4
  %tobool240 = icmp ne i32 %52, 0
  br i1 %tobool240, label %if.then241, label %if.end245

if.then241:                                       ; preds = %if.end239
  %53 = load i32, i32* %i, align 4
  %mul242 = mul nsw i32 64, %53
  %add243 = add nsw i32 128, %mul242
  %call244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 noundef %add243) #6
  br label %if.end245

if.end245:                                        ; preds = %if.then241, %if.end239
  %54 = load i32, i32* %i, align 4
  %mul246 = mul nsw i32 64, %54
  %add247 = add nsw i32 128, %mul246
  %call248 = call i32 @mbedtls_aria_setkey_enc(%struct.mbedtls_aria_context* noundef %ctx, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @aria_test2_key, i64 0, i64 0), i32 noundef %add247) #6
  %arraydecay249 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %call250 = call i8* @memset(i8* noundef %arraydecay249, i32 noundef 0, i64 noundef 16) #5
  %arraydecay251 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call252 = call i8* @memset(i8* noundef %arraydecay251, i32 noundef 170, i64 noundef 48) #5
  store i64 0, i64* %j, align 8
  %arraydecay253 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  %arraydecay254 = getelementptr inbounds [16 x i8], [16 x i8]* %blk, i64 0, i64 0
  %55 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %55 to i64
  %arrayidx256 = getelementptr inbounds [3 x [48 x i8]], [3 x [48 x i8]]* @aria_test2_ctr_ct, i64 0, i64 %idxprom255
  %arraydecay257 = getelementptr inbounds [48 x i8], [48 x i8]* %arrayidx256, i64 0, i64 0
  %arraydecay258 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call259 = call i32 @mbedtls_aria_crypt_ctr(%struct.mbedtls_aria_context* noundef %ctx, i64 noundef 48, i64* noundef %j, i8* noundef %arraydecay253, i8* noundef %arraydecay254, i8* noundef %arraydecay257, i8* noundef %arraydecay258) #6
  %arraydecay260 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i64 0, i64 0
  %call261 = call i32 @memcmp(i8* noundef %arraydecay260, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @aria_test2_pt, i64 0, i64 0), i64 noundef 48) #7
  %cmp262 = icmp ne i32 %call261, 0
  br i1 %cmp262, label %if.then263, label %if.else268

if.then263:                                       ; preds = %if.end245
  %56 = load i32, i32* %verbose.addr, align 4
  %tobool264 = icmp ne i32 %56, 0
  br i1 %tobool264, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.then263
  %call266 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.then263
  br label %exit

if.else268:                                       ; preds = %if.end245
  %57 = load i32, i32* %verbose.addr, align 4
  %tobool269 = icmp ne i32 %57, 0
  br i1 %tobool269, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.else268
  %call271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.else268
  br label %if.end273

if.end273:                                        ; preds = %if.end272
  br label %for.inc274

for.inc274:                                       ; preds = %if.end273
  %58 = load i32, i32* %i, align 4
  %inc275 = add nsw i32 %58, 1
  store i32 %inc275, i32* %i, align 4
  br label %for.cond203, !llvm.loop !21

for.end276:                                       ; preds = %for.cond203
  %59 = load i32, i32* %verbose.addr, align 4
  %tobool277 = icmp ne i32 %59, 0
  br i1 %tobool277, label %if.then278, label %if.end280

if.then278:                                       ; preds = %for.end276
  %call279 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end280

if.end280:                                        ; preds = %if.then278, %for.end276
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end280, %if.end267, %if.end233, %if.end189, %if.end156, %if.end113, %if.end80, %if.end40, %if.end13
  call void @mbedtls_aria_free(%struct.mbedtls_aria_context* noundef %ctx) #6
  %60 = load i32, i32* %ret, align 4
  ret i32 %60
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aria_p3(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !srcloc !22
  store i32 %1, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nounwind readnone }

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
!22 = !{i64 4401}
