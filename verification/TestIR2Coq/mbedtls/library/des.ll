; ModuleID = 'des.c'
source_filename = "des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_des3_context = type { [96 x i32] }

@odd_parity_table = internal constant [128 x i8] c"\01\02\04\07\08\0B\0D\0E\10\13\15\16\19\1A\1C\1F #%&)*,/12478;=>@CEFIJLOQRTWX[]^abdghkmnpsuvyz|\7F\80\83\85\86\89\8A\8C\8F\91\92\94\97\98\9B\9D\9E\A1\A2\A4\A7\A8\AB\AD\AE\B0\B3\B5\B6\B9\BA\BC\BF\C1\C2\C4\C7\C8\CB\CD\CE\D0\D3\D5\D6\D9\DA\DC\DF\E0\E3\E5\E6\E9\EA\EC\EF\F1\F2\F4\F7\F8\FB\FD\FE", align 16
@weak_key_table = internal constant [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\E0\E0\E0\F1\F1\F1\F1", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@LHs = internal constant [16 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009], align 16
@RHs = internal constant [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16
@SB8 = internal constant [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16
@SB6 = internal constant [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16
@SB4 = internal constant [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16
@SB2 = internal constant [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16
@SB7 = internal constant [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16
@SB5 = internal constant [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16
@SB3 = internal constant [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16
@SB1 = internal constant [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16
@.str = private unnamed_addr constant [23 x i8] c"  DES%c-ECB-%3d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@des3_test_buf = internal constant [8 x i8] c"Now is t", align 1
@des3_test_keys = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16
@des3_test_ecb_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"7+\98\BFRe\B0Y", [8 x i8] c"\C2\10\19\9C8Ze\A1", [8 x i8] c"\A2pVhi\E5\15\1D"], align 16
@des3_test_ecb_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\1C\D5\97\EA\84&s\FB", [8 x i8] c"\B3\92M\F3\C5\B5B\93", [8 x i8] c"\DA7dA\BAobo"], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  DES%c-CBC-%3d (%s): \00", align 1
@des3_test_iv = internal constant [8 x i8] c"\124Vx\90\AB\CD\EF", align 1
@des3_test_cbc_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"X\D9H\EF\85\14e\9A", [8 x i8] c"_\C8x\D4\D7\92\D9T", [8 x i8] c"%\F9u\85\A8\1EH\BF"], align 16
@des3_test_cbc_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\91\1Cm\CFH\A7\C3M", [8 x i8] c"`\1Av\8F\A1\F9f\F1", [8 x i8] c"\A1P\0F\99\B2\CDdv"], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des_init(%struct.mbedtls_des_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_des_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 128) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des_free(%struct.mbedtls_des_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_des_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_des_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 128) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_des3_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 384) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_des3_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_des3_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 384) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des_key_set_parity(i8* noundef %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %div = sdiv i32 %conv, 2
  %idxprom1 = sext i32 %div to i64
  %arrayidx2 = getelementptr inbounds [128 x i8], [128 x i8]* @odd_parity_table, i64 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  store i8 %4, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_key_check_key_parity(i8* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %key.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %div = sdiv i32 %conv3, 2
  %idxprom4 = sext i32 %div to i64
  %arrayidx5 = getelementptr inbounds [128 x i8], [128 x i8]* @odd_parity_table, i64 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_key_check_weak(i8* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_key_table, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i32 @memcmp(i8* noundef %arraydecay, i8* noundef %2, i64 noundef 8) #6
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_des_setkey(i32* noundef %SK, i8* noundef %key) #0 {
entry:
  %SK.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  store i32* %SK, i32** %SK.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %key.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %X, align 4
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %shl13 = shl i32 %conv12, 24
  %10 = load i8*, i8** %key.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %12 = load i8*, i8** %key.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %14 = load i8*, i8** %key.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, i32* %Y, align 4
  %16 = load i32, i32* %Y, align 4
  %shr = lshr i32 %16, 4
  %17 = load i32, i32* %X, align 4
  %xor = xor i32 %shr, %17
  %and = and i32 %xor, 252645135
  store i32 %and, i32* %T, align 4
  %18 = load i32, i32* %T, align 4
  %19 = load i32, i32* %X, align 4
  %xor25 = xor i32 %19, %18
  store i32 %xor25, i32* %X, align 4
  %20 = load i32, i32* %T, align 4
  %shl26 = shl i32 %20, 4
  %21 = load i32, i32* %Y, align 4
  %xor27 = xor i32 %21, %shl26
  store i32 %xor27, i32* %Y, align 4
  %22 = load i32, i32* %Y, align 4
  %23 = load i32, i32* %X, align 4
  %xor28 = xor i32 %22, %23
  %and29 = and i32 %xor28, 269488144
  store i32 %and29, i32* %T, align 4
  %24 = load i32, i32* %T, align 4
  %25 = load i32, i32* %X, align 4
  %xor30 = xor i32 %25, %24
  store i32 %xor30, i32* %X, align 4
  %26 = load i32, i32* %T, align 4
  %27 = load i32, i32* %Y, align 4
  %xor31 = xor i32 %27, %26
  store i32 %xor31, i32* %Y, align 4
  %28 = load i32, i32* %X, align 4
  %and32 = and i32 %28, 15
  %idxprom = zext i32 %and32 to i64
  %arrayidx33 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx33, align 4
  %shl34 = shl i32 %29, 3
  %30 = load i32, i32* %X, align 4
  %shr35 = lshr i32 %30, 8
  %and36 = and i32 %shr35, 15
  %idxprom37 = zext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom37
  %31 = load i32, i32* %arrayidx38, align 4
  %shl39 = shl i32 %31, 2
  %or40 = or i32 %shl34, %shl39
  %32 = load i32, i32* %X, align 4
  %shr41 = lshr i32 %32, 16
  %and42 = and i32 %shr41, 15
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom43
  %33 = load i32, i32* %arrayidx44, align 4
  %shl45 = shl i32 %33, 1
  %or46 = or i32 %or40, %shl45
  %34 = load i32, i32* %X, align 4
  %shr47 = lshr i32 %34, 24
  %and48 = and i32 %shr47, 15
  %idxprom49 = zext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom49
  %35 = load i32, i32* %arrayidx50, align 4
  %or51 = or i32 %or46, %35
  %36 = load i32, i32* %X, align 4
  %shr52 = lshr i32 %36, 5
  %and53 = and i32 %shr52, 15
  %idxprom54 = zext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom54
  %37 = load i32, i32* %arrayidx55, align 4
  %shl56 = shl i32 %37, 7
  %or57 = or i32 %or51, %shl56
  %38 = load i32, i32* %X, align 4
  %shr58 = lshr i32 %38, 13
  %and59 = and i32 %shr58, 15
  %idxprom60 = zext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom60
  %39 = load i32, i32* %arrayidx61, align 4
  %shl62 = shl i32 %39, 6
  %or63 = or i32 %or57, %shl62
  %40 = load i32, i32* %X, align 4
  %shr64 = lshr i32 %40, 21
  %and65 = and i32 %shr64, 15
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom66
  %41 = load i32, i32* %arrayidx67, align 4
  %shl68 = shl i32 %41, 5
  %or69 = or i32 %or63, %shl68
  %42 = load i32, i32* %X, align 4
  %shr70 = lshr i32 %42, 29
  %and71 = and i32 %shr70, 15
  %idxprom72 = zext i32 %and71 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @LHs, i64 0, i64 %idxprom72
  %43 = load i32, i32* %arrayidx73, align 4
  %shl74 = shl i32 %43, 4
  %or75 = or i32 %or69, %shl74
  store i32 %or75, i32* %X, align 4
  %44 = load i32, i32* %Y, align 4
  %shr76 = lshr i32 %44, 1
  %and77 = and i32 %shr76, 15
  %idxprom78 = zext i32 %and77 to i64
  %arrayidx79 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom78
  %45 = load i32, i32* %arrayidx79, align 4
  %shl80 = shl i32 %45, 3
  %46 = load i32, i32* %Y, align 4
  %shr81 = lshr i32 %46, 9
  %and82 = and i32 %shr81, 15
  %idxprom83 = zext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom83
  %47 = load i32, i32* %arrayidx84, align 4
  %shl85 = shl i32 %47, 2
  %or86 = or i32 %shl80, %shl85
  %48 = load i32, i32* %Y, align 4
  %shr87 = lshr i32 %48, 17
  %and88 = and i32 %shr87, 15
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom89
  %49 = load i32, i32* %arrayidx90, align 4
  %shl91 = shl i32 %49, 1
  %or92 = or i32 %or86, %shl91
  %50 = load i32, i32* %Y, align 4
  %shr93 = lshr i32 %50, 25
  %and94 = and i32 %shr93, 15
  %idxprom95 = zext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom95
  %51 = load i32, i32* %arrayidx96, align 4
  %or97 = or i32 %or92, %51
  %52 = load i32, i32* %Y, align 4
  %shr98 = lshr i32 %52, 4
  %and99 = and i32 %shr98, 15
  %idxprom100 = zext i32 %and99 to i64
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom100
  %53 = load i32, i32* %arrayidx101, align 4
  %shl102 = shl i32 %53, 7
  %or103 = or i32 %or97, %shl102
  %54 = load i32, i32* %Y, align 4
  %shr104 = lshr i32 %54, 12
  %and105 = and i32 %shr104, 15
  %idxprom106 = zext i32 %and105 to i64
  %arrayidx107 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom106
  %55 = load i32, i32* %arrayidx107, align 4
  %shl108 = shl i32 %55, 6
  %or109 = or i32 %or103, %shl108
  %56 = load i32, i32* %Y, align 4
  %shr110 = lshr i32 %56, 20
  %and111 = and i32 %shr110, 15
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom112
  %57 = load i32, i32* %arrayidx113, align 4
  %shl114 = shl i32 %57, 5
  %or115 = or i32 %or109, %shl114
  %58 = load i32, i32* %Y, align 4
  %shr116 = lshr i32 %58, 28
  %and117 = and i32 %shr116, 15
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [16 x i32], [16 x i32]* @RHs, i64 0, i64 %idxprom118
  %59 = load i32, i32* %arrayidx119, align 4
  %shl120 = shl i32 %59, 4
  %or121 = or i32 %or115, %shl120
  store i32 %or121, i32* %Y, align 4
  %60 = load i32, i32* %X, align 4
  %and122 = and i32 %60, 268435455
  store i32 %and122, i32* %X, align 4
  %61 = load i32, i32* %Y, align 4
  %and123 = and i32 %61, 268435455
  store i32 %and123, i32* %Y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %62 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %62, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %i, align 4
  %cmp125 = icmp slt i32 %63, 2
  br i1 %cmp125, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %cmp127 = icmp eq i32 %64, 8
  br i1 %cmp127, label %if.then, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false
  %65 = load i32, i32* %i, align 4
  %cmp130 = icmp eq i32 %65, 15
  br i1 %cmp130, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false129, %lor.lhs.false, %for.body
  %66 = load i32, i32* %X, align 4
  %shl132 = shl i32 %66, 1
  %67 = load i32, i32* %X, align 4
  %shr133 = lshr i32 %67, 27
  %or134 = or i32 %shl132, %shr133
  %and135 = and i32 %or134, 268435455
  store i32 %and135, i32* %X, align 4
  %68 = load i32, i32* %Y, align 4
  %shl136 = shl i32 %68, 1
  %69 = load i32, i32* %Y, align 4
  %shr137 = lshr i32 %69, 27
  %or138 = or i32 %shl136, %shr137
  %and139 = and i32 %or138, 268435455
  store i32 %and139, i32* %Y, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false129
  %70 = load i32, i32* %X, align 4
  %shl140 = shl i32 %70, 2
  %71 = load i32, i32* %X, align 4
  %shr141 = lshr i32 %71, 26
  %or142 = or i32 %shl140, %shr141
  %and143 = and i32 %or142, 268435455
  store i32 %and143, i32* %X, align 4
  %72 = load i32, i32* %Y, align 4
  %shl144 = shl i32 %72, 2
  %73 = load i32, i32* %Y, align 4
  %shr145 = lshr i32 %73, 26
  %or146 = or i32 %shl144, %shr145
  %and147 = and i32 %or146, 268435455
  store i32 %and147, i32* %Y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %74 = load i32, i32* %X, align 4
  %shl148 = shl i32 %74, 4
  %and149 = and i32 %shl148, 603979776
  %75 = load i32, i32* %X, align 4
  %shl150 = shl i32 %75, 28
  %and151 = and i32 %shl150, 268435456
  %or152 = or i32 %and149, %and151
  %76 = load i32, i32* %X, align 4
  %shl153 = shl i32 %76, 14
  %and154 = and i32 %shl153, 134217728
  %or155 = or i32 %or152, %and154
  %77 = load i32, i32* %X, align 4
  %shl156 = shl i32 %77, 18
  %and157 = and i32 %shl156, 34078720
  %or158 = or i32 %or155, %and157
  %78 = load i32, i32* %X, align 4
  %shl159 = shl i32 %78, 6
  %and160 = and i32 %shl159, 16777216
  %or161 = or i32 %or158, %and160
  %79 = load i32, i32* %X, align 4
  %shl162 = shl i32 %79, 9
  %and163 = and i32 %shl162, 2097152
  %or164 = or i32 %or161, %and163
  %80 = load i32, i32* %X, align 4
  %shr165 = lshr i32 %80, 1
  %and166 = and i32 %shr165, 1048576
  %or167 = or i32 %or164, %and166
  %81 = load i32, i32* %X, align 4
  %shl168 = shl i32 %81, 10
  %and169 = and i32 %shl168, 262144
  %or170 = or i32 %or167, %and169
  %82 = load i32, i32* %X, align 4
  %shl171 = shl i32 %82, 2
  %and172 = and i32 %shl171, 131072
  %or173 = or i32 %or170, %and172
  %83 = load i32, i32* %X, align 4
  %shr174 = lshr i32 %83, 10
  %and175 = and i32 %shr174, 65536
  %or176 = or i32 %or173, %and175
  %84 = load i32, i32* %Y, align 4
  %shr177 = lshr i32 %84, 13
  %and178 = and i32 %shr177, 8192
  %or179 = or i32 %or176, %and178
  %85 = load i32, i32* %Y, align 4
  %shr180 = lshr i32 %85, 4
  %and181 = and i32 %shr180, 4096
  %or182 = or i32 %or179, %and181
  %86 = load i32, i32* %Y, align 4
  %shl183 = shl i32 %86, 6
  %and184 = and i32 %shl183, 2048
  %or185 = or i32 %or182, %and184
  %87 = load i32, i32* %Y, align 4
  %shr186 = lshr i32 %87, 1
  %and187 = and i32 %shr186, 1024
  %or188 = or i32 %or185, %and187
  %88 = load i32, i32* %Y, align 4
  %shr189 = lshr i32 %88, 14
  %and190 = and i32 %shr189, 512
  %or191 = or i32 %or188, %and190
  %89 = load i32, i32* %Y, align 4
  %and192 = and i32 %89, 256
  %or193 = or i32 %or191, %and192
  %90 = load i32, i32* %Y, align 4
  %shr194 = lshr i32 %90, 5
  %and195 = and i32 %shr194, 32
  %or196 = or i32 %or193, %and195
  %91 = load i32, i32* %Y, align 4
  %shr197 = lshr i32 %91, 10
  %and198 = and i32 %shr197, 16
  %or199 = or i32 %or196, %and198
  %92 = load i32, i32* %Y, align 4
  %shr200 = lshr i32 %92, 3
  %and201 = and i32 %shr200, 8
  %or202 = or i32 %or199, %and201
  %93 = load i32, i32* %Y, align 4
  %shr203 = lshr i32 %93, 18
  %and204 = and i32 %shr203, 4
  %or205 = or i32 %or202, %and204
  %94 = load i32, i32* %Y, align 4
  %shr206 = lshr i32 %94, 26
  %and207 = and i32 %shr206, 2
  %or208 = or i32 %or205, %and207
  %95 = load i32, i32* %Y, align 4
  %shr209 = lshr i32 %95, 24
  %and210 = and i32 %shr209, 1
  %or211 = or i32 %or208, %and210
  %96 = load i32*, i32** %SK.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr, i32** %SK.addr, align 8
  store i32 %or211, i32* %96, align 4
  %97 = load i32, i32* %X, align 4
  %shl212 = shl i32 %97, 15
  %and213 = and i32 %shl212, 536870912
  %98 = load i32, i32* %X, align 4
  %shl214 = shl i32 %98, 17
  %and215 = and i32 %shl214, 268435456
  %or216 = or i32 %and213, %and215
  %99 = load i32, i32* %X, align 4
  %shl217 = shl i32 %99, 10
  %and218 = and i32 %shl217, 134217728
  %or219 = or i32 %or216, %and218
  %100 = load i32, i32* %X, align 4
  %shl220 = shl i32 %100, 22
  %and221 = and i32 %shl220, 67108864
  %or222 = or i32 %or219, %and221
  %101 = load i32, i32* %X, align 4
  %shr223 = lshr i32 %101, 2
  %and224 = and i32 %shr223, 33554432
  %or225 = or i32 %or222, %and224
  %102 = load i32, i32* %X, align 4
  %shl226 = shl i32 %102, 1
  %and227 = and i32 %shl226, 16777216
  %or228 = or i32 %or225, %and227
  %103 = load i32, i32* %X, align 4
  %shl229 = shl i32 %103, 16
  %and230 = and i32 %shl229, 2097152
  %or231 = or i32 %or228, %and230
  %104 = load i32, i32* %X, align 4
  %shl232 = shl i32 %104, 11
  %and233 = and i32 %shl232, 1048576
  %or234 = or i32 %or231, %and233
  %105 = load i32, i32* %X, align 4
  %shl235 = shl i32 %105, 3
  %and236 = and i32 %shl235, 524288
  %or237 = or i32 %or234, %and236
  %106 = load i32, i32* %X, align 4
  %shr238 = lshr i32 %106, 6
  %and239 = and i32 %shr238, 262144
  %or240 = or i32 %or237, %and239
  %107 = load i32, i32* %X, align 4
  %shl241 = shl i32 %107, 15
  %and242 = and i32 %shl241, 131072
  %or243 = or i32 %or240, %and242
  %108 = load i32, i32* %X, align 4
  %shr244 = lshr i32 %108, 4
  %and245 = and i32 %shr244, 65536
  %or246 = or i32 %or243, %and245
  %109 = load i32, i32* %Y, align 4
  %shr247 = lshr i32 %109, 2
  %and248 = and i32 %shr247, 8192
  %or249 = or i32 %or246, %and248
  %110 = load i32, i32* %Y, align 4
  %shl250 = shl i32 %110, 8
  %and251 = and i32 %shl250, 4096
  %or252 = or i32 %or249, %and251
  %111 = load i32, i32* %Y, align 4
  %shr253 = lshr i32 %111, 14
  %and254 = and i32 %shr253, 2056
  %or255 = or i32 %or252, %and254
  %112 = load i32, i32* %Y, align 4
  %shr256 = lshr i32 %112, 9
  %and257 = and i32 %shr256, 1024
  %or258 = or i32 %or255, %and257
  %113 = load i32, i32* %Y, align 4
  %and259 = and i32 %113, 512
  %or260 = or i32 %or258, %and259
  %114 = load i32, i32* %Y, align 4
  %shl261 = shl i32 %114, 7
  %and262 = and i32 %shl261, 256
  %or263 = or i32 %or260, %and262
  %115 = load i32, i32* %Y, align 4
  %shr264 = lshr i32 %115, 7
  %and265 = and i32 %shr264, 32
  %or266 = or i32 %or263, %and265
  %116 = load i32, i32* %Y, align 4
  %shr267 = lshr i32 %116, 3
  %and268 = and i32 %shr267, 17
  %or269 = or i32 %or266, %and268
  %117 = load i32, i32* %Y, align 4
  %shl270 = shl i32 %117, 2
  %and271 = and i32 %shl270, 4
  %or272 = or i32 %or269, %and271
  %118 = load i32, i32* %Y, align 4
  %shr273 = lshr i32 %118, 21
  %and274 = and i32 %shr273, 2
  %or275 = or i32 %or272, %and274
  %119 = load i32*, i32** %SK.addr, align 8
  %incdec.ptr276 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr276, i32** %SK.addr, align 8
  store i32 %or275, i32* %119, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %120 = load i32, i32* %i, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %sk, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @mbedtls_des_setkey(i32* noundef %arraydecay, i8* noundef %1) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %t13 = alloca i32, align 4
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %sk, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @mbedtls_des_setkey(i32* noundef %arraydecay, i8* noundef %1) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk1 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %3, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %sk1, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %t, align 4
  %6 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk2 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %6, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 30, %7
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %sk2, i64 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk5 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %9, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [32 x i32], [32 x i32]* %sk5, i64 0, i64 %idxprom6
  store i32 %8, i32* %arrayidx7, align 4
  %11 = load i32, i32* %t, align 4
  %12 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk8 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %12, i32 0, i32 0
  %13 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 30, %13
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [32 x i32], [32 x i32]* %sk8, i64 0, i64 %idxprom10
  store i32 %11, i32* %arrayidx11, align 4
  store i32 0, i32* %t, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body12

do.body12:                                        ; preds = %do.end
  %14 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk14 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %14, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [32 x i32], [32 x i32]* %sk14, i64 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  store i32 %16, i32* %t13, align 4
  %17 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk17 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %17, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 31, %18
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %sk17, i64 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk21 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %20, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [32 x i32], [32 x i32]* %sk21, i64 0, i64 %idxprom23
  store i32 %19, i32* %arrayidx24, align 4
  %22 = load i32, i32* %t13, align 4
  %23 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk25 = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %23, i32 0, i32 0
  %24 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 31, %24
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [32 x i32], [32 x i32]* %sk25, i64 0, i64 %idxprom27
  store i32 %22, i32* %arrayidx28, align 4
  store i32 0, i32* %t13, align 4
  br label %do.end29

do.end29:                                         ; preds = %do.body12
  br label %for.inc

for.inc:                                          ; preds = %do.end29
  %25 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %25, 2
  store i32 %add30, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %key.addr = alloca i8*, align 8
  %sk = alloca [96 x i32], align 16
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], [96 x i32]* %sk1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @des3_set2key(i32* noundef %arraydecay, i32* noundef %arraydecay2, i8* noundef %1) #5
  %arraydecay3 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %2 = bitcast i32* %arraydecay3 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 384) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_set2key(i32* noundef %esk, i32* noundef %dsk, i8* noundef %key) #0 {
entry:
  %esk.addr = alloca i32*, align 8
  %dsk.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32* %esk, i32** %esk.addr, align 8
  store i32* %dsk, i32** %dsk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i32*, i32** %esk.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void @mbedtls_des_setkey(i32* noundef %0, i8* noundef %1) #5
  %2 = load i32*, i32** %dsk.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 32
  %3 = load i8*, i8** %key.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 8
  call void @mbedtls_des_setkey(i32* noundef %add.ptr, i8* noundef %add.ptr1) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %esk.addr, align 8
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 30, %6
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %dsk.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  store i32 %7, i32* %arrayidx3, align 4
  %10 = load i32*, i32** %esk.addr, align 8
  %11 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 31, %11
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %13 = load i32*, i32** %dsk.addr, align 8
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  store i32 %12, i32* %arrayidx8, align 4
  %15 = load i32*, i32** %dsk.addr, align 8
  %16 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 62, %16
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32*, i32** %esk.addr, align 8
  %19 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %19, 32
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i64 %idxprom13
  store i32 %17, i32* %arrayidx14, align 4
  %20 = load i32*, i32** %dsk.addr, align 8
  %21 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 63, %21
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %20, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32*, i32** %esk.addr, align 8
  %24 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %24, 33
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom19
  store i32 %22, i32* %arrayidx20, align 4
  %25 = load i32*, i32** %esk.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 %idxprom21
  %27 = load i32, i32* %arrayidx22, align 4
  %28 = load i32*, i32** %esk.addr, align 8
  %29 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %29, 64
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  store i32 %27, i32* %arrayidx25, align 4
  %30 = load i32*, i32** %esk.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %31, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 %idxprom27
  %32 = load i32, i32* %arrayidx28, align 4
  %33 = load i32*, i32** %esk.addr, align 8
  %34 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %34, 65
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %33, i64 %idxprom30
  store i32 %32, i32* %arrayidx31, align 4
  %35 = load i32*, i32** %dsk.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %35, i64 %idxprom32
  %37 = load i32, i32* %arrayidx33, align 4
  %38 = load i32*, i32** %dsk.addr, align 8
  %39 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %39, 64
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 %idxprom35
  store i32 %37, i32* %arrayidx36, align 4
  %40 = load i32*, i32** %dsk.addr, align 8
  %41 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %41, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %40, i64 %idxprom38
  %42 = load i32, i32* %arrayidx39, align 4
  %43 = load i32*, i32** %dsk.addr, align 8
  %44 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %44, 65
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %43, i64 %idxprom41
  store i32 %42, i32* %arrayidx42, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %45, 2
  store i32 %add43, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %key.addr = alloca i8*, align 8
  %sk = alloca [96 x i32], align 16
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %arraydecay = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [96 x i32], [96 x i32]* %sk1, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @des3_set2key(i32* noundef %arraydecay, i32* noundef %arraydecay2, i8* noundef %1) #5
  %arraydecay3 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %2 = bitcast i32* %arraydecay3 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 384) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %key.addr = alloca i8*, align 8
  %sk = alloca [96 x i32], align 16
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], [96 x i32]* %sk1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @des3_set3key(i32* noundef %arraydecay, i32* noundef %arraydecay2, i8* noundef %1) #5
  %arraydecay3 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %2 = bitcast i32* %arraydecay3 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 384) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_set3key(i32* noundef %esk, i32* noundef %dsk, i8* noundef %key) #0 {
entry:
  %esk.addr = alloca i32*, align 8
  %dsk.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32* %esk, i32** %esk.addr, align 8
  store i32* %dsk, i32** %dsk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i32*, i32** %esk.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void @mbedtls_des_setkey(i32* noundef %0, i8* noundef %1) #5
  %2 = load i32*, i32** %dsk.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 32
  %3 = load i8*, i8** %key.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 8
  call void @mbedtls_des_setkey(i32* noundef %add.ptr, i8* noundef %add.ptr1) #5
  %4 = load i32*, i32** %esk.addr, align 8
  %add.ptr2 = getelementptr inbounds i32, i32* %4, i64 64
  %5 = load i8*, i8** %key.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 16
  call void @mbedtls_des_setkey(i32* noundef %add.ptr2, i8* noundef %add.ptr3) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %esk.addr, align 8
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 94, %8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32*, i32** %dsk.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  store i32 %9, i32* %arrayidx5, align 4
  %12 = load i32*, i32** %esk.addr, align 8
  %13 = load i32, i32* %i, align 4
  %sub6 = sub nsw i32 95, %13
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %15 = load i32*, i32** %dsk.addr, align 8
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  store i32 %14, i32* %arrayidx10, align 4
  %17 = load i32*, i32** %dsk.addr, align 8
  %18 = load i32, i32* %i, align 4
  %sub11 = sub nsw i32 62, %18
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %19 = load i32, i32* %arrayidx13, align 4
  %20 = load i32*, i32** %esk.addr, align 8
  %21 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %21, 32
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  store i32 %19, i32* %arrayidx16, align 4
  %22 = load i32*, i32** %dsk.addr, align 8
  %23 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 63, %23
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32*, i32** %esk.addr, align 8
  %26 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %26, 33
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 %idxprom21
  store i32 %24, i32* %arrayidx22, align 4
  %27 = load i32*, i32** %esk.addr, align 8
  %28 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 30, %28
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom24
  %29 = load i32, i32* %arrayidx25, align 4
  %30 = load i32*, i32** %dsk.addr, align 8
  %31 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %31, 64
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 %idxprom27
  store i32 %29, i32* %arrayidx28, align 4
  %32 = load i32*, i32** %esk.addr, align 8
  %33 = load i32, i32* %i, align 4
  %sub29 = sub nsw i32 31, %33
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %32, i64 %idxprom30
  %34 = load i32, i32* %arrayidx31, align 4
  %35 = load i32*, i32** %dsk.addr, align 8
  %36 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %36, 65
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %35, i64 %idxprom33
  store i32 %34, i32* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %add35 = add nsw i32 %37, 2
  store i32 %add35, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %key.addr = alloca i8*, align 8
  %sk = alloca [96 x i32], align 16
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %arraydecay = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [96 x i32], [96 x i32]* %sk1, i64 0, i64 0
  %1 = load i8*, i8** %key.addr, align 8
  call void @des3_set3key(i32* noundef %arraydecay, i32* noundef %arraydecay2, i8* noundef %1) #5
  %arraydecay3 = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  %2 = bitcast i32* %arraydecay3 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 384) #5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  %SK = alloca i32*, align 8
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %sk = getelementptr inbounds %struct.mbedtls_des_context, %struct.mbedtls_des_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %sk, i64 0, i64 0
  store i32* %arraydecay, i32** %SK, align 8
  %1 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %3 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %5 = load i8*, i8** %input.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %7 = load i8*, i8** %input.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %X, align 4
  %9 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %shl13 = shl i32 %conv12, 24
  %11 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 6
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %15 = load i8*, i8** %input.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 7
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, i32* %Y, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i32, i32* %X, align 4
  %shr = lshr i32 %17, 4
  %18 = load i32, i32* %Y, align 4
  %xor = xor i32 %shr, %18
  %and = and i32 %xor, 252645135
  store i32 %and, i32* %T, align 4
  %19 = load i32, i32* %T, align 4
  %20 = load i32, i32* %Y, align 4
  %xor25 = xor i32 %20, %19
  store i32 %xor25, i32* %Y, align 4
  %21 = load i32, i32* %T, align 4
  %shl26 = shl i32 %21, 4
  %22 = load i32, i32* %X, align 4
  %xor27 = xor i32 %22, %shl26
  store i32 %xor27, i32* %X, align 4
  %23 = load i32, i32* %X, align 4
  %shr28 = lshr i32 %23, 16
  %24 = load i32, i32* %Y, align 4
  %xor29 = xor i32 %shr28, %24
  %and30 = and i32 %xor29, 65535
  store i32 %and30, i32* %T, align 4
  %25 = load i32, i32* %T, align 4
  %26 = load i32, i32* %Y, align 4
  %xor31 = xor i32 %26, %25
  store i32 %xor31, i32* %Y, align 4
  %27 = load i32, i32* %T, align 4
  %shl32 = shl i32 %27, 16
  %28 = load i32, i32* %X, align 4
  %xor33 = xor i32 %28, %shl32
  store i32 %xor33, i32* %X, align 4
  %29 = load i32, i32* %Y, align 4
  %shr34 = lshr i32 %29, 2
  %30 = load i32, i32* %X, align 4
  %xor35 = xor i32 %shr34, %30
  %and36 = and i32 %xor35, 858993459
  store i32 %and36, i32* %T, align 4
  %31 = load i32, i32* %T, align 4
  %32 = load i32, i32* %X, align 4
  %xor37 = xor i32 %32, %31
  store i32 %xor37, i32* %X, align 4
  %33 = load i32, i32* %T, align 4
  %shl38 = shl i32 %33, 2
  %34 = load i32, i32* %Y, align 4
  %xor39 = xor i32 %34, %shl38
  store i32 %xor39, i32* %Y, align 4
  %35 = load i32, i32* %Y, align 4
  %shr40 = lshr i32 %35, 8
  %36 = load i32, i32* %X, align 4
  %xor41 = xor i32 %shr40, %36
  %and42 = and i32 %xor41, 16711935
  store i32 %and42, i32* %T, align 4
  %37 = load i32, i32* %T, align 4
  %38 = load i32, i32* %X, align 4
  %xor43 = xor i32 %38, %37
  store i32 %xor43, i32* %X, align 4
  %39 = load i32, i32* %T, align 4
  %shl44 = shl i32 %39, 8
  %40 = load i32, i32* %Y, align 4
  %xor45 = xor i32 %40, %shl44
  store i32 %xor45, i32* %Y, align 4
  %41 = load i32, i32* %Y, align 4
  %shl46 = shl i32 %41, 1
  %42 = load i32, i32* %Y, align 4
  %shr47 = lshr i32 %42, 31
  %or48 = or i32 %shl46, %shr47
  %and49 = and i32 %or48, -1
  store i32 %and49, i32* %Y, align 4
  %43 = load i32, i32* %X, align 4
  %44 = load i32, i32* %Y, align 4
  %xor50 = xor i32 %43, %44
  %and51 = and i32 %xor50, -1431655766
  store i32 %and51, i32* %T, align 4
  %45 = load i32, i32* %T, align 4
  %46 = load i32, i32* %Y, align 4
  %xor52 = xor i32 %46, %45
  store i32 %xor52, i32* %Y, align 4
  %47 = load i32, i32* %T, align 4
  %48 = load i32, i32* %X, align 4
  %xor53 = xor i32 %48, %47
  store i32 %xor53, i32* %X, align 4
  %49 = load i32, i32* %X, align 4
  %shl54 = shl i32 %49, 1
  %50 = load i32, i32* %X, align 4
  %shr55 = lshr i32 %50, 31
  %or56 = or i32 %shl54, %shr55
  %and57 = and i32 %or56, -1
  store i32 %and57, i32* %X, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %51 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %51, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body59

do.body59:                                        ; preds = %for.body
  %52 = load i32*, i32** %SK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr, i32** %SK, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %Y, align 4
  %xor60 = xor i32 %53, %54
  store i32 %xor60, i32* %T, align 4
  %55 = load i32, i32* %T, align 4
  %and61 = and i32 %55, 63
  %idxprom = zext i32 %and61 to i64
  %arrayidx62 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom
  %56 = load i32, i32* %arrayidx62, align 4
  %57 = load i32, i32* %T, align 4
  %shr63 = lshr i32 %57, 8
  %and64 = and i32 %shr63, 63
  %idxprom65 = zext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom65
  %58 = load i32, i32* %arrayidx66, align 4
  %xor67 = xor i32 %56, %58
  %59 = load i32, i32* %T, align 4
  %shr68 = lshr i32 %59, 16
  %and69 = and i32 %shr68, 63
  %idxprom70 = zext i32 %and69 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %xor72 = xor i32 %xor67, %60
  %61 = load i32, i32* %T, align 4
  %shr73 = lshr i32 %61, 24
  %and74 = and i32 %shr73, 63
  %idxprom75 = zext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom75
  %62 = load i32, i32* %arrayidx76, align 4
  %xor77 = xor i32 %xor72, %62
  %63 = load i32, i32* %X, align 4
  %xor78 = xor i32 %63, %xor77
  store i32 %xor78, i32* %X, align 4
  %64 = load i32*, i32** %SK, align 8
  %incdec.ptr79 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %incdec.ptr79, i32** %SK, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %Y, align 4
  %shl80 = shl i32 %66, 28
  %67 = load i32, i32* %Y, align 4
  %shr81 = lshr i32 %67, 4
  %or82 = or i32 %shl80, %shr81
  %xor83 = xor i32 %65, %or82
  store i32 %xor83, i32* %T, align 4
  %68 = load i32, i32* %T, align 4
  %and84 = and i32 %68, 63
  %idxprom85 = zext i32 %and84 to i64
  %arrayidx86 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom85
  %69 = load i32, i32* %arrayidx86, align 4
  %70 = load i32, i32* %T, align 4
  %shr87 = lshr i32 %70, 8
  %and88 = and i32 %shr87, 63
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom89
  %71 = load i32, i32* %arrayidx90, align 4
  %xor91 = xor i32 %69, %71
  %72 = load i32, i32* %T, align 4
  %shr92 = lshr i32 %72, 16
  %and93 = and i32 %shr92, 63
  %idxprom94 = zext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom94
  %73 = load i32, i32* %arrayidx95, align 4
  %xor96 = xor i32 %xor91, %73
  %74 = load i32, i32* %T, align 4
  %shr97 = lshr i32 %74, 24
  %and98 = and i32 %shr97, 63
  %idxprom99 = zext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom99
  %75 = load i32, i32* %arrayidx100, align 4
  %xor101 = xor i32 %xor96, %75
  %76 = load i32, i32* %X, align 4
  %xor102 = xor i32 %76, %xor101
  store i32 %xor102, i32* %X, align 4
  br label %do.end103

do.end103:                                        ; preds = %do.body59
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %77 = load i32*, i32** %SK, align 8
  %incdec.ptr105 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %incdec.ptr105, i32** %SK, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %X, align 4
  %xor106 = xor i32 %78, %79
  store i32 %xor106, i32* %T, align 4
  %80 = load i32, i32* %T, align 4
  %and107 = and i32 %80, 63
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom108
  %81 = load i32, i32* %arrayidx109, align 4
  %82 = load i32, i32* %T, align 4
  %shr110 = lshr i32 %82, 8
  %and111 = and i32 %shr110, 63
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom112
  %83 = load i32, i32* %arrayidx113, align 4
  %xor114 = xor i32 %81, %83
  %84 = load i32, i32* %T, align 4
  %shr115 = lshr i32 %84, 16
  %and116 = and i32 %shr115, 63
  %idxprom117 = zext i32 %and116 to i64
  %arrayidx118 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom117
  %85 = load i32, i32* %arrayidx118, align 4
  %xor119 = xor i32 %xor114, %85
  %86 = load i32, i32* %T, align 4
  %shr120 = lshr i32 %86, 24
  %and121 = and i32 %shr120, 63
  %idxprom122 = zext i32 %and121 to i64
  %arrayidx123 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom122
  %87 = load i32, i32* %arrayidx123, align 4
  %xor124 = xor i32 %xor119, %87
  %88 = load i32, i32* %Y, align 4
  %xor125 = xor i32 %88, %xor124
  store i32 %xor125, i32* %Y, align 4
  %89 = load i32*, i32** %SK, align 8
  %incdec.ptr126 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr126, i32** %SK, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %X, align 4
  %shl127 = shl i32 %91, 28
  %92 = load i32, i32* %X, align 4
  %shr128 = lshr i32 %92, 4
  %or129 = or i32 %shl127, %shr128
  %xor130 = xor i32 %90, %or129
  store i32 %xor130, i32* %T, align 4
  %93 = load i32, i32* %T, align 4
  %and131 = and i32 %93, 63
  %idxprom132 = zext i32 %and131 to i64
  %arrayidx133 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom132
  %94 = load i32, i32* %arrayidx133, align 4
  %95 = load i32, i32* %T, align 4
  %shr134 = lshr i32 %95, 8
  %and135 = and i32 %shr134, 63
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom136
  %96 = load i32, i32* %arrayidx137, align 4
  %xor138 = xor i32 %94, %96
  %97 = load i32, i32* %T, align 4
  %shr139 = lshr i32 %97, 16
  %and140 = and i32 %shr139, 63
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom141
  %98 = load i32, i32* %arrayidx142, align 4
  %xor143 = xor i32 %xor138, %98
  %99 = load i32, i32* %T, align 4
  %shr144 = lshr i32 %99, 24
  %and145 = and i32 %shr144, 63
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom146
  %100 = load i32, i32* %arrayidx147, align 4
  %xor148 = xor i32 %xor143, %100
  %101 = load i32, i32* %Y, align 4
  %xor149 = xor i32 %101, %xor148
  store i32 %xor149, i32* %Y, align 4
  br label %do.end150

do.end150:                                        ; preds = %do.body104
  br label %for.inc

for.inc:                                          ; preds = %do.end150
  %102 = load i32, i32* %i, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %do.body151

do.body151:                                       ; preds = %for.end
  %103 = load i32, i32* %Y, align 4
  %shl152 = shl i32 %103, 31
  %104 = load i32, i32* %Y, align 4
  %shr153 = lshr i32 %104, 1
  %or154 = or i32 %shl152, %shr153
  %and155 = and i32 %or154, -1
  store i32 %and155, i32* %Y, align 4
  %105 = load i32, i32* %Y, align 4
  %106 = load i32, i32* %X, align 4
  %xor156 = xor i32 %105, %106
  %and157 = and i32 %xor156, -1431655766
  store i32 %and157, i32* %T, align 4
  %107 = load i32, i32* %T, align 4
  %108 = load i32, i32* %Y, align 4
  %xor158 = xor i32 %108, %107
  store i32 %xor158, i32* %Y, align 4
  %109 = load i32, i32* %T, align 4
  %110 = load i32, i32* %X, align 4
  %xor159 = xor i32 %110, %109
  store i32 %xor159, i32* %X, align 4
  %111 = load i32, i32* %X, align 4
  %shl160 = shl i32 %111, 31
  %112 = load i32, i32* %X, align 4
  %shr161 = lshr i32 %112, 1
  %or162 = or i32 %shl160, %shr161
  %and163 = and i32 %or162, -1
  store i32 %and163, i32* %X, align 4
  %113 = load i32, i32* %X, align 4
  %shr164 = lshr i32 %113, 8
  %114 = load i32, i32* %Y, align 4
  %xor165 = xor i32 %shr164, %114
  %and166 = and i32 %xor165, 16711935
  store i32 %and166, i32* %T, align 4
  %115 = load i32, i32* %T, align 4
  %116 = load i32, i32* %Y, align 4
  %xor167 = xor i32 %116, %115
  store i32 %xor167, i32* %Y, align 4
  %117 = load i32, i32* %T, align 4
  %shl168 = shl i32 %117, 8
  %118 = load i32, i32* %X, align 4
  %xor169 = xor i32 %118, %shl168
  store i32 %xor169, i32* %X, align 4
  %119 = load i32, i32* %X, align 4
  %shr170 = lshr i32 %119, 2
  %120 = load i32, i32* %Y, align 4
  %xor171 = xor i32 %shr170, %120
  %and172 = and i32 %xor171, 858993459
  store i32 %and172, i32* %T, align 4
  %121 = load i32, i32* %T, align 4
  %122 = load i32, i32* %Y, align 4
  %xor173 = xor i32 %122, %121
  store i32 %xor173, i32* %Y, align 4
  %123 = load i32, i32* %T, align 4
  %shl174 = shl i32 %123, 2
  %124 = load i32, i32* %X, align 4
  %xor175 = xor i32 %124, %shl174
  store i32 %xor175, i32* %X, align 4
  %125 = load i32, i32* %Y, align 4
  %shr176 = lshr i32 %125, 16
  %126 = load i32, i32* %X, align 4
  %xor177 = xor i32 %shr176, %126
  %and178 = and i32 %xor177, 65535
  store i32 %and178, i32* %T, align 4
  %127 = load i32, i32* %T, align 4
  %128 = load i32, i32* %X, align 4
  %xor179 = xor i32 %128, %127
  store i32 %xor179, i32* %X, align 4
  %129 = load i32, i32* %T, align 4
  %shl180 = shl i32 %129, 16
  %130 = load i32, i32* %Y, align 4
  %xor181 = xor i32 %130, %shl180
  store i32 %xor181, i32* %Y, align 4
  %131 = load i32, i32* %Y, align 4
  %shr182 = lshr i32 %131, 4
  %132 = load i32, i32* %X, align 4
  %xor183 = xor i32 %shr182, %132
  %and184 = and i32 %xor183, 252645135
  store i32 %and184, i32* %T, align 4
  %133 = load i32, i32* %T, align 4
  %134 = load i32, i32* %X, align 4
  %xor185 = xor i32 %134, %133
  store i32 %xor185, i32* %X, align 4
  %135 = load i32, i32* %T, align 4
  %shl186 = shl i32 %135, 4
  %136 = load i32, i32* %Y, align 4
  %xor187 = xor i32 %136, %shl186
  store i32 %xor187, i32* %Y, align 4
  br label %do.end188

do.end188:                                        ; preds = %do.body151
  %137 = load i32, i32* %Y, align 4
  %shr189 = lshr i32 %137, 24
  %and190 = and i32 %shr189, 255
  %conv191 = trunc i32 %and190 to i8
  %138 = load i8*, i8** %output.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 %conv191, i8* %arrayidx192, align 1
  %139 = load i32, i32* %Y, align 4
  %shr193 = lshr i32 %139, 16
  %and194 = and i32 %shr193, 255
  %conv195 = trunc i32 %and194 to i8
  %140 = load i8*, i8** %output.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %conv195, i8* %arrayidx196, align 1
  %141 = load i32, i32* %Y, align 4
  %shr197 = lshr i32 %141, 8
  %and198 = and i32 %shr197, 255
  %conv199 = trunc i32 %and198 to i8
  %142 = load i8*, i8** %output.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 %conv199, i8* %arrayidx200, align 1
  %143 = load i32, i32* %Y, align 4
  %and201 = and i32 %143, 255
  %conv202 = trunc i32 %and201 to i8
  %144 = load i8*, i8** %output.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %144, i64 3
  store i8 %conv202, i8* %arrayidx203, align 1
  %145 = load i32, i32* %X, align 4
  %shr204 = lshr i32 %145, 24
  %and205 = and i32 %shr204, 255
  %conv206 = trunc i32 %and205 to i8
  %146 = load i8*, i8** %output.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %146, i64 4
  store i8 %conv206, i8* %arrayidx207, align 1
  %147 = load i32, i32* %X, align 4
  %shr208 = lshr i32 %147, 16
  %and209 = and i32 %shr208, 255
  %conv210 = trunc i32 %and209 to i8
  %148 = load i8*, i8** %output.addr, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %148, i64 5
  store i8 %conv210, i8* %arrayidx211, align 1
  %149 = load i32, i32* %X, align 4
  %shr212 = lshr i32 %149, 8
  %and213 = and i32 %shr212, 255
  %conv214 = trunc i32 %and213 to i8
  %150 = load i8*, i8** %output.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %150, i64 6
  store i8 %conv214, i8* %arrayidx215, align 1
  %151 = load i32, i32* %X, align 4
  %and216 = and i32 %151, 255
  %conv217 = trunc i32 %and216 to i8
  %152 = load i8*, i8** %output.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %152, i64 7
  store i8 %conv217, i8* %arrayidx218, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_des_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %temp = alloca [8 x i8], align 1
  store %struct.mbedtls_des_context* %ctx, %struct.mbedtls_des_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %length.addr, align 8
  %rem = urem i64 %0, 8
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -50, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then1
  %2 = load i64, i64* %length.addr, align 8
  %cmp2 = icmp ugt i64 %2, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %xor = xor i32 %conv, %conv6
  %conv7 = trunc i32 %xor to i8
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %13 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef %13, i8* noundef %14, i8* noundef %15) #5
  store i32 %call, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %exit

if.end13:                                         ; preds = %for.end
  %17 = load i8*, i8** %iv.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %call14 = call i8* @memcpy(i8* noundef %17, i8* noundef %18, i64 noundef 8) #4
  %19 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %add.ptr, i8** %input.addr, align 8
  %20 = load i8*, i8** %output.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %add.ptr15, i8** %output.addr, align 8
  %21 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %21, 8
  store i64 %sub, i64* %length.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %if.end49

if.else:                                          ; preds = %if.end
  br label %while.cond16

while.cond16:                                     ; preds = %for.end42, %if.else
  %22 = load i64, i64* %length.addr, align 8
  %cmp17 = icmp ugt i64 %22, 0
  br i1 %cmp17, label %while.body19, label %while.end48

while.body19:                                     ; preds = %while.cond16
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %temp, i64 0, i64 0
  %23 = load i8*, i8** %input.addr, align 8
  %call20 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %23, i64 noundef 8) #4
  %24 = load %struct.mbedtls_des_context*, %struct.mbedtls_des_context** %ctx.addr, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %26 = load i8*, i8** %output.addr, align 8
  %call21 = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef %24, i8* noundef %25, i8* noundef %26) #5
  store i32 %call21, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %27, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.body19
  br label %exit

if.end25:                                         ; preds = %while.body19
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %if.end25
  %28 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %28, 8
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %29 = load i8*, i8** %output.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %32 = load i8*, i8** %iv.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %xor36 = xor i32 %conv32, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %35 = load i8*, i8** %output.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %35, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %37 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond26, !llvm.loop !15

for.end42:                                        ; preds = %for.cond26
  %38 = load i8*, i8** %iv.addr, align 8
  %arraydecay43 = getelementptr inbounds [8 x i8], [8 x i8]* %temp, i64 0, i64 0
  %call44 = call i8* @memcpy(i8* noundef %38, i8* noundef %arraydecay43, i64 noundef 8) #4
  %39 = load i8*, i8** %input.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %add.ptr45, i8** %input.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %40, i64 8
  store i8* %add.ptr46, i8** %output.addr, align 8
  %41 = load i64, i64* %length.addr, align 8
  %sub47 = sub i64 %41, 8
  store i64 %sub47, i64* %length.addr, align 8
  br label %while.cond16, !llvm.loop !16

while.end48:                                      ; preds = %while.cond16
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %while.end
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end49, %if.then24, %if.then12
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  %SK = alloca i32*, align 8
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %sk = getelementptr inbounds %struct.mbedtls_des3_context, %struct.mbedtls_des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], [96 x i32]* %sk, i64 0, i64 0
  store i32* %arraydecay, i32** %SK, align 8
  %1 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %3 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %5 = load i8*, i8** %input.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %7 = load i8*, i8** %input.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %X, align 4
  %9 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %shl13 = shl i32 %conv12, 24
  %11 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 6
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %15 = load i8*, i8** %input.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 7
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, i32* %Y, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i32, i32* %X, align 4
  %shr = lshr i32 %17, 4
  %18 = load i32, i32* %Y, align 4
  %xor = xor i32 %shr, %18
  %and = and i32 %xor, 252645135
  store i32 %and, i32* %T, align 4
  %19 = load i32, i32* %T, align 4
  %20 = load i32, i32* %Y, align 4
  %xor25 = xor i32 %20, %19
  store i32 %xor25, i32* %Y, align 4
  %21 = load i32, i32* %T, align 4
  %shl26 = shl i32 %21, 4
  %22 = load i32, i32* %X, align 4
  %xor27 = xor i32 %22, %shl26
  store i32 %xor27, i32* %X, align 4
  %23 = load i32, i32* %X, align 4
  %shr28 = lshr i32 %23, 16
  %24 = load i32, i32* %Y, align 4
  %xor29 = xor i32 %shr28, %24
  %and30 = and i32 %xor29, 65535
  store i32 %and30, i32* %T, align 4
  %25 = load i32, i32* %T, align 4
  %26 = load i32, i32* %Y, align 4
  %xor31 = xor i32 %26, %25
  store i32 %xor31, i32* %Y, align 4
  %27 = load i32, i32* %T, align 4
  %shl32 = shl i32 %27, 16
  %28 = load i32, i32* %X, align 4
  %xor33 = xor i32 %28, %shl32
  store i32 %xor33, i32* %X, align 4
  %29 = load i32, i32* %Y, align 4
  %shr34 = lshr i32 %29, 2
  %30 = load i32, i32* %X, align 4
  %xor35 = xor i32 %shr34, %30
  %and36 = and i32 %xor35, 858993459
  store i32 %and36, i32* %T, align 4
  %31 = load i32, i32* %T, align 4
  %32 = load i32, i32* %X, align 4
  %xor37 = xor i32 %32, %31
  store i32 %xor37, i32* %X, align 4
  %33 = load i32, i32* %T, align 4
  %shl38 = shl i32 %33, 2
  %34 = load i32, i32* %Y, align 4
  %xor39 = xor i32 %34, %shl38
  store i32 %xor39, i32* %Y, align 4
  %35 = load i32, i32* %Y, align 4
  %shr40 = lshr i32 %35, 8
  %36 = load i32, i32* %X, align 4
  %xor41 = xor i32 %shr40, %36
  %and42 = and i32 %xor41, 16711935
  store i32 %and42, i32* %T, align 4
  %37 = load i32, i32* %T, align 4
  %38 = load i32, i32* %X, align 4
  %xor43 = xor i32 %38, %37
  store i32 %xor43, i32* %X, align 4
  %39 = load i32, i32* %T, align 4
  %shl44 = shl i32 %39, 8
  %40 = load i32, i32* %Y, align 4
  %xor45 = xor i32 %40, %shl44
  store i32 %xor45, i32* %Y, align 4
  %41 = load i32, i32* %Y, align 4
  %shl46 = shl i32 %41, 1
  %42 = load i32, i32* %Y, align 4
  %shr47 = lshr i32 %42, 31
  %or48 = or i32 %shl46, %shr47
  %and49 = and i32 %or48, -1
  store i32 %and49, i32* %Y, align 4
  %43 = load i32, i32* %X, align 4
  %44 = load i32, i32* %Y, align 4
  %xor50 = xor i32 %43, %44
  %and51 = and i32 %xor50, -1431655766
  store i32 %and51, i32* %T, align 4
  %45 = load i32, i32* %T, align 4
  %46 = load i32, i32* %Y, align 4
  %xor52 = xor i32 %46, %45
  store i32 %xor52, i32* %Y, align 4
  %47 = load i32, i32* %T, align 4
  %48 = load i32, i32* %X, align 4
  %xor53 = xor i32 %48, %47
  store i32 %xor53, i32* %X, align 4
  %49 = load i32, i32* %X, align 4
  %shl54 = shl i32 %49, 1
  %50 = load i32, i32* %X, align 4
  %shr55 = lshr i32 %50, 31
  %or56 = or i32 %shl54, %shr55
  %and57 = and i32 %or56, -1
  store i32 %and57, i32* %X, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %51 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %51, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body59

do.body59:                                        ; preds = %for.body
  %52 = load i32*, i32** %SK, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr, i32** %SK, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %Y, align 4
  %xor60 = xor i32 %53, %54
  store i32 %xor60, i32* %T, align 4
  %55 = load i32, i32* %T, align 4
  %and61 = and i32 %55, 63
  %idxprom = zext i32 %and61 to i64
  %arrayidx62 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom
  %56 = load i32, i32* %arrayidx62, align 4
  %57 = load i32, i32* %T, align 4
  %shr63 = lshr i32 %57, 8
  %and64 = and i32 %shr63, 63
  %idxprom65 = zext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom65
  %58 = load i32, i32* %arrayidx66, align 4
  %xor67 = xor i32 %56, %58
  %59 = load i32, i32* %T, align 4
  %shr68 = lshr i32 %59, 16
  %and69 = and i32 %shr68, 63
  %idxprom70 = zext i32 %and69 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %xor72 = xor i32 %xor67, %60
  %61 = load i32, i32* %T, align 4
  %shr73 = lshr i32 %61, 24
  %and74 = and i32 %shr73, 63
  %idxprom75 = zext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom75
  %62 = load i32, i32* %arrayidx76, align 4
  %xor77 = xor i32 %xor72, %62
  %63 = load i32, i32* %X, align 4
  %xor78 = xor i32 %63, %xor77
  store i32 %xor78, i32* %X, align 4
  %64 = load i32*, i32** %SK, align 8
  %incdec.ptr79 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %incdec.ptr79, i32** %SK, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %Y, align 4
  %shl80 = shl i32 %66, 28
  %67 = load i32, i32* %Y, align 4
  %shr81 = lshr i32 %67, 4
  %or82 = or i32 %shl80, %shr81
  %xor83 = xor i32 %65, %or82
  store i32 %xor83, i32* %T, align 4
  %68 = load i32, i32* %T, align 4
  %and84 = and i32 %68, 63
  %idxprom85 = zext i32 %and84 to i64
  %arrayidx86 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom85
  %69 = load i32, i32* %arrayidx86, align 4
  %70 = load i32, i32* %T, align 4
  %shr87 = lshr i32 %70, 8
  %and88 = and i32 %shr87, 63
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom89
  %71 = load i32, i32* %arrayidx90, align 4
  %xor91 = xor i32 %69, %71
  %72 = load i32, i32* %T, align 4
  %shr92 = lshr i32 %72, 16
  %and93 = and i32 %shr92, 63
  %idxprom94 = zext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom94
  %73 = load i32, i32* %arrayidx95, align 4
  %xor96 = xor i32 %xor91, %73
  %74 = load i32, i32* %T, align 4
  %shr97 = lshr i32 %74, 24
  %and98 = and i32 %shr97, 63
  %idxprom99 = zext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom99
  %75 = load i32, i32* %arrayidx100, align 4
  %xor101 = xor i32 %xor96, %75
  %76 = load i32, i32* %X, align 4
  %xor102 = xor i32 %76, %xor101
  store i32 %xor102, i32* %X, align 4
  br label %do.end103

do.end103:                                        ; preds = %do.body59
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %77 = load i32*, i32** %SK, align 8
  %incdec.ptr105 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %incdec.ptr105, i32** %SK, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %X, align 4
  %xor106 = xor i32 %78, %79
  store i32 %xor106, i32* %T, align 4
  %80 = load i32, i32* %T, align 4
  %and107 = and i32 %80, 63
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom108
  %81 = load i32, i32* %arrayidx109, align 4
  %82 = load i32, i32* %T, align 4
  %shr110 = lshr i32 %82, 8
  %and111 = and i32 %shr110, 63
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom112
  %83 = load i32, i32* %arrayidx113, align 4
  %xor114 = xor i32 %81, %83
  %84 = load i32, i32* %T, align 4
  %shr115 = lshr i32 %84, 16
  %and116 = and i32 %shr115, 63
  %idxprom117 = zext i32 %and116 to i64
  %arrayidx118 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom117
  %85 = load i32, i32* %arrayidx118, align 4
  %xor119 = xor i32 %xor114, %85
  %86 = load i32, i32* %T, align 4
  %shr120 = lshr i32 %86, 24
  %and121 = and i32 %shr120, 63
  %idxprom122 = zext i32 %and121 to i64
  %arrayidx123 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom122
  %87 = load i32, i32* %arrayidx123, align 4
  %xor124 = xor i32 %xor119, %87
  %88 = load i32, i32* %Y, align 4
  %xor125 = xor i32 %88, %xor124
  store i32 %xor125, i32* %Y, align 4
  %89 = load i32*, i32** %SK, align 8
  %incdec.ptr126 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr126, i32** %SK, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %X, align 4
  %shl127 = shl i32 %91, 28
  %92 = load i32, i32* %X, align 4
  %shr128 = lshr i32 %92, 4
  %or129 = or i32 %shl127, %shr128
  %xor130 = xor i32 %90, %or129
  store i32 %xor130, i32* %T, align 4
  %93 = load i32, i32* %T, align 4
  %and131 = and i32 %93, 63
  %idxprom132 = zext i32 %and131 to i64
  %arrayidx133 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom132
  %94 = load i32, i32* %arrayidx133, align 4
  %95 = load i32, i32* %T, align 4
  %shr134 = lshr i32 %95, 8
  %and135 = and i32 %shr134, 63
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom136
  %96 = load i32, i32* %arrayidx137, align 4
  %xor138 = xor i32 %94, %96
  %97 = load i32, i32* %T, align 4
  %shr139 = lshr i32 %97, 16
  %and140 = and i32 %shr139, 63
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom141
  %98 = load i32, i32* %arrayidx142, align 4
  %xor143 = xor i32 %xor138, %98
  %99 = load i32, i32* %T, align 4
  %shr144 = lshr i32 %99, 24
  %and145 = and i32 %shr144, 63
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom146
  %100 = load i32, i32* %arrayidx147, align 4
  %xor148 = xor i32 %xor143, %100
  %101 = load i32, i32* %Y, align 4
  %xor149 = xor i32 %101, %xor148
  store i32 %xor149, i32* %Y, align 4
  br label %do.end150

do.end150:                                        ; preds = %do.body104
  br label %for.inc

for.inc:                                          ; preds = %do.end150
  %102 = load i32, i32* %i, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc249, %for.end
  %103 = load i32, i32* %i, align 4
  %cmp152 = icmp slt i32 %103, 8
  br i1 %cmp152, label %for.body154, label %for.end251

for.body154:                                      ; preds = %for.cond151
  br label %do.body155

do.body155:                                       ; preds = %for.body154
  %104 = load i32*, i32** %SK, align 8
  %incdec.ptr156 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr156, i32** %SK, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %X, align 4
  %xor157 = xor i32 %105, %106
  store i32 %xor157, i32* %T, align 4
  %107 = load i32, i32* %T, align 4
  %and158 = and i32 %107, 63
  %idxprom159 = zext i32 %and158 to i64
  %arrayidx160 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom159
  %108 = load i32, i32* %arrayidx160, align 4
  %109 = load i32, i32* %T, align 4
  %shr161 = lshr i32 %109, 8
  %and162 = and i32 %shr161, 63
  %idxprom163 = zext i32 %and162 to i64
  %arrayidx164 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom163
  %110 = load i32, i32* %arrayidx164, align 4
  %xor165 = xor i32 %108, %110
  %111 = load i32, i32* %T, align 4
  %shr166 = lshr i32 %111, 16
  %and167 = and i32 %shr166, 63
  %idxprom168 = zext i32 %and167 to i64
  %arrayidx169 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom168
  %112 = load i32, i32* %arrayidx169, align 4
  %xor170 = xor i32 %xor165, %112
  %113 = load i32, i32* %T, align 4
  %shr171 = lshr i32 %113, 24
  %and172 = and i32 %shr171, 63
  %idxprom173 = zext i32 %and172 to i64
  %arrayidx174 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom173
  %114 = load i32, i32* %arrayidx174, align 4
  %xor175 = xor i32 %xor170, %114
  %115 = load i32, i32* %Y, align 4
  %xor176 = xor i32 %115, %xor175
  store i32 %xor176, i32* %Y, align 4
  %116 = load i32*, i32** %SK, align 8
  %incdec.ptr177 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %incdec.ptr177, i32** %SK, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %X, align 4
  %shl178 = shl i32 %118, 28
  %119 = load i32, i32* %X, align 4
  %shr179 = lshr i32 %119, 4
  %or180 = or i32 %shl178, %shr179
  %xor181 = xor i32 %117, %or180
  store i32 %xor181, i32* %T, align 4
  %120 = load i32, i32* %T, align 4
  %and182 = and i32 %120, 63
  %idxprom183 = zext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom183
  %121 = load i32, i32* %arrayidx184, align 4
  %122 = load i32, i32* %T, align 4
  %shr185 = lshr i32 %122, 8
  %and186 = and i32 %shr185, 63
  %idxprom187 = zext i32 %and186 to i64
  %arrayidx188 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom187
  %123 = load i32, i32* %arrayidx188, align 4
  %xor189 = xor i32 %121, %123
  %124 = load i32, i32* %T, align 4
  %shr190 = lshr i32 %124, 16
  %and191 = and i32 %shr190, 63
  %idxprom192 = zext i32 %and191 to i64
  %arrayidx193 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom192
  %125 = load i32, i32* %arrayidx193, align 4
  %xor194 = xor i32 %xor189, %125
  %126 = load i32, i32* %T, align 4
  %shr195 = lshr i32 %126, 24
  %and196 = and i32 %shr195, 63
  %idxprom197 = zext i32 %and196 to i64
  %arrayidx198 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom197
  %127 = load i32, i32* %arrayidx198, align 4
  %xor199 = xor i32 %xor194, %127
  %128 = load i32, i32* %Y, align 4
  %xor200 = xor i32 %128, %xor199
  store i32 %xor200, i32* %Y, align 4
  br label %do.end201

do.end201:                                        ; preds = %do.body155
  br label %do.body202

do.body202:                                       ; preds = %do.end201
  %129 = load i32*, i32** %SK, align 8
  %incdec.ptr203 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %incdec.ptr203, i32** %SK, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %Y, align 4
  %xor204 = xor i32 %130, %131
  store i32 %xor204, i32* %T, align 4
  %132 = load i32, i32* %T, align 4
  %and205 = and i32 %132, 63
  %idxprom206 = zext i32 %and205 to i64
  %arrayidx207 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom206
  %133 = load i32, i32* %arrayidx207, align 4
  %134 = load i32, i32* %T, align 4
  %shr208 = lshr i32 %134, 8
  %and209 = and i32 %shr208, 63
  %idxprom210 = zext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom210
  %135 = load i32, i32* %arrayidx211, align 4
  %xor212 = xor i32 %133, %135
  %136 = load i32, i32* %T, align 4
  %shr213 = lshr i32 %136, 16
  %and214 = and i32 %shr213, 63
  %idxprom215 = zext i32 %and214 to i64
  %arrayidx216 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom215
  %137 = load i32, i32* %arrayidx216, align 4
  %xor217 = xor i32 %xor212, %137
  %138 = load i32, i32* %T, align 4
  %shr218 = lshr i32 %138, 24
  %and219 = and i32 %shr218, 63
  %idxprom220 = zext i32 %and219 to i64
  %arrayidx221 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom220
  %139 = load i32, i32* %arrayidx221, align 4
  %xor222 = xor i32 %xor217, %139
  %140 = load i32, i32* %X, align 4
  %xor223 = xor i32 %140, %xor222
  store i32 %xor223, i32* %X, align 4
  %141 = load i32*, i32** %SK, align 8
  %incdec.ptr224 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %incdec.ptr224, i32** %SK, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %Y, align 4
  %shl225 = shl i32 %143, 28
  %144 = load i32, i32* %Y, align 4
  %shr226 = lshr i32 %144, 4
  %or227 = or i32 %shl225, %shr226
  %xor228 = xor i32 %142, %or227
  store i32 %xor228, i32* %T, align 4
  %145 = load i32, i32* %T, align 4
  %and229 = and i32 %145, 63
  %idxprom230 = zext i32 %and229 to i64
  %arrayidx231 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom230
  %146 = load i32, i32* %arrayidx231, align 4
  %147 = load i32, i32* %T, align 4
  %shr232 = lshr i32 %147, 8
  %and233 = and i32 %shr232, 63
  %idxprom234 = zext i32 %and233 to i64
  %arrayidx235 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom234
  %148 = load i32, i32* %arrayidx235, align 4
  %xor236 = xor i32 %146, %148
  %149 = load i32, i32* %T, align 4
  %shr237 = lshr i32 %149, 16
  %and238 = and i32 %shr237, 63
  %idxprom239 = zext i32 %and238 to i64
  %arrayidx240 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom239
  %150 = load i32, i32* %arrayidx240, align 4
  %xor241 = xor i32 %xor236, %150
  %151 = load i32, i32* %T, align 4
  %shr242 = lshr i32 %151, 24
  %and243 = and i32 %shr242, 63
  %idxprom244 = zext i32 %and243 to i64
  %arrayidx245 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom244
  %152 = load i32, i32* %arrayidx245, align 4
  %xor246 = xor i32 %xor241, %152
  %153 = load i32, i32* %X, align 4
  %xor247 = xor i32 %153, %xor246
  store i32 %xor247, i32* %X, align 4
  br label %do.end248

do.end248:                                        ; preds = %do.body202
  br label %for.inc249

for.inc249:                                       ; preds = %do.end248
  %154 = load i32, i32* %i, align 4
  %inc250 = add nsw i32 %154, 1
  store i32 %inc250, i32* %i, align 4
  br label %for.cond151, !llvm.loop !18

for.end251:                                       ; preds = %for.cond151
  store i32 0, i32* %i, align 4
  br label %for.cond252

for.cond252:                                      ; preds = %for.inc350, %for.end251
  %155 = load i32, i32* %i, align 4
  %cmp253 = icmp slt i32 %155, 8
  br i1 %cmp253, label %for.body255, label %for.end352

for.body255:                                      ; preds = %for.cond252
  br label %do.body256

do.body256:                                       ; preds = %for.body255
  %156 = load i32*, i32** %SK, align 8
  %incdec.ptr257 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %incdec.ptr257, i32** %SK, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %Y, align 4
  %xor258 = xor i32 %157, %158
  store i32 %xor258, i32* %T, align 4
  %159 = load i32, i32* %T, align 4
  %and259 = and i32 %159, 63
  %idxprom260 = zext i32 %and259 to i64
  %arrayidx261 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom260
  %160 = load i32, i32* %arrayidx261, align 4
  %161 = load i32, i32* %T, align 4
  %shr262 = lshr i32 %161, 8
  %and263 = and i32 %shr262, 63
  %idxprom264 = zext i32 %and263 to i64
  %arrayidx265 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom264
  %162 = load i32, i32* %arrayidx265, align 4
  %xor266 = xor i32 %160, %162
  %163 = load i32, i32* %T, align 4
  %shr267 = lshr i32 %163, 16
  %and268 = and i32 %shr267, 63
  %idxprom269 = zext i32 %and268 to i64
  %arrayidx270 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom269
  %164 = load i32, i32* %arrayidx270, align 4
  %xor271 = xor i32 %xor266, %164
  %165 = load i32, i32* %T, align 4
  %shr272 = lshr i32 %165, 24
  %and273 = and i32 %shr272, 63
  %idxprom274 = zext i32 %and273 to i64
  %arrayidx275 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom274
  %166 = load i32, i32* %arrayidx275, align 4
  %xor276 = xor i32 %xor271, %166
  %167 = load i32, i32* %X, align 4
  %xor277 = xor i32 %167, %xor276
  store i32 %xor277, i32* %X, align 4
  %168 = load i32*, i32** %SK, align 8
  %incdec.ptr278 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %incdec.ptr278, i32** %SK, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %Y, align 4
  %shl279 = shl i32 %170, 28
  %171 = load i32, i32* %Y, align 4
  %shr280 = lshr i32 %171, 4
  %or281 = or i32 %shl279, %shr280
  %xor282 = xor i32 %169, %or281
  store i32 %xor282, i32* %T, align 4
  %172 = load i32, i32* %T, align 4
  %and283 = and i32 %172, 63
  %idxprom284 = zext i32 %and283 to i64
  %arrayidx285 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom284
  %173 = load i32, i32* %arrayidx285, align 4
  %174 = load i32, i32* %T, align 4
  %shr286 = lshr i32 %174, 8
  %and287 = and i32 %shr286, 63
  %idxprom288 = zext i32 %and287 to i64
  %arrayidx289 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom288
  %175 = load i32, i32* %arrayidx289, align 4
  %xor290 = xor i32 %173, %175
  %176 = load i32, i32* %T, align 4
  %shr291 = lshr i32 %176, 16
  %and292 = and i32 %shr291, 63
  %idxprom293 = zext i32 %and292 to i64
  %arrayidx294 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom293
  %177 = load i32, i32* %arrayidx294, align 4
  %xor295 = xor i32 %xor290, %177
  %178 = load i32, i32* %T, align 4
  %shr296 = lshr i32 %178, 24
  %and297 = and i32 %shr296, 63
  %idxprom298 = zext i32 %and297 to i64
  %arrayidx299 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom298
  %179 = load i32, i32* %arrayidx299, align 4
  %xor300 = xor i32 %xor295, %179
  %180 = load i32, i32* %X, align 4
  %xor301 = xor i32 %180, %xor300
  store i32 %xor301, i32* %X, align 4
  br label %do.end302

do.end302:                                        ; preds = %do.body256
  br label %do.body303

do.body303:                                       ; preds = %do.end302
  %181 = load i32*, i32** %SK, align 8
  %incdec.ptr304 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %incdec.ptr304, i32** %SK, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %X, align 4
  %xor305 = xor i32 %182, %183
  store i32 %xor305, i32* %T, align 4
  %184 = load i32, i32* %T, align 4
  %and306 = and i32 %184, 63
  %idxprom307 = zext i32 %and306 to i64
  %arrayidx308 = getelementptr inbounds [64 x i32], [64 x i32]* @SB8, i64 0, i64 %idxprom307
  %185 = load i32, i32* %arrayidx308, align 4
  %186 = load i32, i32* %T, align 4
  %shr309 = lshr i32 %186, 8
  %and310 = and i32 %shr309, 63
  %idxprom311 = zext i32 %and310 to i64
  %arrayidx312 = getelementptr inbounds [64 x i32], [64 x i32]* @SB6, i64 0, i64 %idxprom311
  %187 = load i32, i32* %arrayidx312, align 4
  %xor313 = xor i32 %185, %187
  %188 = load i32, i32* %T, align 4
  %shr314 = lshr i32 %188, 16
  %and315 = and i32 %shr314, 63
  %idxprom316 = zext i32 %and315 to i64
  %arrayidx317 = getelementptr inbounds [64 x i32], [64 x i32]* @SB4, i64 0, i64 %idxprom316
  %189 = load i32, i32* %arrayidx317, align 4
  %xor318 = xor i32 %xor313, %189
  %190 = load i32, i32* %T, align 4
  %shr319 = lshr i32 %190, 24
  %and320 = and i32 %shr319, 63
  %idxprom321 = zext i32 %and320 to i64
  %arrayidx322 = getelementptr inbounds [64 x i32], [64 x i32]* @SB2, i64 0, i64 %idxprom321
  %191 = load i32, i32* %arrayidx322, align 4
  %xor323 = xor i32 %xor318, %191
  %192 = load i32, i32* %Y, align 4
  %xor324 = xor i32 %192, %xor323
  store i32 %xor324, i32* %Y, align 4
  %193 = load i32*, i32** %SK, align 8
  %incdec.ptr325 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %incdec.ptr325, i32** %SK, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %X, align 4
  %shl326 = shl i32 %195, 28
  %196 = load i32, i32* %X, align 4
  %shr327 = lshr i32 %196, 4
  %or328 = or i32 %shl326, %shr327
  %xor329 = xor i32 %194, %or328
  store i32 %xor329, i32* %T, align 4
  %197 = load i32, i32* %T, align 4
  %and330 = and i32 %197, 63
  %idxprom331 = zext i32 %and330 to i64
  %arrayidx332 = getelementptr inbounds [64 x i32], [64 x i32]* @SB7, i64 0, i64 %idxprom331
  %198 = load i32, i32* %arrayidx332, align 4
  %199 = load i32, i32* %T, align 4
  %shr333 = lshr i32 %199, 8
  %and334 = and i32 %shr333, 63
  %idxprom335 = zext i32 %and334 to i64
  %arrayidx336 = getelementptr inbounds [64 x i32], [64 x i32]* @SB5, i64 0, i64 %idxprom335
  %200 = load i32, i32* %arrayidx336, align 4
  %xor337 = xor i32 %198, %200
  %201 = load i32, i32* %T, align 4
  %shr338 = lshr i32 %201, 16
  %and339 = and i32 %shr338, 63
  %idxprom340 = zext i32 %and339 to i64
  %arrayidx341 = getelementptr inbounds [64 x i32], [64 x i32]* @SB3, i64 0, i64 %idxprom340
  %202 = load i32, i32* %arrayidx341, align 4
  %xor342 = xor i32 %xor337, %202
  %203 = load i32, i32* %T, align 4
  %shr343 = lshr i32 %203, 24
  %and344 = and i32 %shr343, 63
  %idxprom345 = zext i32 %and344 to i64
  %arrayidx346 = getelementptr inbounds [64 x i32], [64 x i32]* @SB1, i64 0, i64 %idxprom345
  %204 = load i32, i32* %arrayidx346, align 4
  %xor347 = xor i32 %xor342, %204
  %205 = load i32, i32* %Y, align 4
  %xor348 = xor i32 %205, %xor347
  store i32 %xor348, i32* %Y, align 4
  br label %do.end349

do.end349:                                        ; preds = %do.body303
  br label %for.inc350

for.inc350:                                       ; preds = %do.end349
  %206 = load i32, i32* %i, align 4
  %inc351 = add nsw i32 %206, 1
  store i32 %inc351, i32* %i, align 4
  br label %for.cond252, !llvm.loop !19

for.end352:                                       ; preds = %for.cond252
  br label %do.body353

do.body353:                                       ; preds = %for.end352
  %207 = load i32, i32* %Y, align 4
  %shl354 = shl i32 %207, 31
  %208 = load i32, i32* %Y, align 4
  %shr355 = lshr i32 %208, 1
  %or356 = or i32 %shl354, %shr355
  %and357 = and i32 %or356, -1
  store i32 %and357, i32* %Y, align 4
  %209 = load i32, i32* %Y, align 4
  %210 = load i32, i32* %X, align 4
  %xor358 = xor i32 %209, %210
  %and359 = and i32 %xor358, -1431655766
  store i32 %and359, i32* %T, align 4
  %211 = load i32, i32* %T, align 4
  %212 = load i32, i32* %Y, align 4
  %xor360 = xor i32 %212, %211
  store i32 %xor360, i32* %Y, align 4
  %213 = load i32, i32* %T, align 4
  %214 = load i32, i32* %X, align 4
  %xor361 = xor i32 %214, %213
  store i32 %xor361, i32* %X, align 4
  %215 = load i32, i32* %X, align 4
  %shl362 = shl i32 %215, 31
  %216 = load i32, i32* %X, align 4
  %shr363 = lshr i32 %216, 1
  %or364 = or i32 %shl362, %shr363
  %and365 = and i32 %or364, -1
  store i32 %and365, i32* %X, align 4
  %217 = load i32, i32* %X, align 4
  %shr366 = lshr i32 %217, 8
  %218 = load i32, i32* %Y, align 4
  %xor367 = xor i32 %shr366, %218
  %and368 = and i32 %xor367, 16711935
  store i32 %and368, i32* %T, align 4
  %219 = load i32, i32* %T, align 4
  %220 = load i32, i32* %Y, align 4
  %xor369 = xor i32 %220, %219
  store i32 %xor369, i32* %Y, align 4
  %221 = load i32, i32* %T, align 4
  %shl370 = shl i32 %221, 8
  %222 = load i32, i32* %X, align 4
  %xor371 = xor i32 %222, %shl370
  store i32 %xor371, i32* %X, align 4
  %223 = load i32, i32* %X, align 4
  %shr372 = lshr i32 %223, 2
  %224 = load i32, i32* %Y, align 4
  %xor373 = xor i32 %shr372, %224
  %and374 = and i32 %xor373, 858993459
  store i32 %and374, i32* %T, align 4
  %225 = load i32, i32* %T, align 4
  %226 = load i32, i32* %Y, align 4
  %xor375 = xor i32 %226, %225
  store i32 %xor375, i32* %Y, align 4
  %227 = load i32, i32* %T, align 4
  %shl376 = shl i32 %227, 2
  %228 = load i32, i32* %X, align 4
  %xor377 = xor i32 %228, %shl376
  store i32 %xor377, i32* %X, align 4
  %229 = load i32, i32* %Y, align 4
  %shr378 = lshr i32 %229, 16
  %230 = load i32, i32* %X, align 4
  %xor379 = xor i32 %shr378, %230
  %and380 = and i32 %xor379, 65535
  store i32 %and380, i32* %T, align 4
  %231 = load i32, i32* %T, align 4
  %232 = load i32, i32* %X, align 4
  %xor381 = xor i32 %232, %231
  store i32 %xor381, i32* %X, align 4
  %233 = load i32, i32* %T, align 4
  %shl382 = shl i32 %233, 16
  %234 = load i32, i32* %Y, align 4
  %xor383 = xor i32 %234, %shl382
  store i32 %xor383, i32* %Y, align 4
  %235 = load i32, i32* %Y, align 4
  %shr384 = lshr i32 %235, 4
  %236 = load i32, i32* %X, align 4
  %xor385 = xor i32 %shr384, %236
  %and386 = and i32 %xor385, 252645135
  store i32 %and386, i32* %T, align 4
  %237 = load i32, i32* %T, align 4
  %238 = load i32, i32* %X, align 4
  %xor387 = xor i32 %238, %237
  store i32 %xor387, i32* %X, align 4
  %239 = load i32, i32* %T, align 4
  %shl388 = shl i32 %239, 4
  %240 = load i32, i32* %Y, align 4
  %xor389 = xor i32 %240, %shl388
  store i32 %xor389, i32* %Y, align 4
  br label %do.end390

do.end390:                                        ; preds = %do.body353
  %241 = load i32, i32* %Y, align 4
  %shr391 = lshr i32 %241, 24
  %and392 = and i32 %shr391, 255
  %conv393 = trunc i32 %and392 to i8
  %242 = load i8*, i8** %output.addr, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %242, i64 0
  store i8 %conv393, i8* %arrayidx394, align 1
  %243 = load i32, i32* %Y, align 4
  %shr395 = lshr i32 %243, 16
  %and396 = and i32 %shr395, 255
  %conv397 = trunc i32 %and396 to i8
  %244 = load i8*, i8** %output.addr, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %244, i64 1
  store i8 %conv397, i8* %arrayidx398, align 1
  %245 = load i32, i32* %Y, align 4
  %shr399 = lshr i32 %245, 8
  %and400 = and i32 %shr399, 255
  %conv401 = trunc i32 %and400 to i8
  %246 = load i8*, i8** %output.addr, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %246, i64 2
  store i8 %conv401, i8* %arrayidx402, align 1
  %247 = load i32, i32* %Y, align 4
  %and403 = and i32 %247, 255
  %conv404 = trunc i32 %and403 to i8
  %248 = load i8*, i8** %output.addr, align 8
  %arrayidx405 = getelementptr inbounds i8, i8* %248, i64 3
  store i8 %conv404, i8* %arrayidx405, align 1
  %249 = load i32, i32* %X, align 4
  %shr406 = lshr i32 %249, 24
  %and407 = and i32 %shr406, 255
  %conv408 = trunc i32 %and407 to i8
  %250 = load i8*, i8** %output.addr, align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %250, i64 4
  store i8 %conv408, i8* %arrayidx409, align 1
  %251 = load i32, i32* %X, align 4
  %shr410 = lshr i32 %251, 16
  %and411 = and i32 %shr410, 255
  %conv412 = trunc i32 %and411 to i8
  %252 = load i8*, i8** %output.addr, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %252, i64 5
  store i8 %conv412, i8* %arrayidx413, align 1
  %253 = load i32, i32* %X, align 4
  %shr414 = lshr i32 %253, 8
  %and415 = and i32 %shr414, 255
  %conv416 = trunc i32 %and415 to i8
  %254 = load i8*, i8** %output.addr, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %254, i64 6
  store i8 %conv416, i8* %arrayidx417, align 1
  %255 = load i32, i32* %X, align 4
  %and418 = and i32 %255, 255
  %conv419 = trunc i32 %and418 to i8
  %256 = load i8*, i8** %output.addr, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %256, i64 7
  store i8 %conv419, i8* %arrayidx420, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %iv, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_des3_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %temp = alloca [8 x i8], align 1
  store %struct.mbedtls_des3_context* %ctx, %struct.mbedtls_des3_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %length.addr, align 8
  %rem = urem i64 %0, 8
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -50, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then1
  %2 = load i64, i64* %length.addr, align 8
  %cmp2 = icmp ugt i64 %2, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %iv.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %xor = xor i32 %conv, %conv6
  %conv7 = trunc i32 %xor to i8
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %13 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef %13, i8* noundef %14, i8* noundef %15) #5
  store i32 %call, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %exit

if.end13:                                         ; preds = %for.end
  %17 = load i8*, i8** %iv.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %call14 = call i8* @memcpy(i8* noundef %17, i8* noundef %18, i64 noundef 8) #4
  %19 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %add.ptr, i8** %input.addr, align 8
  %20 = load i8*, i8** %output.addr, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %add.ptr15, i8** %output.addr, align 8
  %21 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %21, 8
  store i64 %sub, i64* %length.addr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  br label %if.end49

if.else:                                          ; preds = %if.end
  br label %while.cond16

while.cond16:                                     ; preds = %for.end42, %if.else
  %22 = load i64, i64* %length.addr, align 8
  %cmp17 = icmp ugt i64 %22, 0
  br i1 %cmp17, label %while.body19, label %while.end48

while.body19:                                     ; preds = %while.cond16
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %temp, i64 0, i64 0
  %23 = load i8*, i8** %input.addr, align 8
  %call20 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %23, i64 noundef 8) #4
  %24 = load %struct.mbedtls_des3_context*, %struct.mbedtls_des3_context** %ctx.addr, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %26 = load i8*, i8** %output.addr, align 8
  %call21 = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef %24, i8* noundef %25, i8* noundef %26) #5
  store i32 %call21, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %27, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.body19
  br label %exit

if.end25:                                         ; preds = %while.body19
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %if.end25
  %28 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %28, 8
  br i1 %cmp27, label %for.body29, label %for.end42

for.body29:                                       ; preds = %for.cond26
  %29 = load i8*, i8** %output.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %29, i64 %idxprom30
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %31 to i32
  %32 = load i8*, i8** %iv.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %xor36 = xor i32 %conv32, %conv35
  %conv37 = trunc i32 %xor36 to i8
  %35 = load i8*, i8** %output.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %35, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %for.body29
  %37 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond26, !llvm.loop !22

for.end42:                                        ; preds = %for.cond26
  %38 = load i8*, i8** %iv.addr, align 8
  %arraydecay43 = getelementptr inbounds [8 x i8], [8 x i8]* %temp, i64 0, i64 0
  %call44 = call i8* @memcpy(i8* noundef %38, i8* noundef %arraydecay43, i64 noundef 8) #4
  %39 = load i8*, i8** %input.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %add.ptr45, i8** %input.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %40, i64 8
  store i8* %add.ptr46, i8** %output.addr, align 8
  %41 = load i64, i64* %length.addr, align 8
  %sub47 = sub i64 %41, 8
  store i64 %sub47, i64* %length.addr, align 8
  br label %while.cond16, !llvm.loop !23

while.end48:                                      ; preds = %while.cond16
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %while.end
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end49, %if.then24, %if.then12
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_des_context, align 4
  %ctx3 = alloca %struct.mbedtls_des3_context, align 4
  %buf = alloca [8 x i8], align 1
  %prv = alloca [8 x i8], align 1
  %iv = alloca [8 x i8], align 1
  %tmp = alloca [8 x i8], align 1
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  call void @mbedtls_des_init(%struct.mbedtls_des_context* noundef %ctx) #5
  call void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef %ctx3) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %u, align 4
  %2 = load i32, i32* %i, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %v, align 4
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %u, align 4
  %cmp2 = icmp eq i32 %4, 0
  %5 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 32, i32 51
  %6 = load i32, i32* %u, align 4
  %mul = mul nsw i32 %6, 56
  %add = add nsw i32 56, %mul
  %7 = load i32, i32* %v, align 4
  %cmp3 = icmp eq i32 %7, 0
  %8 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %cond, i32 noundef %add, i8* noundef %cond4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call5 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_buf, i64 0, i64 0), i64 noundef 8) #4
  %9 = load i32, i32* %i, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %call6 = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef %ctx, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call6, i32* %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %call8 = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef %ctx, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call8, i32* %ret, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %call10 = call i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call10, i32* %ret, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %call12 = call i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call12, i32* %ret, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %call14 = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call14, i32* %ret, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %call16 = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call16, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb
  %10 = load i32, i32* %ret, align 4
  %cmp17 = icmp ne i32 %10, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.epilog
  br label %exit

if.end19:                                         ; preds = %sw.epilog
  store i32 0, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.end19
  %11 = load i32, i32* %j, align 4
  %cmp21 = icmp slt i32 %11, 100
  br i1 %cmp21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  %12 = load i32, i32* %u, align 4
  %cmp23 = icmp eq i32 %12, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body22
  %arraydecay25 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call27 = call i32 @mbedtls_des_crypt_ecb(%struct.mbedtls_des_context* noundef %ctx, i8* noundef %arraydecay25, i8* noundef %arraydecay26) #5
  store i32 %call27, i32* %ret, align 4
  br label %if.end31

if.else:                                          ; preds = %for.body22
  %arraydecay28 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call30 = call i32 @mbedtls_des3_crypt_ecb(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef %arraydecay28, i8* noundef %arraydecay29) #5
  store i32 %call30, i32* %ret, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %13 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %13, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  br label %exit

if.end34:                                         ; preds = %if.end31
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond20, !llvm.loop !24

for.end:                                          ; preds = %for.cond20
  %15 = load i32, i32* %v, align 4
  %cmp35 = icmp eq i32 %15, 0
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %arraydecay36 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %16 = load i32, i32* %u, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_ecb_dec, i64 0, i64 %idxprom
  %arraydecay37 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %call38 = call i32 @memcmp(i8* noundef %arraydecay36, i8* noundef %arraydecay37, i64 noundef 8) #6
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %17 = load i32, i32* %v, align 4
  %cmp40 = icmp ne i32 %17, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end53

land.lhs.true41:                                  ; preds = %lor.lhs.false
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %18 = load i32, i32* %u, align 4
  %idxprom43 = sext i32 %18 to i64
  %arrayidx44 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_ecb_enc, i64 0, i64 %idxprom43
  %arraydecay45 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx44, i64 0, i64 0
  %call46 = call i32 @memcmp(i8* noundef %arraydecay42, i8* noundef %arraydecay45, i64 noundef 8) #6
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %land.lhs.true41, %land.lhs.true
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp49 = icmp ne i32 %19, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then48
  %call51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then48
  store i32 1, i32* %ret, align 4
  br label %exit

if.end53:                                         ; preds = %land.lhs.true41, %lor.lhs.false
  %20 = load i32, i32* %verbose.addr, align 4
  %cmp54 = icmp ne i32 %20, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  %call56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %21 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %21, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end60:                                        ; preds = %for.cond
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp61 = icmp ne i32 %22, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %for.end60
  %call63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end60
  store i32 0, i32* %i, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc188, %if.end64
  %23 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %23, 6
  br i1 %cmp66, label %for.body67, label %for.end190

for.body67:                                       ; preds = %for.cond65
  %24 = load i32, i32* %i, align 4
  %shr68 = ashr i32 %24, 1
  store i32 %shr68, i32* %u, align 4
  %25 = load i32, i32* %i, align 4
  %and69 = and i32 %25, 1
  store i32 %and69, i32* %v, align 4
  %26 = load i32, i32* %verbose.addr, align 4
  %cmp70 = icmp ne i32 %26, 0
  br i1 %cmp70, label %if.then71, label %if.end79

if.then71:                                        ; preds = %for.body67
  %27 = load i32, i32* %u, align 4
  %cmp72 = icmp eq i32 %27, 0
  %28 = zext i1 %cmp72 to i64
  %cond73 = select i1 %cmp72, i32 32, i32 51
  %29 = load i32, i32* %u, align 4
  %mul74 = mul nsw i32 %29, 56
  %add75 = add nsw i32 56, %mul74
  %30 = load i32, i32* %v, align 4
  %cmp76 = icmp eq i32 %30, 0
  %31 = zext i1 %cmp76 to i64
  %cond77 = select i1 %cmp76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %call78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef %cond73, i32 noundef %add75, i8* noundef %cond77) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %for.body67
  %arraydecay80 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  %call81 = call i8* @memcpy(i8* noundef %arraydecay80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_iv, i64 0, i64 0), i64 noundef 8) #4
  %arraydecay82 = getelementptr inbounds [8 x i8], [8 x i8]* %prv, i64 0, i64 0
  %call83 = call i8* @memcpy(i8* noundef %arraydecay82, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_iv, i64 0, i64 0), i64 noundef 8) #4
  %arraydecay84 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call85 = call i8* @memcpy(i8* noundef %arraydecay84, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @des3_test_buf, i64 0, i64 0), i64 noundef 8) #4
  %32 = load i32, i32* %i, align 4
  switch i32 %32, label %sw.default98 [
    i32 0, label %sw.bb86
    i32 1, label %sw.bb88
    i32 2, label %sw.bb90
    i32 3, label %sw.bb92
    i32 4, label %sw.bb94
    i32 5, label %sw.bb96
  ]

sw.bb86:                                          ; preds = %if.end79
  %call87 = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef %ctx, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call87, i32* %ret, align 4
  br label %sw.epilog99

sw.bb88:                                          ; preds = %if.end79
  %call89 = call i32 @mbedtls_des_setkey_enc(%struct.mbedtls_des_context* noundef %ctx, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call89, i32* %ret, align 4
  br label %sw.epilog99

sw.bb90:                                          ; preds = %if.end79
  %call91 = call i32 @mbedtls_des3_set2key_dec(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call91, i32* %ret, align 4
  br label %sw.epilog99

sw.bb92:                                          ; preds = %if.end79
  %call93 = call i32 @mbedtls_des3_set2key_enc(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call93, i32* %ret, align 4
  br label %sw.epilog99

sw.bb94:                                          ; preds = %if.end79
  %call95 = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call95, i32* %ret, align 4
  br label %sw.epilog99

sw.bb96:                                          ; preds = %if.end79
  %call97 = call i32 @mbedtls_des3_set3key_enc(%struct.mbedtls_des3_context* noundef %ctx3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @des3_test_keys, i64 0, i64 0)) #5
  store i32 %call97, i32* %ret, align 4
  br label %sw.epilog99

sw.default98:                                     ; preds = %if.end79
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog99:                                      ; preds = %sw.bb96, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86
  %33 = load i32, i32* %ret, align 4
  %cmp100 = icmp ne i32 %33, 0
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %sw.epilog99
  br label %exit

if.end102:                                        ; preds = %sw.epilog99
  %34 = load i32, i32* %v, align 4
  %cmp103 = icmp eq i32 %34, 0
  br i1 %cmp103, label %if.then104, label %if.else126

if.then104:                                       ; preds = %if.end102
  store i32 0, i32* %j, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc123, %if.then104
  %35 = load i32, i32* %j, align 4
  %cmp106 = icmp slt i32 %35, 100
  br i1 %cmp106, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond105
  %36 = load i32, i32* %u, align 4
  %cmp108 = icmp eq i32 %36, 0
  br i1 %cmp108, label %if.then109, label %if.else114

if.then109:                                       ; preds = %for.body107
  %37 = load i32, i32* %v, align 4
  %arraydecay110 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  %arraydecay111 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay112 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call113 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %ctx, i32 noundef %37, i64 noundef 8, i8* noundef %arraydecay110, i8* noundef %arraydecay111, i8* noundef %arraydecay112) #5
  store i32 %call113, i32* %ret, align 4
  br label %if.end119

if.else114:                                       ; preds = %for.body107
  %38 = load i32, i32* %v, align 4
  %arraydecay115 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  %arraydecay116 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay117 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call118 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %ctx3, i32 noundef %38, i64 noundef 8, i8* noundef %arraydecay115, i8* noundef %arraydecay116, i8* noundef %arraydecay117) #5
  store i32 %call118, i32* %ret, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.else114, %if.then109
  %39 = load i32, i32* %ret, align 4
  %cmp120 = icmp ne i32 %39, 0
  br i1 %cmp120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end119
  br label %exit

if.end122:                                        ; preds = %if.end119
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122
  %40 = load i32, i32* %j, align 4
  %inc124 = add nsw i32 %40, 1
  store i32 %inc124, i32* %j, align 4
  br label %for.cond105, !llvm.loop !26

for.end125:                                       ; preds = %for.cond105
  br label %if.end160

if.else126:                                       ; preds = %if.end102
  store i32 0, i32* %j, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc154, %if.else126
  %41 = load i32, i32* %j, align 4
  %cmp128 = icmp slt i32 %41, 100
  br i1 %cmp128, label %for.body129, label %for.end156

for.body129:                                      ; preds = %for.cond127
  %42 = load i32, i32* %u, align 4
  %cmp130 = icmp eq i32 %42, 0
  br i1 %cmp130, label %if.then131, label %if.else136

if.then131:                                       ; preds = %for.body129
  %43 = load i32, i32* %v, align 4
  %arraydecay132 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  %arraydecay133 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay134 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call135 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %ctx, i32 noundef %43, i64 noundef 8, i8* noundef %arraydecay132, i8* noundef %arraydecay133, i8* noundef %arraydecay134) #5
  store i32 %call135, i32* %ret, align 4
  br label %if.end141

if.else136:                                       ; preds = %for.body129
  %44 = load i32, i32* %v, align 4
  %arraydecay137 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  %arraydecay138 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay139 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call140 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %ctx3, i32 noundef %44, i64 noundef 8, i8* noundef %arraydecay137, i8* noundef %arraydecay138, i8* noundef %arraydecay139) #5
  store i32 %call140, i32* %ret, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else136, %if.then131
  %45 = load i32, i32* %ret, align 4
  %cmp142 = icmp ne i32 %45, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end141
  br label %exit

if.end144:                                        ; preds = %if.end141
  %arraydecay145 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i64 0, i64 0
  %arraydecay146 = getelementptr inbounds [8 x i8], [8 x i8]* %prv, i64 0, i64 0
  %call147 = call i8* @memcpy(i8* noundef %arraydecay145, i8* noundef %arraydecay146, i64 noundef 8) #4
  %arraydecay148 = getelementptr inbounds [8 x i8], [8 x i8]* %prv, i64 0, i64 0
  %arraydecay149 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call150 = call i8* @memcpy(i8* noundef %arraydecay148, i8* noundef %arraydecay149, i64 noundef 8) #4
  %arraydecay151 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay152 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i64 0, i64 0
  %call153 = call i8* @memcpy(i8* noundef %arraydecay151, i8* noundef %arraydecay152, i64 noundef 8) #4
  br label %for.inc154

for.inc154:                                       ; preds = %if.end144
  %46 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %46, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond127, !llvm.loop !27

for.end156:                                       ; preds = %for.cond127
  %arraydecay157 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %arraydecay158 = getelementptr inbounds [8 x i8], [8 x i8]* %prv, i64 0, i64 0
  %call159 = call i8* @memcpy(i8* noundef %arraydecay157, i8* noundef %arraydecay158, i64 noundef 8) #4
  br label %if.end160

if.end160:                                        ; preds = %for.end156, %for.end125
  %47 = load i32, i32* %v, align 4
  %cmp161 = icmp eq i32 %47, 0
  br i1 %cmp161, label %land.lhs.true162, label %lor.lhs.false169

land.lhs.true162:                                 ; preds = %if.end160
  %arraydecay163 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %48 = load i32, i32* %u, align 4
  %idxprom164 = sext i32 %48 to i64
  %arrayidx165 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_cbc_dec, i64 0, i64 %idxprom164
  %arraydecay166 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx165, i64 0, i64 0
  %call167 = call i32 @memcmp(i8* noundef %arraydecay163, i8* noundef %arraydecay166, i64 noundef 8) #6
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %if.then178, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %land.lhs.true162, %if.end160
  %49 = load i32, i32* %v, align 4
  %cmp170 = icmp ne i32 %49, 0
  br i1 %cmp170, label %land.lhs.true171, label %if.end183

land.lhs.true171:                                 ; preds = %lor.lhs.false169
  %arraydecay172 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %50 = load i32, i32* %u, align 4
  %idxprom173 = sext i32 %50 to i64
  %arrayidx174 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @des3_test_cbc_enc, i64 0, i64 %idxprom173
  %arraydecay175 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx174, i64 0, i64 0
  %call176 = call i32 @memcmp(i8* noundef %arraydecay172, i8* noundef %arraydecay175, i64 noundef 8) #6
  %cmp177 = icmp ne i32 %call176, 0
  br i1 %cmp177, label %if.then178, label %if.end183

if.then178:                                       ; preds = %land.lhs.true171, %land.lhs.true162
  %51 = load i32, i32* %verbose.addr, align 4
  %cmp179 = icmp ne i32 %51, 0
  br i1 %cmp179, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.then178
  %call181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.then178
  store i32 1, i32* %ret, align 4
  br label %exit

if.end183:                                        ; preds = %land.lhs.true171, %lor.lhs.false169
  %52 = load i32, i32* %verbose.addr, align 4
  %cmp184 = icmp ne i32 %52, 0
  br i1 %cmp184, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.end183
  %call186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.end183
  br label %for.inc188

for.inc188:                                       ; preds = %if.end187
  %53 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %53, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond65, !llvm.loop !28

for.end190:                                       ; preds = %for.cond65
  %54 = load i32, i32* %verbose.addr, align 4
  %cmp191 = icmp ne i32 %54, 0
  br i1 %cmp191, label %if.then192, label %if.end194

if.then192:                                       ; preds = %for.end190
  %call193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %for.end190
  br label %exit

exit:                                             ; preds = %if.end194, %if.end182, %if.then143, %if.then121, %if.then101, %if.end52, %if.then33, %if.then18
  call void @mbedtls_des_free(%struct.mbedtls_des_context* noundef %ctx) #5
  call void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef %ctx3) #5
  %55 = load i32, i32* %ret, align 4
  %cmp195 = icmp ne i32 %55, 0
  br i1 %cmp195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %exit
  store i32 1, i32* %ret, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %exit
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end197, %sw.default98, %sw.default
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

declare dso_local i32 @printf(i8* noundef, ...) #2

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
