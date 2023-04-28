; ModuleID = 'crypto/des/set_key.c'
source_filename = "crypto/des/set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

@odd_parity = internal unnamed_addr constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal constant [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\E0\E0\E0\F1\F1\F1\F1", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@des_skb = internal unnamed_addr constant [8 x [64 x i32]] [[64 x i32] [i32 0, i32 16, i32 536870912, i32 536870928, i32 65536, i32 65552, i32 536936448, i32 536936464, i32 2048, i32 2064, i32 536872960, i32 536872976, i32 67584, i32 67600, i32 536938496, i32 536938512, i32 32, i32 48, i32 536870944, i32 536870960, i32 65568, i32 65584, i32 536936480, i32 536936496, i32 2080, i32 2096, i32 536872992, i32 536873008, i32 67616, i32 67632, i32 536938528, i32 536938544, i32 524288, i32 524304, i32 537395200, i32 537395216, i32 589824, i32 589840, i32 537460736, i32 537460752, i32 526336, i32 526352, i32 537397248, i32 537397264, i32 591872, i32 591888, i32 537462784, i32 537462800, i32 524320, i32 524336, i32 537395232, i32 537395248, i32 589856, i32 589872, i32 537460768, i32 537460784, i32 526368, i32 526384, i32 537397280, i32 537397296, i32 591904, i32 591920, i32 537462816, i32 537462832], [64 x i32] [i32 0, i32 33554432, i32 8192, i32 33562624, i32 2097152, i32 35651584, i32 2105344, i32 35659776, i32 4, i32 33554436, i32 8196, i32 33562628, i32 2097156, i32 35651588, i32 2105348, i32 35659780, i32 1024, i32 33555456, i32 9216, i32 33563648, i32 2098176, i32 35652608, i32 2106368, i32 35660800, i32 1028, i32 33555460, i32 9220, i32 33563652, i32 2098180, i32 35652612, i32 2106372, i32 35660804, i32 268435456, i32 301989888, i32 268443648, i32 301998080, i32 270532608, i32 304087040, i32 270540800, i32 304095232, i32 268435460, i32 301989892, i32 268443652, i32 301998084, i32 270532612, i32 304087044, i32 270540804, i32 304095236, i32 268436480, i32 301990912, i32 268444672, i32 301999104, i32 270533632, i32 304088064, i32 270541824, i32 304096256, i32 268436484, i32 301990916, i32 268444676, i32 301999108, i32 270533636, i32 304088068, i32 270541828, i32 304096260], [64 x i32] [i32 0, i32 1, i32 262144, i32 262145, i32 16777216, i32 16777217, i32 17039360, i32 17039361, i32 2, i32 3, i32 262146, i32 262147, i32 16777218, i32 16777219, i32 17039362, i32 17039363, i32 512, i32 513, i32 262656, i32 262657, i32 16777728, i32 16777729, i32 17039872, i32 17039873, i32 514, i32 515, i32 262658, i32 262659, i32 16777730, i32 16777731, i32 17039874, i32 17039875, i32 134217728, i32 134217729, i32 134479872, i32 134479873, i32 150994944, i32 150994945, i32 151257088, i32 151257089, i32 134217730, i32 134217731, i32 134479874, i32 134479875, i32 150994946, i32 150994947, i32 151257090, i32 151257091, i32 134218240, i32 134218241, i32 134480384, i32 134480385, i32 150995456, i32 150995457, i32 151257600, i32 151257601, i32 134218242, i32 134218243, i32 134480386, i32 134480387, i32 150995458, i32 150995459, i32 151257602, i32 151257603], [64 x i32] [i32 0, i32 1048576, i32 256, i32 1048832, i32 8, i32 1048584, i32 264, i32 1048840, i32 4096, i32 1052672, i32 4352, i32 1052928, i32 4104, i32 1052680, i32 4360, i32 1052936, i32 67108864, i32 68157440, i32 67109120, i32 68157696, i32 67108872, i32 68157448, i32 67109128, i32 68157704, i32 67112960, i32 68161536, i32 67113216, i32 68161792, i32 67112968, i32 68161544, i32 67113224, i32 68161800, i32 131072, i32 1179648, i32 131328, i32 1179904, i32 131080, i32 1179656, i32 131336, i32 1179912, i32 135168, i32 1183744, i32 135424, i32 1184000, i32 135176, i32 1183752, i32 135432, i32 1184008, i32 67239936, i32 68288512, i32 67240192, i32 68288768, i32 67239944, i32 68288520, i32 67240200, i32 68288776, i32 67244032, i32 68292608, i32 67244288, i32 68292864, i32 67244040, i32 68292616, i32 67244296, i32 68292872], [64 x i32] [i32 0, i32 268435456, i32 65536, i32 268500992, i32 4, i32 268435460, i32 65540, i32 268500996, i32 536870912, i32 805306368, i32 536936448, i32 805371904, i32 536870916, i32 805306372, i32 536936452, i32 805371908, i32 1048576, i32 269484032, i32 1114112, i32 269549568, i32 1048580, i32 269484036, i32 1114116, i32 269549572, i32 537919488, i32 806354944, i32 537985024, i32 806420480, i32 537919492, i32 806354948, i32 537985028, i32 806420484, i32 4096, i32 268439552, i32 69632, i32 268505088, i32 4100, i32 268439556, i32 69636, i32 268505092, i32 536875008, i32 805310464, i32 536940544, i32 805376000, i32 536875012, i32 805310468, i32 536940548, i32 805376004, i32 1052672, i32 269488128, i32 1118208, i32 269553664, i32 1052676, i32 269488132, i32 1118212, i32 269553668, i32 537923584, i32 806359040, i32 537989120, i32 806424576, i32 537923588, i32 806359044, i32 537989124, i32 806424580], [64 x i32] [i32 0, i32 134217728, i32 8, i32 134217736, i32 1024, i32 134218752, i32 1032, i32 134218760, i32 131072, i32 134348800, i32 131080, i32 134348808, i32 132096, i32 134349824, i32 132104, i32 134349832, i32 1, i32 134217729, i32 9, i32 134217737, i32 1025, i32 134218753, i32 1033, i32 134218761, i32 131073, i32 134348801, i32 131081, i32 134348809, i32 132097, i32 134349825, i32 132105, i32 134349833, i32 33554432, i32 167772160, i32 33554440, i32 167772168, i32 33555456, i32 167773184, i32 33555464, i32 167773192, i32 33685504, i32 167903232, i32 33685512, i32 167903240, i32 33686528, i32 167904256, i32 33686536, i32 167904264, i32 33554433, i32 167772161, i32 33554441, i32 167772169, i32 33555457, i32 167773185, i32 33555465, i32 167773193, i32 33685505, i32 167903233, i32 33685513, i32 167903241, i32 33686529, i32 167904257, i32 33686537, i32 167904265], [64 x i32] [i32 0, i32 256, i32 524288, i32 524544, i32 16777216, i32 16777472, i32 17301504, i32 17301760, i32 16, i32 272, i32 524304, i32 524560, i32 16777232, i32 16777488, i32 17301520, i32 17301776, i32 2097152, i32 2097408, i32 2621440, i32 2621696, i32 18874368, i32 18874624, i32 19398656, i32 19398912, i32 2097168, i32 2097424, i32 2621456, i32 2621712, i32 18874384, i32 18874640, i32 19398672, i32 19398928, i32 512, i32 768, i32 524800, i32 525056, i32 16777728, i32 16777984, i32 17302016, i32 17302272, i32 528, i32 784, i32 524816, i32 525072, i32 16777744, i32 16778000, i32 17302032, i32 17302288, i32 2097664, i32 2097920, i32 2621952, i32 2622208, i32 18874880, i32 18875136, i32 19399168, i32 19399424, i32 2097680, i32 2097936, i32 2621968, i32 2622224, i32 18874896, i32 18875152, i32 19399184, i32 19399440], [64 x i32] [i32 0, i32 67108864, i32 262144, i32 67371008, i32 2, i32 67108866, i32 262146, i32 67371010, i32 8192, i32 67117056, i32 270336, i32 67379200, i32 8194, i32 67117058, i32 270338, i32 67379202, i32 32, i32 67108896, i32 262176, i32 67371040, i32 34, i32 67108898, i32 262178, i32 67371042, i32 8224, i32 67117088, i32 270368, i32 67379232, i32 8226, i32 67117090, i32 270370, i32 67379234, i32 2048, i32 67110912, i32 264192, i32 67373056, i32 2050, i32 67110914, i32 264194, i32 67373058, i32 10240, i32 67119104, i32 272384, i32 67381248, i32 10242, i32 67119106, i32 272386, i32 67381250, i32 2080, i32 67110944, i32 264224, i32 67373088, i32 2082, i32 67110946, i32 264226, i32 67373090, i32 10272, i32 67119136, i32 272416, i32 67381280, i32 10274, i32 67119138, i32 272418, i32 67381282]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @DES_set_odd_parity([8 x i8]* nocapture noundef %key) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %idxprom2 = zext i8 %0 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !4
  store i8 %1, i8* %arrayidx, align 1, !tbaa !4
  %arrayidx.1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %idxprom2.1 = zext i8 %2 to i64
  %arrayidx3.1 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.1
  %3 = load i8, i8* %arrayidx3.1, align 1, !tbaa !4
  store i8 %3, i8* %arrayidx.1, align 1, !tbaa !4
  %arrayidx.2 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %idxprom2.2 = zext i8 %4 to i64
  %arrayidx3.2 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.2
  %5 = load i8, i8* %arrayidx3.2, align 1, !tbaa !4
  store i8 %5, i8* %arrayidx.2, align 1, !tbaa !4
  %arrayidx.3 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %idxprom2.3 = zext i8 %6 to i64
  %arrayidx3.3 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.3
  %7 = load i8, i8* %arrayidx3.3, align 1, !tbaa !4
  store i8 %7, i8* %arrayidx.3, align 1, !tbaa !4
  %arrayidx.4 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !4
  %idxprom2.4 = zext i8 %8 to i64
  %arrayidx3.4 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.4
  %9 = load i8, i8* %arrayidx3.4, align 1, !tbaa !4
  store i8 %9, i8* %arrayidx.4, align 1, !tbaa !4
  %arrayidx.5 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !4
  %idxprom2.5 = zext i8 %10 to i64
  %arrayidx3.5 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.5
  %11 = load i8, i8* %arrayidx3.5, align 1, !tbaa !4
  store i8 %11, i8* %arrayidx.5, align 1, !tbaa !4
  %arrayidx.6 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !4
  %idxprom2.6 = zext i8 %12 to i64
  %arrayidx3.6 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.6
  %13 = load i8, i8* %arrayidx3.6, align 1, !tbaa !4
  store i8 %13, i8* %arrayidx.6, align 1, !tbaa !4
  %arrayidx.7 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !4
  %idxprom2.7 = zext i8 %14 to i64
  %arrayidx3.7 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2.7
  %15 = load i8, i8* %arrayidx3.7, align 1, !tbaa !4
  store i8 %15, i8* %arrayidx.7, align 1, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @DES_check_key_parity([8 x i8]* nocapture noundef readonly %key) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %idxprom5 = zext i8 %0 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5
  %1 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %cmp8.not = icmp eq i8 %0, %1
  br i1 %cmp8.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !4
  %idxprom5.1 = zext i8 %2 to i64
  %arrayidx6.1 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.1
  %3 = load i8, i8* %arrayidx6.1, align 1, !tbaa !4
  %cmp8.not.1 = icmp eq i8 %2, %3
  br i1 %cmp8.not.1, label %for.cond.1, label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !4
  %idxprom5.2 = zext i8 %4 to i64
  %arrayidx6.2 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.2
  %5 = load i8, i8* %arrayidx6.2, align 1, !tbaa !4
  %cmp8.not.2 = icmp eq i8 %4, %5
  br i1 %cmp8.not.2, label %for.cond.2, label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !4
  %idxprom5.3 = zext i8 %6 to i64
  %arrayidx6.3 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.3
  %7 = load i8, i8* %arrayidx6.3, align 1, !tbaa !4
  %cmp8.not.3 = icmp eq i8 %6, %7
  br i1 %cmp8.not.3, label %for.cond.3, label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !4
  %idxprom5.4 = zext i8 %8 to i64
  %arrayidx6.4 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.4
  %9 = load i8, i8* %arrayidx6.4, align 1, !tbaa !4
  %cmp8.not.4 = icmp eq i8 %8, %9
  br i1 %cmp8.not.4, label %for.cond.4, label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !4
  %idxprom5.5 = zext i8 %10 to i64
  %arrayidx6.5 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.5
  %11 = load i8, i8* %arrayidx6.5, align 1, !tbaa !4
  %cmp8.not.5 = icmp eq i8 %10, %11
  br i1 %cmp8.not.5, label %for.cond.5, label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !4
  %idxprom5.6 = zext i8 %12 to i64
  %arrayidx6.6 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.6
  %13 = load i8, i8* %arrayidx6.6, align 1, !tbaa !4
  %cmp8.not.6 = icmp eq i8 %12, %13
  br i1 %cmp8.not.6, label %for.cond.6, label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !4
  %idxprom5.7 = zext i8 %14 to i64
  %arrayidx6.7 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.7
  %15 = load i8, i8* %arrayidx6.7, align 1, !tbaa !4
  %cmp8.not.7 = icmp eq i8 %14, %15
  %spec.select = zext i1 %cmp8.not.7 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 0, %for.cond.1 ], [ 0, %for.cond.2 ], [ 0, %for.cond.3 ], [ 0, %for.cond.4 ], [ 0, %for.cond.5 ], [ %spec.select, %for.cond.6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @DES_is_weak_key([8 x i8]* noundef readonly %key) local_unnamed_addr #2 {
entry:
  %0 = getelementptr [8 x i8], [8 x i8]* %key, i64 0, i64 0
  %call = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 0, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 1, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 2, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %cleanup, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 3, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %cleanup, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 4, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.4 = icmp eq i32 %call.4, 0
  br i1 %cmp1.4, label %cleanup, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 5, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.5 = icmp eq i32 %call.5, 0
  br i1 %cmp1.5, label %cleanup, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 6, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.6 = icmp eq i32 %call.6, 0
  br i1 %cmp1.6, label %cleanup, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 7, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.7 = icmp eq i32 %call.7, 0
  br i1 %cmp1.7, label %cleanup, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 8, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.8 = icmp eq i32 %call.8, 0
  br i1 %cmp1.8, label %cleanup, label %for.cond.8

for.cond.8:                                       ; preds = %for.cond.7
  %call.9 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 9, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.9 = icmp eq i32 %call.9, 0
  br i1 %cmp1.9, label %cleanup, label %for.cond.9

for.cond.9:                                       ; preds = %for.cond.8
  %call.10 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 10, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.10 = icmp eq i32 %call.10, 0
  br i1 %cmp1.10, label %cleanup, label %for.cond.10

for.cond.10:                                      ; preds = %for.cond.9
  %call.11 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 11, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.11 = icmp eq i32 %call.11, 0
  br i1 %cmp1.11, label %cleanup, label %for.cond.11

for.cond.11:                                      ; preds = %for.cond.10
  %call.12 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 12, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.12 = icmp eq i32 %call.12, 0
  br i1 %cmp1.12, label %cleanup, label %for.cond.12

for.cond.12:                                      ; preds = %for.cond.11
  %call.13 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 13, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.13 = icmp eq i32 %call.13, 0
  br i1 %cmp1.13, label %cleanup, label %for.cond.13

for.cond.13:                                      ; preds = %for.cond.12
  %call.14 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 14, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.14 = icmp eq i32 %call.14, 0
  br i1 %cmp1.14, label %cleanup, label %for.cond.14

for.cond.14:                                      ; preds = %for.cond.13
  %call.15 = tail call i32 @memcmp(i8* noundef nonnull getelementptr inbounds ([16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 15, i64 0), i8* noundef %0, i64 noundef 8) #5
  %cmp1.15 = icmp eq i32 %call.15, 0
  %spec.select = zext i1 %cmp1.15 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.14, %for.cond.13, %for.cond.12, %for.cond.11, %for.cond.10, %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 1, %for.cond.1 ], [ 1, %for.cond.2 ], [ 1, %for.cond.3 ], [ 1, %for.cond.4 ], [ 1, %for.cond.5 ], [ 1, %for.cond.6 ], [ 1, %for.cond.7 ], [ 1, %for.cond.8 ], [ 1, %for.cond.9 ], [ 1, %for.cond.10 ], [ 1, %for.cond.11 ], [ 1, %for.cond.12 ], [ 1, %for.cond.13 ], [ %spec.select, %for.cond.14 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @DES_set_key([8 x i8]* noundef %key, %struct.DES_ks* nocapture noundef writeonly %schedule) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @DES_set_key_checked([8 x i8]* noundef %key, %struct.DES_ks* noundef %schedule) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @DES_set_key_checked([8 x i8]* noundef readonly %key, %struct.DES_ks* nocapture noundef writeonly %schedule) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @DES_check_key_parity([8 x i8]* noundef %key) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @DES_is_weak_key([8 x i8]* noundef %key) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  tail call void @DES_set_key_unchecked([8 x i8]* noundef %key, %struct.DES_ks* noundef %schedule) #6
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry ], [ -2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @DES_set_key_unchecked([8 x i8]* nocapture noundef readonly %key, %struct.DES_ks* nocapture noundef writeonly %schedule) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds %struct.DES_ks, %struct.DES_ks* %schedule, i64 0, i32 0, i64 0, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 1
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !4
  %conv = zext i8 %0 to i32
  %incdec.ptr2 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 2
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv3 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv
  %incdec.ptr4 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 3
  %2 = load i8, i8* %incdec.ptr2, align 1, !tbaa !4
  %conv5 = zext i8 %2 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 4
  %3 = load i8, i8* %incdec.ptr4, align 1, !tbaa !4
  %conv9 = zext i8 %3 to i32
  %shl10 = shl nuw i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  %incdec.ptr12 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 5
  %4 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %conv13 = zext i8 %4 to i32
  %incdec.ptr14 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 6
  %5 = load i8, i8* %incdec.ptr12, align 1, !tbaa !4
  %conv15 = zext i8 %5 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %incdec.ptr18 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 7
  %6 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv19 = zext i8 %6 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %7 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %7 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %shr = lshr i32 %or25, 4
  %xor = xor i32 %shr, %or11
  %8 = and i32 %xor, 252645135
  %xor28 = xor i32 %8, %or11
  %shl29 = shl nuw i32 %8, 4
  %xor30 = xor i32 %shl29, %or25
  %shl31 = shl i32 %xor28, 18
  %xor32 = xor i32 %shl31, %xor28
  %9 = and i32 %xor32, -859045888
  %xor36 = xor i32 %9, %xor28
  %shr37 = lshr exact i32 %9, 18
  %xor38 = xor i32 %xor36, %shr37
  %shl39 = shl i32 %xor30, 18
  %xor40 = xor i32 %shl39, %xor30
  %10 = and i32 %xor40, -859045888
  %xor44 = xor i32 %10, %xor30
  %shr45 = lshr exact i32 %10, 18
  %xor46 = xor i32 %xor44, %shr45
  %shr47 = lshr i32 %xor46, 1
  %xor48 = xor i32 %shr47, %xor38
  %11 = and i32 %xor48, 1431655765
  %xor52 = xor i32 %11, %xor38
  %shl53 = shl nuw i32 %11, 1
  %xor54 = xor i32 %shl53, %xor46
  %shr55 = lshr i32 %xor52, 8
  %xor56 = xor i32 %shr55, %xor54
  %12 = and i32 %xor56, 16711935
  %xor60 = xor i32 %12, %xor54
  %shl61 = shl nuw i32 %12, 8
  %xor62 = xor i32 %shl61, %xor52
  %shr63 = lshr i32 %xor60, 1
  %xor64 = xor i32 %shr63, %xor62
  %13 = and i32 %xor64, 1431655765
  %xor68 = xor i32 %13, %xor62
  %shl69 = shl nuw i32 %13, 1
  %xor70 = xor i32 %shl69, %xor60
  %and72 = shl i32 %xor70, 16
  %shl73 = and i32 %and72, 16711680
  %and75 = and i32 %xor70, 65280
  %and78 = lshr i32 %xor70, 16
  %14 = and i32 %and78, 255
  %and82 = lshr i32 %xor68, 4
  %15 = and i32 %and82, 251658240
  %or76 = or i32 %15, %and75
  %or80 = or i32 %or76, %shl73
  %or84 = or i32 %or80, %14
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %c.0.in282 = phi i32 [ %xor68, %entry ], [ %or99, %for.body ]
  %d.0281 = phi i32 [ %or84, %entry ], [ %18, %for.body ]
  %k.0280 = phi i32* [ %arrayidx, %entry ], [ %incdec.ptr185, %for.body ]
  %c.0283 = and i32 %c.0.in282, 268435455
  %16 = lshr i64 33027, %indvars.iv
  %17 = and i64 %16, 1
  %tobool.not.not = icmp eq i64 %17, 0
  %. = select i1 %tobool.not.not, i32 2, i32 1
  %.288 = select i1 %tobool.not.not, i32 26, i32 27
  %shr97 = lshr i32 %c.0283, %.
  %shl98 = shl i32 %c.0.in282, %.288
  %or99 = or i32 %shr97, %shl98
  %shr100 = lshr i32 %d.0281, %.
  %shl101 = shl i32 %d.0281, %.288
  %or102 = or i32 %shr100, %shl101
  %18 = and i32 %or102, 268435455
  %and109 = and i32 %shr97, 63
  %idxprom110 = zext i32 %and109 to i64
  %arrayidx111 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 0, i64 %idxprom110
  %19 = load i32, i32* %arrayidx111, align 4, !tbaa !7
  %shr112 = lshr i32 %shr97, 6
  %and113 = and i32 %shr112, 3
  %shr114 = lshr i32 %shr97, 7
  %and115 = and i32 %shr114, 60
  %or116 = or i32 %and113, %and115
  %idxprom117 = zext i32 %or116 to i64
  %arrayidx118 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 1, i64 %idxprom117
  %20 = load i32, i32* %arrayidx118, align 4, !tbaa !7
  %or119 = or i32 %20, %19
  %shr120 = lshr i32 %shr97, 13
  %and121 = and i32 %shr120, 15
  %shr122 = lshr i32 %shr97, 14
  %and123 = and i32 %shr122, 48
  %or124 = or i32 %and121, %and123
  %idxprom125 = zext i32 %or124 to i64
  %arrayidx126 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 2, i64 %idxprom125
  %21 = load i32, i32* %arrayidx126, align 4, !tbaa !7
  %or127 = or i32 %or119, %21
  %shr128 = lshr i32 %shr97, 20
  %and129 = and i32 %shr128, 1
  %shr130 = lshr i32 %shr97, 21
  %and131 = and i32 %shr130, 6
  %or132 = or i32 %and129, %and131
  %shr133 = lshr i32 %or99, 22
  %and134 = and i32 %shr133, 56
  %or135 = or i32 %or132, %and134
  %idxprom136 = zext i32 %or135 to i64
  %arrayidx137 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 3, i64 %idxprom136
  %22 = load i32, i32* %arrayidx137, align 4, !tbaa !7
  %or138 = or i32 %or127, %22
  %and139 = and i32 %shr100, 63
  %idxprom140 = zext i32 %and139 to i64
  %arrayidx141 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 4, i64 %idxprom140
  %23 = load i32, i32* %arrayidx141, align 4, !tbaa !7
  %shr142 = lshr i32 %shr100, 7
  %and143 = and i32 %shr142, 3
  %shr144 = lshr i32 %shr100, 8
  %and145 = and i32 %shr144, 60
  %or146 = or i32 %and143, %and145
  %idxprom147 = zext i32 %or146 to i64
  %arrayidx148 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 5, i64 %idxprom147
  %24 = load i32, i32* %arrayidx148, align 4, !tbaa !7
  %or149 = or i32 %24, %23
  %shr150 = lshr i32 %shr100, 15
  %and151 = and i32 %shr150, 63
  %idxprom152 = zext i32 %and151 to i64
  %arrayidx153 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 6, i64 %idxprom152
  %25 = load i32, i32* %arrayidx153, align 4, !tbaa !7
  %or154 = or i32 %or149, %25
  %shr155 = lshr i32 %shr100, 21
  %and156 = and i32 %shr155, 15
  %shr157 = lshr i32 %or102, 22
  %and158 = and i32 %shr157, 48
  %or159 = or i32 %and156, %and158
  %idxprom160 = zext i32 %or159 to i64
  %arrayidx161 = getelementptr inbounds [8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 7, i64 %idxprom160
  %26 = load i32, i32* %arrayidx161, align 4, !tbaa !7
  %or162 = or i32 %or154, %26
  %shl163 = shl i32 %or162, 16
  %27 = and i32 %or138, 65535
  %or167276 = or i32 %shl163, %27
  %28 = tail call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 30, i32 %or167276) #7, !srcloc !9
  %incdec.ptr173 = getelementptr inbounds i32, i32* %k.0280, i64 1
  store i32 %28, i32* %k.0280, align 4, !tbaa !7
  %shr174 = lshr i32 %or138, 16
  %29 = and i32 %or162, -65536
  %or178277 = or i32 %29, %shr174
  %30 = tail call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 %or178277) #7, !srcloc !10
  %incdec.ptr185 = getelementptr inbounds i32, i32* %k.0280, i64 2
  store i32 %30, i32* %incdec.ptr173, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @DES_key_sched([8 x i8]* noundef %key, %struct.DES_ks* nocapture noundef writeonly %schedule) local_unnamed_addr #4 {
entry:
  %call = tail call i32 @DES_set_key([8 x i8]* noundef %key, %struct.DES_ks* noundef %schedule) #6
  ret i32 %call
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{i64 2148177412}
!10 = !{i64 2148177769}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
