; ModuleID = 'crypto/sm4/sm4.c'
source_filename = "crypto/sm4/sm4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SM4_KEY_st = type { [32 x i32] }

@ossl_sm4_set_key.CK = internal unnamed_addr constant [32 x i32] [i32 462357, i32 472066609, i32 943670861, i32 1415275113, i32 1886879365, i32 -1936483679, i32 -1464879427, i32 -993275175, i32 -521670923, i32 -66909679, i32 404694573, i32 876298825, i32 1347903077, i32 1819507329, i32 -2003855715, i32 -1532251463, i32 -1060647211, i32 -589042959, i32 -117504499, i32 337322537, i32 808926789, i32 1280531041, i32 1752135293, i32 -2071227751, i32 -1599623499, i32 -1128019247, i32 -656414995, i32 -184876535, i32 269950501, i32 741554753, i32 1213159005, i32 1684763257], align 16
@SM4_S = internal unnamed_addr constant [256 x i8] c"\D6\90\E9\FE\CC\E1=\B7\16\B6\14\C2(\FB,\05+g\9Av*\BE\04\C3\AAD\13&I\86\06\99\9CBP\F4\91\EF\98z3T\0BC\ED\CF\ACb\E4\B3\1C\A9\C9\08\E8\95\80\DF\94\FAu\8F?\A6G\07\A7\FC\F3s\17\BA\83Y<\19\E6\85O\A8hk\81\B2qd\DA\8B\F8\EB\0FKpV\9D5\1E$\0E^cX\D1\A2%\22|;\01!x\87\D4\00FW\9F\D3'RL6\02\E7\A0\C4\C8\9E\EA\BF\8A\D2@\C78\B5\A3\F7\F2\CE\F9a\15\A1\E0\AE]\A4\9B4\1AU\AD\9320\F5\8C\B1\E3\1D\F6\E2.\82f\CA`\C0)#\AB\0DSNo\D5\DB7E\DE\FD\8E/\03\FFjrml[Q\8D\1B\AF\92\BB\DD\BC\7F\11\D9\\A\1F\10Z\D8\0A\C11\88\A5\CD{\BD-t\D0\12\B8\E5\B4\B0\89i\97J\0C\96w~e\B9\F1\09\C5n\C6\84\18\F0}\EC:\DCM y\EE_>\D7\CB9H", align 16
@SM4_SBOX_T = internal unnamed_addr constant [256 x i32] [i32 -1898620069, i32 -795721150, i32 1307223975, i32 117308411, i32 -53529805, i32 1709344647, i32 -918686476, i32 1807081182, i32 1310087256, i32 1857346266, i32 1142181968, i32 -893318389, i32 -2010603360, i32 402190319, i32 -1674792784, i32 285545492, i32 -2027180884, i32 -77161059, i32 -224892310, i32 -1367877159, i32 -2111133528, i32 1186790138, i32 335810576, i32 -809496817, i32 44608170, i32 1413812497, i32 1595100236, i32 -1104766824, i32 1833444645, i32 -1635509734, i32 503715864, i32 -40147354, i32 -325160334, i32 1245907209, i32 273760577, i32 620221395, i32 -711768506, i32 1408024511, i32 -124099998, i32 -1837372951, i32 -13382452, i32 72700241, i32 655043628, i32 1329728781, i32 1508816823, i32 -204718273, i32 481211058, i32 -362575479, i32 1961333651, i32 2142359246, i32 1813803120, i32 229353126, i32 -305518809, i32 671621152, i32 1223402403, i32 -1047046570, i32 -2138963454, i32 -1545830529, i32 -996781486, i32 318368747, i32 -1586178603, i32 -1282589122, i32 -1019216644, i32 1050974874, i32 1531321629, i32 453450780, i32 1000709790, i32 218100723, i32 1072746447, i32 -1082995251, i32 1259822172, i32 1387850474, i32 -1887367666, i32 1029203301, i32 -868421392, i32 2098816100, i32 2128976795, i32 -1853417962, i32 1934507325, i32 145400482, i32 -932601439, i32 -949310035, i32 -2055010810, i32 2058406602, i32 -1250900539, i32 -194670191, i32 -1294374037, i32 -1484181970, i32 419161059, i32 1206431663, i32 856636476, i32 1732914477, i32 -1334722111, i32 240605529, i32 -375425418, i32 -516565804, i32 1713272952, i32 -1272672112, i32 906901560, i32 643791225, i32 -278753907, i32 945381729, i32 -1781381305, i32 715164298, i32 -1322937196, i32 -1440577400, i32 -1937903119, i32 -683938580, i32 83952644, i32 -1524530044, i32 -1736842783, i32 -1685774818, i32 -2066263213, i32 0, i32 1581717785, i32 190209373, i32 -476217730, i32 -1613738161, i32 -1155031908, i32 441665865, i32 2085433649, i32 -298395432, i32 167905288, i32 2078580639, i32 547521154, i32 -725150957, i32 -389340381, i32 -425952646, i32 1122610091, i32 1136525054, i32 -1568134614, i32 -1697559733, i32 1078001921, i32 -607903969, i32 -667361056, i32 1639438038, i32 799116942, i32 737468383, i32 988924875, i32 -154322117, i32 502982631, i32 -446659195, i32 1091916884, i32 631473798, i32 1625523075, i32 380418746, i32 693925237, i32 883331730, i32 -140939666, i32 -466300720, i32 1914333288, i32 22304085, i32 430945974, i32 -544125362, i32 -97335096, i32 -265240384, i32 569825239, i32 -1131531726, i32 1974716102, i32 1876987791, i32 1763538036, i32 787864539, i32 1793166219, i32 -1775322952, i32 -1971320310, i32 -26764903, i32 -490132693, i32 -530480767, i32 -1060961533, i32 -1926650716, i32 -1356624756, i32 128560814, i32 957166644, i32 525487437, i32 1984903481, i32 -747717187, i32 -2116659369, i32 -1210552465, i32 -348660516, i32 1363416341, i32 -1495434373, i32 167704567, i32 -1232324038, i32 -1825588036, i32 251857932, i32 66912255, i32 -1033131607, i32 -1166816823, i32 -647187019, i32 -596790863, i32 928673133, i32 357582149, i32 -1181796810, i32 1998285932, i32 330153662, i32 -628078006, i32 1471803118, i32 -1445038217, i32 1287582450, i32 -2088829443, i32 1427194948, i32 -1109760153, i32 744321393, i32 1161823493, i32 1663007868, i32 1343242304, i32 844851561, i32 -1193581725, i32 571090984, i32 -977139961, i32 -181287740, i32 -1467342302, i32 833066646, i32 -103925961, i32 -1753551379, i32 1237317366, i32 -1725057868, i32 -1535782447, i32 -1865202877, i32 1511147592, i32 1488642786, i32 1910937495, i32 1689703122, i32 1890763458, i32 -1383389658, i32 -848779867, i32 -879403426, i32 1649092905, i32 1007431728, i32 -829138342, i32 -1418273315, i32 -2038433287, i32 -245066347, i32 1572595430, i32 905103303, i32 755573796, i32 -775547113, i32 -697321031, i32 -557507813, i32 -1803152878, i32 2014863456, i32 821281731, i32 -1988299275, i32 1559212979, i32 -767891224, i32 -1394642061, i32 2035037493, i32 -1608482688, i32 -1653021211, i32 1458420667, i32 593395069, i32 -968951560, i32 -1949016225, i32 -406311121, i32 -583408412, i32 1749623073], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define i32 @ossl_sm4_set_key(i8* nocapture noundef readonly %key, %struct.SM4_KEY_st* nocapture noundef writeonly %ks) local_unnamed_addr #0 {
entry:
  %K = alloca [4 x i32], align 16
  %0 = bitcast [4 x i32]* %K to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %call = tail call fastcc i32 @load_u32_be(i8* noundef %key, i32 noundef 0) #7
  %xor = xor i32 %call, -1548633402
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 0
  store i32 %xor, i32* %arrayidx, align 16, !tbaa !4
  %call1 = tail call fastcc i32 @load_u32_be(i8* noundef %key, i32 noundef 1) #7
  %xor2 = xor i32 %call1, 1453994832
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 1
  store i32 %xor2, i32* %arrayidx3, align 4, !tbaa !4
  %call4 = tail call fastcc i32 @load_u32_be(i8* noundef %key, i32 noundef 2) #7
  %xor5 = xor i32 %call4, 1736282519
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 2
  store i32 %xor5, i32* %arrayidx6, align 8, !tbaa !4
  %call7 = tail call fastcc i32 @load_u32_be(i8* noundef %key, i32 noundef 3) #7
  %xor8 = xor i32 %call7, -1301273892
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 3
  store i32 %xor8, i32* %arrayidx9, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %rem = and i64 %indvars.iv.next, 3
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 %rem
  %1 = load i32, i32* %arrayidx10, align 4, !tbaa !4
  %2 = add nuw i64 %indvars.iv, 2
  %rem12 = and i64 %2, 3
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 %rem12
  %3 = load i32, i32* %arrayidx14, align 4, !tbaa !4
  %xor15 = xor i32 %3, %1
  %4 = add nuw i64 %indvars.iv, 3
  %rem17 = and i64 %4, 3
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 %rem17
  %5 = load i32, i32* %arrayidx19, align 4, !tbaa !4
  %xor20 = xor i32 %xor15, %5
  %arrayidx22 = getelementptr inbounds [32 x i32], [32 x i32]* @ossl_sm4_set_key.CK, i64 0, i64 %indvars.iv
  %6 = load i32, i32* %arrayidx22, align 4, !tbaa !4
  %xor23 = xor i32 %xor20, %6
  %shr = lshr i32 %xor23, 24
  %conv = zext i32 %shr to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %conv
  %7 = load i8, i8* %arrayidx25, align 1, !tbaa !8
  %conv26 = zext i8 %7 to i32
  %shl = shl nuw i32 %conv26, 24
  %shr27 = lshr i32 %xor23, 16
  %8 = and i32 %shr27, 255
  %idxprom29 = zext i32 %8 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom29
  %9 = load i8, i8* %arrayidx30, align 1, !tbaa !8
  %conv31 = zext i8 %9 to i32
  %shl32 = shl nuw nsw i32 %conv31, 16
  %or33 = or i32 %shl32, %shl
  %shr34 = lshr i32 %xor23, 8
  %10 = and i32 %shr34, 255
  %idxprom36 = zext i32 %10 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom36
  %11 = load i8, i8* %arrayidx37, align 1, !tbaa !8
  %conv38 = zext i8 %11 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %or33, %shl39
  %12 = and i32 %xor23, 255
  %idxprom42 = zext i32 %12 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom42
  %13 = load i8, i8* %arrayidx43, align 1, !tbaa !8
  %conv44 = zext i8 %13 to i32
  %or45 = or i32 %or40, %conv44
  %call46 = tail call fastcc i32 @rotl(i32 noundef %or45, i8 noundef zeroext 13) #7
  %call48 = tail call fastcc i32 @rotl(i32 noundef %or45, i8 noundef zeroext 23) #7
  %rem50 = and i64 %indvars.iv, 3
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %K, i64 0, i64 %rem50
  %14 = load i32, i32* %arrayidx52, align 4, !tbaa !4
  %xor47 = xor i32 %call48, %call46
  %xor49 = xor i32 %xor47, %or45
  %xor53 = xor i32 %xor49, %14
  store i32 %xor53, i32* %arrayidx52, align 4, !tbaa !4
  %arrayidx58 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 %indvars.iv
  store i32 %xor53, i32* %arrayidx58, align 4, !tbaa !4
  %cmp.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @load_u32_be(i8* nocapture noundef readonly %b, i32 noundef %n) unnamed_addr #2 {
entry:
  %mul = shl i32 %n, 2
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, i8* %b, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %add = or i32 %mul, 1
  %idxprom2 = zext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %b, i64 %idxprom2
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !8
  %conv4 = zext i8 %1 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %add7 = or i32 %mul, 2
  %idxprom8 = zext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %b, i64 %idxprom8
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !8
  %conv10 = zext i8 %2 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or12 = or i32 %or, %shl11
  %add14 = or i32 %mul, 3
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %b, i64 %idxprom15
  %3 = load i8, i8* %arrayidx16, align 1, !tbaa !8
  %conv17 = zext i8 %3 to i32
  %or18 = or i32 %or12, %conv17
  ret i32 %or18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @rotl(i32 noundef %a, i8 noundef zeroext %n) unnamed_addr #3 {
entry:
  %conv = zext i8 %n to i32
  %shl = shl i32 %a, %conv
  %sub = sub nsw i32 32, %conv
  %shr = lshr i32 %a, %sub
  %or = or i32 %shr, %shl
  ret i32 %or
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_sm4_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, %struct.SM4_KEY_st* noundef readonly %ks) local_unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 1) #7
  %call2 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 2) #7
  %call3 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 3) #7
  %arrayidx = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %xor = xor i32 %call3, %call2
  %xor4 = xor i32 %xor, %call1
  %xor5 = xor i32 %xor4, %0
  %call6 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor5) #7
  %xor7 = xor i32 %call6, %call
  %arrayidx11 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 1
  %1 = load i32, i32* %arrayidx11, align 4, !tbaa !4
  %xor9 = xor i32 %xor, %xor7
  %xor12 = xor i32 %xor9, %1
  %call13 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor12) #7
  %xor14 = xor i32 %call13, %call1
  %xor15 = xor i32 %xor14, %xor7
  %arrayidx18 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 2
  %2 = load i32, i32* %arrayidx18, align 4, !tbaa !4
  %xor16 = xor i32 %2, %call3
  %xor19 = xor i32 %xor16, %xor15
  %call20 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor19) #7
  %xor21 = xor i32 %call20, %call2
  %xor23 = xor i32 %xor21, %xor15
  %arrayidx25 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 3
  %3 = load i32, i32* %arrayidx25, align 4, !tbaa !4
  %xor26 = xor i32 %xor23, %3
  %call27 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor26) #7
  %xor28 = xor i32 %call27, %call3
  %arrayidx33 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 4
  %4 = load i32, i32* %arrayidx33, align 4, !tbaa !4
  %xor30 = xor i32 %xor28, %xor21
  %xor31 = xor i32 %xor30, %xor14
  %xor34 = xor i32 %xor31, %4
  %call35 = tail call fastcc i32 @SM4_T(i32 noundef %xor34) #7
  %xor36 = xor i32 %call35, %xor7
  %arrayidx40 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 5
  %5 = load i32, i32* %arrayidx40, align 4, !tbaa !4
  %xor38 = xor i32 %xor30, %xor36
  %xor41 = xor i32 %xor38, %5
  %call42 = tail call fastcc i32 @SM4_T(i32 noundef %xor41) #7
  %xor43 = xor i32 %call42, %xor14
  %xor44 = xor i32 %xor43, %xor36
  %arrayidx47 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 6
  %6 = load i32, i32* %arrayidx47, align 4, !tbaa !4
  %xor45 = xor i32 %6, %xor28
  %xor48 = xor i32 %xor45, %xor44
  %call49 = tail call fastcc i32 @SM4_T(i32 noundef %xor48) #7
  %xor50 = xor i32 %call49, %xor21
  %xor52 = xor i32 %xor50, %xor44
  %arrayidx54 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 7
  %7 = load i32, i32* %arrayidx54, align 4, !tbaa !4
  %xor55 = xor i32 %xor52, %7
  %call56 = tail call fastcc i32 @SM4_T(i32 noundef %xor55) #7
  %xor57 = xor i32 %call56, %xor28
  %arrayidx64 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 8
  %8 = load i32, i32* %arrayidx64, align 4, !tbaa !4
  %xor61 = xor i32 %xor57, %xor50
  %xor62 = xor i32 %xor61, %xor43
  %xor65 = xor i32 %xor62, %8
  %call66 = tail call fastcc i32 @SM4_T(i32 noundef %xor65) #7
  %xor67 = xor i32 %call66, %xor36
  %arrayidx71 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 9
  %9 = load i32, i32* %arrayidx71, align 4, !tbaa !4
  %xor69 = xor i32 %xor61, %xor67
  %xor72 = xor i32 %xor69, %9
  %call73 = tail call fastcc i32 @SM4_T(i32 noundef %xor72) #7
  %xor74 = xor i32 %call73, %xor43
  %xor75 = xor i32 %xor74, %xor67
  %arrayidx78 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 10
  %10 = load i32, i32* %arrayidx78, align 4, !tbaa !4
  %xor76 = xor i32 %10, %xor57
  %xor79 = xor i32 %xor76, %xor75
  %call80 = tail call fastcc i32 @SM4_T(i32 noundef %xor79) #7
  %xor81 = xor i32 %call80, %xor50
  %xor83 = xor i32 %xor81, %xor75
  %arrayidx85 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 11
  %11 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %xor86 = xor i32 %xor83, %11
  %call87 = tail call fastcc i32 @SM4_T(i32 noundef %xor86) #7
  %xor88 = xor i32 %call87, %xor57
  %arrayidx95 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 12
  %12 = load i32, i32* %arrayidx95, align 4, !tbaa !4
  %xor92 = xor i32 %xor88, %xor81
  %xor93 = xor i32 %xor92, %xor74
  %xor96 = xor i32 %xor93, %12
  %call97 = tail call fastcc i32 @SM4_T(i32 noundef %xor96) #7
  %xor98 = xor i32 %call97, %xor67
  %arrayidx102 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 13
  %13 = load i32, i32* %arrayidx102, align 4, !tbaa !4
  %xor100 = xor i32 %xor92, %xor98
  %xor103 = xor i32 %xor100, %13
  %call104 = tail call fastcc i32 @SM4_T(i32 noundef %xor103) #7
  %xor105 = xor i32 %call104, %xor74
  %xor106 = xor i32 %xor105, %xor98
  %arrayidx109 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 14
  %14 = load i32, i32* %arrayidx109, align 4, !tbaa !4
  %xor107 = xor i32 %14, %xor88
  %xor110 = xor i32 %xor107, %xor106
  %call111 = tail call fastcc i32 @SM4_T(i32 noundef %xor110) #7
  %xor112 = xor i32 %call111, %xor81
  %xor114 = xor i32 %xor112, %xor106
  %arrayidx116 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 15
  %15 = load i32, i32* %arrayidx116, align 4, !tbaa !4
  %xor117 = xor i32 %xor114, %15
  %call118 = tail call fastcc i32 @SM4_T(i32 noundef %xor117) #7
  %xor119 = xor i32 %call118, %xor88
  %arrayidx126 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 16
  %16 = load i32, i32* %arrayidx126, align 4, !tbaa !4
  %xor123 = xor i32 %xor119, %xor112
  %xor124 = xor i32 %xor123, %xor105
  %xor127 = xor i32 %xor124, %16
  %call128 = tail call fastcc i32 @SM4_T(i32 noundef %xor127) #7
  %xor129 = xor i32 %call128, %xor98
  %arrayidx133 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 17
  %17 = load i32, i32* %arrayidx133, align 4, !tbaa !4
  %xor131 = xor i32 %xor123, %xor129
  %xor134 = xor i32 %xor131, %17
  %call135 = tail call fastcc i32 @SM4_T(i32 noundef %xor134) #7
  %xor136 = xor i32 %call135, %xor105
  %xor137 = xor i32 %xor136, %xor129
  %arrayidx140 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 18
  %18 = load i32, i32* %arrayidx140, align 4, !tbaa !4
  %xor138 = xor i32 %18, %xor119
  %xor141 = xor i32 %xor138, %xor137
  %call142 = tail call fastcc i32 @SM4_T(i32 noundef %xor141) #7
  %xor143 = xor i32 %call142, %xor112
  %xor145 = xor i32 %xor143, %xor137
  %arrayidx147 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 19
  %19 = load i32, i32* %arrayidx147, align 4, !tbaa !4
  %xor148 = xor i32 %xor145, %19
  %call149 = tail call fastcc i32 @SM4_T(i32 noundef %xor148) #7
  %xor150 = xor i32 %call149, %xor119
  %arrayidx157 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 20
  %20 = load i32, i32* %arrayidx157, align 4, !tbaa !4
  %xor154 = xor i32 %xor150, %xor143
  %xor155 = xor i32 %xor154, %xor136
  %xor158 = xor i32 %xor155, %20
  %call159 = tail call fastcc i32 @SM4_T(i32 noundef %xor158) #7
  %xor160 = xor i32 %call159, %xor129
  %arrayidx164 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 21
  %21 = load i32, i32* %arrayidx164, align 4, !tbaa !4
  %xor162 = xor i32 %xor154, %xor160
  %xor165 = xor i32 %xor162, %21
  %call166 = tail call fastcc i32 @SM4_T(i32 noundef %xor165) #7
  %xor167 = xor i32 %call166, %xor136
  %xor168 = xor i32 %xor167, %xor160
  %arrayidx171 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 22
  %22 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %xor169 = xor i32 %22, %xor150
  %xor172 = xor i32 %xor169, %xor168
  %call173 = tail call fastcc i32 @SM4_T(i32 noundef %xor172) #7
  %xor174 = xor i32 %call173, %xor143
  %xor176 = xor i32 %xor174, %xor168
  %arrayidx178 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 23
  %23 = load i32, i32* %arrayidx178, align 4, !tbaa !4
  %xor179 = xor i32 %xor176, %23
  %call180 = tail call fastcc i32 @SM4_T(i32 noundef %xor179) #7
  %xor181 = xor i32 %call180, %xor150
  %arrayidx188 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 24
  %24 = load i32, i32* %arrayidx188, align 4, !tbaa !4
  %xor185 = xor i32 %xor181, %xor174
  %xor186 = xor i32 %xor185, %xor167
  %xor189 = xor i32 %xor186, %24
  %call190 = tail call fastcc i32 @SM4_T(i32 noundef %xor189) #7
  %xor191 = xor i32 %call190, %xor160
  %arrayidx195 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 25
  %25 = load i32, i32* %arrayidx195, align 4, !tbaa !4
  %xor193 = xor i32 %xor185, %xor191
  %xor196 = xor i32 %xor193, %25
  %call197 = tail call fastcc i32 @SM4_T(i32 noundef %xor196) #7
  %xor198 = xor i32 %call197, %xor167
  %xor199 = xor i32 %xor198, %xor191
  %arrayidx202 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 26
  %26 = load i32, i32* %arrayidx202, align 4, !tbaa !4
  %xor200 = xor i32 %26, %xor181
  %xor203 = xor i32 %xor200, %xor199
  %call204 = tail call fastcc i32 @SM4_T(i32 noundef %xor203) #7
  %xor205 = xor i32 %call204, %xor174
  %xor207 = xor i32 %xor205, %xor199
  %arrayidx209 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 27
  %27 = load i32, i32* %arrayidx209, align 4, !tbaa !4
  %xor210 = xor i32 %xor207, %27
  %call211 = tail call fastcc i32 @SM4_T(i32 noundef %xor210) #7
  %xor212 = xor i32 %call211, %xor181
  %arrayidx219 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 28
  %28 = load i32, i32* %arrayidx219, align 4, !tbaa !4
  %xor216 = xor i32 %xor212, %xor205
  %xor217 = xor i32 %xor216, %xor198
  %xor220 = xor i32 %xor217, %28
  %call221 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor220) #7
  %xor222 = xor i32 %call221, %xor191
  %arrayidx226 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 29
  %29 = load i32, i32* %arrayidx226, align 4, !tbaa !4
  %xor224 = xor i32 %xor216, %xor222
  %xor227 = xor i32 %xor224, %29
  %call228 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor227) #7
  %xor229 = xor i32 %call228, %xor198
  %xor230 = xor i32 %xor229, %xor222
  %arrayidx233 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 30
  %30 = load i32, i32* %arrayidx233, align 4, !tbaa !4
  %xor231 = xor i32 %30, %xor212
  %xor234 = xor i32 %xor231, %xor230
  %call235 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor234) #7
  %xor236 = xor i32 %call235, %xor205
  %xor238 = xor i32 %xor236, %xor230
  %arrayidx240 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 31
  %31 = load i32, i32* %arrayidx240, align 4, !tbaa !4
  %xor241 = xor i32 %xor238, %31
  %call242 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor241) #7
  %xor243 = xor i32 %call242, %xor212
  tail call fastcc void @store_u32_be(i32 noundef %xor243, i8* noundef %out) #7
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 4
  tail call fastcc void @store_u32_be(i32 noundef %xor236, i8* noundef nonnull %add.ptr) #7
  %add.ptr246 = getelementptr inbounds i8, i8* %out, i64 8
  tail call fastcc void @store_u32_be(i32 noundef %xor229, i8* noundef nonnull %add.ptr246) #7
  %add.ptr247 = getelementptr inbounds i8, i8* %out, i64 12
  tail call fastcc void @store_u32_be(i32 noundef %xor222, i8* noundef nonnull %add.ptr247) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @SM4_T_slow(i32 noundef %X) unnamed_addr #3 {
entry:
  %shr = lshr i32 %X, 24
  %conv = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %conv
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv1 = zext i8 %0 to i32
  %shl = shl nuw i32 %conv1, 24
  %shr2 = lshr i32 %X, 16
  %1 = and i32 %shr2, 255
  %idxprom4 = zext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom4
  %2 = load i8, i8* %arrayidx5, align 1, !tbaa !8
  %conv6 = zext i8 %2 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %shl7, %shl
  %shr9 = lshr i32 %X, 8
  %3 = and i32 %shr9, 255
  %idxprom11 = zext i32 %3 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom11
  %4 = load i8, i8* %arrayidx12, align 1, !tbaa !8
  %conv13 = zext i8 %4 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or8, %shl14
  %5 = and i32 %X, 255
  %idxprom17 = zext i32 %5 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @SM4_S, i64 0, i64 %idxprom17
  %6 = load i8, i8* %arrayidx18, align 1, !tbaa !8
  %conv19 = zext i8 %6 to i32
  %or20 = or i32 %or15, %conv19
  %call = tail call fastcc i32 @rotl(i32 noundef %or20, i8 noundef zeroext 2) #7
  %call21 = tail call fastcc i32 @rotl(i32 noundef %or20, i8 noundef zeroext 10) #7
  %call23 = tail call fastcc i32 @rotl(i32 noundef %or20, i8 noundef zeroext 18) #7
  %call25 = tail call fastcc i32 @rotl(i32 noundef %or20, i8 noundef zeroext 24) #7
  %xor = xor i32 %call21, %call
  %xor22 = xor i32 %xor, %or20
  %xor24 = xor i32 %xor22, %call23
  %xor26 = xor i32 %xor24, %call25
  ret i32 %xor26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @SM4_T(i32 noundef %X) unnamed_addr #3 {
entry:
  %shr = lshr i32 %X, 24
  %conv = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @SM4_SBOX_T, i64 0, i64 %conv
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %shr1 = lshr i32 %X, 16
  %1 = and i32 %shr1, 255
  %idxprom3 = zext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @SM4_SBOX_T, i64 0, i64 %idxprom3
  %2 = load i32, i32* %arrayidx4, align 4, !tbaa !4
  %call = tail call fastcc i32 @rotl(i32 noundef %2, i8 noundef zeroext 24) #7
  %xor = xor i32 %call, %0
  %shr5 = lshr i32 %X, 8
  %3 = and i32 %shr5, 255
  %idxprom7 = zext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* @SM4_SBOX_T, i64 0, i64 %idxprom7
  %4 = load i32, i32* %arrayidx8, align 4, !tbaa !4
  %call9 = tail call fastcc i32 @rotl(i32 noundef %4, i8 noundef zeroext 16) #7
  %xor10 = xor i32 %xor, %call9
  %5 = and i32 %X, 255
  %idxprom12 = zext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @SM4_SBOX_T, i64 0, i64 %idxprom12
  %6 = load i32, i32* %arrayidx13, align 4, !tbaa !4
  %call14 = tail call fastcc i32 @rotl(i32 noundef %6, i8 noundef zeroext 8) #7
  %xor15 = xor i32 %xor10, %call14
  ret i32 %xor15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @store_u32_be(i32 noundef %v, i8* nocapture noundef writeonly %b) unnamed_addr #5 {
entry:
  %shr = lshr i32 %v, 24
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* %b, align 1, !tbaa !8
  %shr1 = lshr i32 %v, 16
  %conv2 = trunc i32 %shr1 to i8
  %arrayidx3 = getelementptr inbounds i8, i8* %b, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !8
  %shr4 = lshr i32 %v, 8
  %conv5 = trunc i32 %shr4 to i8
  %arrayidx6 = getelementptr inbounds i8, i8* %b, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !8
  %conv7 = trunc i32 %v to i8
  %arrayidx8 = getelementptr inbounds i8, i8* %b, i64 3
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_sm4_decrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, %struct.SM4_KEY_st* noundef readonly %ks) local_unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 1) #7
  %call2 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 2) #7
  %call3 = tail call fastcc i32 @load_u32_be(i8* noundef %in, i32 noundef 3) #7
  %arrayidx = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 31
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %xor = xor i32 %call3, %call2
  %xor4 = xor i32 %xor, %call1
  %xor5 = xor i32 %xor4, %0
  %call6 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor5) #7
  %xor7 = xor i32 %call6, %call
  %arrayidx11 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 30
  %1 = load i32, i32* %arrayidx11, align 4, !tbaa !4
  %xor9 = xor i32 %xor, %xor7
  %xor12 = xor i32 %xor9, %1
  %call13 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor12) #7
  %xor14 = xor i32 %call13, %call1
  %xor15 = xor i32 %xor14, %xor7
  %arrayidx18 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 29
  %2 = load i32, i32* %arrayidx18, align 4, !tbaa !4
  %xor16 = xor i32 %2, %call3
  %xor19 = xor i32 %xor16, %xor15
  %call20 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor19) #7
  %xor21 = xor i32 %call20, %call2
  %xor23 = xor i32 %xor21, %xor15
  %arrayidx25 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 28
  %3 = load i32, i32* %arrayidx25, align 4, !tbaa !4
  %xor26 = xor i32 %xor23, %3
  %call27 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor26) #7
  %xor28 = xor i32 %call27, %call3
  %arrayidx33 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 27
  %4 = load i32, i32* %arrayidx33, align 4, !tbaa !4
  %xor30 = xor i32 %xor28, %xor21
  %xor31 = xor i32 %xor30, %xor14
  %xor34 = xor i32 %xor31, %4
  %call35 = tail call fastcc i32 @SM4_T(i32 noundef %xor34) #7
  %xor36 = xor i32 %call35, %xor7
  %arrayidx40 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 26
  %5 = load i32, i32* %arrayidx40, align 4, !tbaa !4
  %xor38 = xor i32 %xor30, %xor36
  %xor41 = xor i32 %xor38, %5
  %call42 = tail call fastcc i32 @SM4_T(i32 noundef %xor41) #7
  %xor43 = xor i32 %call42, %xor14
  %xor44 = xor i32 %xor43, %xor36
  %arrayidx47 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 25
  %6 = load i32, i32* %arrayidx47, align 4, !tbaa !4
  %xor45 = xor i32 %6, %xor28
  %xor48 = xor i32 %xor45, %xor44
  %call49 = tail call fastcc i32 @SM4_T(i32 noundef %xor48) #7
  %xor50 = xor i32 %call49, %xor21
  %xor52 = xor i32 %xor50, %xor44
  %arrayidx54 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 24
  %7 = load i32, i32* %arrayidx54, align 4, !tbaa !4
  %xor55 = xor i32 %xor52, %7
  %call56 = tail call fastcc i32 @SM4_T(i32 noundef %xor55) #7
  %xor57 = xor i32 %call56, %xor28
  %arrayidx64 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 23
  %8 = load i32, i32* %arrayidx64, align 4, !tbaa !4
  %xor61 = xor i32 %xor57, %xor50
  %xor62 = xor i32 %xor61, %xor43
  %xor65 = xor i32 %xor62, %8
  %call66 = tail call fastcc i32 @SM4_T(i32 noundef %xor65) #7
  %xor67 = xor i32 %call66, %xor36
  %arrayidx71 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 22
  %9 = load i32, i32* %arrayidx71, align 4, !tbaa !4
  %xor69 = xor i32 %xor61, %xor67
  %xor72 = xor i32 %xor69, %9
  %call73 = tail call fastcc i32 @SM4_T(i32 noundef %xor72) #7
  %xor74 = xor i32 %call73, %xor43
  %xor75 = xor i32 %xor74, %xor67
  %arrayidx78 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 21
  %10 = load i32, i32* %arrayidx78, align 4, !tbaa !4
  %xor76 = xor i32 %10, %xor57
  %xor79 = xor i32 %xor76, %xor75
  %call80 = tail call fastcc i32 @SM4_T(i32 noundef %xor79) #7
  %xor81 = xor i32 %call80, %xor50
  %xor83 = xor i32 %xor81, %xor75
  %arrayidx85 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 20
  %11 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %xor86 = xor i32 %xor83, %11
  %call87 = tail call fastcc i32 @SM4_T(i32 noundef %xor86) #7
  %xor88 = xor i32 %call87, %xor57
  %arrayidx95 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 19
  %12 = load i32, i32* %arrayidx95, align 4, !tbaa !4
  %xor92 = xor i32 %xor88, %xor81
  %xor93 = xor i32 %xor92, %xor74
  %xor96 = xor i32 %xor93, %12
  %call97 = tail call fastcc i32 @SM4_T(i32 noundef %xor96) #7
  %xor98 = xor i32 %call97, %xor67
  %arrayidx102 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 18
  %13 = load i32, i32* %arrayidx102, align 4, !tbaa !4
  %xor100 = xor i32 %xor92, %xor98
  %xor103 = xor i32 %xor100, %13
  %call104 = tail call fastcc i32 @SM4_T(i32 noundef %xor103) #7
  %xor105 = xor i32 %call104, %xor74
  %xor106 = xor i32 %xor105, %xor98
  %arrayidx109 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 17
  %14 = load i32, i32* %arrayidx109, align 4, !tbaa !4
  %xor107 = xor i32 %14, %xor88
  %xor110 = xor i32 %xor107, %xor106
  %call111 = tail call fastcc i32 @SM4_T(i32 noundef %xor110) #7
  %xor112 = xor i32 %call111, %xor81
  %xor114 = xor i32 %xor112, %xor106
  %arrayidx116 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 16
  %15 = load i32, i32* %arrayidx116, align 4, !tbaa !4
  %xor117 = xor i32 %xor114, %15
  %call118 = tail call fastcc i32 @SM4_T(i32 noundef %xor117) #7
  %xor119 = xor i32 %call118, %xor88
  %arrayidx126 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 15
  %16 = load i32, i32* %arrayidx126, align 4, !tbaa !4
  %xor123 = xor i32 %xor119, %xor112
  %xor124 = xor i32 %xor123, %xor105
  %xor127 = xor i32 %xor124, %16
  %call128 = tail call fastcc i32 @SM4_T(i32 noundef %xor127) #7
  %xor129 = xor i32 %call128, %xor98
  %arrayidx133 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 14
  %17 = load i32, i32* %arrayidx133, align 4, !tbaa !4
  %xor131 = xor i32 %xor123, %xor129
  %xor134 = xor i32 %xor131, %17
  %call135 = tail call fastcc i32 @SM4_T(i32 noundef %xor134) #7
  %xor136 = xor i32 %call135, %xor105
  %xor137 = xor i32 %xor136, %xor129
  %arrayidx140 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 13
  %18 = load i32, i32* %arrayidx140, align 4, !tbaa !4
  %xor138 = xor i32 %18, %xor119
  %xor141 = xor i32 %xor138, %xor137
  %call142 = tail call fastcc i32 @SM4_T(i32 noundef %xor141) #7
  %xor143 = xor i32 %call142, %xor112
  %xor145 = xor i32 %xor143, %xor137
  %arrayidx147 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 12
  %19 = load i32, i32* %arrayidx147, align 4, !tbaa !4
  %xor148 = xor i32 %xor145, %19
  %call149 = tail call fastcc i32 @SM4_T(i32 noundef %xor148) #7
  %xor150 = xor i32 %call149, %xor119
  %arrayidx157 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 11
  %20 = load i32, i32* %arrayidx157, align 4, !tbaa !4
  %xor154 = xor i32 %xor150, %xor143
  %xor155 = xor i32 %xor154, %xor136
  %xor158 = xor i32 %xor155, %20
  %call159 = tail call fastcc i32 @SM4_T(i32 noundef %xor158) #7
  %xor160 = xor i32 %call159, %xor129
  %arrayidx164 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 10
  %21 = load i32, i32* %arrayidx164, align 4, !tbaa !4
  %xor162 = xor i32 %xor154, %xor160
  %xor165 = xor i32 %xor162, %21
  %call166 = tail call fastcc i32 @SM4_T(i32 noundef %xor165) #7
  %xor167 = xor i32 %call166, %xor136
  %xor168 = xor i32 %xor167, %xor160
  %arrayidx171 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 9
  %22 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %xor169 = xor i32 %22, %xor150
  %xor172 = xor i32 %xor169, %xor168
  %call173 = tail call fastcc i32 @SM4_T(i32 noundef %xor172) #7
  %xor174 = xor i32 %call173, %xor143
  %xor176 = xor i32 %xor174, %xor168
  %arrayidx178 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 8
  %23 = load i32, i32* %arrayidx178, align 4, !tbaa !4
  %xor179 = xor i32 %xor176, %23
  %call180 = tail call fastcc i32 @SM4_T(i32 noundef %xor179) #7
  %xor181 = xor i32 %call180, %xor150
  %arrayidx188 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 7
  %24 = load i32, i32* %arrayidx188, align 4, !tbaa !4
  %xor185 = xor i32 %xor181, %xor174
  %xor186 = xor i32 %xor185, %xor167
  %xor189 = xor i32 %xor186, %24
  %call190 = tail call fastcc i32 @SM4_T(i32 noundef %xor189) #7
  %xor191 = xor i32 %call190, %xor160
  %arrayidx195 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 6
  %25 = load i32, i32* %arrayidx195, align 4, !tbaa !4
  %xor193 = xor i32 %xor185, %xor191
  %xor196 = xor i32 %xor193, %25
  %call197 = tail call fastcc i32 @SM4_T(i32 noundef %xor196) #7
  %xor198 = xor i32 %call197, %xor167
  %xor199 = xor i32 %xor198, %xor191
  %arrayidx202 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 5
  %26 = load i32, i32* %arrayidx202, align 4, !tbaa !4
  %xor200 = xor i32 %26, %xor181
  %xor203 = xor i32 %xor200, %xor199
  %call204 = tail call fastcc i32 @SM4_T(i32 noundef %xor203) #7
  %xor205 = xor i32 %call204, %xor174
  %xor207 = xor i32 %xor205, %xor199
  %arrayidx209 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 4
  %27 = load i32, i32* %arrayidx209, align 4, !tbaa !4
  %xor210 = xor i32 %xor207, %27
  %call211 = tail call fastcc i32 @SM4_T(i32 noundef %xor210) #7
  %xor212 = xor i32 %call211, %xor181
  %arrayidx219 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 3
  %28 = load i32, i32* %arrayidx219, align 4, !tbaa !4
  %xor216 = xor i32 %xor212, %xor205
  %xor217 = xor i32 %xor216, %xor198
  %xor220 = xor i32 %xor217, %28
  %call221 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor220) #7
  %xor222 = xor i32 %call221, %xor191
  %arrayidx226 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 2
  %29 = load i32, i32* %arrayidx226, align 4, !tbaa !4
  %xor224 = xor i32 %xor216, %xor222
  %xor227 = xor i32 %xor224, %29
  %call228 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor227) #7
  %xor229 = xor i32 %call228, %xor198
  %xor230 = xor i32 %xor229, %xor222
  %arrayidx233 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 1
  %30 = load i32, i32* %arrayidx233, align 4, !tbaa !4
  %xor231 = xor i32 %30, %xor212
  %xor234 = xor i32 %xor231, %xor230
  %call235 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor234) #7
  %xor236 = xor i32 %call235, %xor205
  %xor238 = xor i32 %xor236, %xor230
  %arrayidx240 = getelementptr inbounds %struct.SM4_KEY_st, %struct.SM4_KEY_st* %ks, i64 0, i32 0, i64 0
  %31 = load i32, i32* %arrayidx240, align 4, !tbaa !4
  %xor241 = xor i32 %xor238, %31
  %call242 = tail call fastcc i32 @SM4_T_slow(i32 noundef %xor241) #7
  %xor243 = xor i32 %call242, %xor212
  tail call fastcc void @store_u32_be(i32 noundef %xor243, i8* noundef %out) #7
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 4
  tail call fastcc void @store_u32_be(i32 noundef %xor236, i8* noundef nonnull %add.ptr) #7
  %add.ptr246 = getelementptr inbounds i8, i8* %out, i64 8
  tail call fastcc void @store_u32_be(i32 noundef %xor229, i8* noundef nonnull %add.ptr246) #7
  %add.ptr247 = getelementptr inbounds i8, i8* %out, i64 12
  tail call fastcc void @store_u32_be(i32 noundef %xor222, i8* noundef nonnull %add.ptr247) #7
  ret void
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
