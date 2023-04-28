; ModuleID = 'crypto/bn/bn_prime.c'
source_filename = "crypto/bn/bn_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }

@_bignum_small_prime_factors = internal constant %struct.bignum_st { i64* getelementptr inbounds ([17 x i64], [17 x i64]* @small_prime_factors, i32 0, i32 0), i32 17, i32 17, i32 0, i32 2 }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/bn/bn_prime.c\00", align 1
@__func__.BN_generate_prime_ex2 = private unnamed_addr constant [22 x i8] c"BN_generate_prime_ex2\00", align 1
@small_prime_factors = internal constant [17 x i64] [i64 -4309782995084712991, i64 8148734346248676703, i64 -7646510132918400926, i64 4517730358157349163, i64 7734177320850080899, i64 757968232112212081, i64 8633734662503670026, i64 -2640354292540616525, i64 5389355995458437739, i64 -1479623847028275053, i64 -2619631085558135356, i64 -2856941152863598706, i64 3364315195482710596, i64 -4925511846872794390, i64 3957848698924598975, i64 6856453772018472743, i64 6065], align 16
@primes = internal unnamed_addr constant [2048 x i16] [i16 2, i16 3, i16 5, i16 7, i16 11, i16 13, i16 17, i16 19, i16 23, i16 29, i16 31, i16 37, i16 41, i16 43, i16 47, i16 53, i16 59, i16 61, i16 67, i16 71, i16 73, i16 79, i16 83, i16 89, i16 97, i16 101, i16 103, i16 107, i16 109, i16 113, i16 127, i16 131, i16 137, i16 139, i16 149, i16 151, i16 157, i16 163, i16 167, i16 173, i16 179, i16 181, i16 191, i16 193, i16 197, i16 199, i16 211, i16 223, i16 227, i16 229, i16 233, i16 239, i16 241, i16 251, i16 257, i16 263, i16 269, i16 271, i16 277, i16 281, i16 283, i16 293, i16 307, i16 311, i16 313, i16 317, i16 331, i16 337, i16 347, i16 349, i16 353, i16 359, i16 367, i16 373, i16 379, i16 383, i16 389, i16 397, i16 401, i16 409, i16 419, i16 421, i16 431, i16 433, i16 439, i16 443, i16 449, i16 457, i16 461, i16 463, i16 467, i16 479, i16 487, i16 491, i16 499, i16 503, i16 509, i16 521, i16 523, i16 541, i16 547, i16 557, i16 563, i16 569, i16 571, i16 577, i16 587, i16 593, i16 599, i16 601, i16 607, i16 613, i16 617, i16 619, i16 631, i16 641, i16 643, i16 647, i16 653, i16 659, i16 661, i16 673, i16 677, i16 683, i16 691, i16 701, i16 709, i16 719, i16 727, i16 733, i16 739, i16 743, i16 751, i16 757, i16 761, i16 769, i16 773, i16 787, i16 797, i16 809, i16 811, i16 821, i16 823, i16 827, i16 829, i16 839, i16 853, i16 857, i16 859, i16 863, i16 877, i16 881, i16 883, i16 887, i16 907, i16 911, i16 919, i16 929, i16 937, i16 941, i16 947, i16 953, i16 967, i16 971, i16 977, i16 983, i16 991, i16 997, i16 1009, i16 1013, i16 1019, i16 1021, i16 1031, i16 1033, i16 1039, i16 1049, i16 1051, i16 1061, i16 1063, i16 1069, i16 1087, i16 1091, i16 1093, i16 1097, i16 1103, i16 1109, i16 1117, i16 1123, i16 1129, i16 1151, i16 1153, i16 1163, i16 1171, i16 1181, i16 1187, i16 1193, i16 1201, i16 1213, i16 1217, i16 1223, i16 1229, i16 1231, i16 1237, i16 1249, i16 1259, i16 1277, i16 1279, i16 1283, i16 1289, i16 1291, i16 1297, i16 1301, i16 1303, i16 1307, i16 1319, i16 1321, i16 1327, i16 1361, i16 1367, i16 1373, i16 1381, i16 1399, i16 1409, i16 1423, i16 1427, i16 1429, i16 1433, i16 1439, i16 1447, i16 1451, i16 1453, i16 1459, i16 1471, i16 1481, i16 1483, i16 1487, i16 1489, i16 1493, i16 1499, i16 1511, i16 1523, i16 1531, i16 1543, i16 1549, i16 1553, i16 1559, i16 1567, i16 1571, i16 1579, i16 1583, i16 1597, i16 1601, i16 1607, i16 1609, i16 1613, i16 1619, i16 1621, i16 1627, i16 1637, i16 1657, i16 1663, i16 1667, i16 1669, i16 1693, i16 1697, i16 1699, i16 1709, i16 1721, i16 1723, i16 1733, i16 1741, i16 1747, i16 1753, i16 1759, i16 1777, i16 1783, i16 1787, i16 1789, i16 1801, i16 1811, i16 1823, i16 1831, i16 1847, i16 1861, i16 1867, i16 1871, i16 1873, i16 1877, i16 1879, i16 1889, i16 1901, i16 1907, i16 1913, i16 1931, i16 1933, i16 1949, i16 1951, i16 1973, i16 1979, i16 1987, i16 1993, i16 1997, i16 1999, i16 2003, i16 2011, i16 2017, i16 2027, i16 2029, i16 2039, i16 2053, i16 2063, i16 2069, i16 2081, i16 2083, i16 2087, i16 2089, i16 2099, i16 2111, i16 2113, i16 2129, i16 2131, i16 2137, i16 2141, i16 2143, i16 2153, i16 2161, i16 2179, i16 2203, i16 2207, i16 2213, i16 2221, i16 2237, i16 2239, i16 2243, i16 2251, i16 2267, i16 2269, i16 2273, i16 2281, i16 2287, i16 2293, i16 2297, i16 2309, i16 2311, i16 2333, i16 2339, i16 2341, i16 2347, i16 2351, i16 2357, i16 2371, i16 2377, i16 2381, i16 2383, i16 2389, i16 2393, i16 2399, i16 2411, i16 2417, i16 2423, i16 2437, i16 2441, i16 2447, i16 2459, i16 2467, i16 2473, i16 2477, i16 2503, i16 2521, i16 2531, i16 2539, i16 2543, i16 2549, i16 2551, i16 2557, i16 2579, i16 2591, i16 2593, i16 2609, i16 2617, i16 2621, i16 2633, i16 2647, i16 2657, i16 2659, i16 2663, i16 2671, i16 2677, i16 2683, i16 2687, i16 2689, i16 2693, i16 2699, i16 2707, i16 2711, i16 2713, i16 2719, i16 2729, i16 2731, i16 2741, i16 2749, i16 2753, i16 2767, i16 2777, i16 2789, i16 2791, i16 2797, i16 2801, i16 2803, i16 2819, i16 2833, i16 2837, i16 2843, i16 2851, i16 2857, i16 2861, i16 2879, i16 2887, i16 2897, i16 2903, i16 2909, i16 2917, i16 2927, i16 2939, i16 2953, i16 2957, i16 2963, i16 2969, i16 2971, i16 2999, i16 3001, i16 3011, i16 3019, i16 3023, i16 3037, i16 3041, i16 3049, i16 3061, i16 3067, i16 3079, i16 3083, i16 3089, i16 3109, i16 3119, i16 3121, i16 3137, i16 3163, i16 3167, i16 3169, i16 3181, i16 3187, i16 3191, i16 3203, i16 3209, i16 3217, i16 3221, i16 3229, i16 3251, i16 3253, i16 3257, i16 3259, i16 3271, i16 3299, i16 3301, i16 3307, i16 3313, i16 3319, i16 3323, i16 3329, i16 3331, i16 3343, i16 3347, i16 3359, i16 3361, i16 3371, i16 3373, i16 3389, i16 3391, i16 3407, i16 3413, i16 3433, i16 3449, i16 3457, i16 3461, i16 3463, i16 3467, i16 3469, i16 3491, i16 3499, i16 3511, i16 3517, i16 3527, i16 3529, i16 3533, i16 3539, i16 3541, i16 3547, i16 3557, i16 3559, i16 3571, i16 3581, i16 3583, i16 3593, i16 3607, i16 3613, i16 3617, i16 3623, i16 3631, i16 3637, i16 3643, i16 3659, i16 3671, i16 3673, i16 3677, i16 3691, i16 3697, i16 3701, i16 3709, i16 3719, i16 3727, i16 3733, i16 3739, i16 3761, i16 3767, i16 3769, i16 3779, i16 3793, i16 3797, i16 3803, i16 3821, i16 3823, i16 3833, i16 3847, i16 3851, i16 3853, i16 3863, i16 3877, i16 3881, i16 3889, i16 3907, i16 3911, i16 3917, i16 3919, i16 3923, i16 3929, i16 3931, i16 3943, i16 3947, i16 3967, i16 3989, i16 4001, i16 4003, i16 4007, i16 4013, i16 4019, i16 4021, i16 4027, i16 4049, i16 4051, i16 4057, i16 4073, i16 4079, i16 4091, i16 4093, i16 4099, i16 4111, i16 4127, i16 4129, i16 4133, i16 4139, i16 4153, i16 4157, i16 4159, i16 4177, i16 4201, i16 4211, i16 4217, i16 4219, i16 4229, i16 4231, i16 4241, i16 4243, i16 4253, i16 4259, i16 4261, i16 4271, i16 4273, i16 4283, i16 4289, i16 4297, i16 4327, i16 4337, i16 4339, i16 4349, i16 4357, i16 4363, i16 4373, i16 4391, i16 4397, i16 4409, i16 4421, i16 4423, i16 4441, i16 4447, i16 4451, i16 4457, i16 4463, i16 4481, i16 4483, i16 4493, i16 4507, i16 4513, i16 4517, i16 4519, i16 4523, i16 4547, i16 4549, i16 4561, i16 4567, i16 4583, i16 4591, i16 4597, i16 4603, i16 4621, i16 4637, i16 4639, i16 4643, i16 4649, i16 4651, i16 4657, i16 4663, i16 4673, i16 4679, i16 4691, i16 4703, i16 4721, i16 4723, i16 4729, i16 4733, i16 4751, i16 4759, i16 4783, i16 4787, i16 4789, i16 4793, i16 4799, i16 4801, i16 4813, i16 4817, i16 4831, i16 4861, i16 4871, i16 4877, i16 4889, i16 4903, i16 4909, i16 4919, i16 4931, i16 4933, i16 4937, i16 4943, i16 4951, i16 4957, i16 4967, i16 4969, i16 4973, i16 4987, i16 4993, i16 4999, i16 5003, i16 5009, i16 5011, i16 5021, i16 5023, i16 5039, i16 5051, i16 5059, i16 5077, i16 5081, i16 5087, i16 5099, i16 5101, i16 5107, i16 5113, i16 5119, i16 5147, i16 5153, i16 5167, i16 5171, i16 5179, i16 5189, i16 5197, i16 5209, i16 5227, i16 5231, i16 5233, i16 5237, i16 5261, i16 5273, i16 5279, i16 5281, i16 5297, i16 5303, i16 5309, i16 5323, i16 5333, i16 5347, i16 5351, i16 5381, i16 5387, i16 5393, i16 5399, i16 5407, i16 5413, i16 5417, i16 5419, i16 5431, i16 5437, i16 5441, i16 5443, i16 5449, i16 5471, i16 5477, i16 5479, i16 5483, i16 5501, i16 5503, i16 5507, i16 5519, i16 5521, i16 5527, i16 5531, i16 5557, i16 5563, i16 5569, i16 5573, i16 5581, i16 5591, i16 5623, i16 5639, i16 5641, i16 5647, i16 5651, i16 5653, i16 5657, i16 5659, i16 5669, i16 5683, i16 5689, i16 5693, i16 5701, i16 5711, i16 5717, i16 5737, i16 5741, i16 5743, i16 5749, i16 5779, i16 5783, i16 5791, i16 5801, i16 5807, i16 5813, i16 5821, i16 5827, i16 5839, i16 5843, i16 5849, i16 5851, i16 5857, i16 5861, i16 5867, i16 5869, i16 5879, i16 5881, i16 5897, i16 5903, i16 5923, i16 5927, i16 5939, i16 5953, i16 5981, i16 5987, i16 6007, i16 6011, i16 6029, i16 6037, i16 6043, i16 6047, i16 6053, i16 6067, i16 6073, i16 6079, i16 6089, i16 6091, i16 6101, i16 6113, i16 6121, i16 6131, i16 6133, i16 6143, i16 6151, i16 6163, i16 6173, i16 6197, i16 6199, i16 6203, i16 6211, i16 6217, i16 6221, i16 6229, i16 6247, i16 6257, i16 6263, i16 6269, i16 6271, i16 6277, i16 6287, i16 6299, i16 6301, i16 6311, i16 6317, i16 6323, i16 6329, i16 6337, i16 6343, i16 6353, i16 6359, i16 6361, i16 6367, i16 6373, i16 6379, i16 6389, i16 6397, i16 6421, i16 6427, i16 6449, i16 6451, i16 6469, i16 6473, i16 6481, i16 6491, i16 6521, i16 6529, i16 6547, i16 6551, i16 6553, i16 6563, i16 6569, i16 6571, i16 6577, i16 6581, i16 6599, i16 6607, i16 6619, i16 6637, i16 6653, i16 6659, i16 6661, i16 6673, i16 6679, i16 6689, i16 6691, i16 6701, i16 6703, i16 6709, i16 6719, i16 6733, i16 6737, i16 6761, i16 6763, i16 6779, i16 6781, i16 6791, i16 6793, i16 6803, i16 6823, i16 6827, i16 6829, i16 6833, i16 6841, i16 6857, i16 6863, i16 6869, i16 6871, i16 6883, i16 6899, i16 6907, i16 6911, i16 6917, i16 6947, i16 6949, i16 6959, i16 6961, i16 6967, i16 6971, i16 6977, i16 6983, i16 6991, i16 6997, i16 7001, i16 7013, i16 7019, i16 7027, i16 7039, i16 7043, i16 7057, i16 7069, i16 7079, i16 7103, i16 7109, i16 7121, i16 7127, i16 7129, i16 7151, i16 7159, i16 7177, i16 7187, i16 7193, i16 7207, i16 7211, i16 7213, i16 7219, i16 7229, i16 7237, i16 7243, i16 7247, i16 7253, i16 7283, i16 7297, i16 7307, i16 7309, i16 7321, i16 7331, i16 7333, i16 7349, i16 7351, i16 7369, i16 7393, i16 7411, i16 7417, i16 7433, i16 7451, i16 7457, i16 7459, i16 7477, i16 7481, i16 7487, i16 7489, i16 7499, i16 7507, i16 7517, i16 7523, i16 7529, i16 7537, i16 7541, i16 7547, i16 7549, i16 7559, i16 7561, i16 7573, i16 7577, i16 7583, i16 7589, i16 7591, i16 7603, i16 7607, i16 7621, i16 7639, i16 7643, i16 7649, i16 7669, i16 7673, i16 7681, i16 7687, i16 7691, i16 7699, i16 7703, i16 7717, i16 7723, i16 7727, i16 7741, i16 7753, i16 7757, i16 7759, i16 7789, i16 7793, i16 7817, i16 7823, i16 7829, i16 7841, i16 7853, i16 7867, i16 7873, i16 7877, i16 7879, i16 7883, i16 7901, i16 7907, i16 7919, i16 7927, i16 7933, i16 7937, i16 7949, i16 7951, i16 7963, i16 7993, i16 8009, i16 8011, i16 8017, i16 8039, i16 8053, i16 8059, i16 8069, i16 8081, i16 8087, i16 8089, i16 8093, i16 8101, i16 8111, i16 8117, i16 8123, i16 8147, i16 8161, i16 8167, i16 8171, i16 8179, i16 8191, i16 8209, i16 8219, i16 8221, i16 8231, i16 8233, i16 8237, i16 8243, i16 8263, i16 8269, i16 8273, i16 8287, i16 8291, i16 8293, i16 8297, i16 8311, i16 8317, i16 8329, i16 8353, i16 8363, i16 8369, i16 8377, i16 8387, i16 8389, i16 8419, i16 8423, i16 8429, i16 8431, i16 8443, i16 8447, i16 8461, i16 8467, i16 8501, i16 8513, i16 8521, i16 8527, i16 8537, i16 8539, i16 8543, i16 8563, i16 8573, i16 8581, i16 8597, i16 8599, i16 8609, i16 8623, i16 8627, i16 8629, i16 8641, i16 8647, i16 8663, i16 8669, i16 8677, i16 8681, i16 8689, i16 8693, i16 8699, i16 8707, i16 8713, i16 8719, i16 8731, i16 8737, i16 8741, i16 8747, i16 8753, i16 8761, i16 8779, i16 8783, i16 8803, i16 8807, i16 8819, i16 8821, i16 8831, i16 8837, i16 8839, i16 8849, i16 8861, i16 8863, i16 8867, i16 8887, i16 8893, i16 8923, i16 8929, i16 8933, i16 8941, i16 8951, i16 8963, i16 8969, i16 8971, i16 8999, i16 9001, i16 9007, i16 9011, i16 9013, i16 9029, i16 9041, i16 9043, i16 9049, i16 9059, i16 9067, i16 9091, i16 9103, i16 9109, i16 9127, i16 9133, i16 9137, i16 9151, i16 9157, i16 9161, i16 9173, i16 9181, i16 9187, i16 9199, i16 9203, i16 9209, i16 9221, i16 9227, i16 9239, i16 9241, i16 9257, i16 9277, i16 9281, i16 9283, i16 9293, i16 9311, i16 9319, i16 9323, i16 9337, i16 9341, i16 9343, i16 9349, i16 9371, i16 9377, i16 9391, i16 9397, i16 9403, i16 9413, i16 9419, i16 9421, i16 9431, i16 9433, i16 9437, i16 9439, i16 9461, i16 9463, i16 9467, i16 9473, i16 9479, i16 9491, i16 9497, i16 9511, i16 9521, i16 9533, i16 9539, i16 9547, i16 9551, i16 9587, i16 9601, i16 9613, i16 9619, i16 9623, i16 9629, i16 9631, i16 9643, i16 9649, i16 9661, i16 9677, i16 9679, i16 9689, i16 9697, i16 9719, i16 9721, i16 9733, i16 9739, i16 9743, i16 9749, i16 9767, i16 9769, i16 9781, i16 9787, i16 9791, i16 9803, i16 9811, i16 9817, i16 9829, i16 9833, i16 9839, i16 9851, i16 9857, i16 9859, i16 9871, i16 9883, i16 9887, i16 9901, i16 9907, i16 9923, i16 9929, i16 9931, i16 9941, i16 9949, i16 9967, i16 9973, i16 10007, i16 10009, i16 10037, i16 10039, i16 10061, i16 10067, i16 10069, i16 10079, i16 10091, i16 10093, i16 10099, i16 10103, i16 10111, i16 10133, i16 10139, i16 10141, i16 10151, i16 10159, i16 10163, i16 10169, i16 10177, i16 10181, i16 10193, i16 10211, i16 10223, i16 10243, i16 10247, i16 10253, i16 10259, i16 10267, i16 10271, i16 10273, i16 10289, i16 10301, i16 10303, i16 10313, i16 10321, i16 10331, i16 10333, i16 10337, i16 10343, i16 10357, i16 10369, i16 10391, i16 10399, i16 10427, i16 10429, i16 10433, i16 10453, i16 10457, i16 10459, i16 10463, i16 10477, i16 10487, i16 10499, i16 10501, i16 10513, i16 10529, i16 10531, i16 10559, i16 10567, i16 10589, i16 10597, i16 10601, i16 10607, i16 10613, i16 10627, i16 10631, i16 10639, i16 10651, i16 10657, i16 10663, i16 10667, i16 10687, i16 10691, i16 10709, i16 10711, i16 10723, i16 10729, i16 10733, i16 10739, i16 10753, i16 10771, i16 10781, i16 10789, i16 10799, i16 10831, i16 10837, i16 10847, i16 10853, i16 10859, i16 10861, i16 10867, i16 10883, i16 10889, i16 10891, i16 10903, i16 10909, i16 10937, i16 10939, i16 10949, i16 10957, i16 10973, i16 10979, i16 10987, i16 10993, i16 11003, i16 11027, i16 11047, i16 11057, i16 11059, i16 11069, i16 11071, i16 11083, i16 11087, i16 11093, i16 11113, i16 11117, i16 11119, i16 11131, i16 11149, i16 11159, i16 11161, i16 11171, i16 11173, i16 11177, i16 11197, i16 11213, i16 11239, i16 11243, i16 11251, i16 11257, i16 11261, i16 11273, i16 11279, i16 11287, i16 11299, i16 11311, i16 11317, i16 11321, i16 11329, i16 11351, i16 11353, i16 11369, i16 11383, i16 11393, i16 11399, i16 11411, i16 11423, i16 11437, i16 11443, i16 11447, i16 11467, i16 11471, i16 11483, i16 11489, i16 11491, i16 11497, i16 11503, i16 11519, i16 11527, i16 11549, i16 11551, i16 11579, i16 11587, i16 11593, i16 11597, i16 11617, i16 11621, i16 11633, i16 11657, i16 11677, i16 11681, i16 11689, i16 11699, i16 11701, i16 11717, i16 11719, i16 11731, i16 11743, i16 11777, i16 11779, i16 11783, i16 11789, i16 11801, i16 11807, i16 11813, i16 11821, i16 11827, i16 11831, i16 11833, i16 11839, i16 11863, i16 11867, i16 11887, i16 11897, i16 11903, i16 11909, i16 11923, i16 11927, i16 11933, i16 11939, i16 11941, i16 11953, i16 11959, i16 11969, i16 11971, i16 11981, i16 11987, i16 12007, i16 12011, i16 12037, i16 12041, i16 12043, i16 12049, i16 12071, i16 12073, i16 12097, i16 12101, i16 12107, i16 12109, i16 12113, i16 12119, i16 12143, i16 12149, i16 12157, i16 12161, i16 12163, i16 12197, i16 12203, i16 12211, i16 12227, i16 12239, i16 12241, i16 12251, i16 12253, i16 12263, i16 12269, i16 12277, i16 12281, i16 12289, i16 12301, i16 12323, i16 12329, i16 12343, i16 12347, i16 12373, i16 12377, i16 12379, i16 12391, i16 12401, i16 12409, i16 12413, i16 12421, i16 12433, i16 12437, i16 12451, i16 12457, i16 12473, i16 12479, i16 12487, i16 12491, i16 12497, i16 12503, i16 12511, i16 12517, i16 12527, i16 12539, i16 12541, i16 12547, i16 12553, i16 12569, i16 12577, i16 12583, i16 12589, i16 12601, i16 12611, i16 12613, i16 12619, i16 12637, i16 12641, i16 12647, i16 12653, i16 12659, i16 12671, i16 12689, i16 12697, i16 12703, i16 12713, i16 12721, i16 12739, i16 12743, i16 12757, i16 12763, i16 12781, i16 12791, i16 12799, i16 12809, i16 12821, i16 12823, i16 12829, i16 12841, i16 12853, i16 12889, i16 12893, i16 12899, i16 12907, i16 12911, i16 12917, i16 12919, i16 12923, i16 12941, i16 12953, i16 12959, i16 12967, i16 12973, i16 12979, i16 12983, i16 13001, i16 13003, i16 13007, i16 13009, i16 13033, i16 13037, i16 13043, i16 13049, i16 13063, i16 13093, i16 13099, i16 13103, i16 13109, i16 13121, i16 13127, i16 13147, i16 13151, i16 13159, i16 13163, i16 13171, i16 13177, i16 13183, i16 13187, i16 13217, i16 13219, i16 13229, i16 13241, i16 13249, i16 13259, i16 13267, i16 13291, i16 13297, i16 13309, i16 13313, i16 13327, i16 13331, i16 13337, i16 13339, i16 13367, i16 13381, i16 13397, i16 13399, i16 13411, i16 13417, i16 13421, i16 13441, i16 13451, i16 13457, i16 13463, i16 13469, i16 13477, i16 13487, i16 13499, i16 13513, i16 13523, i16 13537, i16 13553, i16 13567, i16 13577, i16 13591, i16 13597, i16 13613, i16 13619, i16 13627, i16 13633, i16 13649, i16 13669, i16 13679, i16 13681, i16 13687, i16 13691, i16 13693, i16 13697, i16 13709, i16 13711, i16 13721, i16 13723, i16 13729, i16 13751, i16 13757, i16 13759, i16 13763, i16 13781, i16 13789, i16 13799, i16 13807, i16 13829, i16 13831, i16 13841, i16 13859, i16 13873, i16 13877, i16 13879, i16 13883, i16 13901, i16 13903, i16 13907, i16 13913, i16 13921, i16 13931, i16 13933, i16 13963, i16 13967, i16 13997, i16 13999, i16 14009, i16 14011, i16 14029, i16 14033, i16 14051, i16 14057, i16 14071, i16 14081, i16 14083, i16 14087, i16 14107, i16 14143, i16 14149, i16 14153, i16 14159, i16 14173, i16 14177, i16 14197, i16 14207, i16 14221, i16 14243, i16 14249, i16 14251, i16 14281, i16 14293, i16 14303, i16 14321, i16 14323, i16 14327, i16 14341, i16 14347, i16 14369, i16 14387, i16 14389, i16 14401, i16 14407, i16 14411, i16 14419, i16 14423, i16 14431, i16 14437, i16 14447, i16 14449, i16 14461, i16 14479, i16 14489, i16 14503, i16 14519, i16 14533, i16 14537, i16 14543, i16 14549, i16 14551, i16 14557, i16 14561, i16 14563, i16 14591, i16 14593, i16 14621, i16 14627, i16 14629, i16 14633, i16 14639, i16 14653, i16 14657, i16 14669, i16 14683, i16 14699, i16 14713, i16 14717, i16 14723, i16 14731, i16 14737, i16 14741, i16 14747, i16 14753, i16 14759, i16 14767, i16 14771, i16 14779, i16 14783, i16 14797, i16 14813, i16 14821, i16 14827, i16 14831, i16 14843, i16 14851, i16 14867, i16 14869, i16 14879, i16 14887, i16 14891, i16 14897, i16 14923, i16 14929, i16 14939, i16 14947, i16 14951, i16 14957, i16 14969, i16 14983, i16 15013, i16 15017, i16 15031, i16 15053, i16 15061, i16 15073, i16 15077, i16 15083, i16 15091, i16 15101, i16 15107, i16 15121, i16 15131, i16 15137, i16 15139, i16 15149, i16 15161, i16 15173, i16 15187, i16 15193, i16 15199, i16 15217, i16 15227, i16 15233, i16 15241, i16 15259, i16 15263, i16 15269, i16 15271, i16 15277, i16 15287, i16 15289, i16 15299, i16 15307, i16 15313, i16 15319, i16 15329, i16 15331, i16 15349, i16 15359, i16 15361, i16 15373, i16 15377, i16 15383, i16 15391, i16 15401, i16 15413, i16 15427, i16 15439, i16 15443, i16 15451, i16 15461, i16 15467, i16 15473, i16 15493, i16 15497, i16 15511, i16 15527, i16 15541, i16 15551, i16 15559, i16 15569, i16 15581, i16 15583, i16 15601, i16 15607, i16 15619, i16 15629, i16 15641, i16 15643, i16 15647, i16 15649, i16 15661, i16 15667, i16 15671, i16 15679, i16 15683, i16 15727, i16 15731, i16 15733, i16 15737, i16 15739, i16 15749, i16 15761, i16 15767, i16 15773, i16 15787, i16 15791, i16 15797, i16 15803, i16 15809, i16 15817, i16 15823, i16 15859, i16 15877, i16 15881, i16 15887, i16 15889, i16 15901, i16 15907, i16 15913, i16 15919, i16 15923, i16 15937, i16 15959, i16 15971, i16 15973, i16 15991, i16 16001, i16 16007, i16 16033, i16 16057, i16 16061, i16 16063, i16 16067, i16 16069, i16 16073, i16 16087, i16 16091, i16 16097, i16 16103, i16 16111, i16 16127, i16 16139, i16 16141, i16 16183, i16 16187, i16 16189, i16 16193, i16 16217, i16 16223, i16 16229, i16 16231, i16 16249, i16 16253, i16 16267, i16 16273, i16 16301, i16 16319, i16 16333, i16 16339, i16 16349, i16 16361, i16 16363, i16 16369, i16 16381, i16 16411, i16 16417, i16 16421, i16 16427, i16 16433, i16 16447, i16 16451, i16 16453, i16 16477, i16 16481, i16 16487, i16 16493, i16 16519, i16 16529, i16 16547, i16 16553, i16 16561, i16 16567, i16 16573, i16 16603, i16 16607, i16 16619, i16 16631, i16 16633, i16 16649, i16 16651, i16 16657, i16 16661, i16 16673, i16 16691, i16 16693, i16 16699, i16 16703, i16 16729, i16 16741, i16 16747, i16 16759, i16 16763, i16 16787, i16 16811, i16 16823, i16 16829, i16 16831, i16 16843, i16 16871, i16 16879, i16 16883, i16 16889, i16 16901, i16 16903, i16 16921, i16 16927, i16 16931, i16 16937, i16 16943, i16 16963, i16 16979, i16 16981, i16 16987, i16 16993, i16 17011, i16 17021, i16 17027, i16 17029, i16 17033, i16 17041, i16 17047, i16 17053, i16 17077, i16 17093, i16 17099, i16 17107, i16 17117, i16 17123, i16 17137, i16 17159, i16 17167, i16 17183, i16 17189, i16 17191, i16 17203, i16 17207, i16 17209, i16 17231, i16 17239, i16 17257, i16 17291, i16 17293, i16 17299, i16 17317, i16 17321, i16 17327, i16 17333, i16 17341, i16 17351, i16 17359, i16 17377, i16 17383, i16 17387, i16 17389, i16 17393, i16 17401, i16 17417, i16 17419, i16 17431, i16 17443, i16 17449, i16 17467, i16 17471, i16 17477, i16 17483, i16 17489, i16 17491, i16 17497, i16 17509, i16 17519, i16 17539, i16 17551, i16 17569, i16 17573, i16 17579, i16 17581, i16 17597, i16 17599, i16 17609, i16 17623, i16 17627, i16 17657, i16 17659, i16 17669, i16 17681, i16 17683, i16 17707, i16 17713, i16 17729, i16 17737, i16 17747, i16 17749, i16 17761, i16 17783, i16 17789, i16 17791, i16 17807, i16 17827, i16 17837, i16 17839, i16 17851, i16 17863], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @ossl_bn_get0_small_factors() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @_bignum_small_prime_factors
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef %a, i32 noundef %b) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.bn_gencb_st* %cb, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ver = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %cb, i64 0, i32 0
  %0 = load i32, i32* %ver, align 8, !tbaa !4
  switch i32 %0, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %cb_1 = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %cb, i64 0, i32 2, i32 0
  %1 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %cb_1, align 8, !tbaa !10
  %tobool2.not = icmp eq void (i32, i32, i8*)* %1, null
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %sw.bb
  %arg = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %cb, i64 0, i32 1
  %2 = load i8*, i8** %arg, align 8, !tbaa !11
  tail call void %1(i32 noundef %a, i32 noundef %b, i8* noundef %2) #4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %cb8 = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %cb, i64 0, i32 2
  %cb_2 = bitcast %union.anon* %cb8 to i32 (i32, i32, %struct.bn_gencb_st*)**
  %3 = load i32 (i32, i32, %struct.bn_gencb_st*)*, i32 (i32, i32, %struct.bn_gencb_st*)** %cb_2, align 8, !tbaa !10
  %call = tail call i32 %3(i32 noundef %a, i32 noundef %b, %struct.bn_gencb_st* noundef nonnull %cb) #4
  br label %return

return:                                           ; preds = %if.end, %sw.bb, %entry, %sw.bb7, %if.end4
  %retval.0 = phi i32 [ %call, %sw.bb7 ], [ 1, %if.end4 ], [ 1, %entry ], [ 1, %sw.bb ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, %struct.bn_gencb_st* noundef %cb, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @bn_mr_min_checks(i32 noundef %bits) #5
  %cmp = icmp slt i32 %bits, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_generate_prime_ex2, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 118, i8* noundef null) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq %struct.bignum_st* %add, null
  %tobool = icmp ne i32 %safe, 0
  %or.cond = and i1 %tobool, %cmp1
  %cmp3 = icmp ult i32 %bits, 6
  %or.cond73 = and i1 %cmp3, %or.cond
  %cmp5 = icmp ne i32 %bits, 3
  %or.cond74 = and i1 %cmp5, %or.cond73
  br i1 %or.cond74, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_generate_prime_ex2, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 118, i8* noundef null) #4
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %call8 = tail call i8* @CRYPTO_zalloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #4
  %0 = bitcast i8* %call8 to i16*
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.BN_generate_prime_ex2, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %err, label %loop.preheader

loop.preheader:                                   ; preds = %if.end11
  %cmp46122 = icmp sgt i32 %call, 0
  br label %loop

loop:                                             ; preds = %loop.backedge, %loop.preheader
  %c1.0 = phi i32 [ 0, %loop.preheader ], [ %inc, %loop.backedge ]
  br i1 %cmp1, label %if.then17, label %if.else22

if.then17:                                        ; preds = %loop
  %call18 = tail call fastcc i32 @probable_prime(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, i16* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err.loopexit127, label %if.end27

if.else22:                                        ; preds = %loop
  %call23 = tail call fastcc i32 @probable_prime_dh(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, i16* noundef nonnull %0, %struct.bignum_st* noundef nonnull %add, %struct.bignum_st* noundef %rem, %struct.bignum_ctx* noundef %ctx) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err.loopexit127, label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then17
  %inc = add nuw nsw i32 %c1.0, 1
  %call28 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32 noundef %c1.0) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err.loopexit127, label %if.end31

if.end31:                                         ; preds = %if.end27
  br i1 %tobool, label %if.else41, label %if.then33

if.then33:                                        ; preds = %if.end31
  %call34 = tail call fastcc i32 @bn_is_prime_int(%struct.bignum_st* noundef %ret, i32 noundef %call, %struct.bignum_ctx* noundef %ctx, i32 noundef 0, %struct.bn_gencb_st* noundef %cb) #5
  switch i32 %call34, label %err [
    i32 -1, label %err.loopexit127
    i32 0, label %loop.backedge
  ]

loop.backedge:                                    ; preds = %for.body, %if.end53, %if.then33
  br label %loop

if.else41:                                        ; preds = %if.end31
  %call42 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %ret) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err.loopexit127, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else41
  br i1 %cmp46122, label %for.body, label %err

for.cond:                                         ; preds = %if.end60
  %exitcond.not = icmp eq i32 %inc65, %call
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !12

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0123 = phi i32 [ %inc65, %for.cond ], [ 0, %for.cond.preheader ]
  %call47 = tail call fastcc i32 @bn_is_prime_int(%struct.bignum_st* noundef %ret, i32 noundef 1, %struct.bignum_ctx* noundef %ctx, i32 noundef 0, %struct.bn_gencb_st* noundef %cb) #5
  switch i32 %call47, label %if.end53 [
    i32 -1, label %err
    i32 0, label %loop.backedge
  ]

if.end53:                                         ; preds = %for.body
  %call54 = tail call fastcc i32 @bn_is_prime_int(%struct.bignum_st* noundef nonnull %call12, i32 noundef 1, %struct.bignum_ctx* noundef %ctx, i32 noundef 0, %struct.bn_gencb_st* noundef %cb) #5
  switch i32 %call54, label %if.end60 [
    i32 -1, label %err
    i32 0, label %loop.backedge
  ]

if.end60:                                         ; preds = %if.end53
  %call61 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 2, i32 noundef %c1.0) #5
  %tobool62.not = icmp eq i32 %call61, 0
  %inc65 = add nuw nsw i32 %i.0123, 1
  br i1 %tobool62.not, label %err, label %for.cond

err.loopexit127:                                  ; preds = %if.then17, %if.else22, %if.end27, %if.else41, %if.then33
  br label %err

err:                                              ; preds = %if.end53, %for.body, %if.end60, %for.cond, %for.cond.preheader, %if.then33, %err.loopexit127, %if.end11
  %found.0 = phi i32 [ 0, %if.end11 ], [ 0, %err.loopexit127 ], [ 1, %if.then33 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ], [ 0, %if.end60 ], [ 0, %for.body ], [ 0, %if.end53 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 206) #4
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then10, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then10 ], [ %found.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @bn_mr_min_checks(i32 noundef %bits) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %bits, 2048
  %. = select i1 %cmp, i32 128, i32 64
  ret i32 %.
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @probable_prime(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %safe, i16* nocapture noundef %mods, %struct.bignum_ctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @calc_trial_divisions(i32 noundef %bits) #5
  %sub = add nsw i32 %call, -1
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = zext i16 %1 to i64
  %sub1 = xor i64 %conv, -1
  %call2134 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef 1, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not135 = icmp eq i32 %call2134, 0
  br i1 %tobool.not135, label %cleanup82, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %tobool3.not = icmp eq i32 %safe, 0
  %cmp126 = icmp sgt i32 %call, 1
  %cmp24 = icmp slt i32 %bits, 32
  %wide.trip.count = zext i32 %call to i64
  %wide.trip.count149 = zext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %again.backedge
  br i1 %tobool3.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef %rnd, i32 noundef 1) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup82, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  br i1 %cmp126, label %for.body, label %loop.preheader

for.body:                                         ; preds = %if.end7, %if.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end16 ], [ 1, %if.end7 ]
  %arrayidx10 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv
  %2 = load i16, i16* %arrayidx10, align 2, !tbaa !14
  %conv11 = zext i16 %2 to i64
  %call12 = tail call i64 @BN_mod_word(%struct.bignum_st* noundef %rnd, i64 noundef %conv11) #4
  %cmp13 = icmp eq i64 %call12, -1
  br i1 %cmp13, label %cleanup82, label %if.end16

if.end16:                                         ; preds = %for.body
  %conv17 = trunc i64 %call12 to i16
  %arrayidx19 = getelementptr inbounds i16, i16* %mods, i64 %indvars.iv
  store i16 %conv17, i16* %arrayidx19, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %loop.preheader, label %for.body, !llvm.loop !16

loop.preheader:                                   ; preds = %if.end16, %if.end7
  br label %loop

loop:                                             ; preds = %loop.preheader, %if.then61
  %delta.0 = phi i64 [ %add64, %if.then61 ], [ 0, %loop.preheader ]
  br i1 %cmp126, label %for.body23.lr.ph, label %for.end72

for.body23.lr.ph:                                 ; preds = %loop
  %cmp27 = icmp ult i64 %delta.0, 2147483648
  %or.cond = select i1 %cmp24, i1 %cmp27, i1 false
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.inc70
  %indvars.iv146 = phi i64 [ 1, %for.body23.lr.ph ], [ %indvars.iv.next147, %for.inc70 ]
  br i1 %or.cond, label %land.lhs.true29, label %if.end40

land.lhs.true29:                                  ; preds = %for.body23
  %arrayidx31 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv146
  %3 = load i16, i16* %arrayidx31, align 2, !tbaa !14
  %conv32 = zext i16 %3 to i64
  %mul = mul nuw nsw i64 %conv32, %conv32
  %call36 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %rnd) #4
  %add = add i64 %call36, %delta.0
  %cmp37 = icmp ugt i64 %mul, %add
  br i1 %cmp37, label %for.end72, label %if.end40

if.end40:                                         ; preds = %land.lhs.true29, %for.body23
  %arrayidx52 = getelementptr inbounds i16, i16* %mods, i64 %indvars.iv146
  %4 = load i16, i16* %arrayidx52, align 2, !tbaa !14
  %conv53 = zext i16 %4 to i64
  %add54 = add i64 %delta.0, %conv53
  %arrayidx56 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv146
  %5 = load i16, i16* %arrayidx56, align 2, !tbaa !14
  %conv57 = zext i16 %5 to i64
  %rem58 = urem i64 %add54, %conv57
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end40
  %cmp49 = icmp ult i64 %rem58, 2
  br i1 %cmp49, label %if.then61, label %for.inc70

cond.false:                                       ; preds = %if.end40
  %cmp59 = icmp eq i64 %rem58, 0
  br i1 %cmp59, label %if.then61, label %for.inc70

if.then61:                                        ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 2, %cond.false ], [ 4, %cond.true ]
  %add64 = add i64 %cond, %delta.0
  %cmp65 = icmp ugt i64 %add64, %sub1
  br i1 %cmp65, label %again.backedge, label %loop

for.inc70:                                        ; preds = %cond.true, %cond.false
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %for.end72, label %for.body23, !llvm.loop !17

for.end72:                                        ; preds = %loop, %for.inc70, %land.lhs.true29
  %delta.0144 = phi i64 [ %delta.0, %land.lhs.true29 ], [ %delta.0, %for.inc70 ], [ 0, %loop ]
  %call73 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %rnd, i64 noundef %delta.0144) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup82, label %if.end76

if.end76:                                         ; preds = %for.end72
  %call77 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %rnd) #4
  %cmp78.not = icmp eq i32 %call77, %bits
  br i1 %cmp78.not, label %cleanup82, label %again.backedge

again.backedge:                                   ; preds = %if.then61, %if.end76
  %call2 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef 1, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup82, label %if.end

cleanup82:                                        ; preds = %again.backedge, %land.lhs.true, %for.end72, %if.end76, %for.body, %entry
  %retval.3 = phi i32 [ 0, %entry ], [ 0, %for.body ], [ 0, %again.backedge ], [ 0, %land.lhs.true ], [ 0, %for.end72 ], [ 1, %if.end76 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @probable_prime_dh(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef %safe, i16* nocapture noundef %mods, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, %struct.bignum_ctx* noundef %ctx) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @calc_trial_divisions(i32 noundef %bits) #5
  %sub = add nsw i32 %call, -1
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = zext i16 %1 to i64
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %add) #4
  %cmp6 = icmp ugt i64 %call4, %conv
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %call9 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %add) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %maxdelta.0.in = phi i64 [ %call9, %if.then8 ], [ %conv, %if.end ]
  %maxdelta.0 = xor i64 %maxdelta.0.in, -1
  %call12199 = tail call i32 @BN_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef 0, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not200 = icmp eq i32 %call12199, 0
  br i1 %tobool.not200, label %err, label %if.end14.lr.ph

if.end14.lr.ph:                                   ; preds = %if.end11
  %cmp23 = icmp eq %struct.bignum_st* %rem, null
  %tobool26.not = icmp eq i32 %safe, 0
  %cond = select i1 %tobool26.not, i64 1, i64 3
  %cond42 = select i1 %tobool26.not, i64 3, i64 5
  %cmp52191 = icmp sgt i32 %call, 1
  %cmp69 = icmp slt i32 %bits, 32
  %wide.trip.count = zext i32 %call to i64
  %wide.trip.count210 = zext i32 %call to i64
  br label %if.end14

again.loopexit:                                   ; preds = %if.then107
  %call12 = tail call i32 @BN_rand_ex(%struct.bignum_st* noundef %rnd, i32 noundef %bits, i32 noundef 0, i32 noundef 1, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end14.lr.ph, %again.loopexit
  %call15 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef %add, %struct.bignum_ctx* noundef %ctx) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @BN_sub(%struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef nonnull %call2) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end22
  %call28 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %rnd, i64 noundef %cond) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end36

if.else:                                          ; preds = %if.end22
  %call32 = tail call i32 @BN_add(%struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef nonnull %rem) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.else, %if.then25
  %call37 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %rnd) #4
  %cmp38 = icmp slt i32 %call37, %bits
  br i1 %cmp38, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %call40 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %rnd) #4
  %cmp44 = icmp ult i64 %call40, %cond42
  br i1 %cmp44, label %if.then46, label %if.end51

if.then46:                                        ; preds = %lor.lhs.false, %if.end36
  %call47 = tail call i32 @BN_add(%struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef %rnd, %struct.bignum_st* noundef %add) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.then46, %lor.lhs.false
  br i1 %cmp52191, label %for.body, label %loop.preheader

for.body:                                         ; preds = %if.end51, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.end51 ]
  %arrayidx55 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv
  %2 = load i16, i16* %arrayidx55, align 2, !tbaa !14
  %conv56 = zext i16 %2 to i64
  %call57 = tail call i64 @BN_mod_word(%struct.bignum_st* noundef %rnd, i64 noundef %conv56) #4
  %cmp58 = icmp eq i64 %call57, -1
  br i1 %cmp58, label %err, label %for.inc

for.inc:                                          ; preds = %for.body
  %conv62 = trunc i64 %call57 to i16
  %arrayidx64 = getelementptr inbounds i16, i16* %mods, i64 %indvars.iv
  store i16 %conv62, i16* %arrayidx64, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %loop.preheader, label %for.body, !llvm.loop !18

loop.preheader:                                   ; preds = %for.inc, %if.end51
  br label %loop

loop:                                             ; preds = %loop.preheader, %if.then107
  %delta.0 = phi i64 [ %add109, %if.then107 ], [ 0, %loop.preheader ]
  br i1 %cmp52191, label %for.body68.lr.ph, label %for.end117

for.body68.lr.ph:                                 ; preds = %loop
  %cmp71 = icmp ult i64 %delta.0, 2147483648
  %or.cond = select i1 %cmp69, i1 %cmp71, i1 false
  br label %for.body68

for.body68:                                       ; preds = %for.body68.lr.ph, %for.inc115
  %indvars.iv207 = phi i64 [ 1, %for.body68.lr.ph ], [ %indvars.iv.next208, %for.inc115 ]
  br i1 %or.cond, label %land.lhs.true73, label %if.end85

land.lhs.true73:                                  ; preds = %for.body68
  %arrayidx75 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv207
  %3 = load i16, i16* %arrayidx75, align 2, !tbaa !14
  %conv76 = zext i16 %3 to i64
  %mul = mul nuw nsw i64 %conv76, %conv76
  %call80 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %rnd) #4
  %add81 = add i64 %call80, %delta.0
  %cmp82 = icmp ugt i64 %mul, %add81
  br i1 %cmp82, label %for.end117, label %if.end85

if.end85:                                         ; preds = %land.lhs.true73, %for.body68
  %arrayidx98 = getelementptr inbounds i16, i16* %mods, i64 %indvars.iv207
  %4 = load i16, i16* %arrayidx98, align 2, !tbaa !14
  %conv99 = zext i16 %4 to i64
  %add100 = add i64 %delta.0, %conv99
  %arrayidx102 = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv207
  %5 = load i16, i16* %arrayidx102, align 2, !tbaa !14
  %conv103 = zext i16 %5 to i64
  %rem104 = urem i64 %add100, %conv103
  br i1 %tobool26.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end85
  %cmp95 = icmp ult i64 %rem104, 2
  br i1 %cmp95, label %if.then107, label %for.inc115

cond.false:                                       ; preds = %if.end85
  %cmp105 = icmp eq i64 %rem104, 0
  br i1 %cmp105, label %if.then107, label %for.inc115

if.then107:                                       ; preds = %cond.false, %cond.true
  %call108 = tail call i64 @BN_get_word(%struct.bignum_st* noundef %add) #4
  %add109 = add i64 %call108, %delta.0
  %cmp110 = icmp ugt i64 %add109, %maxdelta.0
  br i1 %cmp110, label %again.loopexit, label %loop

for.inc115:                                       ; preds = %cond.true, %cond.false
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %for.end117, label %for.body68, !llvm.loop !19

for.end117:                                       ; preds = %loop, %for.inc115, %land.lhs.true73
  %delta.0205 = phi i64 [ %delta.0, %land.lhs.true73 ], [ %delta.0, %for.inc115 ], [ 0, %loop ]
  %call118 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %rnd, i64 noundef %delta.0205) #4
  %tobool119.not = icmp ne i32 %call118, 0
  %spec.select = zext i1 %tobool119.not to i32
  br label %err

err:                                              ; preds = %again.loopexit, %if.end14, %if.end18, %if.then25, %if.else, %if.then46, %for.body, %if.end11, %for.end117, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.end117 ], [ 0, %if.end11 ], [ 0, %for.body ], [ 0, %if.then46 ], [ 0, %if.else ], [ 0, %if.then25 ], [ 0, %if.end18 ], [ 0, %if.end14 ], [ 0, %again.loopexit ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn_is_prime_int(%struct.bignum_st* noundef %w, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef %cb) unnamed_addr #1 {
entry:
  %status = alloca i32, align 4
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = tail call %struct.bignum_st* @BN_value_one() #4
  %call1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %w, %struct.bignum_st* noundef %call) #4
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup49, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %w) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %w, i64 noundef 3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %cleanup49

if.else:                                          ; preds = %if.end
  %call8 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %w, i64 noundef 2) #4
  br label %cleanup49

if.end9:                                          ; preds = %if.then3
  %tobool10.not = icmp eq i32 %do_trial_division, 0
  br i1 %tobool10.not, label %if.end35, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %w) #4
  %call13 = tail call fastcc i32 @calc_trial_divisions(i32 noundef %call12) #5
  %cmp1479 = icmp sgt i32 %call13, 1
  br i1 %cmp1479, label %for.body.preheader, label %cleanup32

for.body.preheader:                               ; preds = %if.then11
  %wide.trip.count = zext i32 %call13 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [2048 x i16], [2048 x i16]* @primes, i64 0, i64 %indvars.iv
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv = zext i16 %1 to i64
  %call15 = tail call i64 @BN_mod_word(%struct.bignum_st* noundef %w, i64 noundef %conv) #4
  switch i64 %call15, label %for.inc [
    i64 -1, label %cleanup49
    i64 0, label %if.then22
  ]

if.then22:                                        ; preds = %for.body
  %conv.le = zext i16 %1 to i64
  %call26 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %w, i64 noundef %conv.le) #4
  br label %cleanup49

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup32, label %for.body, !llvm.loop !20

cleanup32:                                        ; preds = %for.inc, %if.then11
  %call28 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 1, i32 noundef -1) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup49, label %if.end35

if.end35:                                         ; preds = %cleanup32, %if.end9
  %cmp36 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp36, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end35
  %call38 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp39 = icmp eq %struct.bignum_ctx* %call38, null
  br i1 %cmp39, label %err, label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.end35
  %ctxlocal.0 = phi %struct.bignum_ctx* [ %call38, %land.lhs.true ], [ null, %if.end35 ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call38, %land.lhs.true ], [ %ctx, %if.end35 ]
  %call43 = call i32 @ossl_bn_miller_rabin_is_prime(%struct.bignum_st* noundef %w, i32 noundef %checks, %struct.bignum_ctx* noundef nonnull %ctx.addr.0, %struct.bn_gencb_st* noundef %cb, i32 noundef 0, i32* noundef nonnull %status) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.end42
  %2 = load i32, i32* %status, align 4, !tbaa !21
  %cmp47 = icmp eq i32 %2, 3
  %conv48 = zext i1 %cmp47 to i32
  br label %err

err:                                              ; preds = %if.end42, %land.lhs.true, %if.end46
  %ret.0 = phi i32 [ -1, %land.lhs.true ], [ %conv48, %if.end46 ], [ 0, %if.end42 ]
  %ctxlocal.1 = phi %struct.bignum_ctx* [ null, %land.lhs.true ], [ %ctxlocal.0, %if.end46 ], [ %ctxlocal.0, %if.end42 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctxlocal.1) #4
  br label %cleanup49

cleanup49:                                        ; preds = %for.body, %if.then22, %if.then3, %entry, %cleanup32, %err, %if.else
  %retval.3 = phi i32 [ %ret.0, %err ], [ -1, %cleanup32 ], [ %call8, %if.else ], [ 0, %entry ], [ 1, %if.then3 ], [ %call26, %if.then22 ], [ -1, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.3
}

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_generate_prime_ex(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_generate_prime_ex2(%struct.bignum_st* noundef %ret, i32 noundef %bits, i32 noundef %safe, %struct.bignum_st* noundef %add, %struct.bignum_st* noundef %rem, %struct.bn_gencb_st* noundef %cb, %struct.bignum_ctx* noundef nonnull %call) #5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #3

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BN_is_prime_ex(%struct.bignum_st* noundef %a, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx_passed, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %a, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx_passed, i32 noundef 0, %struct.bn_gencb_st* noundef %cb) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %w, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %w) #4
  %call1 = tail call fastcc i32 @bn_mr_min_checks(i32 noundef %call) #5
  %cmp = icmp sgt i32 %call1, %checks
  %spec.select = select i1 %cmp, i32 %call1, i32 %checks
  %call2 = tail call fastcc i32 @bn_is_prime_int(%struct.bignum_st* noundef %w, i32 noundef %spec.select, %struct.bignum_ctx* noundef %ctx, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef %cb) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_is_prime_fasttest_ex(%struct.bignum_st* noundef %w, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %w, i32 noundef %checks, %struct.bignum_ctx* noundef %ctx, i32 noundef %do_trial_division, %struct.bn_gencb_st* noundef %cb) #5
  ret i32 %call
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BN_check_prime(%struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ossl_bn_check_prime(%struct.bignum_st* noundef %p, i32 noundef 0, %struct.bignum_ctx* noundef %ctx, i32 noundef 1, %struct.bn_gencb_st* noundef %cb) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_bn_miller_rabin_is_prime(%struct.bignum_st* noundef %w, i32 noundef %iterations, %struct.bignum_ctx* noundef %ctx, %struct.bn_gencb_st* noundef %cb, i32 noundef %enhanced, i32* nocapture noundef writeonly %status) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %w) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp.not = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %w) #4
  %tobool9.not = icmp eq %struct.bignum_st* %call8, null
  br i1 %tobool9.not, label %err, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call2, i64 noundef 1) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %w) #4
  %tobool15.not = icmp eq %struct.bignum_st* %call14, null
  br i1 %tobool15.not, label %err, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call17 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call3, i64 noundef 3) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %land.lhs.true16
  %call21 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.end20
  %call23 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call3) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %while.cond, label %err

while.cond:                                       ; preds = %lor.lhs.false, %while.cond
  %a.0 = phi i32 [ %inc, %while.cond ], [ 1, %lor.lhs.false ]
  %call27 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %call2, i32 noundef %a.0) #4
  %tobool28.not = icmp eq i32 %call27, 0
  %inc = add nuw nsw i32 %a.0, 1
  br i1 %tobool28.not, label %while.cond, label %while.end, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %call29 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call2, i32 noundef %a.0) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %while.end
  %call33 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #4
  %cmp34 = icmp eq %struct.bn_mont_ctx_st* %call33, null
  br i1 %cmp34, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end32
  %call36 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call33, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %lor.lhs.false35
  %cmp40 = icmp eq i32 %iterations, 0
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %w) #4
  %call43 = tail call fastcc i32 @bn_mr_min_checks(i32 noundef %call42) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end39
  %iterations.addr.0 = phi i32 [ %call43, %if.then41 ], [ %iterations, %if.end39 ]
  %cmp45243 = icmp sgt i32 %iterations.addr.0, 0
  br i1 %cmp45243, label %for.body.lr.ph, label %err.sink.split

for.body.lr.ph:                                   ; preds = %if.end44
  %tobool53.not = icmp eq i32 %enhanced, 0
  %cmp76240 = icmp ugt i32 %a.0, 1
  br label %for.body

for.cond:                                         ; preds = %outer_loop
  %exitcond247.not = icmp eq i32 %inc129, %iterations.addr.0
  br i1 %exitcond247.not, label %err.sink.split, label %for.body, !llvm.loop !23

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %inc129, %for.cond ]
  %call46 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %call3, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %for.body
  %call49 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %call7, i64 noundef 2) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false48
  br i1 %tobool53.not, label %if.end63, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.then54
  %call59 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call1) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err.sink.split, label %if.end63

if.end63:                                         ; preds = %if.end58, %if.end52
  %call64 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef nonnull %call33) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.end63
  %call68 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call6) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %outer_loop

lor.lhs.false70:                                  ; preds = %if.end67
  %call71 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #4
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %outer_loop, label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %lor.lhs.false70
  br i1 %cmp76240, label %for.body77, label %for.end

for.cond75:                                       ; preds = %if.end88
  %exitcond.not = icmp eq i32 %inc93, %a.0
  br i1 %exitcond.not, label %for.end, label %for.body77, !llvm.loop !24

for.body77:                                       ; preds = %for.cond75.preheader, %for.cond75
  %j.0241 = phi i32 [ %inc93, %for.cond75 ], [ 1, %for.cond75.preheader ]
  %call78 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call6) #4
  %tobool79.not = icmp eq %struct.bignum_st* %call78, null
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %for.body77
  %call81 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx) #4
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end84

if.end84:                                         ; preds = %lor.lhs.false80
  %call85 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call2) #4
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %outer_loop, label %if.end88

if.end88:                                         ; preds = %if.end84
  %call89 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call6) #4
  %tobool90.not = icmp eq i32 %call89, 0
  %inc93 = add nuw nsw i32 %j.0241, 1
  br i1 %tobool90.not, label %for.cond75, label %composite

for.end:                                          ; preds = %for.cond75.preheader, %for.cond75
  %call94 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call6) #4
  %tobool95.not = icmp eq %struct.bignum_st* %call94, null
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %for.end
  %call97 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %if.end100

if.end100:                                        ; preds = %lor.lhs.false96
  %call101 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call6) #4
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %composite

if.end104:                                        ; preds = %if.end100
  %call105 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call6) #4
  %tobool106.not = icmp eq %struct.bignum_st* %call105, null
  br i1 %tobool106.not, label %err, label %composite

composite:                                        ; preds = %if.end88, %if.end104, %if.end100
  br i1 %tobool53.not, label %err.sink.split, label %if.then110

if.then110:                                       ; preds = %composite
  %call111 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call4, i64 noundef 1) #4
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.then110
  %call114 = tail call i32 @BN_gcd(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %w, %struct.bignum_ctx* noundef %ctx) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %if.end117

if.end117:                                        ; preds = %lor.lhs.false113
  %call118 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call1) #4
  %tobool119.not = icmp eq i32 %call118, 0
  %. = select i1 %tobool119.not, i32 1, i32 2
  br label %err.sink.split

outer_loop:                                       ; preds = %if.end84, %if.end67, %lor.lhs.false70
  %call124 = tail call i32 @BN_GENCB_call(%struct.bn_gencb_st* noundef %cb, i32 noundef 1, i32 noundef %i.0244) #5
  %tobool125.not = icmp eq i32 %call124, 0
  %inc129 = add nuw nsw i32 %i.0244, 1
  br i1 %tobool125.not, label %err, label %for.cond

err.sink.split:                                   ; preds = %for.cond, %if.end58, %if.end44, %composite, %if.end117
  %.sink = phi i32 [ %., %if.end117 ], [ 0, %composite ], [ 3, %if.end44 ], [ 1, %if.end58 ], [ 3, %for.cond ]
  store i32 %.sink, i32* %status, align 4, !tbaa !21
  br label %err

err:                                              ; preds = %outer_loop, %if.end63, %if.then54, %for.body, %lor.lhs.false48, %for.body77, %lor.lhs.false80, %err.sink.split, %if.then110, %lor.lhs.false113, %if.end104, %for.end, %lor.lhs.false96, %if.end32, %lor.lhs.false35, %while.end, %if.end20, %lor.lhs.false, %if.end, %land.lhs.true, %land.lhs.true10, %land.lhs.true13, %land.lhs.true16
  %ret.0 = phi i32 [ 0, %if.end20 ], [ 0, %lor.lhs.false ], [ 0, %if.end32 ], [ 0, %lor.lhs.false113 ], [ 0, %if.then110 ], [ 0, %if.end104 ], [ 0, %lor.lhs.false96 ], [ 0, %for.end ], [ 0, %lor.lhs.false35 ], [ 0, %while.end ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 1, %err.sink.split ], [ 0, %lor.lhs.false80 ], [ 0, %for.body77 ], [ 0, %lor.lhs.false48 ], [ 0, %for.body ], [ 0, %if.then54 ], [ 0, %if.end63 ], [ 0, %outer_loop ]
  %mont.0 = phi %struct.bn_mont_ctx_st* [ null, %if.end20 ], [ null, %lor.lhs.false ], [ null, %if.end32 ], [ %call33, %lor.lhs.false113 ], [ %call33, %if.then110 ], [ %call33, %if.end104 ], [ %call33, %lor.lhs.false96 ], [ %call33, %for.end ], [ %call33, %lor.lhs.false35 ], [ null, %while.end ], [ null, %land.lhs.true16 ], [ null, %land.lhs.true13 ], [ null, %land.lhs.true10 ], [ null, %land.lhs.true ], [ null, %if.end ], [ %call33, %err.sink.split ], [ %call33, %lor.lhs.false80 ], [ %call33, %for.body77 ], [ %call33, %lor.lhs.false48 ], [ %call33, %for.body ], [ %call33, %if.then54 ], [ %call33, %if.end63 ], [ %call33, %outer_loop ]
  tail call void @BN_clear(%struct.bignum_st* noundef %call1) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call2) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call3) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call4) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call5) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call6) #4
  tail call void @BN_clear(%struct.bignum_st* noundef %call7) #4
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #3

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BN_gcd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #3

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #3

declare i32 @BN_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @calc_trial_divisions(i32 noundef %bits) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %bits, 513
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i32 %bits, 1025
  br i1 %cmp1, label %return, label %if.else3

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp ult i32 %bits, 2049
  br i1 %cmp4, label %return, label %if.else6

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp ult i32 %bits, 4097
  %. = select i1 %cmp7, i32 1024, i32 2048
  br label %return

return:                                           ; preds = %if.else6, %if.else3, %if.else, %entry
  %retval.0 = phi i32 [ 64, %entry ], [ 128, %if.else ], [ 384, %if.else3 ], [ %., %if.else6 ]
  ret i32 %retval.0
}

declare i64 @BN_mod_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BN_get_word(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bn_gencb_st", !6, i64 0, !9, i64 8, !7, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
