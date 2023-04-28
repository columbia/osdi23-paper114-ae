; ModuleID = 'ecp_curves.c'
source_filename = "ecp_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }

@secp192r1_p = internal constant [3 x i64] [i64 -1, i64 -2, i64 -1], align 16
@secp192r1_b = internal constant [3 x i64] [i64 -92078683924809295, i64 1128127154243252297, i64 7215053686808805607], align 16
@secp192r1_gx = internal constant [3 x i64] [i64 -792902925453160430, i64 8988939576078862336, i64 1769255009665454326], align 16
@secp192r1_gy = internal constant [3 x i64] [i64 8356842117447370769, i64 7138225120784731605, i64 511487955924736632], align 16
@secp192r1_n = internal constant [3 x i64] [i64 1471491468346665009, i64 -1713440714, i64 -1], align 16
@secp192r1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp224r1_p = internal constant [4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967295], align 16
@secp224r1_b = internal constant [4 x i64] [i64 2813405352741437364, i64 5783942125095737530, i64 866014579497448022, i64 3020229253], align 16
@secp224r1_gx = internal constant [4 x i64] [i64 3761210295710391585, i64 5333319497174618402, i64 7761038610888102073, i64 3071151293], align 16
@secp224r1_gy = internal constant [4 x i64] [i64 4960013060979850804, i64 -3655949140929067164, i64 -5334755671375945754, i64 3174523784], align 16
@secp224r1_n = internal constant [4 x i64] [i64 1431345634452711997, i64 -256586165981122, i64 -1, i64 4294967295], align 16
@secp224r1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp256r1_p = internal constant [4 x i64] [i64 -1, i64 4294967295, i64 0, i64 -4294967295], align 16
@secp256r1_b = internal constant [4 x i64] [i64 4309448131093880907, i64 7285987128567378166, i64 -5482079946633869636, i64 6540974713487397863], align 16
@secp256r1_gx = internal constant [4 x i64] [i64 -819310685055303018, i64 8575836109218198432, i64 -523289583788211982, i64 7716867327612699207], align 16
@secp256r1_gy = internal constant [4 x i64] [i64 -3767753221892779531, i64 3156516839386865358, i64 -8149286295562117610, i64 5756518291402817435], align 16
@secp256r1_n = internal constant [4 x i64] [i64 -884452912994769583, i64 -4834901526196019580, i64 -1, i64 -4294967296], align 16
@secp256r1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp384r1_p = internal constant [6 x i64] [i64 4294967295, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], align 16
@secp384r1_b = internal constant [6 x i64] [i64 3064076045283764975, i64 -4155070326131207779, i64 221811693264799578, i64 1737717031765098770, i64 -7454014372307260135, i64 -5534590068959811612], align 16
@secp384r1_gx = internal constant [6 x i64] [i64 4203087948775033527, i64 6125724927633205612, i64 6482722621138151992, i64 7934563412932533144, i64 -8164525713704047244, i64 -6158731714831383241], align 16
@secp384r1_gy = internal constant [6 x i64] [i64 8809917716911230559, i64 747793036959711645, i64 -1595909157222827840, i64 -507748159718812548, i64 6745997240412855337, i64 3897828414440483951], align 16
@secp384r1_n = internal constant [6 x i64] [i64 -1374695839762142861, i64 6348401684107011962, i64 -4079331616924160545, i64 -1, i64 -1, i64 -1], align 16
@secp384r1_T = internal constant [32 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_16_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_16_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_17_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_17_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_18_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_18_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_19_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_19_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_20_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_20_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_21_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_21_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_22_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_22_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_23_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_23_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_24_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_24_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_25_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_25_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_26_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_26_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_27_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_27_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_28_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_28_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_29_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_29_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_30_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_30_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_31_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_T_31_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp521r1_p = internal constant [9 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 511], align 16
@secp521r1_b = internal constant [9 x i64] [i64 -1205522328057790720, i64 3851667882566759665, i64 1608559935907544839, i64 6204052985702421371, i64 -5137330016661468703, i64 -6711926556896061965, i64 -7882951223617961746, i64 -7692507284855023073, i64 81], align 16
@secp521r1_gx = internal constant [9 x i64] [i64 -468798559011619482, i64 3695401138005885595, i64 -135740037768697634, i64 -6824256941130819288, i64 -565008924583051846, i64 -7177469824220547807, i64 -7043969127616760766, i64 -8823107236856010291, i64 198], align 16
@secp521r1_gy = internal constant [9 x i64] [i64 -8593267801767975344, i64 3836064706166178368, i64 -4228676635086485663, i64 -7498930326476675520, i64 1706790690937005612, i64 -7424953328857299864, i64 6668247425720589273, i64 4118940400423256068, i64 280], align 16
@secp521r1_n = internal constant [9 x i64] [i64 -4940528924288850935, i64 4302566813442262958, i64 9208736750959699408, i64 5874531763869423211, i64 -6, i64 -1, i64 -1, i64 -1, i64 511], align 16
@secp521r1_T = internal constant [32 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_16_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_16_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_17_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_17_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_18_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_18_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_19_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_19_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_20_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_20_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_21_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_21_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_22_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_22_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_23_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_23_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_24_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_24_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_25_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_25_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_26_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_26_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_27_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_27_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_28_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_28_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_29_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_29_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_30_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_30_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_31_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_T_31_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp192k1_p = internal constant [3 x i64] [i64 -4294971849, i64 -1, i64 -1], align 16
@secp192k1_a = internal constant [1 x i64] zeroinitializer, align 8
@secp192k1_b = internal constant [1 x i64] [i64 3], align 8
@secp192k1_gx = internal constant [3 x i64] [i64 2136344160337161341, i64 2787865619045282868, i64 -2643629410584368722], align 16
@secp192k1_gy = internal constant [3 x i64] [i64 4648465270138875805, i64 -8916736041847716300, i64 -7264535526104487769], align 16
@secp192k1_n = internal constant [3 x i64] [i64 1110496206164786573, i64 -7936476137, i64 -1], align 16
@secp192k1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp224k1_p = internal constant [4 x i64] [i64 -4294974099, i64 -1, i64 -1, i64 4294967295], align 16
@secp224k1_a = internal constant [1 x i64] zeroinitializer, align 8
@secp224k1_b = internal constant [1 x i64] [i64 5], align 8
@secp224k1_gx = internal constant [4 x i64] [i64 1116440871503897692, i64 7612323524420597161, i64 5616157919209597089, i64 2705677107], align 16
@secp224k1_gy = internal constant [4 x i64] [i64 -2104786470439132763, i64 -584594974747607719, i64 9203726248751856598, i64 2114494445], align 16
@secp224k1_n = internal constant [4 x i64] [i64 -3823369778850975241, i64 524367505940868, i64 0, i64 4294967296], align 16
@secp224k1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@secp256k1_p = internal constant [4 x i64] [i64 -4294968273, i64 -1, i64 -1, i64 -1], align 16
@secp256k1_a = internal constant [1 x i64] zeroinitializer, align 8
@secp256k1_b = internal constant [1 x i64] [i64 7], align 8
@secp256k1_gx = internal constant [4 x i64] [i64 6481385041966929816, i64 188021827762530521, i64 6170039885052185351, i64 8772561819708210092], align 16
@secp256k1_gy = internal constant [4 x i64] [i64 -7185545363635252040, i64 -209500633525038055, i64 6747795201694173352, i64 5204712524664259685], align 16
@secp256k1_n = internal constant [4 x i64] [i64 -4624529908474429119, i64 -4994812053365940165, i64 -2, i64 -1], align 16
@secp256k1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@brainpoolP256r1_p = internal constant [4 x i64] [i64 2311270323689771895, i64 7943213001558335528, i64 4496292894210231666, i64 -6198263861319128644], align 16
@brainpoolP256r1_a = internal constant [4 x i64] [i64 -1636412755085838887, i64 -324164885101650836, i64 -1227664998294421529, i64 9032542404991529047], align 16
@brainpoolP256r1_b = internal constant [4 x i64] [i64 7767825457231955894, i64 -7672983498223263282, i64 -923037976846959425, i64 2800214691157789508], align 16
@brainpoolP256r1_gx = internal constant [4 x i64] [i64 4198572826427273826, i64 -5053557880721169470, i64 3191724131859150767, i64 -8371436644322093109], align 16
@brainpoolP256r1_gy = internal constant [4 x i64] [i64 6637554640278022551, i64 -4433999359445725612, i64 -7496164501933187639, i64 6088576656054338813], align 16
@brainpoolP256r1_n = internal constant [4 x i64] [i64 -8061990328899971417, i64 -8342501991185799433, i64 4496292894210231665, i64 -6198263861319128644], align 16
@brainpoolP256r1_T = internal constant [16 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@brainpoolP384r1_p = internal constant [6 x i64] [i64 -8698984072815842221, i64 -5993262882146674063, i64 1347097566612230435, i64 1526563086152259252, i64 1107163671716839903, i64 -8306574491275203288], align 16
@brainpoolP384r1_a = internal constant [6 x i64] [i64 335737924824737830, i64 -8456210569144642325, i64 1410020238645393679, i64 -4413911852670376057, i64 4355552632119865248, i64 8918115475071440140], align 16
@brainpoolP384r1_b = internal constant [6 x i64] [i64 4230998357940653073, i64 8985869839777909140, i64 3352946025465340629, i64 3438355245973688998, i64 -8414495055998335876, i64 335737924824737830], align 16
@brainpoolP384r1_gx = internal constant [6 x i64] [i64 -1186783291851362530, i64 -1718439692932331862, i64 -2630160464876859160, i64 -8626746346542379037, i64 -6726624664623169685, i64 2097662510161151487], align 16
@brainpoolP384r1_gy = internal constant [6 x i64] [i64 4792396531824874261, i64 1028586674454626577, i64 -2189869477761308376, i64 7113166411453454436, i64 6679378719998465362, i64 -8449283461998853468], align 16
@brainpoolP384r1_n = internal constant [6 x i64] [i64 4289733633151100261, i64 -3514295694670183664, i64 2240099277684876711, i64 1526563086152259251, i64 1107163671716839903, i64 -8306574491275203288], align 16
@brainpoolP384r1_T = internal constant [32 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_16_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_16_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_17_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_17_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_18_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_18_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_19_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_19_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_20_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_20_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_21_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_21_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_22_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_22_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_23_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_23_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_24_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_24_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_25_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_25_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_26_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_26_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_27_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_27_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_28_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_28_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_29_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_29_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_30_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_30_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_31_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_T_31_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@brainpoolP512r1_p = internal constant [8 x i64] [i64 2930260431521597683, i64 2918894611604883077, i64 -5850843135254232858, i64 9029043254863489090, i64 -2998380533618898831, i64 -3805385882173058546, i64 4599554755319692295, i64 -6134573700119673717], align 16
@brainpoolP512r1_a = internal constant [8 x i64] [i64 -1746925731717540662, i64 9156125524185237433, i64 733789637240866997, i64 3309403945136634529, i64 -6326359236773649476, i64 -7724837137124092400, i64 -2147529528247628603, i64 8660601516620528521], align 16
@brainpoolP512r1_b = internal constant [8 x i64] [i64 2885045271355914019, i64 -7475886632936479267, i64 8645948983640342119, i64 3166813089265986637, i64 -8387170674177665113, i64 -6330589237864369719, i64 -1542373212498862758, i64 4465624766311842250], align 16
@brainpoolP512r1_gx = internal constant [8 x i64] [i64 -8415782903455549406, i64 8965910700118138472, i64 5823550673135435103, i64 -55415966350125939, i64 -5459661344807581298, i64 -8796199190748653887, i64 6494527313417104019, i64 -9102086292842292892], align 16
@brainpoolP512r1_gy = internal constant [8 x i64] [i64 8704646705537616018, i64 -3329801490789280762, i64 6614182396149851054, i64 -5558323433720297378, i64 -6917312030724620015, i64 -1006001461753709798, i64 -4545610137825959171, i64 9069748673103213292], align 16
@brainpoolP512r1_n = internal constant [8 x i64] [i64 -5366154943270420375, i64 2139723849122306781, i64 4721568021488603207, i64 6142448377308718617, i64 -2998380533618898832, i64 -3805385882173058546, i64 4599554755319692295, i64 -6134573700119673717], align 16
@brainpoolP512r1_T = internal constant [32 x %struct.mbedtls_ecp_point] [%struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_0_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_0_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i32 0, i32 0) } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_1_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_1_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_2_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_2_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_3_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_3_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_4_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_4_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_5_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_5_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_6_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_6_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_7_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_7_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_8_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_8_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_9_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_9_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_10_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_10_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_11_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_11_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_12_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_12_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_13_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_13_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_14_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_14_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_15_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_15_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_16_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_16_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_17_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_17_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_18_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_18_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_19_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_19_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_20_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_20_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_21_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_21_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_22_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_22_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_23_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_23_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_24_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_24_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_25_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_25_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_26_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_26_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_27_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_27_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_28_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_28_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_29_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_29_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_30_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_30_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }, %struct.mbedtls_ecp_point { %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_31_X, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_T_31_Y, i32 0, i32 0) }, %struct.mbedtls_mpi { i32 1, i64 0, i64* null } }], align 16
@mpi_one = internal global [1 x i64] [i64 1], align 8
@secp192r1_T_0_X = internal constant [3 x i64] [i64 -792902925453160430, i64 8988939576078862336, i64 1769255009665454326], align 16
@secp192r1_T_0_Y = internal constant [3 x i64] [i64 8356842117447370769, i64 7138225120784731605, i64 511487955924736632], align 16
@secp192r1_T_1_X = internal constant [3 x i64] [i64 -4412171553108418921, i64 -5279055294744052335, i64 -1310056077717460364], align 16
@secp192r1_T_1_Y = internal constant [3 x i64] [i64 1930213474500833672, i64 1102511159383566990, i64 2224475590561838533], align 16
@secp192r1_T_2_X = internal constant [3 x i64] [i64 -355626925151852800, i64 1430173140974513595, i64 4490720139021403477], align 16
@secp192r1_T_2_Y = internal constant [3 x i64] [i64 -1849056476761099935, i64 -8682471272347027592, i64 1445952524868073329], align 16
@secp192r1_T_3_X = internal constant [3 x i64] [i64 -781454585916934882, i64 7706757441523143741, i64 -4455291444941278765], align 16
@secp192r1_T_3_Y = internal constant [3 x i64] [i64 -1991770225872767711, i64 -1331111715298339049, i64 -6123024466218922167], align 16
@secp192r1_T_4_X = internal constant [3 x i64] [i64 3334769759770929688, i64 6416334665519594514, i64 -2929491821474922291], align 16
@secp192r1_T_4_Y = internal constant [3 x i64] [i64 -349414848755414033, i64 4156043828481832666, i64 -5590749821288498252], align 16
@secp192r1_T_5_X = internal constant [3 x i64] [i64 2204070333056670061, i64 -1838216564022548969, i64 7061918293723357330], align 16
@secp192r1_T_5_Y = internal constant [3 x i64] [i64 -8081321557150273612, i64 -8541490503711346652, i64 -2569841271383337965], align 16
@secp192r1_T_6_X = internal constant [3 x i64] [i64 500376973006234122, i64 1515379119491509682, i64 3410594649900840471], align 16
@secp192r1_T_6_Y = internal constant [3 x i64] [i64 3336550126558947069, i64 -5564103113196549191, i64 6150058409215503930], align 16
@secp192r1_T_7_X = internal constant [3 x i64] [i64 4893995271510362828, i64 8126922527924354060, i64 -5784100294663864854], align 16
@secp192r1_T_7_Y = internal constant [3 x i64] [i64 -7076312153891950547, i64 5057352304208211567, i64 3579515114551797414], align 16
@secp192r1_T_8_X = internal constant [3 x i64] [i64 -3655419009348201975, i64 7256591982428497208, i64 -3702838898558864229], align 16
@secp192r1_T_8_Y = internal constant [3 x i64] [i64 -8791824306465737678, i64 7194193526064578658, i64 -8989960589868618270], align 16
@secp192r1_T_9_X = internal constant [3 x i64] [i64 8980575966669247886, i64 7499619439529908379, i64 -7470289943951880698], align 16
@secp192r1_T_9_Y = internal constant [3 x i64] [i64 1277107321610326695, i64 -1738105800659745923, i64 -1944496518272975962], align 16
@secp192r1_T_10_X = internal constant [3 x i64] [i64 3658466947402640156, i64 7298248005471434015, i64 -5971092923232965035], align 16
@secp192r1_T_10_Y = internal constant [3 x i64] [i64 -1210310925032895271, i64 9032151979515853987, i64 1152665582712548973], align 16
@secp192r1_T_11_X = internal constant [3 x i64] [i64 -1559335285237953033, i64 -2421833996022841665, i64 -2471714379514949260], align 16
@secp192r1_T_11_Y = internal constant [3 x i64] [i64 3697466992875454041, i64 6919595519124014931, i64 -8485410180064469019], align 16
@secp192r1_T_12_X = internal constant [3 x i64] [i64 1816542257663550504, i64 -1164513535439598248, i64 7366182225199528634], align 16
@secp192r1_T_12_Y = internal constant [3 x i64] [i64 4632286694251822650, i64 1657855753399682526, i64 -633495074786366494], align 16
@secp192r1_T_13_X = internal constant [3 x i64] [i64 4973477679808696152, i64 -7473995825119465615, i64 5025109431760726626], align 16
@secp192r1_T_13_Y = internal constant [3 x i64] [i64 -7191230229333389942, i64 164797972323506044, i64 8155860645137761444], align 16
@secp192r1_T_14_X = internal constant [3 x i64] [i64 2007033746255727493, i64 3662015621603869481, i64 -223711573173990051], align 16
@secp192r1_T_14_Y = internal constant [3 x i64] [i64 -8820991786971022262, i64 9111959846645765765, i64 -6751045895864016517], align 16
@secp192r1_T_15_X = internal constant [3 x i64] [i64 -3109875934963990555, i64 -6982256259281343439, i64 5204111505917620075], align 16
@secp192r1_T_15_Y = internal constant [3 x i64] [i64 -6953832708598026575, i64 1374791067219377809, i64 2061464460428080473], align 16
@secp224r1_T_0_X = internal constant [4 x i64] [i64 3761210295710391585, i64 5333319497174618402, i64 7761038610888102073, i64 3071151293], align 16
@secp224r1_T_0_Y = internal constant [4 x i64] [i64 4960013060979850804, i64 -3655949140929067164, i64 -5334755671375945754, i64 3174523784], align 16
@secp224r1_T_1_X = internal constant [4 x i64] [i64 -372723181204997664, i64 7931962752704838942, i64 78710173174861340, i64 1460904765], align 16
@secp224r1_T_1_Y = internal constant [4 x i64] [i64 6345551716793718431, i64 5488205225699558847, i64 2720759968917414884, i64 3614196691], align 16
@secp224r1_T_2_X = internal constant [4 x i64] [i64 -6682596618139051325, i64 7344790417760995736, i64 -3359874108540798181, i64 3425897519], align 16
@secp224r1_T_2_Y = internal constant [4 x i64] [i64 -1812418439406716422, i64 4988274625781964590, i64 7689763443258939096, i64 98054379], align 16
@secp224r1_T_3_X = internal constant [4 x i64] [i64 -4412758085761467987, i64 7270940383266626484, i64 -3869669491747528720, i64 3308859089], align 16
@secp224r1_T_3_Y = internal constant [4 x i64] [i64 8503459850627856025, i64 4786080609850881556, i64 -7481590693795639878, i64 2921309595], align 16
@secp224r1_T_4_X = internal constant [4 x i64] [i64 -5237138415252988753, i64 6993544615952479237, i64 5033894838710904040, i64 1434509635], align 16
@secp224r1_T_4_Y = internal constant [4 x i64] [i64 -2823785812737490372, i64 -406748426334461404, i64 -6181077549500221378, i64 92732823], align 16
@secp224r1_T_5_X = internal constant [4 x i64] [i64 -1031211265826172071, i64 -6721885705788433988, i64 -1232708296446883946, i64 2027637169], align 16
@secp224r1_T_5_Y = internal constant [4 x i64] [i64 5251113602075432769, i64 -8268398996246775536, i64 4429714708589958063, i64 4028335003], align 16
@secp224r1_T_6_X = internal constant [4 x i64] [i64 -263968744425184705, i64 8182643091906573952, i64 -51208856733552671, i64 660013077], align 16
@secp224r1_T_6_Y = internal constant [4 x i64] [i64 -8831950961279907309, i64 -8075561880830024816, i64 -7910832442816838654, i64 2038461332], align 16
@secp224r1_T_7_X = internal constant [4 x i64] [i64 6348966279917882807, i64 4573445847027037549, i64 -5269577144898555718, i64 4157001220], align 16
@secp224r1_T_7_Y = internal constant [4 x i64] [i64 1193173332114906345, i64 169005984088088277, i64 4405914907533476270, i64 4109417630], align 16
@secp224r1_T_8_X = internal constant [4 x i64] [i64 -3491821011123171114, i64 1672290356893607817, i64 -4801831184222066699, i64 723071968], align 16
@secp224r1_T_8_Y = internal constant [4 x i64] [i64 -4689969789750853913, i64 1874038501909730272, i64 5018544643190096026, i64 3244225761], align 16
@secp224r1_T_9_X = internal constant [4 x i64] [i64 -3446608094860765784, i64 -9043744405528690057, i64 -475863650244852621, i64 3012570371], align 16
@secp224r1_T_9_Y = internal constant [4 x i64] [i64 8754012880496420618, i64 7997178752980009231, i64 6349820909970834387, i64 1238320692], align 16
@secp224r1_T_10_X = internal constant [4 x i64] [i64 -413342402294030493, i64 8383177709933799930, i64 4384111889204718199, i64 3479342203], align 16
@secp224r1_T_10_Y = internal constant [4 x i64] [i64 -7024213763216430012, i64 8985744861169236305, i64 2677453948322319100, i64 3091401404], align 16
@secp224r1_T_11_X = internal constant [4 x i64] [i64 -2216772745819380391, i64 3852126112092380147, i64 -3750366429949648920, i64 1525682283], align 16
@secp224r1_T_11_Y = internal constant [4 x i64] [i64 8918119115581920565, i64 942555616275586284, i64 -530786702267643047, i64 527516308], align 16
@secp224r1_T_12_X = internal constant [4 x i64] [i64 -109441226935990736, i64 -4234616490633203818, i64 5083989329278534427, i64 3598292312], align 16
@secp224r1_T_12_Y = internal constant [4 x i64] [i64 4109340715796148868, i64 4629885057698053813, i64 -4716397589776359562, i64 2343275392], align 16
@secp224r1_T_13_X = internal constant [4 x i64] [i64 6823129068300612809, i64 3392261066938931430, i64 730016124765718081, i64 534590410], align 16
@secp224r1_T_13_Y = internal constant [4 x i64] [i64 -3671822436855217716, i64 -1666930776216766589, i64 -3287040574493154457, i64 1023243787], align 16
@secp224r1_T_14_X = internal constant [4 x i64] [i64 557910483519214795, i64 -2404802694223943165, i64 5678234716137898193, i64 2972465203], align 16
@secp224r1_T_14_Y = internal constant [4 x i64] [i64 -4346820212281192978, i64 8932685036627400457, i64 354379335680104906, i64 2069567555], align 16
@secp224r1_T_15_X = internal constant [4 x i64] [i64 -3171120862120649429, i64 1877464005505045373, i64 7203036956113564672, i64 1641830473], align 16
@secp224r1_T_15_Y = internal constant [4 x i64] [i64 4998922958400463016, i64 -6432605840212590640, i64 8733376997675254183, i64 3391619060], align 16
@secp256r1_T_0_X = internal constant [4 x i64] [i64 -819310685055303018, i64 8575836109218198432, i64 -523289583788211982, i64 7716867327612699207], align 16
@secp256r1_T_0_Y = internal constant [4 x i64] [i64 -3767753221892779531, i64 3156516839386865358, i64 -8149286295562117610, i64 5756518291402817435], align 16
@secp256r1_T_1_X = internal constant [4 x i64] [i64 -589325351801665424, i64 6429462001799644843, i64 -2320440842956006115, i64 4393841459644329218], align 16
@secp256r1_T_1_Y = internal constant [4 x i64] [i64 -3559916236706780864, i64 7066741607496198319, i64 -6388168602494062693, i64 -1953587433429921082], align 16
@secp256r1_T_2_X = internal constant [4 x i64] [i64 -2506283980988383875, i64 -659922313297557797, i64 2953968070320477329, i64 -2996860540435759778], align 16
@secp256r1_T_2_Y = internal constant [4 x i64] [i64 -6921951732937599594, i64 -877736079644199943, i64 -6827855638676684441, i64 2369638034939395362], align 16
@secp256r1_T_3_X = internal constant [4 x i64] [i64 -5854724366543263041, i64 -4394676556975398310, i64 -2629341413413150556, i64 7069655055622396718], align 16
@secp256r1_T_3_Y = internal constant [4 x i64] [i64 -8558567395198466576, i64 2476139597843950947, i64 5754132953876496240, i64 -2899010846254799715], align 16
@secp256r1_T_4_X = internal constant [4 x i64] [i64 -8374907867136182486, i64 -619920766466959297, i64 -6987905148221227640, i64 62002456210076573], align 16
@secp256r1_T_4_Y = internal constant [4 x i64] [i64 5401234326963998962, i64 -5338137553502027926, i64 4670764613517230353, i64 221421125940884516], align 16
@secp256r1_T_5_X = internal constant [4 x i64] [i64 -8244240476174495762, i64 424449022268014909, i64 8517567290099838553, i64 4347067173809725925], align 16
@secp256r1_T_5_Y = internal constant [4 x i64] [i64 6020043478743357652, i64 1990340144796939665, i64 1272812744710056255, i64 -3238513805951566157], align 16
@secp256r1_T_6_X = internal constant [4 x i64] [i64 7925481607633892995, i64 1429659210764762768, i64 -197474950457445681, i64 -1331733696043836755], align 16
@secp256r1_T_6_Y = internal constant [4 x i64] [i64 161680579751417340, i64 7484149761655976163, i64 934562213021210371, i64 -6691447080185220110], align 16
@secp256r1_T_7_X = internal constant [4 x i64] [i64 -3550036643189203559, i64 5822118309974175329, i64 -5540233126748549857, i64 -7646685202861249830], align 16
@secp256r1_T_7_Y = internal constant [4 x i64] [i64 -6004055312569230501, i64 -6871743790407549169, i64 4515565101839786287, i64 7554379972564990195], align 16
@secp256r1_T_8_X = internal constant [4 x i64] [i64 -7849314102303542287, i64 -1725117536702345371, i64 -7116317206259119175, i64 6116526925811703268], align 16
@secp256r1_T_8_Y = internal constant [4 x i64] [i64 -5499655530564444632, i64 4842772302871585719, i64 1854710120770935845, i64 -2973523580113883466], align 16
@secp256r1_T_9_X = internal constant [4 x i64] [i64 -1691072509061902392, i64 -5862620322880739061, i64 1203444946369922696, i64 -1294759999963127370], align 16
@secp256r1_T_9_Y = internal constant [4 x i64] [i64 -8171454145557378399, i64 5229063789231862481, i64 4206326330105069983, i64 -4277231195574499615], align 16
@secp256r1_T_10_X = internal constant [4 x i64] [i64 6732253638560502473, i64 -3846221288845593154, i64 6136023293050887731, i64 -8747717594898974224], align 16
@secp256r1_T_10_Y = internal constant [4 x i64] [i64 4060067177424484705, i64 5526495733234686713, i64 2601278522763540673, i64 1650099243302017463], align 16
@secp256r1_T_11_X = internal constant [4 x i64] [i64 -6770550226572789539, i64 6848645542908353660, i64 -3910957124953306237, i64 1759921713102136414], align 16
@secp256r1_T_11_Y = internal constant [4 x i64] [i64 3095983264903259519, i64 -7905636489870780179, i64 -9135073098927790185, i64 -7187026231320803053], align 16
@secp256r1_T_12_X = internal constant [4 x i64] [i64 2242316797752001933, i64 6877784028848481607, i64 6612748931973157873, i64 -4166369118902685085], align 16
@secp256r1_T_12_Y = internal constant [4 x i64] [i64 6876860679588577268, i64 7485536582048851629, i64 -3226136063019168508, i64 -27264443399897522], align 16
@secp256r1_T_13_X = internal constant [4 x i64] [i64 -2071934736126424035, i64 4625457142719054552, i64 -6608916905855783009, i64 6802543255169549562], align 16
@secp256r1_T_13_Y = internal constant [4 x i64] [i64 -2096469809531481788, i64 6742918263447550239, i64 -2072487244021024022, i64 4944685098680242974], align 16
@secp256r1_T_14_X = internal constant [4 x i64] [i64 5971515309032125014, i64 7548258668239074636, i64 3063736862348802131, i64 -1956100551350367342], align 16
@secp256r1_T_14_Y = internal constant [4 x i64] [i64 7862901619635635748, i64 6989070083783329722, i64 -7495026761932751791, i64 -578064849305194880], align 16
@secp256r1_T_15_X = internal constant [4 x i64] [i64 3347760458523829543, i64 1883965553106753180, i64 8558177948526902082, i64 -9052514988433662629], align 16
@secp256r1_T_15_Y = internal constant [4 x i64] [i64 -2598399826459609287, i64 1184336496599699562, i64 7023728996652224848, i64 4852755036900571671], align 16
@secp384r1_T_0_X = internal constant [6 x i64] [i64 4203087948775033527, i64 6125724927633205612, i64 6482722621138151992, i64 7934563412932533144, i64 -8164525713704047244, i64 -6158731714831383241], align 16
@secp384r1_T_0_Y = internal constant [6 x i64] [i64 8809917716911230559, i64 747793036959711645, i64 -1595909157222827840, i64 -507748159718812548, i64 6745997240412855337, i64 3897828414440483951], align 16
@secp384r1_T_1_X = internal constant [6 x i64] [i64 3972134705544860230, i64 -4848416340590202089, i64 -1777815912436679619, i64 -8850484025740266158, i64 -6015552402227683867, i64 -4780347033403238828], align 16
@secp384r1_T_1_Y = internal constant [6 x i64] [i64 -2730437331530091923, i64 5499166157939019521, i64 8850918305084533580, i64 -7755030326439753263, i64 -2808081870718533537, i64 2575097731734217410], align 16
@secp384r1_T_2_X = internal constant [6 x i64] [i64 -7484987693070901786, i64 6372215822706912463, i64 7492919491419375664, i64 9110471934576830879, i64 -4063099928938208939, i64 -2432374825558145996], align 16
@secp384r1_T_2_Y = internal constant [6 x i64] [i64 -6418581887061706752, i64 -8187945468935829322, i64 8466284871420201705, i64 -2179031638381697252, i64 59000756863723922, i64 -2085741979987603239], align 16
@secp384r1_T_3_X = internal constant [6 x i64] [i64 1596307787776449632, i64 -6697872660973194929, i64 6497033975043308885, i64 -1185202473382512563, i64 6348805513991166115, i64 -5921186870416090880], align 16
@secp384r1_T_3_Y = internal constant [6 x i64] [i64 -5228884413609344581, i64 3765604702534349435, i64 8149917263110537860, i64 -128604272891717524, i64 3476971433071047924, i64 8047940296496676314], align 16
@secp384r1_T_4_X = internal constant [6 x i64] [i64 3501853690171701513, i64 -8027706254173732841, i64 -3207156513254606106, i64 -7227851124534708771, i64 6231401009049822115, i64 -6144955399706759032], align 16
@secp384r1_T_4_Y = internal constant [6 x i64] [i64 1640921604559656358, i64 -1450313068177282492, i64 7896318349401160691, i64 -720470627413457748, i64 -1103661385849483083, i64 5229857299208564008], align 16
@secp384r1_T_5_X = internal constant [6 x i64] [i64 5830327960319045446, i64 -2422030769100059431, i64 4070073931870503440, i64 2536627920322774914, i64 5743013838711945618, i64 1886852148947077865], align 16
@secp384r1_T_5_Y = internal constant [6 x i64] [i64 -7532022428422066726, i64 1664776855668103738, i64 3277878746978922804, i64 -5197143965747210621, i64 -1405564748407797163, i64 637499813304835345], align 16
@secp384r1_T_6_X = internal constant [6 x i64] [i64 5343643222759655784, i64 -338346614267061411, i64 4279560856002466446, i64 6709105929108716622, i64 -760138780751324029, i64 6873414534369139384], align 16
@secp384r1_T_6_Y = internal constant [6 x i64] [i64 -1301596263175664452, i64 -7904522689642149438, i64 3230839945429791394, i64 4491348922053156973, i64 -8333214345236579818, i64 8402235700025187588], align 16
@secp384r1_T_7_X = internal constant [6 x i64] [i64 821996404608511057, i64 264672324775436486, i64 -3766547698945755721, i64 -1226554320260428038, i64 -2011455622015647586, i64 270876976973614833], align 16
@secp384r1_T_7_Y = internal constant [6 x i64] [i64 802251059684124315, i64 4106327568226972602, i64 1962618352417582844, i64 -5388475860102850808, i64 137957412723966613, i64 -1495552070360293974], align 16
@secp384r1_T_8_X = internal constant [6 x i64] [i64 -966166891299956014, i64 -4228730680039820320, i64 -5151250183782255270, i64 -78090598574970061, i64 -8011805855068895295, i64 -5834321982798355265], align 16
@secp384r1_T_8_Y = internal constant [6 x i64] [i64 -1895654456526295265, i64 -654406813788922752, i64 344515130785947353, i64 4293410157316149735, i64 3244318299547796398, i64 -7546299414296035334], align 16
@secp384r1_T_9_X = internal constant [6 x i64] [i64 6251220052030643065, i64 -7001701276881855658, i64 564378752051602150, i64 -4566613519758021251, i64 -4912848699459028795, i64 8190220466200596764], align 16
@secp384r1_T_9_Y = internal constant [6 x i64] [i64 -5064391485367532633, i64 5050583271248061899, i64 2074573596138617077, i64 -5167643175012259448, i64 -7420310901890747972, i64 -3062758438063905171], align 16
@secp384r1_T_10_X = internal constant [6 x i64] [i64 7185171054971216251, i64 2558826290536302097, i64 -2834227579077371321, i64 -835236052690629414, i64 -8441937380153887301, i64 -7936912269054399033], align 16
@secp384r1_T_10_Y = internal constant [6 x i64] [i64 -8895602944467572760, i64 -5584924393652052098, i64 7467078624013900694, i64 -6275516203448272601, i64 217604888556526950, i64 -1904950558720046282], align 16
@secp384r1_T_11_X = internal constant [6 x i64] [i64 6682220493827411096, i64 -2411098801277672570, i64 8394588449939613481, i64 5794993848113698044, i64 4989857238277506076, i64 1536647510855330587], align 16
@secp384r1_T_11_Y = internal constant [6 x i64] [i64 3378670713077377854, i64 -3270426513553411226, i64 329919109908814560, i64 4988493426527859887, i64 -8278368025895030819, i64 -7473339407775467270], align 16
@secp384r1_T_12_X = internal constant [6 x i64] [i64 7606545192133249042, i64 -5639431012905025703, i64 -7570908236564143736, i64 1709522058016506410, i64 -970437169858744656, i64 4580968873839631612], align 16
@secp384r1_T_12_Y = internal constant [6 x i64] [i64 -5569879508224165732, i64 -9096740871924704982, i64 -8132332460710167435, i64 -7616883606385349201, i64 3510272268512349804, i64 1155359230029927759], align 16
@secp384r1_T_13_X = internal constant [6 x i64] [i64 -360451526660145730, i64 8150794978263885024, i64 3140725109274292466, i64 139248202273110234, i64 7999316629548704145, i64 -1066191389911736861], align 16
@secp384r1_T_13_Y = internal constant [6 x i64] [i64 -2108161202505416103, i64 3254788768686135998, i64 5869365920662422108, i64 337130301295168720, i64 2009799371585490598, i64 -5724703253207520163], align 16
@secp384r1_T_14_X = internal constant [6 x i64] [i64 7857740480590538814, i64 5165301737452675227, i64 -5876094023815694115, i64 -4615841457205176339, i64 5474730114537563407, i64 -6035970830905312447], align 16
@secp384r1_T_14_Y = internal constant [6 x i64] [i64 7624762414649217112, i64 -8699267916750458294, i64 6624508062994637917, i64 2115637906103384871, i64 5815010168180186785, i64 -1812821316377283575], align 16
@secp384r1_T_15_X = internal constant [6 x i64] [i64 3172453508346592731, i64 5835035625407794713, i64 -1458497832344005792, i64 -7844459087148644551, i64 8965996171967863375, i64 4223876896526029003], align 16
@secp384r1_T_15_Y = internal constant [6 x i64] [i64 1515501874909343736, i64 8373518876105442977, i64 5036232334813033534, i64 -3182149591922416701, i64 -6001201260277141811, i64 6042002544966108895], align 16
@secp384r1_T_16_X = internal constant [6 x i64] [i64 -7739689861475207915, i64 -134683138378696440, i64 1042094181758663925, i64 3394752478563354633, i64 2927584782841130051, i64 -3736702051351503082], align 16
@secp384r1_T_16_Y = internal constant [6 x i64] [i64 -4270200997025353171, i64 2374761075220429706, i64 3253195861755937615, i64 2152230109540525423, i64 -7481960883423221700, i64 -8818197473882187846], align 16
@secp384r1_T_17_X = internal constant [6 x i64] [i64 6219278718423865789, i64 385364137355332400, i64 107089333086055340, i64 5487969133250525580, i64 -1295151019687864698, i64 2544517921600666795], align 16
@secp384r1_T_17_Y = internal constant [6 x i64] [i64 8588645833451018341, i64 -3621667789913005455, i64 6279357928596530537, i64 5198509759628193806, i64 2139123711974414679, i64 -884548241294720869], align 16
@secp384r1_T_18_X = internal constant [6 x i64] [i64 2204811914613089795, i64 -97388691103830687, i64 -1497411016713039952, i64 3650062334884012140, i64 3275495441249390522, i64 -4153160696380910923], align 16
@secp384r1_T_18_Y = internal constant [6 x i64] [i64 8884779316403554760, i64 -2559836021022702099, i64 -3703038721628572044, i64 6416039285285539975, i64 932322785355952142, i64 7449611710882653885], align 16
@secp384r1_T_19_X = internal constant [6 x i64] [i64 6068369888819460880, i64 4608158768848369546, i64 7754484197184910453, i64 2453074938724039608, i64 -315581706384097434, i64 -2544626772153127299], align 16
@secp384r1_T_19_Y = internal constant [6 x i64] [i64 6453240013726134924, i64 -4388420864164474576, i64 -8096015484052731410, i64 -9107051055893360517, i64 -2042217926816465440, i64 -6170046351835879976], align 16
@secp384r1_T_20_X = internal constant [6 x i64] [i64 6943117405131659620, i64 -2681372763075224411, i64 3316763770948786050, i64 7759716679575610970, i64 3177451491647250462, i64 -5881168622476579500], align 16
@secp384r1_T_20_Y = internal constant [6 x i64] [i64 -4210462846722617890, i64 6975010315789227064, i64 -4236999424731600872, i64 -4869859544339728574, i64 -1226701262048466594, i64 361295961947916021], align 16
@secp384r1_T_21_X = internal constant [6 x i64] [i64 -5287760045203170451, i64 4813124636890090102, i64 -8560951133633232607, i64 1746452825044583631, i64 3190618431202594800, i64 -5040740468719986564], align 16
@secp384r1_T_21_Y = internal constant [6 x i64] [i64 -7403033993059486758, i64 3052067551309157252, i64 1757398159549120942, i64 3585991698984333948, i64 7626846084364341323, i64 -1197270682853330683], align 16
@secp384r1_T_22_X = internal constant [6 x i64] [i64 4362562501969545854, i64 -5291339083998356482, i64 -7293690491569961971, i64 5305240341794994213, i64 -3793004605028160922, i64 7182974918056973252], align 16
@secp384r1_T_22_Y = internal constant [6 x i64] [i64 5838582713880512539, i64 -2254956914061496430, i64 -3853036704641091979, i64 771278124862645392, i64 8629338668064480821, i64 -5666797426232125503], align 16
@secp384r1_T_23_X = internal constant [6 x i64] [i64 2067470613640868964, i64 -4490293410365575906, i64 2262340542601769440, i64 -5385708332263912527, i64 6168109434341607935, i64 7857432587331969893], align 16
@secp384r1_T_23_Y = internal constant [6 x i64] [i64 2530233786225055815, i64 381286524618459233, i64 125131504207327629, i64 -3988628111258877598, i64 -7568924057377109797, i64 2127968160931214858], align 16
@secp384r1_T_24_X = internal constant [6 x i64] [i64 5283133362589549119, i64 -1169172101699651952, i64 3509855551013449308, i64 -4119943626450642570, i64 -2960352555379946570, i64 -1166153346720666000], align 16
@secp384r1_T_24_Y = internal constant [6 x i64] [i64 8459570164538178584, i64 9206643952043569598, i64 3123307455724010894, i64 7417129463332347649, i64 2659601224593726248, i64 8171818660386723602], align 16
@secp384r1_T_25_X = internal constant [6 x i64] [i64 -4546935016742280563, i64 -3552608524392199034, i64 6138603872584729517, i64 4819447760586045556, i64 -9015241350477811026, i64 813848520196270935], align 16
@secp384r1_T_25_Y = internal constant [6 x i64] [i64 5920719831693068540, i64 206549677242145896, i64 8996239923596392152, i64 1676133318109931312, i64 2896977259261126097, i64 3441741097047757916], align 16
@secp384r1_T_26_X = internal constant [6 x i64] [i64 7313306429220247577, i64 -3114168707038594058, i64 314789008437229546, i64 6671991031366120348, i64 2437264396192559637, i64 4527843501707495562], align 16
@secp384r1_T_26_Y = internal constant [6 x i64] [i64 4555657574891792041, i64 -8558439864596337656, i64 6498908473617979843, i64 -5554742039780334550, i64 816301604766949853, i64 -964496214221618331], align 16
@secp384r1_T_27_X = internal constant [6 x i64] [i64 -7824534980137260842, i64 8870567583257426471, i64 6649023682409719663, i64 -8910849998029072244, i64 -1115882140097823438, i64 -632587533643462662], align 16
@secp384r1_T_27_Y = internal constant [6 x i64] [i64 1567670472771138467, i64 3281316839706222058, i64 316879279783733585, i64 6001435692397849850, i64 -5645584838444253225, i64 2435943362537519276], align 16
@secp384r1_T_28_X = internal constant [6 x i64] [i64 -5991790466473523603, i64 -6427304649772148972, i64 4728486785556347871, i64 -2573643232602916241, i64 -4124685836930963839, i64 -5275443520055655802], align 16
@secp384r1_T_28_Y = internal constant [6 x i64] [i64 -3122335522238469057, i64 -9175872718589629880, i64 5082659999131924098, i64 3229284118307229570, i64 -2307272727859002214, i64 4496085858067391540], align 16
@secp384r1_T_29_X = internal constant [6 x i64] [i64 -4530509181842024778, i64 3223916255995122520, i64 8009313499625222327, i64 -4893210249347669209, i64 -6980887500496720139, i64 -5323535958776474022], align 16
@secp384r1_T_29_Y = internal constant [6 x i64] [i64 655902480709726826, i64 4906190261876023348, i64 7073348328470639491, i64 7436134155373356073, i64 7389107602207143103, i64 4807209104099180489], align 16
@secp384r1_T_30_X = internal constant [6 x i64] [i64 -1218525217088255599, i64 3129806749299262073, i64 6126952506615270011, i64 3753109988863736534, i64 934700605672448168, i64 1312762606002533675], align 16
@secp384r1_T_30_Y = internal constant [6 x i64] [i64 -818457601631207236, i64 5441339848578497691, i64 7105125697299660331, i64 3192898320553079749, i64 2207761169125688290, i64 8589950592825235530], align 16
@secp384r1_T_31_X = internal constant [6 x i64] [i64 259343900034974854, i64 -47751043899511824, i64 -4631133319887323132, i64 -7162467945594641944, i64 -78954955088751184, i64 820591474592803734], align 16
@secp384r1_T_31_Y = internal constant [6 x i64] [i64 2882773439233886745, i64 6939346953990866254, i64 8840284847769503361, i64 -3899353249741689286, i64 -6489486281939008619, i64 4728366783691397044], align 16
@secp521r1_T_0_X = internal constant [9 x i64] [i64 -468798559011619482, i64 3695401138005885595, i64 -135740037768697634, i64 -6824256941130819288, i64 -565008924583051846, i64 -7177469824220547807, i64 -7043969127616760766, i64 -8823107236856010291, i64 198], align 16
@secp521r1_T_0_Y = internal constant [9 x i64] [i64 -8593267801767975344, i64 3836064706166178368, i64 -4228676635086485663, i64 -7498930326476675520, i64 1706790690937005612, i64 -7424953328857299864, i64 6668247425720589273, i64 4118940400423256068, i64 280], align 16
@secp521r1_T_1_X = internal constant [9 x i64] [i64 -2672834530348519121, i64 7448774404986915736, i64 3617645243130217747, i64 6044809782606387049, i64 -6076194984197039987, i64 3015293373466118708, i64 24346598998475619, i64 4614896065046947574, i64 387], align 16
@secp521r1_T_1_Y = internal constant [9 x i64] [i64 -5027423716631194230, i64 487322818423198677, i64 8683224070518449725, i64 2122012989676316962, i64 -2051346123890073745, i64 3608168922768025839, i64 4711902174553897277, i64 -4676960273738512663, i64 446], align 16
@secp521r1_T_2_X = internal constant [9 x i64] [i64 3891209273668552864, i64 -4989421112674563065, i64 -8277576056404039228, i64 1421080268000684806, i64 154143944785820445, i64 -6263654134121831638, i64 -3577724391083540985, i64 -4421708291167922915, i64 25], align 16
@secp521r1_T_2_Y = internal constant [9 x i64] [i64 -1359269375503754499, i64 -2730202560611801482, i64 5256833571537047008, i64 -8253091705965176717, i64 1229896986845810552, i64 4109667992576057907, i64 7579401133623922945, i64 -3881914557548468959, i64 90], align 16
@secp521r1_T_3_X = internal constant [9 x i64] [i64 -6361572954106950772, i64 -4773326482037759446, i64 5955432783077745424, i64 -738466364856927448, i64 -2519249806877415537, i64 -5809419501446043610, i64 -1530343397878606177, i64 8699993704441292893, i64 448], align 16
@secp521r1_T_3_Y = internal constant [9 x i64] [i64 -678506638033484643, i64 4723441708649994956, i64 1454001813941448822, i64 5895841913738493159, i64 3310218397122383105, i64 1324139012726636941, i64 -5462450036971359827, i64 -8784471043415293119, i64 364], align 16
@secp521r1_T_4_X = internal constant [9 x i64] [i64 6604153427352857496, i64 -8890708000357967932, i64 7491444077476480513, i64 -5666579945859793492, i64 850416329765864247, i64 -3359776883422503324, i64 -3969613159759497464, i64 7993113319092970569, i64 10], align 16
@secp521r1_T_4_Y = internal constant [9 x i64] [i64 5837589181510084352, i64 2047874159000655262, i64 -5545622038414493043, i64 -2650979647775999505, i64 -5957548859234900070, i64 -7876411209990118633, i64 -2719378958087648216, i64 -3370124385234320487, i64 71], align 16
@secp521r1_T_5_X = internal constant [9 x i64] [i64 -6398772843818184651, i64 237969469922569956, i64 2378978008841943305, i64 -3726336132179377320, i64 2811459680142055176, i64 -682886056191989350, i64 6321020622242233021, i64 -5123035931271396596, i64 283], align 16
@secp521r1_T_5_Y = internal constant [9 x i64] [i64 -8714430457278257479, i64 -743901387634046860, i64 6744862067067455746, i64 1559078496485939846, i64 8909522085704072680, i64 8597898655351422905, i64 1299459337742474251, i64 5113404085187038854, i64 109], align 16
@secp521r1_T_6_X = internal constant [9 x i64] [i64 5382188842528037350, i64 9050813429648209726, i64 3254941678600624704, i64 -9063742476365580052, i64 -9072347575374284361, i64 -2933107245522427881, i64 4630113328303815674, i64 4670094596046649767, i64 93], align 16
@secp521r1_T_6_Y = internal constant [9 x i64] [i64 -434704623940891618, i64 -8910062855023636808, i64 -2543324934776446563, i64 -2085801540101917429, i64 -6816014787157300287, i64 4764767776590147457, i64 4378011393218059985, i64 2481191984685212864, i64 368], align 16
@secp521r1_T_7_X = internal constant [9 x i64] [i64 5854987449573326278, i64 -7795304972067005034, i64 -7492744926807260293, i64 -1496783655893909908, i64 4140770681433326160, i64 -3345060483297565051, i64 -4176664802008045748, i64 -1251397853306616877, i64 233], align 16
@secp521r1_T_7_Y = internal constant [9 x i64] [i64 -4254892933757765349, i64 7552317787442254068, i64 4608488671932838061, i64 3923414165762533426, i64 -2351710890876041036, i64 7556887057673516456, i64 -1814158557727038098, i64 -8322739557856052011, i64 497], align 16
@secp521r1_T_8_X = internal constant [9 x i64] [i64 7403242746538460823, i64 1044137309068072792, i64 -2273568491754313587, i64 4393735660528302196, i64 -8812898213669464147, i64 -1922421658174957334, i64 6984313290074904469, i64 1754711847446529661, i64 471], align 16
@secp521r1_T_8_Y = internal constant [9 x i64] [i64 -1860982007578224612, i64 3977167513105749229, i64 3220273230212888821, i64 736542307794690691, i64 5082451218519402356, i64 2143332832289413812, i64 719293964346678416, i64 -7935141028273331592, i64 453], align 16
@secp521r1_T_9_X = internal constant [9 x i64] [i64 8254554171135243834, i64 -2323965108463486037, i64 -2955209561618700184, i64 4137092703619513985, i64 -1079505193553179298, i64 -7459715419066226443, i64 -5966773190275632221, i64 -5556645269689354891, i64 337], align 16
@secp521r1_T_9_Y = internal constant [9 x i64] [i64 3678681259615258994, i64 9110485868347929019, i64 -6805843182076732525, i64 3015404488893438280, i64 -5135228797747919712, i64 4771514819177256289, i64 -6834594065428296789, i64 -8810554023924185777, i64 203], align 16
@secp521r1_T_10_X = internal constant [9 x i64] [i64 6171595000730320392, i64 -2169175965338885897, i64 556487958966627715, i64 432196913199476488, i64 2315038862129343337, i64 -3193862099932664126, i64 543705746781326481, i64 -3515248923561701527, i64 312], align 16
@secp521r1_T_10_Y = internal constant [9 x i64] [i64 -5340264330167179776, i64 -3311485994211686023, i64 5519519114914670685, i64 -7554622507050428793, i64 -3218578797195613309, i64 6274144961395484273, i64 1325948049655694399, i64 7151703974356285549, i64 287], align 16
@secp521r1_T_11_X = internal constant [9 x i64] [i64 3449589910958212734, i64 6266453218849336306, i64 -6352396713131853424, i64 6381885033769245387, i64 -4932731988765671614, i64 -309245714070612086, i64 -6330792461382561571, i64 6286552125974330678, i64 93], align 16
@secp521r1_T_11_Y = internal constant [9 x i64] [i64 9092448839495843564, i64 -6669419088030281095, i64 6542321423588976725, i64 5511346993890810797, i64 3440912412355003553, i64 7777933377395181633, i64 6589595229719315120, i64 -6169137055364008162, i64 449], align 16
@secp521r1_T_12_X = internal constant [9 x i64] [i64 -2661730353604322878, i64 2752937631113071617, i64 1395774877488540291, i64 -7229231108019630821, i64 8706050531561039063, i64 3623647962064280269, i64 5948681734688262993, i64 5696708802415281591, i64 475], align 16
@secp521r1_T_12_Y = internal constant [9 x i64] [i64 8691704254652816755, i64 4822284654138250870, i64 4562924916701567589, i64 -5774415725293789514, i64 -5859882980463996524, i64 -2565506865860293050, i64 -2003429735862305015, i64 5138847248348647871, i64 371], align 16
@secp521r1_T_13_X = internal constant [9 x i64] [i64 -7693357343035040221, i64 6716539031722692038, i64 3619235815608734950, i64 5603344658503457488, i64 -3887013207418867587, i64 -274300317193219403, i64 -773359542874631358, i64 -465494980616478052, i64 97], align 16
@secp521r1_T_13_Y = internal constant [9 x i64] [i64 5533550809294459001, i64 -7516690031700273453, i64 9148588379369628440, i64 957457441003886405, i64 -3516590050212910171, i64 -8149007822999909133, i64 -2207819839148600382, i64 6537107970691064938, i64 459], align 16
@secp521r1_T_14_X = internal constant [9 x i64] [i64 -6819494231662397103, i64 1993532620984873775, i64 -6101342854378229050, i64 3840492707036706819, i64 6377046733641297722, i64 4050927822124984105, i64 2129034236402613182, i64 2557713463696233654, i64 28], align 16
@secp521r1_T_14_Y = internal constant [9 x i64] [i64 -3609722163580997355, i64 -1854002906590379685, i64 2911299572863359825, i64 1278515808018769796, i64 -7960723811133507869, i64 -6859899428218434457, i64 7766349801939090679, i64 2494798865772103436, i64 389], align 16
@secp521r1_T_15_X = internal constant [9 x i64] [i64 -5191902065704946527, i64 -3860352786702740234, i64 -8879795550651867249, i64 4815585756478973981, i64 4938542376399906968, i64 -4552909229193691690, i64 -3028580134253696890, i64 -2792340771454739743, i64 409], align 16
@secp521r1_T_15_Y = internal constant [9 x i64] [i64 -6208929196189153262, i64 -8658292060306002759, i64 -5227847896511019928, i64 2339708967206842056, i64 8585102081462079757, i64 -5344908139125350278, i64 -4704740025905364467, i64 -5528596994812687151, i64 474], align 16
@secp521r1_T_16_X = internal constant [9 x i64] [i64 -5767968611073684020, i64 -1223614741401751591, i64 -3927521845576207188, i64 3704059675320322253, i64 8203817268285740940, i64 3578045338050885290, i64 6748458924069899378, i64 8880783111369765649, i64 506], align 16
@secp521r1_T_16_Y = internal constant [9 x i64] [i64 3521692293393937446, i64 -3867663398947814881, i64 6057215853864589798, i64 8997627277811971247, i64 6612186547913084662, i64 4791786286842928905, i64 3447437038885926082, i64 2543719965393452462, i64 211], align 16
@secp521r1_T_17_X = internal constant [9 x i64] [i64 -7719695499655146055, i64 6724720535885596663, i64 -976776730473457890, i64 -4732084893984507280, i64 1231789832031058390, i64 135203897974670898, i64 2774259013629481686, i64 5174999931732782939, i64 349], align 16
@secp521r1_T_17_Y = internal constant [9 x i64] [i64 2328668390382764325, i64 -1284172009801909388, i64 557263561320942950, i64 -26202036231418156, i64 -9107585239749646275, i64 6883047287581928208, i64 7000394117033025149, i64 -9092502346836824873, i64 312], align 16
@secp521r1_T_18_X = internal constant [9 x i64] [i64 6221909714263867442, i64 -5525576620044496465, i64 -7355263910053106565, i64 6813254855927614815, i64 -8135876291997924075, i64 -267491850035946256, i64 3766192352520489231, i64 1006482234549966431, i64 212], align 16
@secp521r1_T_18_Y = internal constant [9 x i64] [i64 5157058114137696763, i64 -2968141907643237898, i64 -5956666805522364501, i64 -7017424783910302744, i64 -8355351680681583079, i64 7820362282978208613, i64 8091171077748895448, i64 8132006615477902897, i64 355], align 16
@secp521r1_T_19_X = internal constant [9 x i64] [i64 -1459009060645220746, i64 5010773982127591250, i64 -3493123202895761940, i64 817872126275786177, i64 6959286891884764106, i64 -3941571479296081191, i64 7837422794416643117, i64 8242962654767336491, i64 213], align 16
@secp521r1_T_19_Y = internal constant [9 x i64] [i64 2925260720246435884, i64 -5003257151840514953, i64 -6728768999251468111, i64 3688110908487378357, i64 4081299754087274986, i64 7865535926944792223, i64 1472548686690426170, i64 7156133217591769526, i64 49], align 16
@secp521r1_T_20_X = internal constant [9 x i64] [i64 245223885062985581, i64 -8767407986343325750, i64 7498998753746286482, i64 -7592007303593382394, i64 -5754118286351629600, i64 6067782956388476184, i64 -5205795554197742759, i64 7292914098366706331, i64 191], align 16
@secp521r1_T_20_Y = internal constant [9 x i64] [i64 -2831604955278583438, i64 1180992490401846541, i64 7235170467345492334, i64 -5031868491531417894, i64 -6599569174592957332, i64 -6971319121822333889, i64 1051585992369786750, i64 -3447874640939204600, i64 466], align 16
@secp521r1_T_21_X = internal constant [9 x i64] [i64 -8177290133050852580, i64 7445894998643646880, i64 -4986678187057284840, i64 -4724538114430295560, i64 1279072051022741759, i64 2929630243712636463, i64 460018782107412794, i64 -494819231614730807, i64 457], align 16
@secp521r1_T_21_Y = internal constant [9 x i64] [i64 -3054320864479343014, i64 -6831901775747377625, i64 618337765761332288, i64 -8641184294940682807, i64 2871510773697543996, i64 1581662186052562477, i64 7963282172792771259, i64 9043022952975094345, i64 260], align 16
@secp521r1_T_22_X = internal constant [9 x i64] [i64 -3982306342782889654, i64 -8203428756082972723, i64 -5090199612619857244, i64 -2870780689527944465, i64 -4156738606985449156, i64 7491628764753724205, i64 4817278710366924061, i64 -2707148092047752741, i64 148], align 16
@secp521r1_T_22_Y = internal constant [9 x i64] [i64 4960078641713401811, i64 3647199363815454153, i64 1174642805225490010, i64 -3969889549370169914, i64 5537970678813653490, i64 -6636999208573753293, i64 -6737077685535411902, i64 -8721308946497841900, i64 426], align 16
@secp521r1_T_23_X = internal constant [9 x i64] [i64 7953564254617850187, i64 -136976408909470110, i64 4748900503384245114, i64 2376825815701961197, i64 -7512472101551264254, i64 4843488008745585770, i64 -7010021484245343670, i64 -637530806644836522, i64 200], align 16
@secp521r1_T_23_Y = internal constant [9 x i64] [i64 3551479981144544796, i64 2761840896464101384, i64 2344159920009707469, i64 2828942286071135510, i64 281534910231607183, i64 4037269983597200174, i64 -8702686290465017882, i64 7849501215981379605, i64 296], align 16
@secp521r1_T_24_X = internal constant [9 x i64] [i64 6489286895203192938, i64 8959325570379252151, i64 -3716336423527492680, i64 9182669201367857140, i64 1545040458523295804, i64 -2907866182812175270, i64 -5795132216098222586, i64 -7209672409188350632, i64 28], align 16
@secp521r1_T_24_Y = internal constant [9 x i64] [i64 -2207239843037072558, i64 -6920126701392726257, i64 -2240421619819472752, i64 -7597432823598773252, i64 -3398953407389925285, i64 3440692333830979882, i64 -9220460443664657073, i64 3407826010973239929, i64 499], align 16
@secp521r1_T_25_X = internal constant [9 x i64] [i64 576921238816917290, i64 7468524220625504524, i64 -1000321747677790572, i64 -7467036969487123271, i64 -8839862362553951962, i64 7318785416376506104, i64 4045381311782429356, i64 -4330307909730383104, i64 95], align 16
@secp521r1_T_25_Y = internal constant [9 x i64] [i64 -7610222871148203211, i64 -2523923711238136888, i64 -4254820301116850984, i64 -7846702468118716451, i64 -6298985750399823876, i64 -3402532056801638375, i64 5690743857891420632, i64 -4116692697316274709, i64 369], align 16
@secp521r1_T_26_X = internal constant [9 x i64] [i64 -1554136522465356664, i64 5667031343175926704, i64 -1670879706546947390, i64 -2160874995823034993, i64 -259374414248165765, i64 7252496865176330353, i64 7003037808120885987, i64 -3767043333220363482, i64 156], align 16
@secp521r1_T_26_Y = internal constant [9 x i64] [i64 2670178359440092521, i64 -9093473220072616135, i64 -7248533861931405754, i64 -1915787923350915007, i64 3807915907638714308, i64 -5483828545917889736, i64 7919658540229026728, i64 -6545118265318284776, i64 182], align 16
@secp521r1_T_27_X = internal constant [9 x i64] [i64 6665141196546737378, i64 -554666153635169412, i64 8895843588309583901, i64 8733910266739316894, i64 -7711437972514568038, i64 -1412033473632310356, i64 4826711910466494680, i64 -2775545023384786955, i64 227], align 16
@secp521r1_T_27_Y = internal constant [9 x i64] [i64 -8802405997375564824, i64 3857700985020959014, i64 -7655613824805170504, i64 103628962706873397, i64 3954927351433868132, i64 -5157893717896933836, i64 3253201671531011648, i64 -499201652929599551, i64 49], align 16
@secp521r1_T_28_X = internal constant [9 x i64] [i64 -3977365264145405406, i64 -5243201923293038264, i64 6173217379985246013, i64 -5351334154019646335, i64 -672291702344871289, i64 -4709196624045339673, i64 3345032072943754682, i64 2471602679388699838, i64 468], align 16
@secp521r1_T_28_Y = internal constant [9 x i64] [i64 1366981685392508599, i64 -1778087416616073098, i64 -6689363738331018941, i64 -7030563036212162593, i64 8260480852307526436, i64 3348879850698206815, i64 8179560408223270147, i64 -2104445227735458069, i64 48], align 16
@secp521r1_T_29_X = internal constant [9 x i64] [i64 -5847609891396545320, i64 4680297524520064777, i64 8420639055967275413, i64 -1113318605499680421, i64 -4941236892386275021, i64 4341009434852245597, i64 -3524749409571157384, i64 -2860941181930363654, i64 212], align 16
@secp521r1_T_29_Y = internal constant [9 x i64] [i64 -4962326041497939939, i64 -8731265045127754067, i64 8023804222646956416, i64 140941165184789573, i64 -2876892602081568936, i64 -4135555199341921515, i64 1192873041987477036, i64 5150071950712351815, i64 303], align 16
@secp521r1_T_30_X = internal constant [9 x i64] [i64 7414445490230032944, i64 3625540044590435375, i64 -2544678569724317202, i64 -2679589019492001467, i64 -5051189760214250057, i64 -2310376708942830363, i64 -4385671956346753939, i64 7540670270517343404, i64 222], align 16
@secp521r1_T_30_Y = internal constant [9 x i64] [i64 -1273017098755478495, i64 -8548813422857001040, i64 -1823852086097538981, i64 -7088892156274366631, i64 7499389090631074525, i64 6992296479747576967, i64 8600810615119905629, i64 4790046340212369438, i64 147], align 16
@secp521r1_T_31_X = internal constant [9 x i64] [i64 2821650281492810934, i64 2499513866543498148, i64 2574841524676592290, i64 2834538325376298246, i64 -7242319373077727932, i64 -5487782185826505070, i64 -5652447807028771157, i64 -2429452437796825267, i64 507], align 16
@secp521r1_T_31_Y = internal constant [9 x i64] [i64 -8221846540132614225, i64 2455132615295374444, i64 428898251734220748, i64 -847160351935970368, i64 -7722631888945058293, i64 2504507873117372907, i64 3136309500349037301, i64 5902065111346877041, i64 489], align 16
@secp192k1_T_0_X = internal constant [3 x i64] [i64 2136344160337161341, i64 2787865619045282868, i64 -2643629410584368722], align 16
@secp192k1_T_0_Y = internal constant [3 x i64] [i64 4648465270138875805, i64 -8916736041847716300, i64 -7264535526104487769], align 16
@secp192k1_T_1_X = internal constant [3 x i64] [i64 -6221643148922357905, i64 6053316956044330850, i64 3352976212392052229], align 16
@secp192k1_T_1_Y = internal constant [3 x i64] [i64 6578692839347490867, i64 -2804129809140805157, i64 -2901766449490907010], align 16
@secp192k1_T_2_X = internal constant [3 x i64] [i64 2580557895953072612, i64 8438772399199754643, i64 2922035204853266113], align 16
@secp192k1_T_2_Y = internal constant [3 x i64] [i64 -7578609594097737653, i64 -9025040164360627094, i64 -1946623799382372087], align 16
@secp192k1_T_3_X = internal constant [3 x i64] [i64 6117966919631779778, i64 -7385133436049474651, i64 3215188789696890068], align 16
@secp192k1_T_3_Y = internal constant [3 x i64] [i64 8499616327318344989, i64 5675920480629665109, i64 3032846571521028553], align 16
@secp192k1_T_4_X = internal constant [3 x i64] [i64 -1418371302602036664, i64 2328998811535442841, i64 -3516658240002910762], align 16
@secp192k1_T_4_Y = internal constant [3 x i64] [i64 -5552975754584967546, i64 -5680187367417532149, i64 -8079638749769988151], align 16
@secp192k1_T_5_X = internal constant [3 x i64] [i64 2537755968178308450, i64 7956492079635507635, i64 -2775517423216812546], align 16
@secp192k1_T_5_Y = internal constant [3 x i64] [i64 1538511518157723509, i64 -4058710266344739207, i64 2135164577786476700], align 16
@secp192k1_T_6_X = internal constant [3 x i64] [i64 3696991925778330275, i64 -8808781318770874165, i64 -6540699257050550144], align 16
@secp192k1_T_6_Y = internal constant [3 x i64] [i64 -6956824802424040004, i64 -5892441585914448577, i64 852544920870382548], align 16
@secp192k1_T_7_X = internal constant [3 x i64] [i64 -6776867647046173119, i64 -3314014491135867454, i64 -4870944505244017594], align 16
@secp192k1_T_7_Y = internal constant [3 x i64] [i64 1479177744258342083, i64 -7965374962836294145, i64 6815044360509075406], align 16
@secp192k1_T_8_X = internal constant [3 x i64] [i64 3741084916604554631, i64 2785574612735519002, i64 -9049428128564025930], align 16
@secp192k1_T_8_Y = internal constant [3 x i64] [i64 9082712337328068235, i64 -1880765354872877060, i64 2514419790457794569], align 16
@secp192k1_T_9_X = internal constant [3 x i64] [i64 -3157965383704008130, i64 -3215423928362947421, i64 417278288261671730], align 16
@secp192k1_T_9_Y = internal constant [3 x i64] [i64 -1651899039493337967, i64 3231997101479831073, i64 -7638075676280968491], align 16
@secp192k1_T_10_X = internal constant [3 x i64] [i64 -3043819482169041415, i64 -1511731251499056204, i64 -7110951585734553699], align 16
@secp192k1_T_10_Y = internal constant [3 x i64] [i64 6175565145144098079, i64 23591991750312000, i64 -8219722668513917926], align 16
@secp192k1_T_11_X = internal constant [3 x i64] [i64 -2901154047243856946, i64 7825267398319520359, i64 7466948470418227309], align 16
@secp192k1_T_11_Y = internal constant [3 x i64] [i64 -4312256384158006582, i64 6549865002785274145, i64 5483367522810345237], align 16
@secp192k1_T_12_X = internal constant [3 x i64] [i64 7649192384964748705, i64 5591492122524105833, i64 -40223537551937424], align 16
@secp192k1_T_12_Y = internal constant [3 x i64] [i64 8827255767319927573, i64 -8530811244784131913, i64 -2500572851364953248], align 16
@secp192k1_T_13_X = internal constant [3 x i64] [i64 -713191845099517637, i64 3221892116534214027, i64 -1659031422726242926], align 16
@secp192k1_T_13_Y = internal constant [3 x i64] [i64 -4050633642880599332, i64 4134733730891749126, i64 -6253837591698478629], align 16
@secp192k1_T_14_X = internal constant [3 x i64] [i64 5599577200120482045, i64 -4909800250391734506, i64 8543382879636768464], align 16
@secp192k1_T_14_Y = internal constant [3 x i64] [i64 7410787404865655787, i64 6409853378238378215, i64 3825442035401051684], align 16
@secp192k1_T_15_X = internal constant [3 x i64] [i64 -1093508080113439145, i64 -756292398467377944, i64 7158867395670243750], align 16
@secp192k1_T_15_Y = internal constant [3 x i64] [i64 -8680429218105749077, i64 -5238503653338217765, i64 -3969889377109182148], align 16
@secp224k1_T_0_X = internal constant [4 x i64] [i64 1116440871503897692, i64 7612323524420597161, i64 5616157919209597089, i64 2705677107], align 16
@secp224k1_T_0_Y = internal constant [4 x i64] [i64 -2104786470439132763, i64 -584594974747607719, i64 9203726248751856598, i64 2114494445], align 16
@secp224k1_T_1_X = internal constant [4 x i64] [i64 8840154027118455961, i64 -7228500231143189969, i64 -1367710932699402360, i64 3489485808], align 16
@secp224k1_T_1_Y = internal constant [4 x i64] [i64 3482518309568499905, i64 -7435119365964440775, i64 9148532356745208309, i64 2413430271], align 16
@secp224k1_T_2_X = internal constant [4 x i64] [i64 6224583697370392080, i64 -3698409929823513289, i64 -7492842036379788367, i64 2468543490], align 16
@secp224k1_T_2_Y = internal constant [4 x i64] [i64 -5946458811938019924, i64 7300717190816661913, i64 -7206131817570404870, i64 1718583858], align 16
@secp224k1_T_3_X = internal constant [4 x i64] [i64 2225524523412774477, i64 -8834331761104152012, i64 3978387300205228921, i64 1477096377], align 16
@secp224k1_T_3_Y = internal constant [4 x i64] [i64 1914087034843068883, i64 2529629109447578634, i64 -1234984668807620218, i64 3465804658], align 16
@secp224k1_T_4_X = internal constant [4 x i64] [i64 7406880513397388792, i64 4746574560561326615, i64 -621853144171240744, i64 1230604756], align 16
@secp224k1_T_4_Y = internal constant [4 x i64] [i64 2133993433245262794, i64 -145983506243939574, i64 4478188145241292970, i64 867456041], align 16
@secp224k1_T_5_X = internal constant [4 x i64] [i64 6859276367150845145, i64 8129665589027155540, i64 -9134932925346890583, i64 2203228042], align 16
@secp224k1_T_5_Y = internal constant [4 x i64] [i64 -188987706125446374, i64 2284002785715657618, i64 8364705125389715733, i64 4276369382], align 16
@secp224k1_T_6_X = internal constant [4 x i64] [i64 8628083012907473910, i64 5919338545959690202, i64 -1335143587201870960, i64 4196132665], align 16
@secp224k1_T_6_Y = internal constant [4 x i64] [i64 -9079138572816632837, i64 7662903457397113495, i64 4953891346915063829, i64 2988913278], align 16
@secp224k1_T_7_X = internal constant [4 x i64] [i64 2401586881386158836, i64 -4688624921709607644, i64 -4731790996279380352, i64 696395570], align 16
@secp224k1_T_7_Y = internal constant [4 x i64] [i64 8695426889238707213, i64 4857035569792150988, i64 -543949356933062920, i64 1021239850], align 16
@secp224k1_T_8_X = internal constant [4 x i64] [i64 83322026213457495, i64 -7098498640253766981, i64 -2212015711225199466, i64 3726333418], align 16
@secp224k1_T_8_Y = internal constant [4 x i64] [i64 -6118514727739459833, i64 -541521694218538803, i64 4705556760520394092, i64 1587266201], align 16
@secp224k1_T_9_X = internal constant [4 x i64] [i64 3662353652670606960, i64 -2248710014923625528, i64 1092145423326032819, i64 4124843628], align 16
@secp224k1_T_9_Y = internal constant [4 x i64] [i64 -69348411121974070, i64 -1352722126328984484, i64 493822895138906176, i64 940673800], align 16
@secp224k1_T_10_X = internal constant [4 x i64] [i64 9079498840424716192, i64 -453407158614853913, i64 5931327277280489858, i64 3576055918], align 16
@secp224k1_T_10_Y = internal constant [4 x i64] [i64 4710864174700846854, i64 -2750549636136659538, i64 7250786058470316973, i64 3743136818], align 16
@secp224k1_T_11_X = internal constant [4 x i64] [i64 1501093033102272187, i64 -1920351638676237595, i64 1067327858172400166, i64 2536060384], align 16
@secp224k1_T_11_Y = internal constant [4 x i64] [i64 -6799235022242522351, i64 -3537118528281758879, i64 -392925867452525291, i64 2644156805], align 16
@secp224k1_T_12_X = internal constant [4 x i64] [i64 7033440964588324462, i64 5811453189691166004, i64 7309110074112622386, i64 1364829214], align 16
@secp224k1_T_12_Y = internal constant [4 x i64] [i64 4389724089782914935, i64 7478113165824215301, i64 4188553902625979724, i64 2457072352], align 16
@secp224k1_T_13_X = internal constant [4 x i64] [i64 -5757268307866816542, i64 1102477404500413562, i64 -1358312933039350406, i64 989461219], align 16
@secp224k1_T_13_Y = internal constant [4 x i64] [i64 -6245463692848225430, i64 3602331812321402748, i64 -1409194521759348383, i64 2994733050], align 16
@secp224k1_T_14_X = internal constant [4 x i64] [i64 -7805515893467977432, i64 3059931540057481430, i64 -5062541887057063149, i64 2451891972], align 16
@secp224k1_T_14_Y = internal constant [4 x i64] [i64 -3010897026715272005, i64 7507037276866144457, i64 4930035836105070851, i64 1329031439], align 16
@secp224k1_T_15_X = internal constant [4 x i64] [i64 260247722878034458, i64 1107364150138141634, i64 -15364194810899143, i64 3644574848], align 16
@secp224k1_T_15_Y = internal constant [4 x i64] [i64 -4014770177850406769, i64 4064991321155926510, i64 -5844501588562089754, i64 1546919845], align 16
@secp256k1_T_0_X = internal constant [4 x i64] [i64 6481385041966929816, i64 188021827762530521, i64 6170039885052185351, i64 8772561819708210092], align 16
@secp256k1_T_0_Y = internal constant [4 x i64] [i64 -7185545363635252040, i64 -209500633525038055, i64 6747795201694173352, i64 5204712524664259685], align 16
@secp256k1_T_1_X = internal constant [4 x i64] [i64 8372902434692394727, i64 8658114026690147107, i64 8327998422264122911, i64 -4564950785227282234], align 16
@secp256k1_T_1_Y = internal constant [4 x i64] [i64 -4362532015540936242, i64 -8151730665801402395, i64 1467865676969000509, i64 -277862291443694847], align 16
@secp256k1_T_2_X = internal constant [4 x i64] [i64 -7117442447147544813, i64 -7978224163070813630, i64 6407254435972007542, i64 -4628902902092545700], align 16
@secp256k1_T_2_Y = internal constant [4 x i64] [i64 3047269144714657481, i64 6264313270703900004, i64 -4896914286498084674, i64 -5429223279331049930], align 16
@secp256k1_T_3_X = internal constant [4 x i64] [i64 -4809238126577271011, i64 5824095352579622152, i64 8993812223472919328, i64 6060947826638937457], align 16
@secp256k1_T_3_Y = internal constant [4 x i64] [i64 -8045755458291204077, i64 -985885534072168671, i64 -6176055198108786699, i64 -3542072545614947928], align 16
@secp256k1_T_4_X = internal constant [4 x i64] [i64 -8010601516534352870, i64 -8861684820650020851, i64 -8846825058216335795, i64 -7015357070724513824], align 16
@secp256k1_T_4_Y = internal constant [4 x i64] [i64 8700656686521199892, i64 3775707231913964308, i64 6028859775186675575, i64 -4555275689135294208], align 16
@secp256k1_T_5_X = internal constant [4 x i64] [i64 -7602768640508904995, i64 7977025395711382351, i64 -2706291562409992215, i64 -7232579250968792910], align 16
@secp256k1_T_5_Y = internal constant [4 x i64] [i64 -2260116658382765886, i64 3612866422068031005, i64 2496153730703975852, i64 -2218362181318405171], align 16
@secp256k1_T_6_X = internal constant [4 x i64] [i64 -6329154870915908455, i64 8639620537290874759, i64 -3061174667533780066, i64 1536360166043010947], align 16
@secp256k1_T_6_Y = internal constant [4 x i64] [i64 -351622272188323807, i64 2723645596360593106, i64 1130761209686391285, i64 361594743214814121], align 16
@secp256k1_T_7_X = internal constant [4 x i64] [i64 5007466957403332308, i64 6733374718618479691, i64 -8760522008205090135, i64 8236739260942998351], align 16
@secp256k1_T_7_Y = internal constant [4 x i64] [i64 -2098349632890830819, i64 6911758251200497788, i64 4794166684156246946, i64 2483843417850146542], align 16
@secp256k1_T_8_X = internal constant [4 x i64] [i64 -4977670178151183073, i64 -1757779201580889830, i64 -537967426747261685, i64 1594746956407165992], align 16
@secp256k1_T_8_Y = internal constant [4 x i64] [i64 8941679188463483893, i64 -8446293993750006829, i64 -8749469233696690649, i64 9096878549241662321], align 16
@secp256k1_T_9_X = internal constant [4 x i64] [i64 -9033652019210342954, i64 8278716662661338711, i64 1808472259386788355, i64 1017586007671408058], align 16
@secp256k1_T_9_Y = internal constant [4 x i64] [i64 -3202782016882743946, i64 -3276017281234339988, i64 6071353332035513051, i64 3302372254715416834], align 16
@secp256k1_T_10_X = internal constant [4 x i64] [i64 -6181332185120473831, i64 -1529559475092597571, i64 -1752048147326356902, i64 -3436750373575662529], align 16
@secp256k1_T_10_Y = internal constant [4 x i64] [i64 8493158557349156016, i64 -4158783782458406649, i64 7428045949580326519, i64 106375164200801188], align 16
@secp256k1_T_11_X = internal constant [4 x i64] [i64 -1583563334626313947, i64 410379738242428162, i64 -1798581875899403485, i64 1338633438441104295], align 16
@secp256k1_T_11_Y = internal constant [4 x i64] [i64 3413691399969139210, i64 6716612227641418567, i64 -5902960972061203424, i64 2711660350378670169], align 16
@secp256k1_T_12_X = internal constant [4 x i64] [i64 3149118965027014782, i64 9062382733747097948, i64 1827392268631135486, i64 -7276594452130806416], align 16
@secp256k1_T_12_Y = internal constant [4 x i64] [i64 -8243957961783265936, i64 4838651373148748125, i64 -7342003845887234146, i64 3127092298256189727], align 16
@secp256k1_T_13_X = internal constant [4 x i64] [i64 6511779578557929617, i64 -7091982931081430518, i64 -6935574190558036273, i64 7275373557471628676], align 16
@secp256k1_T_13_Y = internal constant [4 x i64] [i64 6441099587764023148, i64 -5074400507044821813, i64 -5161152504016588581, i64 1133541051878914111], align 16
@secp256k1_T_14_X = internal constant [4 x i64] [i64 6275886755059759458, i64 -1822948990621539095, i64 3162222985423799496, i64 513591010685513474], align 16
@secp256k1_T_14_Y = internal constant [4 x i64] [i64 2300092180182675914, i64 -6133489382228190284, i64 -8291354975715260759, i64 -3893316840922095641], align 16
@secp256k1_T_15_X = internal constant [4 x i64] [i64 1294927000404943308, i64 -3742551655618710835, i64 6227077004907950425, i64 -8563020831453667019], align 16
@secp256k1_T_15_Y = internal constant [4 x i64] [i64 5493384423985021973, i64 -958433510056912675, i64 -7656694840426655921, i64 -6108479022088353481], align 16
@brainpoolP256r1_T_0_X = internal constant [4 x i64] [i64 4198572826427273826, i64 -5053557880721169470, i64 3191724131859150767, i64 -8371436644322093109], align 16
@brainpoolP256r1_T_0_Y = internal constant [4 x i64] [i64 6637554640278022551, i64 -4433999359445725612, i64 -7496164501933187639, i64 6088576656054338813], align 16
@brainpoolP256r1_T_1_X = internal constant [4 x i64] [i64 -6493191441430502852, i64 -3352205071553869454, i64 -3816670673903611242, i64 -9189943546374484983], align 16
@brainpoolP256r1_T_1_Y = internal constant [4 x i64] [i64 4090657066019577093, i64 7938640688738916724, i64 -6114700775071276990, i64 2573576816009769472], align 16
@brainpoolP256r1_T_2_X = internal constant [4 x i64] [i64 1680170386670577196, i64 -7802854982569357176, i64 -7159872917913249732, i64 3953892000357781239], align 16
@brainpoolP256r1_T_2_Y = internal constant [4 x i64] [i64 1977229074465198841, i64 -4264914091617031880, i64 -5330340811484065060, i64 1753990177029957762], align 16
@brainpoolP256r1_T_3_X = internal constant [4 x i64] [i64 6645235527097716264, i64 -4548869194068397967, i64 3305247222059691736, i64 5167294779189731707], align 16
@brainpoolP256r1_T_3_Y = internal constant [4 x i64] [i64 -6665348253804341578, i64 151378253568731244, i64 -1705097912762793223, i64 3502019688161239118], align 16
@brainpoolP256r1_T_4_X = internal constant [4 x i64] [i64 323433438970405311, i64 8369509438630875538, i64 4664534053265478998, i64 -8674413655940002010], align 16
@brainpoolP256r1_T_4_Y = internal constant [4 x i64] [i64 -2471550602194061225, i64 5143209866314876470, i64 -491066602757962600, i64 2948060293537330753], align 16
@brainpoolP256r1_T_5_X = internal constant [4 x i64] [i64 2306981676307871738, i64 4472960423773120128, i64 -5218095806460788700, i64 1166212888924150343], align 16
@brainpoolP256r1_T_5_Y = internal constant [4 x i64] [i64 -5215777328205915481, i64 -7868336023828023500, i64 7574613513840803614, i64 6668385770054530878], align 16
@brainpoolP256r1_T_6_X = internal constant [4 x i64] [i64 2174660403829451581, i64 5551696021122762085, i64 6565801993592851628, i64 1820643847469751585], align 16
@brainpoolP256r1_T_6_Y = internal constant [4 x i64] [i64 -1702263037451489461, i64 -3867118490399618621, i64 -4763722603396749825, i64 6722478992638402642], align 16
@brainpoolP256r1_T_7_X = internal constant [4 x i64] [i64 701030429258685873, i64 -4074602123170779049, i64 5353326130522024203, i64 1039743944827891006], align 16
@brainpoolP256r1_T_7_Y = internal constant [4 x i64] [i64 5947430293210267749, i64 -864928717790197778, i64 -894324379941443686, i64 3521349040344353509], align 16
@brainpoolP256r1_T_8_X = internal constant [4 x i64] [i64 -6137045646645125466, i64 2217892790396389469, i64 -8327933112519362246, i64 935720805451780121], align 16
@brainpoolP256r1_T_8_Y = internal constant [4 x i64] [i64 6312170825910333425, i64 5490311547922786113, i64 -2464746227904538429, i64 4114009687775233520], align 16
@brainpoolP256r1_T_9_X = internal constant [4 x i64] [i64 -6743417425750095583, i64 3389031540535412340, i64 9210854381672911571, i64 6282639064887782032], align 16
@brainpoolP256r1_T_9_Y = internal constant [4 x i64] [i64 4331140724488122880, i64 676733694103888892, i64 6925491649306411829, i64 6006811222756893479], align 16
@brainpoolP256r1_T_10_X = internal constant [4 x i64] [i64 -2912556427122460470, i64 1183512662454515628, i64 -1016893669819426733, i64 -7036889637861306908], align 16
@brainpoolP256r1_T_10_Y = internal constant [4 x i64] [i64 7697549695327654134, i64 5023323877385542488, i64 5580504436783335261, i64 5401581074738951592], align 16
@brainpoolP256r1_T_11_X = internal constant [4 x i64] [i64 -8902944410372469009, i64 -7013460563953167507, i64 -5858012888965378069, i64 5893670609934260316], align 16
@brainpoolP256r1_T_11_Y = internal constant [4 x i64] [i64 -4402234147202741826, i64 -4198779249545342763, i64 -1704646563974653332, i64 184258347515513707], align 16
@brainpoolP256r1_T_12_X = internal constant [4 x i64] [i64 3744280170824942072, i64 -3249546276049262164, i64 1356731526738169476, i64 1661919589461781884], align 16
@brainpoolP256r1_T_12_Y = internal constant [4 x i64] [i64 -6980912238699477499, i64 -7694416818428887081, i64 1741234458844093955, i64 8116231296936535393], align 16
@brainpoolP256r1_T_13_X = internal constant [4 x i64] [i64 -4531194533568411976, i64 1158994286218959389, i64 8571381190083895661, i64 8237310310775587658], align 16
@brainpoolP256r1_T_13_Y = internal constant [4 x i64] [i64 2616526036089229494, i64 2197290914173307693, i64 4293499551772263827, i64 6090690017108659995], align 16
@brainpoolP256r1_T_14_X = internal constant [4 x i64] [i64 -4670583406488670313, i64 5237608547848638601, i64 -8419161159878670823, i64 1196455059540682957], align 16
@brainpoolP256r1_T_14_Y = internal constant [4 x i64] [i64 4053241551852452497, i64 -704911427411252984, i64 4436307577489889132, i64 -8796491303253381668], align 16
@brainpoolP256r1_T_15_X = internal constant [4 x i64] [i64 -7080955119164095243, i64 4643987815311514587, i64 7508273702223802937, i64 -7480358191773005002], align 16
@brainpoolP256r1_T_15_Y = internal constant [4 x i64] [i64 -5926376281019690829, i64 7791891160023902400, i64 4991147037717537197, i64 9187837725592971476], align 16
@brainpoolP384r1_T_0_X = internal constant [6 x i64] [i64 -1186783291851362530, i64 -1718439692932331862, i64 -2630160464876859160, i64 -8626746346542379037, i64 -6726624664623169685, i64 2097662510161151487], align 16
@brainpoolP384r1_T_0_Y = internal constant [6 x i64] [i64 4792396531824874261, i64 1028586674454626577, i64 -2189869477761308376, i64 7113166411453454436, i64 6679378719998465362, i64 -8449283461998853468], align 16
@brainpoolP384r1_T_1_X = internal constant [6 x i64] [i64 2120023625687554195, i64 237333970603293666, i64 6508391887003669761, i64 -6678134791236206655, i64 3551698353053462227, i64 3322819813384641158], align 16
@brainpoolP384r1_T_1_Y = internal constant [6 x i64] [i64 1870863992645188177, i64 -3294599454958649876, i64 -6572001027087890180, i64 -7283639675640028624, i64 304696612336456723, i64 7203524912179054541], align 16
@brainpoolP384r1_T_2_X = internal constant [6 x i64] [i64 5598260425367523988, i64 -4659803437859044827, i64 -121915745348099237, i64 2877379162345775707, i64 -3446139171924454200, i64 6903045636276394612], align 16
@brainpoolP384r1_T_2_Y = internal constant [6 x i64] [i64 -6014777763332079594, i64 4757081366614636696, i64 -4596652186876995390, i64 -4543977799542624718, i64 6602664965894002710, i64 8320785162170006447], align 16
@brainpoolP384r1_T_3_X = internal constant [6 x i64] [i64 -4009507366074705976, i64 604182315400826464, i64 -2943639470305906651, i64 -9077162346824412285, i64 1541839945991997225, i64 2516654547911813390], align 16
@brainpoolP384r1_T_3_Y = internal constant [6 x i64] [i64 -6126459719589398310, i64 -8984768446943318016, i64 -1772797419883293233, i64 -4952692358479884459, i64 -9085187795029198756, i64 1669335887077858112], align 16
@brainpoolP384r1_T_4_X = internal constant [6 x i64] [i64 -1627052377152623374, i64 -7504705230179878101, i64 -7115209160761778844, i64 7089864032484577005, i64 5433053652382193906, i64 8980240818835350171], align 16
@brainpoolP384r1_T_4_Y = internal constant [6 x i64] [i64 207555395577860395, i64 3495440824746234456, i64 8798399447692009948, i64 3153498876251885445, i64 8865509318476924656, i64 7561422278471406525], align 16
@brainpoolP384r1_T_5_X = internal constant [6 x i64] [i64 -6807055143994927315, i64 -4488602691674303569, i64 -991886435176885745, i64 -3499987703129993991, i64 -1058560941435533461, i64 -9078853311761266028], align 16
@brainpoolP384r1_T_5_Y = internal constant [6 x i64] [i64 2747993166275811444, i64 4069157971962144583, i64 -2436217740066770007, i64 8943490169117549879, i64 -2319395742438534767, i64 3296321210869869973], align 16
@brainpoolP384r1_T_6_X = internal constant [6 x i64] [i64 -4777925547629840048, i64 -6824068811002326203, i64 -7264881286416453882, i64 -3919422902545298712, i64 8530287054937305675, i64 9147864957320018449], align 16
@brainpoolP384r1_T_6_Y = internal constant [6 x i64] [i64 2794991573800245706, i64 -1875974801156431518, i64 4283162919523010925, i64 2126093054288788252, i64 6398728550603666341, i64 3530013115411019507], align 16
@brainpoolP384r1_T_7_X = internal constant [6 x i64] [i64 6296269477279440788, i64 7055334607530638450, i64 -8014857676557493328, i64 -6545908834664861922, i64 2366558355126626572, i64 273235928880922267], align 16
@brainpoolP384r1_T_7_Y = internal constant [6 x i64] [i64 4748204883677820713, i64 459114974392631882, i64 3075154665133507613, i64 -553030024641952451, i64 270871660699258861, i64 3529303801569268569], align 16
@brainpoolP384r1_T_8_X = internal constant [6 x i64] [i64 5636336069814095927, i64 1264667005362294723, i64 -5410736991012820521, i64 2540061715928848711, i64 -4755670277545605312, i64 4133290959325758921], align 16
@brainpoolP384r1_T_8_Y = internal constant [6 x i64] [i64 -5123511211461712354, i64 7409817597642568135, i64 -3406382786154412374, i64 1718117925009236421, i64 8497224367378006054, i64 3847736902777871555], align 16
@brainpoolP384r1_T_9_X = internal constant [6 x i64] [i64 -2321599664276049986, i64 1133957443827759115, i64 -758059599047868912, i64 -2118540432995609802, i64 -2063018847345791646, i64 3533382452333345364], align 16
@brainpoolP384r1_T_9_Y = internal constant [6 x i64] [i64 -7744580728010832408, i64 -2732148609214073068, i64 -1711770650331330858, i64 1545621570681930169, i64 1409475484979425789, i64 813083441364654854], align 16
@brainpoolP384r1_T_10_X = internal constant [6 x i64] [i64 312984560868946730, i64 6824785703536422326, i64 -6419049147983414773, i64 6785807597173855897, i64 572978659905757975, i64 2951557779606533402], align 16
@brainpoolP384r1_T_10_Y = internal constant [6 x i64] [i64 -5790761381593092419, i64 -2397143262406590725, i64 -4535345408278483515, i64 8687756194337351674, i64 2887773012500416341, i64 7051815315893566835], align 16
@brainpoolP384r1_T_11_X = internal constant [6 x i64] [i64 6145180872889916611, i64 -6921965131983502306, i64 -8553844968878390552, i64 -3533037218881609010, i64 4193486936856315842, i64 223379305820890875], align 16
@brainpoolP384r1_T_11_Y = internal constant [6 x i64] [i64 891975488534064106, i64 2051689100171040438, i64 -503576937029845979, i64 -273985615395801438, i64 3180357419756541084, i64 2854238447206475387], align 16
@brainpoolP384r1_T_12_X = internal constant [6 x i64] [i64 906167373324709359, i64 -7480228087609256213, i64 314160368354902325, i64 7810344795899474777, i64 -7616934623300674148, i64 3543747620191276772], align 16
@brainpoolP384r1_T_12_Y = internal constant [6 x i64] [i64 -5322328468926068538, i64 6147314714560063215, i64 -7776414260502040599, i64 1006092360667657019, i64 -5915032807733927866, i64 17999900869332279], align 16
@brainpoolP384r1_T_13_X = internal constant [6 x i64] [i64 -2779912593852260967, i64 -2063305932325567103, i64 5466158443174726707, i64 -5797650287227753111, i64 8471613125184774503, i64 3436012333190950017], align 16
@brainpoolP384r1_T_13_Y = internal constant [6 x i64] [i64 -2700847989788074705, i64 -3840751263834099615, i64 -6476431334023467338, i64 -4077566878197965204, i64 8251558542877182369, i64 8049789834006025675], align 16
@brainpoolP384r1_T_14_X = internal constant [6 x i64] [i64 5786352889224343007, i64 3020002429508476187, i64 -8697872256049037709, i64 -1443109085462143237, i64 4716597235861063262, i64 6188932964814745330], align 16
@brainpoolP384r1_T_14_Y = internal constant [6 x i64] [i64 1501309299471313656, i64 800002580893310898, i64 -3033636144414651297, i64 -6660230853353709042, i64 2886258064103608404, i64 8692146585489190539], align 16
@brainpoolP384r1_T_15_X = internal constant [6 x i64] [i64 1460783340226502072, i64 -6038717637724278867, i64 3931417119311632712, i64 -2671774635878159160, i64 -1502527579455953726, i64 -9136642082211129871], align 16
@brainpoolP384r1_T_15_Y = internal constant [6 x i64] [i64 -5941544790722800339, i64 -387811503198323545, i64 5942352571176878824, i64 -6525743919691322933, i64 -4805368580703992160, i64 3510342354782756638], align 16
@brainpoolP384r1_T_16_X = internal constant [6 x i64] [i64 2489266678854386501, i64 -3872218503458187442, i64 2345676424969008462, i64 -5541480618003556877, i64 -8557571611682780972, i64 7156349348940083846], align 16
@brainpoolP384r1_T_16_Y = internal constant [6 x i64] [i64 3305499053283665581, i64 411543490590017342, i64 7862514169557350554, i64 3398826600284646465, i64 495787061506349123, i64 6079884776135264951], align 16
@brainpoolP384r1_T_17_X = internal constant [6 x i64] [i64 -3769431198370202301, i64 -2340215110300315984, i64 1220317838115008591, i64 3231663631367782998, i64 -9185280350733067251, i64 8612187954481689264], align 16
@brainpoolP384r1_T_17_Y = internal constant [6 x i64] [i64 -406014783336230473, i64 6819952608561788616, i64 -8973631139327552965, i64 -5133043068545529815, i64 -3042631149995682483, i64 -9114181248381843595], align 16
@brainpoolP384r1_T_18_X = internal constant [6 x i64] [i64 7106980439564673425, i64 -3349583120001605004, i64 8027432929244567120, i64 -8151084946634969627, i64 -6630971749104251312, i64 142571627870833737], align 16
@brainpoolP384r1_T_18_Y = internal constant [6 x i64] [i64 9003890624558661300, i64 8016046756764611141, i64 3202728724488192060, i64 -3649483571621999433, i64 6902363800112282151, i64 9152843577163311704], align 16
@brainpoolP384r1_T_19_X = internal constant [6 x i64] [i64 2610233623272582577, i64 -1430278552580177653, i64 -3811371216311865451, i64 -3469410334730502166, i64 -8731273279900017652, i64 1899462219777687961], align 16
@brainpoolP384r1_T_19_Y = internal constant [6 x i64] [i64 1560402473103348083, i64 265824809932246546, i64 3153637724561350033, i64 4741318218110550476, i64 -6069418161181643222, i64 2238400613673495211], align 16
@brainpoolP384r1_T_20_X = internal constant [6 x i64] [i64 -1299629319538283508, i64 7150614576281865544, i64 8985487728044141480, i64 -7929179938566940416, i64 3421754240171249360, i64 8746887613645928417], align 16
@brainpoolP384r1_T_20_Y = internal constant [6 x i64] [i64 -1382773175859101663, i64 -8530950239614061416, i64 -5075728177561703947, i64 -8453881350255068709, i64 -704256812907523188, i64 -8536438787809216006], align 16
@brainpoolP384r1_T_21_X = internal constant [6 x i64] [i64 5686883122713056589, i64 -6326303095107860964, i64 -5836966293234533090, i64 -7712303021528232935, i64 -2100887921565012878, i64 5549353527144625339], align 16
@brainpoolP384r1_T_21_Y = internal constant [6 x i64] [i64 4824016875777899505, i64 -6660697574893926195, i64 4402640749782647427, i64 3408231407749799488, i64 -6942208423312845741, i64 7525074767131783297], align 16
@brainpoolP384r1_T_22_X = internal constant [6 x i64] [i64 143922195403059196, i64 -871662885398563116, i64 5953970733643892209, i64 163849372226455994, i64 6152595608339249772, i64 -8643105769907373993], align 16
@brainpoolP384r1_T_22_Y = internal constant [6 x i64] [i64 569845329760925437, i64 -2838937597770966126, i64 -7139159435630991978, i64 7642673213527719765, i64 -1848364906965421216, i64 4927838195781903814], align 16
@brainpoolP384r1_T_23_X = internal constant [6 x i64] [i64 2485748695112025848, i64 6995022384091395120, i64 2097733261944926717, i64 -542740863207840630, i64 -7568690031674967621, i64 3168613986143686588], align 16
@brainpoolP384r1_T_23_Y = internal constant [6 x i64] [i64 6774822525882909845, i64 -2054586354029093172, i64 4583039126430868361, i64 5959837398125786258, i64 -6027347902962261875, i64 6417519557731559075], align 16
@brainpoolP384r1_T_24_X = internal constant [6 x i64] [i64 -3854691872570972558, i64 -6376636203606685499, i64 5010111558502854944, i64 3452962867863170191, i64 -6710717461305854349, i64 4768520603792443689], align 16
@brainpoolP384r1_T_24_Y = internal constant [6 x i64] [i64 3570443109672262465, i64 -3143324260121670312, i64 7106027390100241919, i64 4735440566697063054, i64 8206468439764917149, i64 75164151356487927], align 16
@brainpoolP384r1_T_25_X = internal constant [6 x i64] [i64 6441360324769232842, i64 -595430950408303014, i64 1760408402243434535, i64 3209172224387494967, i64 -1711746925125141321, i64 1353019043870803568], align 16
@brainpoolP384r1_T_25_Y = internal constant [6 x i64] [i64 -1478252395107611563, i64 4684890945449002310, i64 -651486829034652514, i64 2739041970684856506, i64 -5385205604395934742, i64 1760753359421638423], align 16
@brainpoolP384r1_T_26_X = internal constant [6 x i64] [i64 -7461264360164168919, i64 -2042739734306567032, i64 -6999223736222967612, i64 7063036213016475847, i64 8390228078808838010, i64 1297283303673926608], align 16
@brainpoolP384r1_T_26_Y = internal constant [6 x i64] [i64 4540523025751682711, i64 -1285067676565897607, i64 -5241697601114931762, i64 -1023444170102351712, i64 -8889356109420922731, i64 -8377450309908816152], align 16
@brainpoolP384r1_T_27_X = internal constant [6 x i64] [i64 4318438991343261326, i64 2591559986081980229, i64 6557530548090029737, i64 7770325550449652920, i64 -4839312384672532137, i64 7708923276227873791], align 16
@brainpoolP384r1_T_27_Y = internal constant [6 x i64] [i64 4227844368717888196, i64 3475098747814334481, i64 -2500867468278333314, i64 4622045106364205055, i64 5302501948748737154, i64 1852321123008242787], align 16
@brainpoolP384r1_T_28_X = internal constant [6 x i64] [i64 5154206751595744347, i64 5789157957295677888, i64 7874725725366406226, i64 1544106693299061537, i64 3257430842570558537, i64 4416387056451807596], align 16
@brainpoolP384r1_T_28_Y = internal constant [6 x i64] [i64 -2650212343578957587, i64 -5193184179801842484, i64 3607703095112736956, i64 -762903011233334054, i64 -3046345061774751044, i64 1164383506354834380], align 16
@brainpoolP384r1_T_29_X = internal constant [6 x i64] [i64 -1549393673464107179, i64 3081561352120513717, i64 7958155722902543864, i64 -8245805772028968468, i64 1436435182899532140, i64 8138398515188124039], align 16
@brainpoolP384r1_T_29_Y = internal constant [6 x i64] [i64 3473820613728480356, i64 3414741364551650586, i64 -5853897998271041052, i64 -888119159280386023, i64 -4021160766422881309, i64 7671113687825703571], align 16
@brainpoolP384r1_T_30_X = internal constant [6 x i64] [i64 8563147087961190062, i64 -3831262518906966318, i64 -3936916398594545356, i64 7926168954196678814, i64 9047097313611057287, i64 8310729512810700756], align 16
@brainpoolP384r1_T_30_Y = internal constant [6 x i64] [i64 8013895739594905453, i64 3610505685427635038, i64 -8945660759435593241, i64 2285192553319007386, i64 4345051448358102386, i64 2465323284607822590], align 16
@brainpoolP384r1_T_31_X = internal constant [6 x i64] [i64 1153593955994270312, i64 7272954472132124348, i64 -3541112808537330072, i64 3630619765170600725, i64 6178440584085559925, i64 1151491463427300511], align 16
@brainpoolP384r1_T_31_Y = internal constant [6 x i64] [i64 7322333226762830770, i64 4677462265025005732, i64 2268841094372157950, i64 -2067701840468075780, i64 1189700908892933877, i64 4563258538010957699], align 16
@brainpoolP512r1_T_0_X = internal constant [8 x i64] [i64 -8415782903455549406, i64 8965910700118138472, i64 5823550673135435103, i64 -55415966350125939, i64 -5459661344807581298, i64 -8796199190748653887, i64 6494527313417104019, i64 -9102086292842292892], align 16
@brainpoolP512r1_T_0_Y = internal constant [8 x i64] [i64 8704646705537616018, i64 -3329801490789280762, i64 6614182396149851054, i64 -5558323433720297378, i64 -6917312030724620015, i64 -1006001461753709798, i64 -4545610137825959171, i64 9069748673103213292], align 16
@brainpoolP512r1_T_1_X = internal constant [8 x i64] [i64 4866312499796634090, i64 4022091220003475387, i64 -6480972712121816163, i64 3689246811076116707, i64 7605764307004354019, i64 7743220453867384228, i64 -3623781331563526810, i64 2040725702806559457], align 16
@brainpoolP512r1_T_1_Y = internal constant [8 x i64] [i64 -5704499816848257685, i64 8406987595153777439, i64 3101289214858617618, i64 -1405411408130880961, i64 -7938850371388875476, i64 -2055941048009517623, i64 4784779935813385012, i64 2461955070954133690], align 16
@brainpoolP512r1_T_2_X = internal constant [8 x i64] [i64 8659759631128147538, i64 -7274158433846475631, i64 -7840167329972870120, i64 -8381595302084696549, i64 672665030336505732, i64 -4300104607244309363, i64 -4651716317877544743, i64 7776752016649654963], align 16
@brainpoolP512r1_T_2_Y = internal constant [8 x i64] [i64 7630602306432354378, i64 492140210258609588, i64 851921643195754648, i64 8045109494224525303, i64 1581194128427536672, i64 -5695481118622332451, i64 -360905293047867964, i64 4686187787723610148], align 16
@brainpoolP512r1_T_3_X = internal constant [8 x i64] [i64 -119432464868824194, i64 6718248058216820874, i64 -4651951233057616237, i64 5475916451755406164, i64 -863618888360645306, i64 6616332165329373499, i64 5906828457645922998, i64 -8638365883721990444], align 16
@brainpoolP512r1_T_3_Y = internal constant [8 x i64] [i64 -700658820476851030, i64 5102560459573091535, i64 8841141326052252486, i64 2180148016275765564, i64 -4727164985728179402, i64 -2069148222548015108, i64 7833041992279869542, i64 3915527064810414214], align 16
@brainpoolP512r1_T_4_X = internal constant [8 x i64] [i64 4327585156817620734, i64 -1068958241890764359, i64 7677938703748109790, i64 -526566166814553432, i64 6560790014650808193, i64 -3050656833564021682, i64 4635419372324218838, i64 -8186566998457895008], align 16
@brainpoolP512r1_T_4_Y = internal constant [8 x i64] [i64 7369842960948850597, i64 -1593460556475505950, i64 -9014648299202454273, i64 7339651756481645705, i64 8894374551778991831, i64 2859174871384710350, i64 -798993319873428499, i64 2795499800992636050], align 16
@brainpoolP512r1_T_5_X = internal constant [8 x i64] [i64 -8042457322384710345, i64 -5650637269346313785, i64 7705563411213798144, i64 -6193522670948823814, i64 -5075155965477373300, i64 8873477354529909885, i64 4664008495994413334, i64 -6715560000954338989], align 16
@brainpoolP512r1_T_5_Y = internal constant [8 x i64] [i64 2250112053096790455, i64 8367629123717972323, i64 -3942717393932724438, i64 7948711237539141918, i64 4191852923302049745, i64 5368484308733338565, i64 -2475996539463109554, i64 810051370870492411], align 16
@brainpoolP512r1_T_6_X = internal constant [8 x i64] [i64 -6574530867300853704, i64 7520702551881189833, i64 -1509598672005984688, i64 6909913966610799278, i64 5721382743831332719, i64 4318048434318613906, i64 5680134903652353697, i64 5275501178008509738], align 16
@brainpoolP512r1_T_6_Y = internal constant [8 x i64] [i64 -5536487312664118884, i64 -6293159010302266596, i64 -778930392800600341, i64 -243778568018952329, i64 6851477085905082826, i64 3195659212515694524, i64 -3142527769218462010, i64 2324852577260290237], align 16
@brainpoolP512r1_T_7_X = internal constant [8 x i64] [i64 -3204740609996057877, i64 -3960135410325932033, i64 8428781508675411494, i64 -2519226187034817356, i64 4122753830995119604, i64 -6871250607442966073, i64 6356392697654447211, i64 6817356611209051516], align 16
@brainpoolP512r1_T_7_Y = internal constant [8 x i64] [i64 -1879329639938730262, i64 7381287493403930975, i64 846930407976189217, i64 -2664472915785755831, i64 8352768948781380502, i64 3798233452959642120, i64 -7768355244106518674, i64 -7165182136751427276], align 16
@brainpoolP512r1_T_8_X = internal constant [8 x i64] [i64 -3896885230510154224, i64 1704117519727114342, i64 240153489385386144, i64 1196850401290396975, i64 3244157942687576854, i64 1982992822756711523, i64 2937991450708399815, i64 -7361338024068941087], align 16
@brainpoolP512r1_T_8_Y = internal constant [8 x i64] [i64 -8028333234859334773, i64 -4754770881625102773, i64 7125051755814813737, i64 2244398724576796054, i64 -1739700137055250070, i64 -7256412453760304095, i64 2248052775166062699, i64 3709756943121769460], align 16
@brainpoolP512r1_T_9_X = internal constant [8 x i64] [i64 7311328567074151872, i64 5342804659654470508, i64 -4822643527133191289, i64 6095880920579682644, i64 7623034300766124242, i64 -5389111214956486905, i64 -5600296980515862163, i64 142626554933450368], align 16
@brainpoolP512r1_T_9_Y = internal constant [8 x i64] [i64 5479996217786707408, i64 -8461186958672196636, i64 -5616404271707581003, i64 -2899222171323907660, i64 2775251614860071786, i64 -2636385820098821826, i64 -892320847009790398, i64 1499839835962027843], align 16
@brainpoolP512r1_T_10_X = internal constant [8 x i64] [i64 -8977155059196306766, i64 1727050215437816847, i64 8802027404304796948, i64 2600886127848723770, i64 412791967620800570, i64 8251826666231695788, i64 -2645884761124109112, i64 4770820231451177867], align 16
@brainpoolP512r1_T_10_Y = internal constant [8 x i64] [i64 -2508239088860604321, i64 7050569859534820566, i64 -1428228787515274780, i64 6146699923637569338, i64 -4201582510706765298, i64 -5947311509543494396, i64 -4409740516409994282, i64 3983143806086432969], align 16
@brainpoolP512r1_T_11_X = internal constant [8 x i64] [i64 -4560892211114268756, i64 -7911025059492682006, i64 -6234341957607871698, i64 -5126254940318439245, i64 -1205516045434539234, i64 8867300701435907721, i64 -1990416134359090718, i64 4916105840827401575], align 16
@brainpoolP512r1_T_11_Y = internal constant [8 x i64] [i64 4380927906116743974, i64 5334808764244799908, i64 7979251619764708490, i64 -7226326943898388623, i64 -7656124464118842090, i64 -7863770935085172576, i64 -1488398776116504421, i64 1301329868492161379], align 16
@brainpoolP512r1_T_12_X = internal constant [8 x i64] [i64 1825918280944912225, i64 6730079981672053499, i64 -788895537796407426, i64 -8562711457489761642, i64 -6141963110075288194, i64 7271797313101103639, i64 -6859158713424407385, i64 -8352808663085679915], align 16
@brainpoolP512r1_T_12_Y = internal constant [8 x i64] [i64 -5702515798874342026, i64 -4153906732839312541, i64 6728722081897754961, i64 5894679132790403676, i64 -6742562288414697372, i64 -222184687931075164, i64 -8415514786840336080, i64 1633976632740415163], align 16
@brainpoolP512r1_T_13_X = internal constant [8 x i64] [i64 -3291177003911162336, i64 -7589394690460591577, i64 -1564348768309924063, i64 984744420334363443, i64 1088388958247495312, i64 6420577737840809019, i64 9195672668166834751, i64 3775922296927767510], align 16
@brainpoolP512r1_T_13_Y = internal constant [8 x i64] [i64 -682589160309243, i64 5959399827781064352, i64 5044579015952735597, i64 -1347545980834673133, i64 -1789743385702348154, i64 7098086064323109783, i64 -1773502656450285813, i64 4968991973505330987], align 16
@brainpoolP512r1_T_14_X = internal constant [8 x i64] [i64 -6328164458267440206, i64 5262580705785818055, i64 -8351429670808700265, i64 5268531461297518871, i64 -6136479074641944394, i64 -529003994191971856, i64 -7355476576524590609, i64 194662854929192304], align 16
@brainpoolP512r1_T_14_Y = internal constant [8 x i64] [i64 1990231166373016873, i64 1117303647883773380, i64 -5080852110201526052, i64 5755776913152248818, i64 5461421445876278066, i64 3314937420446062503, i64 5705053447580497268, i64 3131427944712150328], align 16
@brainpoolP512r1_T_15_X = internal constant [8 x i64] [i64 -6131353020555744596, i64 5263280696492609290, i64 -1973691240716537027, i64 7882219633705410969, i64 6668918423125312305, i64 1905512085743225706, i64 -1242498822098216195, i64 -8271587942239151364], align 16
@brainpoolP512r1_T_15_Y = internal constant [8 x i64] [i64 3627542540102408354, i64 3673662956870154549, i64 9185911900220557436, i64 -7001910941594542872, i64 -4522677571268549848, i64 5918628784451637054, i64 -9071292322565280499, i64 3201896277571425840], align 16
@brainpoolP512r1_T_16_X = internal constant [8 x i64] [i64 -3419941712295245977, i64 3073598906276691503, i64 4306381902238125572, i64 5975363364722854687, i64 2821007732851922286, i64 7559355163839326327, i64 4446839482200062094, i64 -6517785339737457535], align 16
@brainpoolP512r1_T_16_Y = internal constant [8 x i64] [i64 -6268277382409018183, i64 -1593321045725189415, i64 -6961080425946806277, i64 -7097104695414714399, i64 8404359707694666731, i64 -1717828951843920376, i64 -3586980540363870672, i64 8988239534935863885], align 16
@brainpoolP512r1_T_17_X = internal constant [8 x i64] [i64 -9131852294582120868, i64 -1371517581491238415, i64 3319840588570896113, i64 -9168367737456160083, i64 6630543130578572261, i64 -4197287938488563818, i64 9132043967196165518, i64 1230382848447506925], align 16
@brainpoolP512r1_T_17_Y = internal constant [8 x i64] [i64 -1671032298762987783, i64 -2342174314047909640, i64 1037247592178134908, i64 3057023622424628133, i64 -5978354253992142425, i64 -1339875242546130636, i64 1670588995263828963, i64 6087310853975932697], align 16
@brainpoolP512r1_T_18_X = internal constant [8 x i64] [i64 3843595713453040147, i64 1461273699433023533, i64 -4283873324711490034, i64 -7533525544598694181, i64 -6314055219699841088, i64 -6924301450154428986, i64 -5957402033493012533, i64 4575002769717481446], align 16
@brainpoolP512r1_T_18_Y = internal constant [8 x i64] [i64 2146151111653473529, i64 2714747081802040814, i64 6871741278608704684, i64 -8456518258330482577, i64 2660514015170923956, i64 4234480278205417150, i64 4502752581977778618, i64 6717184524301242435], align 16
@brainpoolP512r1_T_19_X = internal constant [8 x i64] [i64 7573650990910039589, i64 5477075981319971857, i64 -6280883652689742524, i64 399965559766447586, i64 -2313361759866776216, i64 -9183425061970295700, i64 2121446901982716933, i64 6729989297467495580], align 16
@brainpoolP512r1_T_19_Y = internal constant [8 x i64] [i64 -6734638522805219738, i64 -5439734839985885162, i64 -4419305354836319065, i64 -8048926450881459899, i64 5149892408712015376, i64 2566616489496401095, i64 8513942543564235797, i64 3580666076804314117], align 16
@brainpoolP512r1_T_20_X = internal constant [8 x i64] [i64 -3043022004708243540, i64 8319007170703179463, i64 -2090456568914253927, i64 -2570566691004275302, i64 -5759802290474091486, i64 1592212212000044224, i64 1590895669065892504, i64 773507905018322676], align 16
@brainpoolP512r1_T_20_Y = internal constant [8 x i64] [i64 753263505279187951, i64 -1878222968571320521, i64 6003489179269453537, i64 -1043061620097307495, i64 2228061530076134283, i64 -3708141813666544494, i64 3812990386282638170, i64 -8150562817191038029], align 16
@brainpoolP512r1_T_21_X = internal constant [8 x i64] [i64 -3264611916633667850, i64 1308693731077125626, i64 7754946453783423477, i64 -165152115089320805, i64 2005437230257657591, i64 8757448272556402408, i64 -4053879362764167450, i64 7179228719124227747], align 16
@brainpoolP512r1_T_21_Y = internal constant [8 x i64] [i64 9060000960936267147, i64 -9137505899520088201, i64 -1157038644453383136, i64 -2357911984558680860, i64 -6455757575186000972, i64 -4391472052399171936, i64 -289508677539122646, i64 6067877356558948512], align 16
@brainpoolP512r1_T_22_X = internal constant [8 x i64] [i64 -6513064006887565440, i64 -5975241579953401557, i64 6329204951916779224, i64 4992088894132027655, i64 -3299784534018017847, i64 4781549167184281946, i64 -5852880628500028920, i64 2659893389503524190], align 16
@brainpoolP512r1_T_22_Y = internal constant [8 x i64] [i64 -8600787170565040716, i64 -7821750651101580730, i64 -2314794487556573456, i64 8487502269163278584, i64 621600990961063774, i64 -8780164815399636941, i64 -3863984688320388716, i64 2332873196600368839], align 16
@brainpoolP512r1_T_23_X = internal constant [8 x i64] [i64 -6626333743053852508, i64 6916501725756554501, i64 -2550663132367605340, i64 3392153601488655893, i64 6813041710828092813, i64 122995661164496572, i64 8924057647192439853, i64 -7823314708119806684], align 16
@brainpoolP512r1_T_23_Y = internal constant [8 x i64] [i64 -140784582607084683, i64 -959565479479673786, i64 3028187017188428881, i64 4711185286354316255, i64 2656990146505146973, i64 2665597931594264619, i64 -1946162590183381054, i64 4910138283243894944], align 16
@brainpoolP512r1_T_24_X = internal constant [8 x i64] [i64 8125309945497201463, i64 -5152051772565142729, i64 -6420308978532913894, i64 -9103240926205242057, i64 6015226406242143951, i64 2468972769183521292, i64 7503824027413163863, i64 4510710987688106460], align 16
@brainpoolP512r1_T_24_Y = internal constant [8 x i64] [i64 3953595005830000927, i64 441122764965864093, i64 -8670474323556285546, i64 8455460624780302860, i64 6970186603260323452, i64 -3900816710836815143, i64 8892517186541308396, i64 -9063963778365415498], align 16
@brainpoolP512r1_T_25_X = internal constant [8 x i64] [i64 -2646193648275395736, i64 3757263763869023779, i64 -3866502975497179884, i64 6226641079425173141, i64 -8880190125237808764, i64 -6046175452495947426, i64 -4364151313335549441, i64 4476222520760909319], align 16
@brainpoolP512r1_T_25_Y = internal constant [8 x i64] [i64 5958714591336056713, i64 -606613777147703780, i64 3255443123175602200, i64 8771138133095259288, i64 4368901565844482387, i64 1457669687045545898, i64 1099839729966527101, i64 1277832228364729484], align 16
@brainpoolP512r1_T_26_X = internal constant [8 x i64] [i64 1102554842785777548, i64 8208732750579441123, i64 -2517264906455924265, i64 -5305303529659930178, i64 1934383804343630307, i64 6310095923451333027, i64 -5263664057910422171, i64 -7272245773392324929], align 16
@brainpoolP512r1_T_26_Y = internal constant [8 x i64] [i64 -3874141988804216755, i64 -9062393382030251822, i64 1388593924806019253, i64 -7683487888426504185, i64 -3181088133510275274, i64 765389514718063932, i64 3076581104284406314, i64 3840471362303045433], align 16
@brainpoolP512r1_T_27_X = internal constant [8 x i64] [i64 365200519660224784, i64 1325853897467932338, i64 -5741745910192080007, i64 -4383804323421190438, i64 4210803749347916682, i64 2499627252260665560, i64 -6119269730495791782, i64 4451282950738418662], align 16
@brainpoolP512r1_T_27_Y = internal constant [8 x i64] [i64 9167129408509042721, i64 8807977846341844432, i64 8811645263363586938, i64 -4073557909947080650, i64 9063304725430279544, i64 4922946302710807351, i64 -4593613103744833266, i64 7008578983974390216], align 16
@brainpoolP512r1_T_28_X = internal constant [8 x i64] [i64 4788015249695786768, i64 4143391764119097712, i64 -4615040387948646795, i64 2317257269845932823, i64 3290675089623423659, i64 4718603641376349269, i64 -6839787693049878097, i64 8846399359410408001], align 16
@brainpoolP512r1_T_28_Y = internal constant [8 x i64] [i64 2299505398393242455, i64 4233745480428134919, i64 -820576808249541603, i64 6047899302296157627, i64 -7630378598681506895, i64 -3664332478772440542, i64 -8403954527421591807, i64 852528776713477217], align 16
@brainpoolP512r1_T_29_X = internal constant [8 x i64] [i64 -3024737357357256313, i64 -6178295760175766243, i64 -3147817867142884143, i64 729779792486630450, i64 -3571308450021714320, i64 -85143836543786539, i64 445929044888580140, i64 -8011638125555493309], align 16
@brainpoolP512r1_T_29_Y = internal constant [8 x i64] [i64 -2960797181871418935, i64 -1405803606648300535, i64 -6755007608914074852, i64 -8269613057372944450, i64 833086559200775632, i64 1398632873594807608, i64 -7685620833726342128, i64 995729963204320035], align 16
@brainpoolP512r1_T_30_X = internal constant [8 x i64] [i64 -5500193812940144469, i64 5013375064355326116, i64 -7469694875995380873, i64 8906462170829293149, i64 -152747205745049864, i64 -8884840040584140554, i64 6613830799006099261, i64 1800013172464433731], align 16
@brainpoolP512r1_T_30_Y = internal constant [8 x i64] [i64 5470350030045869991, i64 4878098029244702702, i64 -8492303030906006369, i64 1267133286300204453, i64 1062487960931799253, i64 -4828746239680452342, i64 -2127696060061989645, i64 8029329502074661890], align 16
@brainpoolP512r1_T_31_X = internal constant [8 x i64] [i64 7142325003731185896, i64 -4906413842000097315, i64 733386046550525520, i64 -8165516964845768185, i64 -1451125739777256622, i64 -7815615649437907708, i64 592818553177211589, i64 3771744799159380348], align 16
@brainpoolP512r1_T_31_Y = internal constant [8 x i64] [i64 2732077817132573808, i64 3218378181833386473, i64 -5641313176956892124, i64 -2761094818536200019, i64 7197317963720568304, i64 -2217324323697838041, i64 -4322618869477520321, i64 4823308762152652609], align 16
@curve25519_part_of_n = internal constant [16 x i8] c"\14\DE\F9\DE\A2\F7\9C\D6X\12c\1A\\\F5\D3\ED", align 16
@curve448_part_of_n = internal constant [28 x i8] c"\835\DC\16;\B1$\B6Q)\C9o\DE\93=\8Dr:p\AA\DC\87=mT\A7\BB\0D", align 16
@ecp_mod_p192k1.Rp = internal global [1 x i64] [i64 4294971849], align 8
@ecp_mod_p224k1.Rp = internal global [1 x i64] [i64 4294974099], align 8
@ecp_mod_p256k1.Rp = internal global [1 x i64] [i64 4294968273], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %id) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %id.addr = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %0) #4
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %1) #4
  %2 = load i32, i32* %id.addr, align 4
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id1 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 0
  store i32 %2, i32* %id1, align 8
  %4 = load i32, i32* %id.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
    i32 5, label %sw.bb11
    i32 10, label %sw.bb14
    i32 11, label %sw.bb17
    i32 12, label %sw.bb20
    i32 6, label %sw.bb23
    i32 7, label %sw.bb25
    i32 8, label %sw.bb27
    i32 9, label %sw.bb29
    i32 13, label %sw.bb32
  ]

sw.bb:                                            ; preds = %do.end
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p192, i32 (%struct.mbedtls_mpi*)** %modp, align 8
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %6, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_p, i64 0, i64 0), i64 noundef 24, i64* noundef null, i64 noundef 0, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_b, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_gx, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_gy, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192r1_n, i64 0, i64 0), i64 noundef 24, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp192r1_T, i64 0, i64 0)) #4
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %do.end
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp3 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p224, i32 (%struct.mbedtls_mpi*)** %modp3, align 8
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call4 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %8, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_p, i64 0, i64 0), i64 noundef 32, i64* noundef null, i64 noundef 0, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_b, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_gx, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_gy, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224r1_n, i64 0, i64 0), i64 noundef 32, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp224r1_T, i64 0, i64 0)) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %do.end
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp6 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p256, i32 (%struct.mbedtls_mpi*)** %modp6, align 8
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call7 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %10, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_p, i64 0, i64 0), i64 noundef 32, i64* noundef null, i64 noundef 0, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_b, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_gx, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_gy, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256r1_n, i64 0, i64 0), i64 noundef 32, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp256r1_T, i64 0, i64 0)) #4
  store i32 %call7, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %do.end
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p384, i32 (%struct.mbedtls_mpi*)** %modp9, align 8
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call10 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %12, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_p, i64 0, i64 0), i64 noundef 48, i64* noundef null, i64 noundef 0, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_b, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_gx, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_gy, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @secp384r1_n, i64 0, i64 0), i64 noundef 48, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([32 x %struct.mbedtls_ecp_point], [32 x %struct.mbedtls_ecp_point]* @secp384r1_T, i64 0, i64 0)) #4
  store i32 %call10, i32* %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %do.end
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp12 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %13, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p521, i32 (%struct.mbedtls_mpi*)** %modp12, align 8
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call13 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %14, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_p, i64 0, i64 0), i64 noundef 72, i64* noundef null, i64 noundef 0, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_b, i64 0, i64 0), i64 noundef 72, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_gx, i64 0, i64 0), i64 noundef 72, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_gy, i64 0, i64 0), i64 noundef 72, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @secp521r1_n, i64 0, i64 0), i64 noundef 72, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([32 x %struct.mbedtls_ecp_point], [32 x %struct.mbedtls_ecp_point]* @secp521r1_T, i64 0, i64 0)) #4
  store i32 %call13, i32* %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %do.end
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp15 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %15, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p192k1, i32 (%struct.mbedtls_mpi*)** %modp15, align 8
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call16 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %16, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_p, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp192k1_a, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp192k1_b, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_gx, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_gy, i64 0, i64 0), i64 noundef 24, i64* noundef getelementptr inbounds ([3 x i64], [3 x i64]* @secp192k1_n, i64 0, i64 0), i64 noundef 24, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp192k1_T, i64 0, i64 0)) #4
  store i32 %call16, i32* %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %do.end
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp18 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %17, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p224k1, i32 (%struct.mbedtls_mpi*)** %modp18, align 8
  %18 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call19 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %18, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_p, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp224k1_a, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp224k1_b, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_gx, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_gy, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp224k1_n, i64 0, i64 0), i64 noundef 32, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp224k1_T, i64 0, i64 0)) #4
  store i32 %call19, i32* %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %do.end
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp21 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %19, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p256k1, i32 (%struct.mbedtls_mpi*)** %modp21, align 8
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call22 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %20, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_p, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp256k1_a, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @secp256k1_b, i64 0, i64 0), i64 noundef 8, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_gx, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_gy, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @secp256k1_n, i64 0, i64 0), i64 noundef 32, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @secp256k1_T, i64 0, i64 0)) #4
  store i32 %call22, i32* %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %do.end
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call24 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %21, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_p, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_a, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_b, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_gx, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_gy, i64 0, i64 0), i64 noundef 32, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @brainpoolP256r1_n, i64 0, i64 0), i64 noundef 32, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([16 x %struct.mbedtls_ecp_point], [16 x %struct.mbedtls_ecp_point]* @brainpoolP256r1_T, i64 0, i64 0)) #4
  store i32 %call24, i32* %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %do.end
  %22 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call26 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %22, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_p, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_a, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_b, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_gx, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_gy, i64 0, i64 0), i64 noundef 48, i64* noundef getelementptr inbounds ([6 x i64], [6 x i64]* @brainpoolP384r1_n, i64 0, i64 0), i64 noundef 48, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([32 x %struct.mbedtls_ecp_point], [32 x %struct.mbedtls_ecp_point]* @brainpoolP384r1_T, i64 0, i64 0)) #4
  store i32 %call26, i32* %retval, align 4
  br label %return

sw.bb27:                                          ; preds = %do.end
  %23 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call28 = call i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %23, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_p, i64 0, i64 0), i64 noundef 64, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_a, i64 0, i64 0), i64 noundef 64, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_b, i64 0, i64 0), i64 noundef 64, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_gx, i64 0, i64 0), i64 noundef 64, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_gy, i64 0, i64 0), i64 noundef 64, i64* noundef getelementptr inbounds ([8 x i64], [8 x i64]* @brainpoolP512r1_n, i64 0, i64 0), i64 noundef 64, %struct.mbedtls_ecp_point* noundef getelementptr inbounds ([32 x %struct.mbedtls_ecp_point], [32 x %struct.mbedtls_ecp_point]* @brainpoolP512r1_T, i64 0, i64 0)) #4
  store i32 %call28, i32* %retval, align 4
  br label %return

sw.bb29:                                          ; preds = %do.end
  %24 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %24, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p255, i32 (%struct.mbedtls_mpi*)** %modp30, align 8
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call31 = call i32 @ecp_use_curve25519(%struct.mbedtls_ecp_group* noundef %25) #4
  store i32 %call31, i32* %retval, align 4
  br label %return

sw.bb32:                                          ; preds = %do.end
  %26 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp33 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %26, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* @ecp_mod_p448, i32 (%struct.mbedtls_mpi*)** %modp33, align 8
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call34 = call i32 @ecp_use_curve448(%struct.mbedtls_ecp_group* noundef %27) #4
  store i32 %call34, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end
  %28 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id35 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %28, i32 0, i32 0
  store i32 0, i32* %id35, align 8
  store i32 -20096, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb32, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

declare dso_local void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef) #1

declare dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p192(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %c = alloca i64, align 8
  %p = alloca i64*, align 8
  %end = alloca i64*, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %c, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %0, i64 noundef 6) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2
  %2 = load i64*, i64** %p1, align 8
  store i64* %2, i64** %p, align 8
  %3 = load i64*, i64** %p, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %5
  store i64* %add.ptr, i64** %end, align 8
  %6 = load i64*, i64** %p, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p2, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %8, i64 3
  call void @add64(i64* noundef %6, i64* noundef %add.ptr3, i64* noundef %c) #4
  %9 = load i64*, i64** %p, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p4, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 5
  call void @add64(i64* noundef %9, i64* noundef %add.ptr5, i64* noundef %c) #4
  %12 = load i64*, i64** %p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %12, i64 1
  store i64* %add.ptr6, i64** %p, align 8
  %13 = load i64*, i64** %p, align 8
  call void @carry64(i64* noundef %13, i64* noundef %c) #4
  %14 = load i64*, i64** %p, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p7, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %16, i64 3
  call void @add64(i64* noundef %14, i64* noundef %add.ptr8, i64* noundef %c) #4
  %17 = load i64*, i64** %p, align 8
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i32 0, i32 2
  %19 = load i64*, i64** %p9, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %19, i64 4
  call void @add64(i64* noundef %17, i64* noundef %add.ptr10, i64* noundef %c) #4
  %20 = load i64*, i64** %p, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 2
  %22 = load i64*, i64** %p11, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %22, i64 5
  call void @add64(i64* noundef %20, i64* noundef %add.ptr12, i64* noundef %c) #4
  %23 = load i64*, i64** %p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %23, i64 1
  store i64* %add.ptr13, i64** %p, align 8
  %24 = load i64*, i64** %p, align 8
  call void @carry64(i64* noundef %24, i64* noundef %c) #4
  %25 = load i64*, i64** %p, align 8
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 2
  %27 = load i64*, i64** %p14, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %27, i64 4
  call void @add64(i64* noundef %25, i64* noundef %add.ptr15, i64* noundef %c) #4
  %28 = load i64*, i64** %p, align 8
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %29, i32 0, i32 2
  %30 = load i64*, i64** %p16, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %30, i64 5
  call void @add64(i64* noundef %28, i64* noundef %add.ptr17, i64* noundef %c) #4
  %31 = load i64*, i64** %p, align 8
  %add.ptr18 = getelementptr inbounds i64, i64* %31, i64 1
  store i64* %add.ptr18, i64** %p, align 8
  %32 = load i64, i64* %c, align 8
  %33 = load i64*, i64** %p, align 8
  store i64 %32, i64* %33, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %34 = load i64*, i64** %p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %incdec.ptr, i64** %p, align 8
  %35 = load i64*, i64** %end, align 8
  %cmp19 = icmp ult i64* %incdec.ptr, %35
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i64*, i64** %p, align 8
  store i64 0, i64* %36, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %37 = load i32, i32* %ret, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i64* noundef %p, i64 noundef %plen, i64* noundef %a, i64 noundef %alen, i64* noundef %b, i64 noundef %blen, i64* noundef %gx, i64 noundef %gxlen, i64* noundef %gy, i64 noundef %gylen, i64* noundef %n, i64 noundef %nlen, %struct.mbedtls_ecp_point* noundef %T) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %p.addr = alloca i64*, align 8
  %plen.addr = alloca i64, align 8
  %a.addr = alloca i64*, align 8
  %alen.addr = alloca i64, align 8
  %b.addr = alloca i64*, align 8
  %blen.addr = alloca i64, align 8
  %gx.addr = alloca i64*, align 8
  %gxlen.addr = alloca i64, align 8
  %gy.addr = alloca i64*, align 8
  %gylen.addr = alloca i64, align 8
  %n.addr = alloca i64*, align 8
  %nlen.addr = alloca i64, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  store i64 %plen, i64* %plen.addr, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %alen, i64* %alen.addr, align 8
  store i64* %b, i64** %b.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i64* %gx, i64** %gx.addr, align 8
  store i64 %gxlen, i64* %gxlen.addr, align 8
  store i64* %gy, i64** %gy.addr, align 8
  store i64 %gylen, i64* %gylen.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store i64 %nlen, i64* %nlen.addr, align 8
  store %struct.mbedtls_ecp_point* %T, %struct.mbedtls_ecp_point** %T.addr, align 8
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 1
  %1 = load i64*, i64** %p.addr, align 8
  %2 = load i64, i64* %plen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %P, i64* noundef %1, i64 noundef %2) #4
  %3 = load i64*, i64** %a.addr, align 8
  %cmp = icmp ne i64* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 2
  %5 = load i64*, i64** %a.addr, align 8
  %6 = load i64, i64* %alen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %A, i64* noundef %5, i64 noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 3
  %8 = load i64*, i64** %b.addr, align 8
  %9 = load i64, i64* %blen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %B, i64* noundef %8, i64 noundef %9) #4
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 5
  %11 = load i64*, i64** %n.addr, align 8
  %12 = load i64, i64* %nlen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %N, i64* noundef %11, i64 noundef %12) #4
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %13, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 0
  %14 = load i64*, i64** %gx.addr, align 8
  %15 = load i64, i64* %gxlen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %X, i64* noundef %14, i64 noundef %15) #4
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G1 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %16, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G1, i32 0, i32 1
  %17 = load i64*, i64** %gy.addr, align 8
  %18 = load i64, i64* %gylen.addr, align 8
  call void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %Y, i64* noundef %17, i64 noundef %18) #4
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G2 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %19, i32 0, i32 4
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G2, i32 0, i32 2
  call void @ecp_mpi_set1(%struct.mbedtls_mpi* noundef %Z) #4
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P3 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %20, i32 0, i32 1
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %P3) #4
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %21, i32 0, i32 6
  store i64 %call, i64* %pbits, align 8
  %22 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %22, i32 0, i32 5
  %call5 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N4) #4
  %23 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %23, i32 0, i32 7
  store i64 %call5, i64* %nbits, align 8
  %24 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %h = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %24, i32 0, i32 8
  store i32 1, i32* %h, align 8
  %25 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %26 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T6 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %26, i32 0, i32 13
  store %struct.mbedtls_ecp_point* %25, %struct.mbedtls_ecp_point** %T6, align 8
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T_size = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %27, i32 0, i32 14
  store i64 0, i64* %T_size, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p224(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %cur = alloca i32, align 4
  %i = alloca i64, align 8
  %bits = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8 0, i8* %c, align 1
  store i64 0, i64* %i, align 8
  store i64 224, i64* %bits, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %0, i64 noundef 8) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %i, align 8
  %rem = urem i64 %1, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %4 = load i64, i64* %i, align 8
  %div = udiv i64 %4, 2
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %div
  %5 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p1, align 8
  %8 = load i64, i64* %i, align 8
  %div2 = udiv i64 %8, 2
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %div2
  %9 = load i64, i64* %arrayidx3, align 8
  %conv4 = trunc i64 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, i32* %cur, align 4
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p5, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %11, i64 3
  %12 = load i64, i64* %arrayidx6, align 8
  %shr7 = lshr i64 %12, 32
  %conv8 = trunc i64 %shr7 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv8, i8* noundef %c) #4
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 2
  %14 = load i64*, i64** %p9, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %14, i64 5
  %15 = load i64, i64* %arrayidx10, align 8
  %shr11 = lshr i64 %15, 32
  %conv12 = trunc i64 %shr11 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv12, i8* noundef %c) #4
  %16 = load i64, i64* %i, align 8
  %rem13 = urem i64 %16, 2
  %tobool14 = icmp ne i64 %rem13, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %cond.end
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p16, align 8
  %19 = load i64, i64* %i, align 8
  %div17 = udiv i64 %19, 2
  %arrayidx18 = getelementptr inbounds i64, i64* %18, i64 %div17
  %20 = load i64, i64* %arrayidx18, align 8
  %and = and i64 %20, 4294967295
  store i64 %and, i64* %arrayidx18, align 8
  %21 = load i32, i32* %cur, align 4
  %conv19 = zext i32 %21 to i64
  %shl = shl i64 %conv19, 32
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 2
  %23 = load i64*, i64** %p20, align 8
  %24 = load i64, i64* %i, align 8
  %div21 = udiv i64 %24, 2
  %arrayidx22 = getelementptr inbounds i64, i64* %23, i64 %div21
  %25 = load i64, i64* %arrayidx22, align 8
  %or = or i64 %25, %shl
  store i64 %or, i64* %arrayidx22, align 8
  br label %if.end32

if.else:                                          ; preds = %cond.end
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 2
  %27 = load i64*, i64** %p23, align 8
  %28 = load i64, i64* %i, align 8
  %div24 = udiv i64 %28, 2
  %arrayidx25 = getelementptr inbounds i64, i64* %27, i64 %div24
  %29 = load i64, i64* %arrayidx25, align 8
  %and26 = and i64 %29, -4294967296
  store i64 %and26, i64* %arrayidx25, align 8
  %30 = load i32, i32* %cur, align 4
  %conv27 = zext i32 %30 to i64
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %31, i32 0, i32 2
  %32 = load i64*, i64** %p28, align 8
  %33 = load i64, i64* %i, align 8
  %div29 = udiv i64 %33, 2
  %arrayidx30 = getelementptr inbounds i64, i64* %32, i64 %div29
  %34 = load i64, i64* %arrayidx30, align 8
  %or31 = or i64 %34, %conv27
  store i64 %or31, i64* %arrayidx30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then15
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  %36 = load i64, i64* %i, align 8
  %rem33 = urem i64 %36, 2
  %tobool34 = icmp ne i64 %rem33, 0
  br i1 %tobool34, label %cond.true35, label %cond.false41

cond.true35:                                      ; preds = %if.end32
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i32 0, i32 2
  %38 = load i64*, i64** %p36, align 8
  %39 = load i64, i64* %i, align 8
  %div37 = udiv i64 %39, 2
  %arrayidx38 = getelementptr inbounds i64, i64* %38, i64 %div37
  %40 = load i64, i64* %arrayidx38, align 8
  %shr39 = lshr i64 %40, 32
  %conv40 = trunc i64 %shr39 to i32
  br label %cond.end46

cond.false41:                                     ; preds = %if.end32
  %41 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %41, i32 0, i32 2
  %42 = load i64*, i64** %p42, align 8
  %43 = load i64, i64* %i, align 8
  %div43 = udiv i64 %43, 2
  %arrayidx44 = getelementptr inbounds i64, i64* %42, i64 %div43
  %44 = load i64, i64* %arrayidx44, align 8
  %conv45 = trunc i64 %44 to i32
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false41, %cond.true35
  %cond47 = phi i32 [ %conv40, %cond.true35 ], [ %conv45, %cond.false41 ]
  store i32 %cond47, i32* %cur, align 4
  %45 = load i8, i8* %c, align 1
  store i8 %45, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %46 = load i8, i8* %cc, align 1
  %conv48 = sext i8 %46 to i32
  %cmp49 = icmp slt i32 %conv48, 0
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %cond.end46
  %47 = load i8, i8* %cc, align 1
  %conv52 = sext i8 %47 to i32
  %sub = sub nsw i32 0, %conv52
  call void @sub32(i32* noundef %cur, i32 noundef %sub, i8* noundef %c) #4
  br label %if.end55

if.else53:                                        ; preds = %cond.end46
  %48 = load i8, i8* %cc, align 1
  %conv54 = sext i8 %48 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv54, i8* noundef %c) #4
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p56 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %49, i32 0, i32 2
  %50 = load i64*, i64** %p56, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %50, i64 4
  %51 = load i64, i64* %arrayidx57, align 8
  %conv58 = trunc i64 %51 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv58, i8* noundef %c) #4
  %52 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p59 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %52, i32 0, i32 2
  %53 = load i64*, i64** %p59, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %53, i64 6
  %54 = load i64, i64* %arrayidx60, align 8
  %conv61 = trunc i64 %54 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv61, i8* noundef %c) #4
  %55 = load i64, i64* %i, align 8
  %rem62 = urem i64 %55, 2
  %tobool63 = icmp ne i64 %rem62, 0
  br i1 %tobool63, label %if.then64, label %if.else75

if.then64:                                        ; preds = %if.end55
  %56 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p65 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %56, i32 0, i32 2
  %57 = load i64*, i64** %p65, align 8
  %58 = load i64, i64* %i, align 8
  %div66 = udiv i64 %58, 2
  %arrayidx67 = getelementptr inbounds i64, i64* %57, i64 %div66
  %59 = load i64, i64* %arrayidx67, align 8
  %and68 = and i64 %59, 4294967295
  store i64 %and68, i64* %arrayidx67, align 8
  %60 = load i32, i32* %cur, align 4
  %conv69 = zext i32 %60 to i64
  %shl70 = shl i64 %conv69, 32
  %61 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p71 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %61, i32 0, i32 2
  %62 = load i64*, i64** %p71, align 8
  %63 = load i64, i64* %i, align 8
  %div72 = udiv i64 %63, 2
  %arrayidx73 = getelementptr inbounds i64, i64* %62, i64 %div72
  %64 = load i64, i64* %arrayidx73, align 8
  %or74 = or i64 %64, %shl70
  store i64 %or74, i64* %arrayidx73, align 8
  br label %if.end85

if.else75:                                        ; preds = %if.end55
  %65 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p76 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %65, i32 0, i32 2
  %66 = load i64*, i64** %p76, align 8
  %67 = load i64, i64* %i, align 8
  %div77 = udiv i64 %67, 2
  %arrayidx78 = getelementptr inbounds i64, i64* %66, i64 %div77
  %68 = load i64, i64* %arrayidx78, align 8
  %and79 = and i64 %68, -4294967296
  store i64 %and79, i64* %arrayidx78, align 8
  %69 = load i32, i32* %cur, align 4
  %conv80 = zext i32 %69 to i64
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p81 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i32 0, i32 2
  %71 = load i64*, i64** %p81, align 8
  %72 = load i64, i64* %i, align 8
  %div82 = udiv i64 %72, 2
  %arrayidx83 = getelementptr inbounds i64, i64* %71, i64 %div82
  %73 = load i64, i64* %arrayidx83, align 8
  %or84 = or i64 %73, %conv80
  store i64 %or84, i64* %arrayidx83, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else75, %if.then64
  %74 = load i64, i64* %i, align 8
  %inc86 = add i64 %74, 1
  store i64 %inc86, i64* %i, align 8
  %75 = load i64, i64* %i, align 8
  %rem87 = urem i64 %75, 2
  %tobool88 = icmp ne i64 %rem87, 0
  br i1 %tobool88, label %cond.true89, label %cond.false95

cond.true89:                                      ; preds = %if.end85
  %76 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p90 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %76, i32 0, i32 2
  %77 = load i64*, i64** %p90, align 8
  %78 = load i64, i64* %i, align 8
  %div91 = udiv i64 %78, 2
  %arrayidx92 = getelementptr inbounds i64, i64* %77, i64 %div91
  %79 = load i64, i64* %arrayidx92, align 8
  %shr93 = lshr i64 %79, 32
  %conv94 = trunc i64 %shr93 to i32
  br label %cond.end100

cond.false95:                                     ; preds = %if.end85
  %80 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p96 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %80, i32 0, i32 2
  %81 = load i64*, i64** %p96, align 8
  %82 = load i64, i64* %i, align 8
  %div97 = udiv i64 %82, 2
  %arrayidx98 = getelementptr inbounds i64, i64* %81, i64 %div97
  %83 = load i64, i64* %arrayidx98, align 8
  %conv99 = trunc i64 %83 to i32
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false95, %cond.true89
  %cond101 = phi i32 [ %conv94, %cond.true89 ], [ %conv99, %cond.false95 ]
  store i32 %cond101, i32* %cur, align 4
  %84 = load i8, i8* %c, align 1
  store i8 %84, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %85 = load i8, i8* %cc, align 1
  %conv102 = sext i8 %85 to i32
  %cmp103 = icmp slt i32 %conv102, 0
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %cond.end100
  %86 = load i8, i8* %cc, align 1
  %conv106 = sext i8 %86 to i32
  %sub107 = sub nsw i32 0, %conv106
  call void @sub32(i32* noundef %cur, i32 noundef %sub107, i8* noundef %c) #4
  br label %if.end110

if.else108:                                       ; preds = %cond.end100
  %87 = load i8, i8* %cc, align 1
  %conv109 = sext i8 %87 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv109, i8* noundef %c) #4
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then105
  %88 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p111 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %88, i32 0, i32 2
  %89 = load i64*, i64** %p111, align 8
  %arrayidx112 = getelementptr inbounds i64, i64* %89, i64 4
  %90 = load i64, i64* %arrayidx112, align 8
  %shr113 = lshr i64 %90, 32
  %conv114 = trunc i64 %shr113 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv114, i8* noundef %c) #4
  %91 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p115 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %91, i32 0, i32 2
  %92 = load i64*, i64** %p115, align 8
  %arrayidx116 = getelementptr inbounds i64, i64* %92, i64 6
  %93 = load i64, i64* %arrayidx116, align 8
  %shr117 = lshr i64 %93, 32
  %conv118 = trunc i64 %shr117 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv118, i8* noundef %c) #4
  %94 = load i64, i64* %i, align 8
  %rem119 = urem i64 %94, 2
  %tobool120 = icmp ne i64 %rem119, 0
  br i1 %tobool120, label %if.then121, label %if.else132

if.then121:                                       ; preds = %if.end110
  %95 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p122 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %95, i32 0, i32 2
  %96 = load i64*, i64** %p122, align 8
  %97 = load i64, i64* %i, align 8
  %div123 = udiv i64 %97, 2
  %arrayidx124 = getelementptr inbounds i64, i64* %96, i64 %div123
  %98 = load i64, i64* %arrayidx124, align 8
  %and125 = and i64 %98, 4294967295
  store i64 %and125, i64* %arrayidx124, align 8
  %99 = load i32, i32* %cur, align 4
  %conv126 = zext i32 %99 to i64
  %shl127 = shl i64 %conv126, 32
  %100 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p128 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %100, i32 0, i32 2
  %101 = load i64*, i64** %p128, align 8
  %102 = load i64, i64* %i, align 8
  %div129 = udiv i64 %102, 2
  %arrayidx130 = getelementptr inbounds i64, i64* %101, i64 %div129
  %103 = load i64, i64* %arrayidx130, align 8
  %or131 = or i64 %103, %shl127
  store i64 %or131, i64* %arrayidx130, align 8
  br label %if.end142

if.else132:                                       ; preds = %if.end110
  %104 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p133 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %104, i32 0, i32 2
  %105 = load i64*, i64** %p133, align 8
  %106 = load i64, i64* %i, align 8
  %div134 = udiv i64 %106, 2
  %arrayidx135 = getelementptr inbounds i64, i64* %105, i64 %div134
  %107 = load i64, i64* %arrayidx135, align 8
  %and136 = and i64 %107, -4294967296
  store i64 %and136, i64* %arrayidx135, align 8
  %108 = load i32, i32* %cur, align 4
  %conv137 = zext i32 %108 to i64
  %109 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p138 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %109, i32 0, i32 2
  %110 = load i64*, i64** %p138, align 8
  %111 = load i64, i64* %i, align 8
  %div139 = udiv i64 %111, 2
  %arrayidx140 = getelementptr inbounds i64, i64* %110, i64 %div139
  %112 = load i64, i64* %arrayidx140, align 8
  %or141 = or i64 %112, %conv137
  store i64 %or141, i64* %arrayidx140, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.else132, %if.then121
  %113 = load i64, i64* %i, align 8
  %inc143 = add i64 %113, 1
  store i64 %inc143, i64* %i, align 8
  %114 = load i64, i64* %i, align 8
  %rem144 = urem i64 %114, 2
  %tobool145 = icmp ne i64 %rem144, 0
  br i1 %tobool145, label %cond.true146, label %cond.false152

cond.true146:                                     ; preds = %if.end142
  %115 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p147 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %115, i32 0, i32 2
  %116 = load i64*, i64** %p147, align 8
  %117 = load i64, i64* %i, align 8
  %div148 = udiv i64 %117, 2
  %arrayidx149 = getelementptr inbounds i64, i64* %116, i64 %div148
  %118 = load i64, i64* %arrayidx149, align 8
  %shr150 = lshr i64 %118, 32
  %conv151 = trunc i64 %shr150 to i32
  br label %cond.end157

cond.false152:                                    ; preds = %if.end142
  %119 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p153 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %119, i32 0, i32 2
  %120 = load i64*, i64** %p153, align 8
  %121 = load i64, i64* %i, align 8
  %div154 = udiv i64 %121, 2
  %arrayidx155 = getelementptr inbounds i64, i64* %120, i64 %div154
  %122 = load i64, i64* %arrayidx155, align 8
  %conv156 = trunc i64 %122 to i32
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false152, %cond.true146
  %cond158 = phi i32 [ %conv151, %cond.true146 ], [ %conv156, %cond.false152 ]
  store i32 %cond158, i32* %cur, align 4
  %123 = load i8, i8* %c, align 1
  store i8 %123, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %124 = load i8, i8* %cc, align 1
  %conv159 = sext i8 %124 to i32
  %cmp160 = icmp slt i32 %conv159, 0
  br i1 %cmp160, label %if.then162, label %if.else165

if.then162:                                       ; preds = %cond.end157
  %125 = load i8, i8* %cc, align 1
  %conv163 = sext i8 %125 to i32
  %sub164 = sub nsw i32 0, %conv163
  call void @sub32(i32* noundef %cur, i32 noundef %sub164, i8* noundef %c) #4
  br label %if.end167

if.else165:                                       ; preds = %cond.end157
  %126 = load i8, i8* %cc, align 1
  %conv166 = sext i8 %126 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv166, i8* noundef %c) #4
  br label %if.end167

if.end167:                                        ; preds = %if.else165, %if.then162
  %127 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p168 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %127, i32 0, i32 2
  %128 = load i64*, i64** %p168, align 8
  %arrayidx169 = getelementptr inbounds i64, i64* %128, i64 5
  %129 = load i64, i64* %arrayidx169, align 8
  %conv170 = trunc i64 %129 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv170, i8* noundef %c) #4
  %130 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p171 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %130, i32 0, i32 2
  %131 = load i64*, i64** %p171, align 8
  %arrayidx172 = getelementptr inbounds i64, i64* %131, i64 3
  %132 = load i64, i64* %arrayidx172, align 8
  %shr173 = lshr i64 %132, 32
  %conv174 = trunc i64 %shr173 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv174, i8* noundef %c) #4
  %133 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p175 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %133, i32 0, i32 2
  %134 = load i64*, i64** %p175, align 8
  %arrayidx176 = getelementptr inbounds i64, i64* %134, i64 5
  %135 = load i64, i64* %arrayidx176, align 8
  %shr177 = lshr i64 %135, 32
  %conv178 = trunc i64 %shr177 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv178, i8* noundef %c) #4
  %136 = load i64, i64* %i, align 8
  %rem179 = urem i64 %136, 2
  %tobool180 = icmp ne i64 %rem179, 0
  br i1 %tobool180, label %if.then181, label %if.else192

if.then181:                                       ; preds = %if.end167
  %137 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p182 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %137, i32 0, i32 2
  %138 = load i64*, i64** %p182, align 8
  %139 = load i64, i64* %i, align 8
  %div183 = udiv i64 %139, 2
  %arrayidx184 = getelementptr inbounds i64, i64* %138, i64 %div183
  %140 = load i64, i64* %arrayidx184, align 8
  %and185 = and i64 %140, 4294967295
  store i64 %and185, i64* %arrayidx184, align 8
  %141 = load i32, i32* %cur, align 4
  %conv186 = zext i32 %141 to i64
  %shl187 = shl i64 %conv186, 32
  %142 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p188 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %142, i32 0, i32 2
  %143 = load i64*, i64** %p188, align 8
  %144 = load i64, i64* %i, align 8
  %div189 = udiv i64 %144, 2
  %arrayidx190 = getelementptr inbounds i64, i64* %143, i64 %div189
  %145 = load i64, i64* %arrayidx190, align 8
  %or191 = or i64 %145, %shl187
  store i64 %or191, i64* %arrayidx190, align 8
  br label %if.end202

if.else192:                                       ; preds = %if.end167
  %146 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p193 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %146, i32 0, i32 2
  %147 = load i64*, i64** %p193, align 8
  %148 = load i64, i64* %i, align 8
  %div194 = udiv i64 %148, 2
  %arrayidx195 = getelementptr inbounds i64, i64* %147, i64 %div194
  %149 = load i64, i64* %arrayidx195, align 8
  %and196 = and i64 %149, -4294967296
  store i64 %and196, i64* %arrayidx195, align 8
  %150 = load i32, i32* %cur, align 4
  %conv197 = zext i32 %150 to i64
  %151 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p198 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %151, i32 0, i32 2
  %152 = load i64*, i64** %p198, align 8
  %153 = load i64, i64* %i, align 8
  %div199 = udiv i64 %153, 2
  %arrayidx200 = getelementptr inbounds i64, i64* %152, i64 %div199
  %154 = load i64, i64* %arrayidx200, align 8
  %or201 = or i64 %154, %conv197
  store i64 %or201, i64* %arrayidx200, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else192, %if.then181
  %155 = load i64, i64* %i, align 8
  %inc203 = add i64 %155, 1
  store i64 %inc203, i64* %i, align 8
  %156 = load i64, i64* %i, align 8
  %rem204 = urem i64 %156, 2
  %tobool205 = icmp ne i64 %rem204, 0
  br i1 %tobool205, label %cond.true206, label %cond.false212

cond.true206:                                     ; preds = %if.end202
  %157 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p207 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %157, i32 0, i32 2
  %158 = load i64*, i64** %p207, align 8
  %159 = load i64, i64* %i, align 8
  %div208 = udiv i64 %159, 2
  %arrayidx209 = getelementptr inbounds i64, i64* %158, i64 %div208
  %160 = load i64, i64* %arrayidx209, align 8
  %shr210 = lshr i64 %160, 32
  %conv211 = trunc i64 %shr210 to i32
  br label %cond.end217

cond.false212:                                    ; preds = %if.end202
  %161 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p213 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %161, i32 0, i32 2
  %162 = load i64*, i64** %p213, align 8
  %163 = load i64, i64* %i, align 8
  %div214 = udiv i64 %163, 2
  %arrayidx215 = getelementptr inbounds i64, i64* %162, i64 %div214
  %164 = load i64, i64* %arrayidx215, align 8
  %conv216 = trunc i64 %164 to i32
  br label %cond.end217

cond.end217:                                      ; preds = %cond.false212, %cond.true206
  %cond218 = phi i32 [ %conv211, %cond.true206 ], [ %conv216, %cond.false212 ]
  store i32 %cond218, i32* %cur, align 4
  %165 = load i8, i8* %c, align 1
  store i8 %165, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %166 = load i8, i8* %cc, align 1
  %conv219 = sext i8 %166 to i32
  %cmp220 = icmp slt i32 %conv219, 0
  br i1 %cmp220, label %if.then222, label %if.else225

if.then222:                                       ; preds = %cond.end217
  %167 = load i8, i8* %cc, align 1
  %conv223 = sext i8 %167 to i32
  %sub224 = sub nsw i32 0, %conv223
  call void @sub32(i32* noundef %cur, i32 noundef %sub224, i8* noundef %c) #4
  br label %if.end227

if.else225:                                       ; preds = %cond.end217
  %168 = load i8, i8* %cc, align 1
  %conv226 = sext i8 %168 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv226, i8* noundef %c) #4
  br label %if.end227

if.end227:                                        ; preds = %if.else225, %if.then222
  %169 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p228 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %169, i32 0, i32 2
  %170 = load i64*, i64** %p228, align 8
  %arrayidx229 = getelementptr inbounds i64, i64* %170, i64 5
  %171 = load i64, i64* %arrayidx229, align 8
  %shr230 = lshr i64 %171, 32
  %conv231 = trunc i64 %shr230 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv231, i8* noundef %c) #4
  %172 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p232 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %172, i32 0, i32 2
  %173 = load i64*, i64** %p232, align 8
  %arrayidx233 = getelementptr inbounds i64, i64* %173, i64 4
  %174 = load i64, i64* %arrayidx233, align 8
  %conv234 = trunc i64 %174 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv234, i8* noundef %c) #4
  %175 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p235 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %175, i32 0, i32 2
  %176 = load i64*, i64** %p235, align 8
  %arrayidx236 = getelementptr inbounds i64, i64* %176, i64 6
  %177 = load i64, i64* %arrayidx236, align 8
  %conv237 = trunc i64 %177 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv237, i8* noundef %c) #4
  %178 = load i64, i64* %i, align 8
  %rem238 = urem i64 %178, 2
  %tobool239 = icmp ne i64 %rem238, 0
  br i1 %tobool239, label %if.then240, label %if.else251

if.then240:                                       ; preds = %if.end227
  %179 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p241 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %179, i32 0, i32 2
  %180 = load i64*, i64** %p241, align 8
  %181 = load i64, i64* %i, align 8
  %div242 = udiv i64 %181, 2
  %arrayidx243 = getelementptr inbounds i64, i64* %180, i64 %div242
  %182 = load i64, i64* %arrayidx243, align 8
  %and244 = and i64 %182, 4294967295
  store i64 %and244, i64* %arrayidx243, align 8
  %183 = load i32, i32* %cur, align 4
  %conv245 = zext i32 %183 to i64
  %shl246 = shl i64 %conv245, 32
  %184 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p247 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %184, i32 0, i32 2
  %185 = load i64*, i64** %p247, align 8
  %186 = load i64, i64* %i, align 8
  %div248 = udiv i64 %186, 2
  %arrayidx249 = getelementptr inbounds i64, i64* %185, i64 %div248
  %187 = load i64, i64* %arrayidx249, align 8
  %or250 = or i64 %187, %shl246
  store i64 %or250, i64* %arrayidx249, align 8
  br label %if.end261

if.else251:                                       ; preds = %if.end227
  %188 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p252 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %188, i32 0, i32 2
  %189 = load i64*, i64** %p252, align 8
  %190 = load i64, i64* %i, align 8
  %div253 = udiv i64 %190, 2
  %arrayidx254 = getelementptr inbounds i64, i64* %189, i64 %div253
  %191 = load i64, i64* %arrayidx254, align 8
  %and255 = and i64 %191, -4294967296
  store i64 %and255, i64* %arrayidx254, align 8
  %192 = load i32, i32* %cur, align 4
  %conv256 = zext i32 %192 to i64
  %193 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p257 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %193, i32 0, i32 2
  %194 = load i64*, i64** %p257, align 8
  %195 = load i64, i64* %i, align 8
  %div258 = udiv i64 %195, 2
  %arrayidx259 = getelementptr inbounds i64, i64* %194, i64 %div258
  %196 = load i64, i64* %arrayidx259, align 8
  %or260 = or i64 %196, %conv256
  store i64 %or260, i64* %arrayidx259, align 8
  br label %if.end261

if.end261:                                        ; preds = %if.else251, %if.then240
  %197 = load i64, i64* %i, align 8
  %inc262 = add i64 %197, 1
  store i64 %inc262, i64* %i, align 8
  %198 = load i64, i64* %i, align 8
  %rem263 = urem i64 %198, 2
  %tobool264 = icmp ne i64 %rem263, 0
  br i1 %tobool264, label %cond.true265, label %cond.false271

cond.true265:                                     ; preds = %if.end261
  %199 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p266 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %199, i32 0, i32 2
  %200 = load i64*, i64** %p266, align 8
  %201 = load i64, i64* %i, align 8
  %div267 = udiv i64 %201, 2
  %arrayidx268 = getelementptr inbounds i64, i64* %200, i64 %div267
  %202 = load i64, i64* %arrayidx268, align 8
  %shr269 = lshr i64 %202, 32
  %conv270 = trunc i64 %shr269 to i32
  br label %cond.end276

cond.false271:                                    ; preds = %if.end261
  %203 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p272 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %203, i32 0, i32 2
  %204 = load i64*, i64** %p272, align 8
  %205 = load i64, i64* %i, align 8
  %div273 = udiv i64 %205, 2
  %arrayidx274 = getelementptr inbounds i64, i64* %204, i64 %div273
  %206 = load i64, i64* %arrayidx274, align 8
  %conv275 = trunc i64 %206 to i32
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false271, %cond.true265
  %cond277 = phi i32 [ %conv270, %cond.true265 ], [ %conv275, %cond.false271 ]
  store i32 %cond277, i32* %cur, align 4
  %207 = load i8, i8* %c, align 1
  store i8 %207, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %208 = load i8, i8* %cc, align 1
  %conv278 = sext i8 %208 to i32
  %cmp279 = icmp slt i32 %conv278, 0
  br i1 %cmp279, label %if.then281, label %if.else284

if.then281:                                       ; preds = %cond.end276
  %209 = load i8, i8* %cc, align 1
  %conv282 = sext i8 %209 to i32
  %sub283 = sub nsw i32 0, %conv282
  call void @sub32(i32* noundef %cur, i32 noundef %sub283, i8* noundef %c) #4
  br label %if.end286

if.else284:                                       ; preds = %cond.end276
  %210 = load i8, i8* %cc, align 1
  %conv285 = sext i8 %210 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv285, i8* noundef %c) #4
  br label %if.end286

if.end286:                                        ; preds = %if.else284, %if.then281
  %211 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p287 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %211, i32 0, i32 2
  %212 = load i64*, i64** %p287, align 8
  %arrayidx288 = getelementptr inbounds i64, i64* %212, i64 6
  %213 = load i64, i64* %arrayidx288, align 8
  %conv289 = trunc i64 %213 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv289, i8* noundef %c) #4
  %214 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p290 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %214, i32 0, i32 2
  %215 = load i64*, i64** %p290, align 8
  %arrayidx291 = getelementptr inbounds i64, i64* %215, i64 4
  %216 = load i64, i64* %arrayidx291, align 8
  %shr292 = lshr i64 %216, 32
  %conv293 = trunc i64 %shr292 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv293, i8* noundef %c) #4
  %217 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p294 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %217, i32 0, i32 2
  %218 = load i64*, i64** %p294, align 8
  %arrayidx295 = getelementptr inbounds i64, i64* %218, i64 6
  %219 = load i64, i64* %arrayidx295, align 8
  %shr296 = lshr i64 %219, 32
  %conv297 = trunc i64 %shr296 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv297, i8* noundef %c) #4
  %220 = load i64, i64* %i, align 8
  %rem298 = urem i64 %220, 2
  %tobool299 = icmp ne i64 %rem298, 0
  br i1 %tobool299, label %if.then300, label %if.else311

if.then300:                                       ; preds = %if.end286
  %221 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p301 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %221, i32 0, i32 2
  %222 = load i64*, i64** %p301, align 8
  %223 = load i64, i64* %i, align 8
  %div302 = udiv i64 %223, 2
  %arrayidx303 = getelementptr inbounds i64, i64* %222, i64 %div302
  %224 = load i64, i64* %arrayidx303, align 8
  %and304 = and i64 %224, 4294967295
  store i64 %and304, i64* %arrayidx303, align 8
  %225 = load i32, i32* %cur, align 4
  %conv305 = zext i32 %225 to i64
  %shl306 = shl i64 %conv305, 32
  %226 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p307 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %226, i32 0, i32 2
  %227 = load i64*, i64** %p307, align 8
  %228 = load i64, i64* %i, align 8
  %div308 = udiv i64 %228, 2
  %arrayidx309 = getelementptr inbounds i64, i64* %227, i64 %div308
  %229 = load i64, i64* %arrayidx309, align 8
  %or310 = or i64 %229, %shl306
  store i64 %or310, i64* %arrayidx309, align 8
  br label %if.end321

if.else311:                                       ; preds = %if.end286
  %230 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p312 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %230, i32 0, i32 2
  %231 = load i64*, i64** %p312, align 8
  %232 = load i64, i64* %i, align 8
  %div313 = udiv i64 %232, 2
  %arrayidx314 = getelementptr inbounds i64, i64* %231, i64 %div313
  %233 = load i64, i64* %arrayidx314, align 8
  %and315 = and i64 %233, -4294967296
  store i64 %and315, i64* %arrayidx314, align 8
  %234 = load i32, i32* %cur, align 4
  %conv316 = zext i32 %234 to i64
  %235 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p317 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %235, i32 0, i32 2
  %236 = load i64*, i64** %p317, align 8
  %237 = load i64, i64* %i, align 8
  %div318 = udiv i64 %237, 2
  %arrayidx319 = getelementptr inbounds i64, i64* %236, i64 %div318
  %238 = load i64, i64* %arrayidx319, align 8
  %or320 = or i64 %238, %conv316
  store i64 %or320, i64* %arrayidx319, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.else311, %if.then300
  %239 = load i64, i64* %i, align 8
  %inc322 = add i64 %239, 1
  store i64 %inc322, i64* %i, align 8
  %240 = load i64, i64* %i, align 8
  %rem323 = urem i64 %240, 2
  %tobool324 = icmp ne i64 %rem323, 0
  br i1 %tobool324, label %cond.true325, label %cond.false331

cond.true325:                                     ; preds = %if.end321
  %241 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p326 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %241, i32 0, i32 2
  %242 = load i64*, i64** %p326, align 8
  %243 = load i64, i64* %i, align 8
  %div327 = udiv i64 %243, 2
  %arrayidx328 = getelementptr inbounds i64, i64* %242, i64 %div327
  %244 = load i64, i64* %arrayidx328, align 8
  %shr329 = lshr i64 %244, 32
  %conv330 = trunc i64 %shr329 to i32
  br label %cond.end336

cond.false331:                                    ; preds = %if.end321
  %245 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p332 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %245, i32 0, i32 2
  %246 = load i64*, i64** %p332, align 8
  %247 = load i64, i64* %i, align 8
  %div333 = udiv i64 %247, 2
  %arrayidx334 = getelementptr inbounds i64, i64* %246, i64 %div333
  %248 = load i64, i64* %arrayidx334, align 8
  %conv335 = trunc i64 %248 to i32
  br label %cond.end336

cond.end336:                                      ; preds = %cond.false331, %cond.true325
  %cond337 = phi i32 [ %conv330, %cond.true325 ], [ %conv335, %cond.false331 ]
  store i32 %cond337, i32* %cur, align 4
  %249 = load i8, i8* %c, align 1
  store i8 %249, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %250 = load i8, i8* %cc, align 1
  %conv338 = sext i8 %250 to i32
  %cmp339 = icmp slt i32 %conv338, 0
  br i1 %cmp339, label %if.then341, label %if.else344

if.then341:                                       ; preds = %cond.end336
  %251 = load i8, i8* %cc, align 1
  %conv342 = sext i8 %251 to i32
  %sub343 = sub nsw i32 0, %conv342
  call void @sub32(i32* noundef %cur, i32 noundef %sub343, i8* noundef %c) #4
  br label %if.end346

if.else344:                                       ; preds = %cond.end336
  %252 = load i8, i8* %cc, align 1
  %conv345 = sext i8 %252 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv345, i8* noundef %c) #4
  br label %if.end346

if.end346:                                        ; preds = %if.else344, %if.then341
  %253 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p347 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %253, i32 0, i32 2
  %254 = load i64*, i64** %p347, align 8
  %arrayidx348 = getelementptr inbounds i64, i64* %254, i64 6
  %255 = load i64, i64* %arrayidx348, align 8
  %shr349 = lshr i64 %255, 32
  %conv350 = trunc i64 %shr349 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv350, i8* noundef %c) #4
  %256 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p351 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %256, i32 0, i32 2
  %257 = load i64*, i64** %p351, align 8
  %arrayidx352 = getelementptr inbounds i64, i64* %257, i64 5
  %258 = load i64, i64* %arrayidx352, align 8
  %conv353 = trunc i64 %258 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv353, i8* noundef %c) #4
  %259 = load i64, i64* %i, align 8
  %rem354 = urem i64 %259, 2
  %tobool355 = icmp ne i64 %rem354, 0
  br i1 %tobool355, label %if.then356, label %if.else367

if.then356:                                       ; preds = %if.end346
  %260 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p357 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %260, i32 0, i32 2
  %261 = load i64*, i64** %p357, align 8
  %262 = load i64, i64* %i, align 8
  %div358 = udiv i64 %262, 2
  %arrayidx359 = getelementptr inbounds i64, i64* %261, i64 %div358
  %263 = load i64, i64* %arrayidx359, align 8
  %and360 = and i64 %263, 4294967295
  store i64 %and360, i64* %arrayidx359, align 8
  %264 = load i32, i32* %cur, align 4
  %conv361 = zext i32 %264 to i64
  %shl362 = shl i64 %conv361, 32
  %265 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p363 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %265, i32 0, i32 2
  %266 = load i64*, i64** %p363, align 8
  %267 = load i64, i64* %i, align 8
  %div364 = udiv i64 %267, 2
  %arrayidx365 = getelementptr inbounds i64, i64* %266, i64 %div364
  %268 = load i64, i64* %arrayidx365, align 8
  %or366 = or i64 %268, %shl362
  store i64 %or366, i64* %arrayidx365, align 8
  br label %if.end377

if.else367:                                       ; preds = %if.end346
  %269 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p368 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %269, i32 0, i32 2
  %270 = load i64*, i64** %p368, align 8
  %271 = load i64, i64* %i, align 8
  %div369 = udiv i64 %271, 2
  %arrayidx370 = getelementptr inbounds i64, i64* %270, i64 %div369
  %272 = load i64, i64* %arrayidx370, align 8
  %and371 = and i64 %272, -4294967296
  store i64 %and371, i64* %arrayidx370, align 8
  %273 = load i32, i32* %cur, align 4
  %conv372 = zext i32 %273 to i64
  %274 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p373 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %274, i32 0, i32 2
  %275 = load i64*, i64** %p373, align 8
  %276 = load i64, i64* %i, align 8
  %div374 = udiv i64 %276, 2
  %arrayidx375 = getelementptr inbounds i64, i64* %275, i64 %div374
  %277 = load i64, i64* %arrayidx375, align 8
  %or376 = or i64 %277, %conv372
  store i64 %or376, i64* %arrayidx375, align 8
  br label %if.end377

if.end377:                                        ; preds = %if.else367, %if.then356
  %278 = load i64, i64* %i, align 8
  %inc378 = add i64 %278, 1
  store i64 %inc378, i64* %i, align 8
  %279 = load i8, i8* %c, align 1
  %conv379 = sext i8 %279 to i32
  %cmp380 = icmp sgt i32 %conv379, 0
  br i1 %cmp380, label %cond.true382, label %cond.false384

cond.true382:                                     ; preds = %if.end377
  %280 = load i8, i8* %c, align 1
  %conv383 = sext i8 %280 to i32
  br label %cond.end385

cond.false384:                                    ; preds = %if.end377
  br label %cond.end385

cond.end385:                                      ; preds = %cond.false384, %cond.true382
  %cond386 = phi i32 [ %conv383, %cond.true382 ], [ 0, %cond.false384 ]
  store i32 %cond386, i32* %cur, align 4
  %281 = load i64, i64* %i, align 8
  %rem387 = urem i64 %281, 2
  %tobool388 = icmp ne i64 %rem387, 0
  br i1 %tobool388, label %if.then389, label %if.else400

if.then389:                                       ; preds = %cond.end385
  %282 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p390 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %282, i32 0, i32 2
  %283 = load i64*, i64** %p390, align 8
  %284 = load i64, i64* %i, align 8
  %div391 = udiv i64 %284, 2
  %arrayidx392 = getelementptr inbounds i64, i64* %283, i64 %div391
  %285 = load i64, i64* %arrayidx392, align 8
  %and393 = and i64 %285, 4294967295
  store i64 %and393, i64* %arrayidx392, align 8
  %286 = load i32, i32* %cur, align 4
  %conv394 = zext i32 %286 to i64
  %shl395 = shl i64 %conv394, 32
  %287 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p396 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %287, i32 0, i32 2
  %288 = load i64*, i64** %p396, align 8
  %289 = load i64, i64* %i, align 8
  %div397 = udiv i64 %289, 2
  %arrayidx398 = getelementptr inbounds i64, i64* %288, i64 %div397
  %290 = load i64, i64* %arrayidx398, align 8
  %or399 = or i64 %290, %shl395
  store i64 %or399, i64* %arrayidx398, align 8
  br label %if.end410

if.else400:                                       ; preds = %cond.end385
  %291 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p401 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %291, i32 0, i32 2
  %292 = load i64*, i64** %p401, align 8
  %293 = load i64, i64* %i, align 8
  %div402 = udiv i64 %293, 2
  %arrayidx403 = getelementptr inbounds i64, i64* %292, i64 %div402
  %294 = load i64, i64* %arrayidx403, align 8
  %and404 = and i64 %294, -4294967296
  store i64 %and404, i64* %arrayidx403, align 8
  %295 = load i32, i32* %cur, align 4
  %conv405 = zext i32 %295 to i64
  %296 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p406 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %296, i32 0, i32 2
  %297 = load i64*, i64** %p406, align 8
  %298 = load i64, i64* %i, align 8
  %div407 = udiv i64 %298, 2
  %arrayidx408 = getelementptr inbounds i64, i64* %297, i64 %div407
  %299 = load i64, i64* %arrayidx408, align 8
  %or409 = or i64 %299, %conv405
  store i64 %or409, i64* %arrayidx408, align 8
  br label %if.end410

if.end410:                                        ; preds = %if.else400, %if.then389
  store i32 0, i32* %cur, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end437, %if.end410
  %300 = load i64, i64* %i, align 8
  %inc411 = add i64 %300, 1
  store i64 %inc411, i64* %i, align 8
  %301 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %301, i32 0, i32 1
  %302 = load i64, i64* %n, align 8
  %mul = mul i64 %302, 2
  %cmp412 = icmp ult i64 %inc411, %mul
  br i1 %cmp412, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %303 = load i64, i64* %i, align 8
  %rem414 = urem i64 %303, 2
  %tobool415 = icmp ne i64 %rem414, 0
  br i1 %tobool415, label %if.then416, label %if.else427

if.then416:                                       ; preds = %while.body
  %304 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p417 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %304, i32 0, i32 2
  %305 = load i64*, i64** %p417, align 8
  %306 = load i64, i64* %i, align 8
  %div418 = udiv i64 %306, 2
  %arrayidx419 = getelementptr inbounds i64, i64* %305, i64 %div418
  %307 = load i64, i64* %arrayidx419, align 8
  %and420 = and i64 %307, 4294967295
  store i64 %and420, i64* %arrayidx419, align 8
  %308 = load i32, i32* %cur, align 4
  %conv421 = zext i32 %308 to i64
  %shl422 = shl i64 %conv421, 32
  %309 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p423 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %309, i32 0, i32 2
  %310 = load i64*, i64** %p423, align 8
  %311 = load i64, i64* %i, align 8
  %div424 = udiv i64 %311, 2
  %arrayidx425 = getelementptr inbounds i64, i64* %310, i64 %div424
  %312 = load i64, i64* %arrayidx425, align 8
  %or426 = or i64 %312, %shl422
  store i64 %or426, i64* %arrayidx425, align 8
  br label %if.end437

if.else427:                                       ; preds = %while.body
  %313 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p428 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %313, i32 0, i32 2
  %314 = load i64*, i64** %p428, align 8
  %315 = load i64, i64* %i, align 8
  %div429 = udiv i64 %315, 2
  %arrayidx430 = getelementptr inbounds i64, i64* %314, i64 %div429
  %316 = load i64, i64* %arrayidx430, align 8
  %and431 = and i64 %316, -4294967296
  store i64 %and431, i64* %arrayidx430, align 8
  %317 = load i32, i32* %cur, align 4
  %conv432 = zext i32 %317 to i64
  %318 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p433 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %318, i32 0, i32 2
  %319 = load i64*, i64** %p433, align 8
  %320 = load i64, i64* %i, align 8
  %div434 = udiv i64 %320, 2
  %arrayidx435 = getelementptr inbounds i64, i64* %319, i64 %div434
  %321 = load i64, i64* %arrayidx435, align 8
  %or436 = or i64 %321, %conv432
  store i64 %or436, i64* %arrayidx435, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.else427, %if.then416
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %322 = load i8, i8* %c, align 1
  %conv438 = sext i8 %322 to i32
  %cmp439 = icmp slt i32 %conv438, 0
  br i1 %cmp439, label %if.then441, label %if.end442

if.then441:                                       ; preds = %while.end
  %323 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %324 = load i8, i8* %c, align 1
  %325 = load i64, i64* %bits, align 8
  call void @mbedtls_ecp_fix_negative(%struct.mbedtls_mpi* noundef %323, i8 noundef signext %324, i64 noundef %325) #4
  br label %if.end442

if.end442:                                        ; preds = %if.then441, %while.end
  br label %cleanup

cleanup:                                          ; preds = %if.end442, %if.then
  %326 = load i32, i32* %ret, align 4
  ret i32 %326
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p256(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %cur = alloca i32, align 4
  %i = alloca i64, align 8
  %bits = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8 0, i8* %c, align 1
  store i64 0, i64* %i, align 8
  store i64 256, i64* %bits, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %0, i64 noundef 9) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %i, align 8
  %rem = urem i64 %1, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %4 = load i64, i64* %i, align 8
  %div = udiv i64 %4, 2
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %div
  %5 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p1, align 8
  %8 = load i64, i64* %i, align 8
  %div2 = udiv i64 %8, 2
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %div2
  %9 = load i64, i64* %arrayidx3, align 8
  %conv4 = trunc i64 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, i32* %cur, align 4
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p5, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %11, i64 4
  %12 = load i64, i64* %arrayidx6, align 8
  %conv7 = trunc i64 %12 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv7, i8* noundef %c) #4
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 2
  %14 = load i64*, i64** %p8, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %14, i64 4
  %15 = load i64, i64* %arrayidx9, align 8
  %shr10 = lshr i64 %15, 32
  %conv11 = trunc i64 %shr10 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv11, i8* noundef %c) #4
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 2
  %17 = load i64*, i64** %p12, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %17, i64 5
  %18 = load i64, i64* %arrayidx13, align 8
  %shr14 = lshr i64 %18, 32
  %conv15 = trunc i64 %shr14 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv15, i8* noundef %c) #4
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i32 0, i32 2
  %20 = load i64*, i64** %p16, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %20, i64 6
  %21 = load i64, i64* %arrayidx17, align 8
  %conv18 = trunc i64 %21 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv18, i8* noundef %c) #4
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i32 0, i32 2
  %23 = load i64*, i64** %p19, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %23, i64 6
  %24 = load i64, i64* %arrayidx20, align 8
  %shr21 = lshr i64 %24, 32
  %conv22 = trunc i64 %shr21 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv22, i8* noundef %c) #4
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  %26 = load i64*, i64** %p23, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %26, i64 7
  %27 = load i64, i64* %arrayidx24, align 8
  %conv25 = trunc i64 %27 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv25, i8* noundef %c) #4
  %28 = load i64, i64* %i, align 8
  %rem26 = urem i64 %28, 2
  %tobool27 = icmp ne i64 %rem26, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %cond.end
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %29, i32 0, i32 2
  %30 = load i64*, i64** %p29, align 8
  %31 = load i64, i64* %i, align 8
  %div30 = udiv i64 %31, 2
  %arrayidx31 = getelementptr inbounds i64, i64* %30, i64 %div30
  %32 = load i64, i64* %arrayidx31, align 8
  %and = and i64 %32, 4294967295
  store i64 %and, i64* %arrayidx31, align 8
  %33 = load i32, i32* %cur, align 4
  %conv32 = zext i32 %33 to i64
  %shl = shl i64 %conv32, 32
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 2
  %35 = load i64*, i64** %p33, align 8
  %36 = load i64, i64* %i, align 8
  %div34 = udiv i64 %36, 2
  %arrayidx35 = getelementptr inbounds i64, i64* %35, i64 %div34
  %37 = load i64, i64* %arrayidx35, align 8
  %or = or i64 %37, %shl
  store i64 %or, i64* %arrayidx35, align 8
  br label %if.end45

if.else:                                          ; preds = %cond.end
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %38, i32 0, i32 2
  %39 = load i64*, i64** %p36, align 8
  %40 = load i64, i64* %i, align 8
  %div37 = udiv i64 %40, 2
  %arrayidx38 = getelementptr inbounds i64, i64* %39, i64 %div37
  %41 = load i64, i64* %arrayidx38, align 8
  %and39 = and i64 %41, -4294967296
  store i64 %and39, i64* %arrayidx38, align 8
  %42 = load i32, i32* %cur, align 4
  %conv40 = zext i32 %42 to i64
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i32 0, i32 2
  %44 = load i64*, i64** %p41, align 8
  %45 = load i64, i64* %i, align 8
  %div42 = udiv i64 %45, 2
  %arrayidx43 = getelementptr inbounds i64, i64* %44, i64 %div42
  %46 = load i64, i64* %arrayidx43, align 8
  %or44 = or i64 %46, %conv40
  store i64 %or44, i64* %arrayidx43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then28
  %47 = load i64, i64* %i, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %i, align 8
  %48 = load i64, i64* %i, align 8
  %rem46 = urem i64 %48, 2
  %tobool47 = icmp ne i64 %rem46, 0
  br i1 %tobool47, label %cond.true48, label %cond.false54

cond.true48:                                      ; preds = %if.end45
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %49, i32 0, i32 2
  %50 = load i64*, i64** %p49, align 8
  %51 = load i64, i64* %i, align 8
  %div50 = udiv i64 %51, 2
  %arrayidx51 = getelementptr inbounds i64, i64* %50, i64 %div50
  %52 = load i64, i64* %arrayidx51, align 8
  %shr52 = lshr i64 %52, 32
  %conv53 = trunc i64 %shr52 to i32
  br label %cond.end59

cond.false54:                                     ; preds = %if.end45
  %53 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p55 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %53, i32 0, i32 2
  %54 = load i64*, i64** %p55, align 8
  %55 = load i64, i64* %i, align 8
  %div56 = udiv i64 %55, 2
  %arrayidx57 = getelementptr inbounds i64, i64* %54, i64 %div56
  %56 = load i64, i64* %arrayidx57, align 8
  %conv58 = trunc i64 %56 to i32
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false54, %cond.true48
  %cond60 = phi i32 [ %conv53, %cond.true48 ], [ %conv58, %cond.false54 ]
  store i32 %cond60, i32* %cur, align 4
  %57 = load i8, i8* %c, align 1
  store i8 %57, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %58 = load i8, i8* %cc, align 1
  %conv61 = sext i8 %58 to i32
  %cmp62 = icmp slt i32 %conv61, 0
  br i1 %cmp62, label %if.then64, label %if.else66

if.then64:                                        ; preds = %cond.end59
  %59 = load i8, i8* %cc, align 1
  %conv65 = sext i8 %59 to i32
  %sub = sub nsw i32 0, %conv65
  call void @sub32(i32* noundef %cur, i32 noundef %sub, i8* noundef %c) #4
  br label %if.end68

if.else66:                                        ; preds = %cond.end59
  %60 = load i8, i8* %cc, align 1
  %conv67 = sext i8 %60 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv67, i8* noundef %c) #4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  %61 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p69 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %61, i32 0, i32 2
  %62 = load i64*, i64** %p69, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %62, i64 4
  %63 = load i64, i64* %arrayidx70, align 8
  %shr71 = lshr i64 %63, 32
  %conv72 = trunc i64 %shr71 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv72, i8* noundef %c) #4
  %64 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p73 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %64, i32 0, i32 2
  %65 = load i64*, i64** %p73, align 8
  %arrayidx74 = getelementptr inbounds i64, i64* %65, i64 5
  %66 = load i64, i64* %arrayidx74, align 8
  %conv75 = trunc i64 %66 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv75, i8* noundef %c) #4
  %67 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p76 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %67, i32 0, i32 2
  %68 = load i64*, i64** %p76, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %68, i64 6
  %69 = load i64, i64* %arrayidx77, align 8
  %conv78 = trunc i64 %69 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv78, i8* noundef %c) #4
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p79 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i32 0, i32 2
  %71 = load i64*, i64** %p79, align 8
  %arrayidx80 = getelementptr inbounds i64, i64* %71, i64 6
  %72 = load i64, i64* %arrayidx80, align 8
  %shr81 = lshr i64 %72, 32
  %conv82 = trunc i64 %shr81 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv82, i8* noundef %c) #4
  %73 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p83 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %73, i32 0, i32 2
  %74 = load i64*, i64** %p83, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %74, i64 7
  %75 = load i64, i64* %arrayidx84, align 8
  %conv85 = trunc i64 %75 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv85, i8* noundef %c) #4
  %76 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p86 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %76, i32 0, i32 2
  %77 = load i64*, i64** %p86, align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %77, i64 7
  %78 = load i64, i64* %arrayidx87, align 8
  %shr88 = lshr i64 %78, 32
  %conv89 = trunc i64 %shr88 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv89, i8* noundef %c) #4
  %79 = load i64, i64* %i, align 8
  %rem90 = urem i64 %79, 2
  %tobool91 = icmp ne i64 %rem90, 0
  br i1 %tobool91, label %if.then92, label %if.else103

if.then92:                                        ; preds = %if.end68
  %80 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p93 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %80, i32 0, i32 2
  %81 = load i64*, i64** %p93, align 8
  %82 = load i64, i64* %i, align 8
  %div94 = udiv i64 %82, 2
  %arrayidx95 = getelementptr inbounds i64, i64* %81, i64 %div94
  %83 = load i64, i64* %arrayidx95, align 8
  %and96 = and i64 %83, 4294967295
  store i64 %and96, i64* %arrayidx95, align 8
  %84 = load i32, i32* %cur, align 4
  %conv97 = zext i32 %84 to i64
  %shl98 = shl i64 %conv97, 32
  %85 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p99 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %85, i32 0, i32 2
  %86 = load i64*, i64** %p99, align 8
  %87 = load i64, i64* %i, align 8
  %div100 = udiv i64 %87, 2
  %arrayidx101 = getelementptr inbounds i64, i64* %86, i64 %div100
  %88 = load i64, i64* %arrayidx101, align 8
  %or102 = or i64 %88, %shl98
  store i64 %or102, i64* %arrayidx101, align 8
  br label %if.end113

if.else103:                                       ; preds = %if.end68
  %89 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p104 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %89, i32 0, i32 2
  %90 = load i64*, i64** %p104, align 8
  %91 = load i64, i64* %i, align 8
  %div105 = udiv i64 %91, 2
  %arrayidx106 = getelementptr inbounds i64, i64* %90, i64 %div105
  %92 = load i64, i64* %arrayidx106, align 8
  %and107 = and i64 %92, -4294967296
  store i64 %and107, i64* %arrayidx106, align 8
  %93 = load i32, i32* %cur, align 4
  %conv108 = zext i32 %93 to i64
  %94 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p109 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %94, i32 0, i32 2
  %95 = load i64*, i64** %p109, align 8
  %96 = load i64, i64* %i, align 8
  %div110 = udiv i64 %96, 2
  %arrayidx111 = getelementptr inbounds i64, i64* %95, i64 %div110
  %97 = load i64, i64* %arrayidx111, align 8
  %or112 = or i64 %97, %conv108
  store i64 %or112, i64* %arrayidx111, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else103, %if.then92
  %98 = load i64, i64* %i, align 8
  %inc114 = add i64 %98, 1
  store i64 %inc114, i64* %i, align 8
  %99 = load i64, i64* %i, align 8
  %rem115 = urem i64 %99, 2
  %tobool116 = icmp ne i64 %rem115, 0
  br i1 %tobool116, label %cond.true117, label %cond.false123

cond.true117:                                     ; preds = %if.end113
  %100 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p118 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %100, i32 0, i32 2
  %101 = load i64*, i64** %p118, align 8
  %102 = load i64, i64* %i, align 8
  %div119 = udiv i64 %102, 2
  %arrayidx120 = getelementptr inbounds i64, i64* %101, i64 %div119
  %103 = load i64, i64* %arrayidx120, align 8
  %shr121 = lshr i64 %103, 32
  %conv122 = trunc i64 %shr121 to i32
  br label %cond.end128

cond.false123:                                    ; preds = %if.end113
  %104 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p124 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %104, i32 0, i32 2
  %105 = load i64*, i64** %p124, align 8
  %106 = load i64, i64* %i, align 8
  %div125 = udiv i64 %106, 2
  %arrayidx126 = getelementptr inbounds i64, i64* %105, i64 %div125
  %107 = load i64, i64* %arrayidx126, align 8
  %conv127 = trunc i64 %107 to i32
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false123, %cond.true117
  %cond129 = phi i32 [ %conv122, %cond.true117 ], [ %conv127, %cond.false123 ]
  store i32 %cond129, i32* %cur, align 4
  %108 = load i8, i8* %c, align 1
  store i8 %108, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %109 = load i8, i8* %cc, align 1
  %conv130 = sext i8 %109 to i32
  %cmp131 = icmp slt i32 %conv130, 0
  br i1 %cmp131, label %if.then133, label %if.else136

if.then133:                                       ; preds = %cond.end128
  %110 = load i8, i8* %cc, align 1
  %conv134 = sext i8 %110 to i32
  %sub135 = sub nsw i32 0, %conv134
  call void @sub32(i32* noundef %cur, i32 noundef %sub135, i8* noundef %c) #4
  br label %if.end138

if.else136:                                       ; preds = %cond.end128
  %111 = load i8, i8* %cc, align 1
  %conv137 = sext i8 %111 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv137, i8* noundef %c) #4
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %if.then133
  %112 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p139 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %112, i32 0, i32 2
  %113 = load i64*, i64** %p139, align 8
  %arrayidx140 = getelementptr inbounds i64, i64* %113, i64 5
  %114 = load i64, i64* %arrayidx140, align 8
  %conv141 = trunc i64 %114 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv141, i8* noundef %c) #4
  %115 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p142 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %115, i32 0, i32 2
  %116 = load i64*, i64** %p142, align 8
  %arrayidx143 = getelementptr inbounds i64, i64* %116, i64 5
  %117 = load i64, i64* %arrayidx143, align 8
  %shr144 = lshr i64 %117, 32
  %conv145 = trunc i64 %shr144 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv145, i8* noundef %c) #4
  %118 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p146 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %118, i32 0, i32 2
  %119 = load i64*, i64** %p146, align 8
  %arrayidx147 = getelementptr inbounds i64, i64* %119, i64 6
  %120 = load i64, i64* %arrayidx147, align 8
  %shr148 = lshr i64 %120, 32
  %conv149 = trunc i64 %shr148 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv149, i8* noundef %c) #4
  %121 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p150 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %121, i32 0, i32 2
  %122 = load i64*, i64** %p150, align 8
  %arrayidx151 = getelementptr inbounds i64, i64* %122, i64 7
  %123 = load i64, i64* %arrayidx151, align 8
  %conv152 = trunc i64 %123 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv152, i8* noundef %c) #4
  %124 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p153 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %124, i32 0, i32 2
  %125 = load i64*, i64** %p153, align 8
  %arrayidx154 = getelementptr inbounds i64, i64* %125, i64 7
  %126 = load i64, i64* %arrayidx154, align 8
  %shr155 = lshr i64 %126, 32
  %conv156 = trunc i64 %shr155 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv156, i8* noundef %c) #4
  %127 = load i64, i64* %i, align 8
  %rem157 = urem i64 %127, 2
  %tobool158 = icmp ne i64 %rem157, 0
  br i1 %tobool158, label %if.then159, label %if.else170

if.then159:                                       ; preds = %if.end138
  %128 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p160 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %128, i32 0, i32 2
  %129 = load i64*, i64** %p160, align 8
  %130 = load i64, i64* %i, align 8
  %div161 = udiv i64 %130, 2
  %arrayidx162 = getelementptr inbounds i64, i64* %129, i64 %div161
  %131 = load i64, i64* %arrayidx162, align 8
  %and163 = and i64 %131, 4294967295
  store i64 %and163, i64* %arrayidx162, align 8
  %132 = load i32, i32* %cur, align 4
  %conv164 = zext i32 %132 to i64
  %shl165 = shl i64 %conv164, 32
  %133 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p166 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %133, i32 0, i32 2
  %134 = load i64*, i64** %p166, align 8
  %135 = load i64, i64* %i, align 8
  %div167 = udiv i64 %135, 2
  %arrayidx168 = getelementptr inbounds i64, i64* %134, i64 %div167
  %136 = load i64, i64* %arrayidx168, align 8
  %or169 = or i64 %136, %shl165
  store i64 %or169, i64* %arrayidx168, align 8
  br label %if.end180

if.else170:                                       ; preds = %if.end138
  %137 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p171 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %137, i32 0, i32 2
  %138 = load i64*, i64** %p171, align 8
  %139 = load i64, i64* %i, align 8
  %div172 = udiv i64 %139, 2
  %arrayidx173 = getelementptr inbounds i64, i64* %138, i64 %div172
  %140 = load i64, i64* %arrayidx173, align 8
  %and174 = and i64 %140, -4294967296
  store i64 %and174, i64* %arrayidx173, align 8
  %141 = load i32, i32* %cur, align 4
  %conv175 = zext i32 %141 to i64
  %142 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p176 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %142, i32 0, i32 2
  %143 = load i64*, i64** %p176, align 8
  %144 = load i64, i64* %i, align 8
  %div177 = udiv i64 %144, 2
  %arrayidx178 = getelementptr inbounds i64, i64* %143, i64 %div177
  %145 = load i64, i64* %arrayidx178, align 8
  %or179 = or i64 %145, %conv175
  store i64 %or179, i64* %arrayidx178, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.else170, %if.then159
  %146 = load i64, i64* %i, align 8
  %inc181 = add i64 %146, 1
  store i64 %inc181, i64* %i, align 8
  %147 = load i64, i64* %i, align 8
  %rem182 = urem i64 %147, 2
  %tobool183 = icmp ne i64 %rem182, 0
  br i1 %tobool183, label %cond.true184, label %cond.false190

cond.true184:                                     ; preds = %if.end180
  %148 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p185 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %148, i32 0, i32 2
  %149 = load i64*, i64** %p185, align 8
  %150 = load i64, i64* %i, align 8
  %div186 = udiv i64 %150, 2
  %arrayidx187 = getelementptr inbounds i64, i64* %149, i64 %div186
  %151 = load i64, i64* %arrayidx187, align 8
  %shr188 = lshr i64 %151, 32
  %conv189 = trunc i64 %shr188 to i32
  br label %cond.end195

cond.false190:                                    ; preds = %if.end180
  %152 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p191 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %152, i32 0, i32 2
  %153 = load i64*, i64** %p191, align 8
  %154 = load i64, i64* %i, align 8
  %div192 = udiv i64 %154, 2
  %arrayidx193 = getelementptr inbounds i64, i64* %153, i64 %div192
  %155 = load i64, i64* %arrayidx193, align 8
  %conv194 = trunc i64 %155 to i32
  br label %cond.end195

cond.end195:                                      ; preds = %cond.false190, %cond.true184
  %cond196 = phi i32 [ %conv189, %cond.true184 ], [ %conv194, %cond.false190 ]
  store i32 %cond196, i32* %cur, align 4
  %156 = load i8, i8* %c, align 1
  store i8 %156, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %157 = load i8, i8* %cc, align 1
  %conv197 = sext i8 %157 to i32
  %cmp198 = icmp slt i32 %conv197, 0
  br i1 %cmp198, label %if.then200, label %if.else203

if.then200:                                       ; preds = %cond.end195
  %158 = load i8, i8* %cc, align 1
  %conv201 = sext i8 %158 to i32
  %sub202 = sub nsw i32 0, %conv201
  call void @sub32(i32* noundef %cur, i32 noundef %sub202, i8* noundef %c) #4
  br label %if.end205

if.else203:                                       ; preds = %cond.end195
  %159 = load i8, i8* %cc, align 1
  %conv204 = sext i8 %159 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv204, i8* noundef %c) #4
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.then200
  %160 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p206 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %160, i32 0, i32 2
  %161 = load i64*, i64** %p206, align 8
  %arrayidx207 = getelementptr inbounds i64, i64* %161, i64 5
  %162 = load i64, i64* %arrayidx207, align 8
  %shr208 = lshr i64 %162, 32
  %conv209 = trunc i64 %shr208 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv209, i8* noundef %c) #4
  %163 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p210 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %163, i32 0, i32 2
  %164 = load i64*, i64** %p210, align 8
  %arrayidx211 = getelementptr inbounds i64, i64* %164, i64 5
  %165 = load i64, i64* %arrayidx211, align 8
  %shr212 = lshr i64 %165, 32
  %conv213 = trunc i64 %shr212 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv213, i8* noundef %c) #4
  %166 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p214 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %166, i32 0, i32 2
  %167 = load i64*, i64** %p214, align 8
  %arrayidx215 = getelementptr inbounds i64, i64* %167, i64 6
  %168 = load i64, i64* %arrayidx215, align 8
  %conv216 = trunc i64 %168 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv216, i8* noundef %c) #4
  %169 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p217 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %169, i32 0, i32 2
  %170 = load i64*, i64** %p217, align 8
  %arrayidx218 = getelementptr inbounds i64, i64* %170, i64 6
  %171 = load i64, i64* %arrayidx218, align 8
  %conv219 = trunc i64 %171 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv219, i8* noundef %c) #4
  %172 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p220 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %172, i32 0, i32 2
  %173 = load i64*, i64** %p220, align 8
  %arrayidx221 = getelementptr inbounds i64, i64* %173, i64 6
  %174 = load i64, i64* %arrayidx221, align 8
  %shr222 = lshr i64 %174, 32
  %conv223 = trunc i64 %shr222 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv223, i8* noundef %c) #4
  %175 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p224 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %175, i32 0, i32 2
  %176 = load i64*, i64** %p224, align 8
  %arrayidx225 = getelementptr inbounds i64, i64* %176, i64 7
  %177 = load i64, i64* %arrayidx225, align 8
  %shr226 = lshr i64 %177, 32
  %conv227 = trunc i64 %shr226 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv227, i8* noundef %c) #4
  %178 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p228 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %178, i32 0, i32 2
  %179 = load i64*, i64** %p228, align 8
  %arrayidx229 = getelementptr inbounds i64, i64* %179, i64 4
  %180 = load i64, i64* %arrayidx229, align 8
  %conv230 = trunc i64 %180 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv230, i8* noundef %c) #4
  %181 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p231 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %181, i32 0, i32 2
  %182 = load i64*, i64** %p231, align 8
  %arrayidx232 = getelementptr inbounds i64, i64* %182, i64 4
  %183 = load i64, i64* %arrayidx232, align 8
  %shr233 = lshr i64 %183, 32
  %conv234 = trunc i64 %shr233 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv234, i8* noundef %c) #4
  %184 = load i64, i64* %i, align 8
  %rem235 = urem i64 %184, 2
  %tobool236 = icmp ne i64 %rem235, 0
  br i1 %tobool236, label %if.then237, label %if.else248

if.then237:                                       ; preds = %if.end205
  %185 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p238 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %185, i32 0, i32 2
  %186 = load i64*, i64** %p238, align 8
  %187 = load i64, i64* %i, align 8
  %div239 = udiv i64 %187, 2
  %arrayidx240 = getelementptr inbounds i64, i64* %186, i64 %div239
  %188 = load i64, i64* %arrayidx240, align 8
  %and241 = and i64 %188, 4294967295
  store i64 %and241, i64* %arrayidx240, align 8
  %189 = load i32, i32* %cur, align 4
  %conv242 = zext i32 %189 to i64
  %shl243 = shl i64 %conv242, 32
  %190 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p244 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %190, i32 0, i32 2
  %191 = load i64*, i64** %p244, align 8
  %192 = load i64, i64* %i, align 8
  %div245 = udiv i64 %192, 2
  %arrayidx246 = getelementptr inbounds i64, i64* %191, i64 %div245
  %193 = load i64, i64* %arrayidx246, align 8
  %or247 = or i64 %193, %shl243
  store i64 %or247, i64* %arrayidx246, align 8
  br label %if.end258

if.else248:                                       ; preds = %if.end205
  %194 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p249 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %194, i32 0, i32 2
  %195 = load i64*, i64** %p249, align 8
  %196 = load i64, i64* %i, align 8
  %div250 = udiv i64 %196, 2
  %arrayidx251 = getelementptr inbounds i64, i64* %195, i64 %div250
  %197 = load i64, i64* %arrayidx251, align 8
  %and252 = and i64 %197, -4294967296
  store i64 %and252, i64* %arrayidx251, align 8
  %198 = load i32, i32* %cur, align 4
  %conv253 = zext i32 %198 to i64
  %199 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p254 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %199, i32 0, i32 2
  %200 = load i64*, i64** %p254, align 8
  %201 = load i64, i64* %i, align 8
  %div255 = udiv i64 %201, 2
  %arrayidx256 = getelementptr inbounds i64, i64* %200, i64 %div255
  %202 = load i64, i64* %arrayidx256, align 8
  %or257 = or i64 %202, %conv253
  store i64 %or257, i64* %arrayidx256, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.else248, %if.then237
  %203 = load i64, i64* %i, align 8
  %inc259 = add i64 %203, 1
  store i64 %inc259, i64* %i, align 8
  %204 = load i64, i64* %i, align 8
  %rem260 = urem i64 %204, 2
  %tobool261 = icmp ne i64 %rem260, 0
  br i1 %tobool261, label %cond.true262, label %cond.false268

cond.true262:                                     ; preds = %if.end258
  %205 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p263 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %205, i32 0, i32 2
  %206 = load i64*, i64** %p263, align 8
  %207 = load i64, i64* %i, align 8
  %div264 = udiv i64 %207, 2
  %arrayidx265 = getelementptr inbounds i64, i64* %206, i64 %div264
  %208 = load i64, i64* %arrayidx265, align 8
  %shr266 = lshr i64 %208, 32
  %conv267 = trunc i64 %shr266 to i32
  br label %cond.end273

cond.false268:                                    ; preds = %if.end258
  %209 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p269 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %209, i32 0, i32 2
  %210 = load i64*, i64** %p269, align 8
  %211 = load i64, i64* %i, align 8
  %div270 = udiv i64 %211, 2
  %arrayidx271 = getelementptr inbounds i64, i64* %210, i64 %div270
  %212 = load i64, i64* %arrayidx271, align 8
  %conv272 = trunc i64 %212 to i32
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false268, %cond.true262
  %cond274 = phi i32 [ %conv267, %cond.true262 ], [ %conv272, %cond.false268 ]
  store i32 %cond274, i32* %cur, align 4
  %213 = load i8, i8* %c, align 1
  store i8 %213, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %214 = load i8, i8* %cc, align 1
  %conv275 = sext i8 %214 to i32
  %cmp276 = icmp slt i32 %conv275, 0
  br i1 %cmp276, label %if.then278, label %if.else281

if.then278:                                       ; preds = %cond.end273
  %215 = load i8, i8* %cc, align 1
  %conv279 = sext i8 %215 to i32
  %sub280 = sub nsw i32 0, %conv279
  call void @sub32(i32* noundef %cur, i32 noundef %sub280, i8* noundef %c) #4
  br label %if.end283

if.else281:                                       ; preds = %cond.end273
  %216 = load i8, i8* %cc, align 1
  %conv282 = sext i8 %216 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv282, i8* noundef %c) #4
  br label %if.end283

if.end283:                                        ; preds = %if.else281, %if.then278
  %217 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p284 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %217, i32 0, i32 2
  %218 = load i64*, i64** %p284, align 8
  %arrayidx285 = getelementptr inbounds i64, i64* %218, i64 6
  %219 = load i64, i64* %arrayidx285, align 8
  %conv286 = trunc i64 %219 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv286, i8* noundef %c) #4
  %220 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p287 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %220, i32 0, i32 2
  %221 = load i64*, i64** %p287, align 8
  %arrayidx288 = getelementptr inbounds i64, i64* %221, i64 6
  %222 = load i64, i64* %arrayidx288, align 8
  %conv289 = trunc i64 %222 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv289, i8* noundef %c) #4
  %223 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p290 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %223, i32 0, i32 2
  %224 = load i64*, i64** %p290, align 8
  %arrayidx291 = getelementptr inbounds i64, i64* %224, i64 6
  %225 = load i64, i64* %arrayidx291, align 8
  %shr292 = lshr i64 %225, 32
  %conv293 = trunc i64 %shr292 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv293, i8* noundef %c) #4
  %226 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p294 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %226, i32 0, i32 2
  %227 = load i64*, i64** %p294, align 8
  %arrayidx295 = getelementptr inbounds i64, i64* %227, i64 6
  %228 = load i64, i64* %arrayidx295, align 8
  %shr296 = lshr i64 %228, 32
  %conv297 = trunc i64 %shr296 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv297, i8* noundef %c) #4
  %229 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p298 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %229, i32 0, i32 2
  %230 = load i64*, i64** %p298, align 8
  %arrayidx299 = getelementptr inbounds i64, i64* %230, i64 7
  %231 = load i64, i64* %arrayidx299, align 8
  %conv300 = trunc i64 %231 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv300, i8* noundef %c) #4
  %232 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p301 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %232, i32 0, i32 2
  %233 = load i64*, i64** %p301, align 8
  %arrayidx302 = getelementptr inbounds i64, i64* %233, i64 4
  %234 = load i64, i64* %arrayidx302, align 8
  %shr303 = lshr i64 %234, 32
  %conv304 = trunc i64 %shr303 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv304, i8* noundef %c) #4
  %235 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p305 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %235, i32 0, i32 2
  %236 = load i64*, i64** %p305, align 8
  %arrayidx306 = getelementptr inbounds i64, i64* %236, i64 5
  %237 = load i64, i64* %arrayidx306, align 8
  %conv307 = trunc i64 %237 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv307, i8* noundef %c) #4
  %238 = load i64, i64* %i, align 8
  %rem308 = urem i64 %238, 2
  %tobool309 = icmp ne i64 %rem308, 0
  br i1 %tobool309, label %if.then310, label %if.else321

if.then310:                                       ; preds = %if.end283
  %239 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p311 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %239, i32 0, i32 2
  %240 = load i64*, i64** %p311, align 8
  %241 = load i64, i64* %i, align 8
  %div312 = udiv i64 %241, 2
  %arrayidx313 = getelementptr inbounds i64, i64* %240, i64 %div312
  %242 = load i64, i64* %arrayidx313, align 8
  %and314 = and i64 %242, 4294967295
  store i64 %and314, i64* %arrayidx313, align 8
  %243 = load i32, i32* %cur, align 4
  %conv315 = zext i32 %243 to i64
  %shl316 = shl i64 %conv315, 32
  %244 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p317 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %244, i32 0, i32 2
  %245 = load i64*, i64** %p317, align 8
  %246 = load i64, i64* %i, align 8
  %div318 = udiv i64 %246, 2
  %arrayidx319 = getelementptr inbounds i64, i64* %245, i64 %div318
  %247 = load i64, i64* %arrayidx319, align 8
  %or320 = or i64 %247, %shl316
  store i64 %or320, i64* %arrayidx319, align 8
  br label %if.end331

if.else321:                                       ; preds = %if.end283
  %248 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p322 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %248, i32 0, i32 2
  %249 = load i64*, i64** %p322, align 8
  %250 = load i64, i64* %i, align 8
  %div323 = udiv i64 %250, 2
  %arrayidx324 = getelementptr inbounds i64, i64* %249, i64 %div323
  %251 = load i64, i64* %arrayidx324, align 8
  %and325 = and i64 %251, -4294967296
  store i64 %and325, i64* %arrayidx324, align 8
  %252 = load i32, i32* %cur, align 4
  %conv326 = zext i32 %252 to i64
  %253 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p327 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %253, i32 0, i32 2
  %254 = load i64*, i64** %p327, align 8
  %255 = load i64, i64* %i, align 8
  %div328 = udiv i64 %255, 2
  %arrayidx329 = getelementptr inbounds i64, i64* %254, i64 %div328
  %256 = load i64, i64* %arrayidx329, align 8
  %or330 = or i64 %256, %conv326
  store i64 %or330, i64* %arrayidx329, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.else321, %if.then310
  %257 = load i64, i64* %i, align 8
  %inc332 = add i64 %257, 1
  store i64 %inc332, i64* %i, align 8
  %258 = load i64, i64* %i, align 8
  %rem333 = urem i64 %258, 2
  %tobool334 = icmp ne i64 %rem333, 0
  br i1 %tobool334, label %cond.true335, label %cond.false341

cond.true335:                                     ; preds = %if.end331
  %259 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p336 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %259, i32 0, i32 2
  %260 = load i64*, i64** %p336, align 8
  %261 = load i64, i64* %i, align 8
  %div337 = udiv i64 %261, 2
  %arrayidx338 = getelementptr inbounds i64, i64* %260, i64 %div337
  %262 = load i64, i64* %arrayidx338, align 8
  %shr339 = lshr i64 %262, 32
  %conv340 = trunc i64 %shr339 to i32
  br label %cond.end346

cond.false341:                                    ; preds = %if.end331
  %263 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p342 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %263, i32 0, i32 2
  %264 = load i64*, i64** %p342, align 8
  %265 = load i64, i64* %i, align 8
  %div343 = udiv i64 %265, 2
  %arrayidx344 = getelementptr inbounds i64, i64* %264, i64 %div343
  %266 = load i64, i64* %arrayidx344, align 8
  %conv345 = trunc i64 %266 to i32
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false341, %cond.true335
  %cond347 = phi i32 [ %conv340, %cond.true335 ], [ %conv345, %cond.false341 ]
  store i32 %cond347, i32* %cur, align 4
  %267 = load i8, i8* %c, align 1
  store i8 %267, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %268 = load i8, i8* %cc, align 1
  %conv348 = sext i8 %268 to i32
  %cmp349 = icmp slt i32 %conv348, 0
  br i1 %cmp349, label %if.then351, label %if.else354

if.then351:                                       ; preds = %cond.end346
  %269 = load i8, i8* %cc, align 1
  %conv352 = sext i8 %269 to i32
  %sub353 = sub nsw i32 0, %conv352
  call void @sub32(i32* noundef %cur, i32 noundef %sub353, i8* noundef %c) #4
  br label %if.end356

if.else354:                                       ; preds = %cond.end346
  %270 = load i8, i8* %cc, align 1
  %conv355 = sext i8 %270 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv355, i8* noundef %c) #4
  br label %if.end356

if.end356:                                        ; preds = %if.else354, %if.then351
  %271 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p357 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %271, i32 0, i32 2
  %272 = load i64*, i64** %p357, align 8
  %arrayidx358 = getelementptr inbounds i64, i64* %272, i64 6
  %273 = load i64, i64* %arrayidx358, align 8
  %shr359 = lshr i64 %273, 32
  %conv360 = trunc i64 %shr359 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv360, i8* noundef %c) #4
  %274 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p361 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %274, i32 0, i32 2
  %275 = load i64*, i64** %p361, align 8
  %arrayidx362 = getelementptr inbounds i64, i64* %275, i64 6
  %276 = load i64, i64* %arrayidx362, align 8
  %shr363 = lshr i64 %276, 32
  %conv364 = trunc i64 %shr363 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv364, i8* noundef %c) #4
  %277 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p365 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %277, i32 0, i32 2
  %278 = load i64*, i64** %p365, align 8
  %arrayidx366 = getelementptr inbounds i64, i64* %278, i64 7
  %279 = load i64, i64* %arrayidx366, align 8
  %conv367 = trunc i64 %279 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv367, i8* noundef %c) #4
  %280 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p368 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %280, i32 0, i32 2
  %281 = load i64*, i64** %p368, align 8
  %arrayidx369 = getelementptr inbounds i64, i64* %281, i64 7
  %282 = load i64, i64* %arrayidx369, align 8
  %conv370 = trunc i64 %282 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv370, i8* noundef %c) #4
  %283 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p371 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %283, i32 0, i32 2
  %284 = load i64*, i64** %p371, align 8
  %arrayidx372 = getelementptr inbounds i64, i64* %284, i64 7
  %285 = load i64, i64* %arrayidx372, align 8
  %shr373 = lshr i64 %285, 32
  %conv374 = trunc i64 %shr373 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv374, i8* noundef %c) #4
  %286 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p375 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %286, i32 0, i32 2
  %287 = load i64*, i64** %p375, align 8
  %arrayidx376 = getelementptr inbounds i64, i64* %287, i64 5
  %288 = load i64, i64* %arrayidx376, align 8
  %conv377 = trunc i64 %288 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv377, i8* noundef %c) #4
  %289 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p378 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %289, i32 0, i32 2
  %290 = load i64*, i64** %p378, align 8
  %arrayidx379 = getelementptr inbounds i64, i64* %290, i64 5
  %291 = load i64, i64* %arrayidx379, align 8
  %shr380 = lshr i64 %291, 32
  %conv381 = trunc i64 %shr380 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv381, i8* noundef %c) #4
  %292 = load i64, i64* %i, align 8
  %rem382 = urem i64 %292, 2
  %tobool383 = icmp ne i64 %rem382, 0
  br i1 %tobool383, label %if.then384, label %if.else395

if.then384:                                       ; preds = %if.end356
  %293 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p385 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %293, i32 0, i32 2
  %294 = load i64*, i64** %p385, align 8
  %295 = load i64, i64* %i, align 8
  %div386 = udiv i64 %295, 2
  %arrayidx387 = getelementptr inbounds i64, i64* %294, i64 %div386
  %296 = load i64, i64* %arrayidx387, align 8
  %and388 = and i64 %296, 4294967295
  store i64 %and388, i64* %arrayidx387, align 8
  %297 = load i32, i32* %cur, align 4
  %conv389 = zext i32 %297 to i64
  %shl390 = shl i64 %conv389, 32
  %298 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p391 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %298, i32 0, i32 2
  %299 = load i64*, i64** %p391, align 8
  %300 = load i64, i64* %i, align 8
  %div392 = udiv i64 %300, 2
  %arrayidx393 = getelementptr inbounds i64, i64* %299, i64 %div392
  %301 = load i64, i64* %arrayidx393, align 8
  %or394 = or i64 %301, %shl390
  store i64 %or394, i64* %arrayidx393, align 8
  br label %if.end405

if.else395:                                       ; preds = %if.end356
  %302 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p396 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %302, i32 0, i32 2
  %303 = load i64*, i64** %p396, align 8
  %304 = load i64, i64* %i, align 8
  %div397 = udiv i64 %304, 2
  %arrayidx398 = getelementptr inbounds i64, i64* %303, i64 %div397
  %305 = load i64, i64* %arrayidx398, align 8
  %and399 = and i64 %305, -4294967296
  store i64 %and399, i64* %arrayidx398, align 8
  %306 = load i32, i32* %cur, align 4
  %conv400 = zext i32 %306 to i64
  %307 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p401 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %307, i32 0, i32 2
  %308 = load i64*, i64** %p401, align 8
  %309 = load i64, i64* %i, align 8
  %div402 = udiv i64 %309, 2
  %arrayidx403 = getelementptr inbounds i64, i64* %308, i64 %div402
  %310 = load i64, i64* %arrayidx403, align 8
  %or404 = or i64 %310, %conv400
  store i64 %or404, i64* %arrayidx403, align 8
  br label %if.end405

if.end405:                                        ; preds = %if.else395, %if.then384
  %311 = load i64, i64* %i, align 8
  %inc406 = add i64 %311, 1
  store i64 %inc406, i64* %i, align 8
  %312 = load i64, i64* %i, align 8
  %rem407 = urem i64 %312, 2
  %tobool408 = icmp ne i64 %rem407, 0
  br i1 %tobool408, label %cond.true409, label %cond.false415

cond.true409:                                     ; preds = %if.end405
  %313 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p410 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %313, i32 0, i32 2
  %314 = load i64*, i64** %p410, align 8
  %315 = load i64, i64* %i, align 8
  %div411 = udiv i64 %315, 2
  %arrayidx412 = getelementptr inbounds i64, i64* %314, i64 %div411
  %316 = load i64, i64* %arrayidx412, align 8
  %shr413 = lshr i64 %316, 32
  %conv414 = trunc i64 %shr413 to i32
  br label %cond.end420

cond.false415:                                    ; preds = %if.end405
  %317 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p416 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %317, i32 0, i32 2
  %318 = load i64*, i64** %p416, align 8
  %319 = load i64, i64* %i, align 8
  %div417 = udiv i64 %319, 2
  %arrayidx418 = getelementptr inbounds i64, i64* %318, i64 %div417
  %320 = load i64, i64* %arrayidx418, align 8
  %conv419 = trunc i64 %320 to i32
  br label %cond.end420

cond.end420:                                      ; preds = %cond.false415, %cond.true409
  %cond421 = phi i32 [ %conv414, %cond.true409 ], [ %conv419, %cond.false415 ]
  store i32 %cond421, i32* %cur, align 4
  %321 = load i8, i8* %c, align 1
  store i8 %321, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %322 = load i8, i8* %cc, align 1
  %conv422 = sext i8 %322 to i32
  %cmp423 = icmp slt i32 %conv422, 0
  br i1 %cmp423, label %if.then425, label %if.else428

if.then425:                                       ; preds = %cond.end420
  %323 = load i8, i8* %cc, align 1
  %conv426 = sext i8 %323 to i32
  %sub427 = sub nsw i32 0, %conv426
  call void @sub32(i32* noundef %cur, i32 noundef %sub427, i8* noundef %c) #4
  br label %if.end430

if.else428:                                       ; preds = %cond.end420
  %324 = load i8, i8* %cc, align 1
  %conv429 = sext i8 %324 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv429, i8* noundef %c) #4
  br label %if.end430

if.end430:                                        ; preds = %if.else428, %if.then425
  %325 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p431 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %325, i32 0, i32 2
  %326 = load i64*, i64** %p431, align 8
  %arrayidx432 = getelementptr inbounds i64, i64* %326, i64 7
  %327 = load i64, i64* %arrayidx432, align 8
  %conv433 = trunc i64 %327 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv433, i8* noundef %c) #4
  %328 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p434 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %328, i32 0, i32 2
  %329 = load i64*, i64** %p434, align 8
  %arrayidx435 = getelementptr inbounds i64, i64* %329, i64 7
  %330 = load i64, i64* %arrayidx435, align 8
  %conv436 = trunc i64 %330 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv436, i8* noundef %c) #4
  %331 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p437 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %331, i32 0, i32 2
  %332 = load i64*, i64** %p437, align 8
  %arrayidx438 = getelementptr inbounds i64, i64* %332, i64 7
  %333 = load i64, i64* %arrayidx438, align 8
  %shr439 = lshr i64 %333, 32
  %conv440 = trunc i64 %shr439 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv440, i8* noundef %c) #4
  %334 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p441 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %334, i32 0, i32 2
  %335 = load i64*, i64** %p441, align 8
  %arrayidx442 = getelementptr inbounds i64, i64* %335, i64 7
  %336 = load i64, i64* %arrayidx442, align 8
  %shr443 = lshr i64 %336, 32
  %conv444 = trunc i64 %shr443 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv444, i8* noundef %c) #4
  %337 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p445 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %337, i32 0, i32 2
  %338 = load i64*, i64** %p445, align 8
  %arrayidx446 = getelementptr inbounds i64, i64* %338, i64 7
  %339 = load i64, i64* %arrayidx446, align 8
  %conv447 = trunc i64 %339 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv447, i8* noundef %c) #4
  %340 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p448 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %340, i32 0, i32 2
  %341 = load i64*, i64** %p448, align 8
  %arrayidx449 = getelementptr inbounds i64, i64* %341, i64 6
  %342 = load i64, i64* %arrayidx449, align 8
  %shr450 = lshr i64 %342, 32
  %conv451 = trunc i64 %shr450 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv451, i8* noundef %c) #4
  %343 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p452 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %343, i32 0, i32 2
  %344 = load i64*, i64** %p452, align 8
  %arrayidx453 = getelementptr inbounds i64, i64* %344, i64 4
  %345 = load i64, i64* %arrayidx453, align 8
  %conv454 = trunc i64 %345 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv454, i8* noundef %c) #4
  %346 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p455 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %346, i32 0, i32 2
  %347 = load i64*, i64** %p455, align 8
  %arrayidx456 = getelementptr inbounds i64, i64* %347, i64 4
  %348 = load i64, i64* %arrayidx456, align 8
  %shr457 = lshr i64 %348, 32
  %conv458 = trunc i64 %shr457 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv458, i8* noundef %c) #4
  %349 = load i64, i64* %i, align 8
  %rem459 = urem i64 %349, 2
  %tobool460 = icmp ne i64 %rem459, 0
  br i1 %tobool460, label %if.then461, label %if.else472

if.then461:                                       ; preds = %if.end430
  %350 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p462 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %350, i32 0, i32 2
  %351 = load i64*, i64** %p462, align 8
  %352 = load i64, i64* %i, align 8
  %div463 = udiv i64 %352, 2
  %arrayidx464 = getelementptr inbounds i64, i64* %351, i64 %div463
  %353 = load i64, i64* %arrayidx464, align 8
  %and465 = and i64 %353, 4294967295
  store i64 %and465, i64* %arrayidx464, align 8
  %354 = load i32, i32* %cur, align 4
  %conv466 = zext i32 %354 to i64
  %shl467 = shl i64 %conv466, 32
  %355 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p468 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %355, i32 0, i32 2
  %356 = load i64*, i64** %p468, align 8
  %357 = load i64, i64* %i, align 8
  %div469 = udiv i64 %357, 2
  %arrayidx470 = getelementptr inbounds i64, i64* %356, i64 %div469
  %358 = load i64, i64* %arrayidx470, align 8
  %or471 = or i64 %358, %shl467
  store i64 %or471, i64* %arrayidx470, align 8
  br label %if.end482

if.else472:                                       ; preds = %if.end430
  %359 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p473 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %359, i32 0, i32 2
  %360 = load i64*, i64** %p473, align 8
  %361 = load i64, i64* %i, align 8
  %div474 = udiv i64 %361, 2
  %arrayidx475 = getelementptr inbounds i64, i64* %360, i64 %div474
  %362 = load i64, i64* %arrayidx475, align 8
  %and476 = and i64 %362, -4294967296
  store i64 %and476, i64* %arrayidx475, align 8
  %363 = load i32, i32* %cur, align 4
  %conv477 = zext i32 %363 to i64
  %364 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p478 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %364, i32 0, i32 2
  %365 = load i64*, i64** %p478, align 8
  %366 = load i64, i64* %i, align 8
  %div479 = udiv i64 %366, 2
  %arrayidx480 = getelementptr inbounds i64, i64* %365, i64 %div479
  %367 = load i64, i64* %arrayidx480, align 8
  %or481 = or i64 %367, %conv477
  store i64 %or481, i64* %arrayidx480, align 8
  br label %if.end482

if.end482:                                        ; preds = %if.else472, %if.then461
  %368 = load i64, i64* %i, align 8
  %inc483 = add i64 %368, 1
  store i64 %inc483, i64* %i, align 8
  %369 = load i64, i64* %i, align 8
  %rem484 = urem i64 %369, 2
  %tobool485 = icmp ne i64 %rem484, 0
  br i1 %tobool485, label %cond.true486, label %cond.false492

cond.true486:                                     ; preds = %if.end482
  %370 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p487 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %370, i32 0, i32 2
  %371 = load i64*, i64** %p487, align 8
  %372 = load i64, i64* %i, align 8
  %div488 = udiv i64 %372, 2
  %arrayidx489 = getelementptr inbounds i64, i64* %371, i64 %div488
  %373 = load i64, i64* %arrayidx489, align 8
  %shr490 = lshr i64 %373, 32
  %conv491 = trunc i64 %shr490 to i32
  br label %cond.end497

cond.false492:                                    ; preds = %if.end482
  %374 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p493 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %374, i32 0, i32 2
  %375 = load i64*, i64** %p493, align 8
  %376 = load i64, i64* %i, align 8
  %div494 = udiv i64 %376, 2
  %arrayidx495 = getelementptr inbounds i64, i64* %375, i64 %div494
  %377 = load i64, i64* %arrayidx495, align 8
  %conv496 = trunc i64 %377 to i32
  br label %cond.end497

cond.end497:                                      ; preds = %cond.false492, %cond.true486
  %cond498 = phi i32 [ %conv491, %cond.true486 ], [ %conv496, %cond.false492 ]
  store i32 %cond498, i32* %cur, align 4
  %378 = load i8, i8* %c, align 1
  store i8 %378, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %379 = load i8, i8* %cc, align 1
  %conv499 = sext i8 %379 to i32
  %cmp500 = icmp slt i32 %conv499, 0
  br i1 %cmp500, label %if.then502, label %if.else505

if.then502:                                       ; preds = %cond.end497
  %380 = load i8, i8* %cc, align 1
  %conv503 = sext i8 %380 to i32
  %sub504 = sub nsw i32 0, %conv503
  call void @sub32(i32* noundef %cur, i32 noundef %sub504, i8* noundef %c) #4
  br label %if.end507

if.else505:                                       ; preds = %cond.end497
  %381 = load i8, i8* %cc, align 1
  %conv506 = sext i8 %381 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv506, i8* noundef %c) #4
  br label %if.end507

if.end507:                                        ; preds = %if.else505, %if.then502
  %382 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p508 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %382, i32 0, i32 2
  %383 = load i64*, i64** %p508, align 8
  %arrayidx509 = getelementptr inbounds i64, i64* %383, i64 7
  %384 = load i64, i64* %arrayidx509, align 8
  %shr510 = lshr i64 %384, 32
  %conv511 = trunc i64 %shr510 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv511, i8* noundef %c) #4
  %385 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p512 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %385, i32 0, i32 2
  %386 = load i64*, i64** %p512, align 8
  %arrayidx513 = getelementptr inbounds i64, i64* %386, i64 7
  %387 = load i64, i64* %arrayidx513, align 8
  %shr514 = lshr i64 %387, 32
  %conv515 = trunc i64 %shr514 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv515, i8* noundef %c) #4
  %388 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p516 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %388, i32 0, i32 2
  %389 = load i64*, i64** %p516, align 8
  %arrayidx517 = getelementptr inbounds i64, i64* %389, i64 7
  %390 = load i64, i64* %arrayidx517, align 8
  %shr518 = lshr i64 %390, 32
  %conv519 = trunc i64 %shr518 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv519, i8* noundef %c) #4
  %391 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p520 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %391, i32 0, i32 2
  %392 = load i64*, i64** %p520, align 8
  %arrayidx521 = getelementptr inbounds i64, i64* %392, i64 4
  %393 = load i64, i64* %arrayidx521, align 8
  %conv522 = trunc i64 %393 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv522, i8* noundef %c) #4
  %394 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p523 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %394, i32 0, i32 2
  %395 = load i64*, i64** %p523, align 8
  %arrayidx524 = getelementptr inbounds i64, i64* %395, i64 5
  %396 = load i64, i64* %arrayidx524, align 8
  %conv525 = trunc i64 %396 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv525, i8* noundef %c) #4
  %397 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p526 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %397, i32 0, i32 2
  %398 = load i64*, i64** %p526, align 8
  %arrayidx527 = getelementptr inbounds i64, i64* %398, i64 5
  %399 = load i64, i64* %arrayidx527, align 8
  %shr528 = lshr i64 %399, 32
  %conv529 = trunc i64 %shr528 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv529, i8* noundef %c) #4
  %400 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p530 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %400, i32 0, i32 2
  %401 = load i64*, i64** %p530, align 8
  %arrayidx531 = getelementptr inbounds i64, i64* %401, i64 6
  %402 = load i64, i64* %arrayidx531, align 8
  %conv532 = trunc i64 %402 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv532, i8* noundef %c) #4
  %403 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p533 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %403, i32 0, i32 2
  %404 = load i64*, i64** %p533, align 8
  %arrayidx534 = getelementptr inbounds i64, i64* %404, i64 6
  %405 = load i64, i64* %arrayidx534, align 8
  %shr535 = lshr i64 %405, 32
  %conv536 = trunc i64 %shr535 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv536, i8* noundef %c) #4
  %406 = load i64, i64* %i, align 8
  %rem537 = urem i64 %406, 2
  %tobool538 = icmp ne i64 %rem537, 0
  br i1 %tobool538, label %if.then539, label %if.else550

if.then539:                                       ; preds = %if.end507
  %407 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p540 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %407, i32 0, i32 2
  %408 = load i64*, i64** %p540, align 8
  %409 = load i64, i64* %i, align 8
  %div541 = udiv i64 %409, 2
  %arrayidx542 = getelementptr inbounds i64, i64* %408, i64 %div541
  %410 = load i64, i64* %arrayidx542, align 8
  %and543 = and i64 %410, 4294967295
  store i64 %and543, i64* %arrayidx542, align 8
  %411 = load i32, i32* %cur, align 4
  %conv544 = zext i32 %411 to i64
  %shl545 = shl i64 %conv544, 32
  %412 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p546 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %412, i32 0, i32 2
  %413 = load i64*, i64** %p546, align 8
  %414 = load i64, i64* %i, align 8
  %div547 = udiv i64 %414, 2
  %arrayidx548 = getelementptr inbounds i64, i64* %413, i64 %div547
  %415 = load i64, i64* %arrayidx548, align 8
  %or549 = or i64 %415, %shl545
  store i64 %or549, i64* %arrayidx548, align 8
  br label %if.end560

if.else550:                                       ; preds = %if.end507
  %416 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p551 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %416, i32 0, i32 2
  %417 = load i64*, i64** %p551, align 8
  %418 = load i64, i64* %i, align 8
  %div552 = udiv i64 %418, 2
  %arrayidx553 = getelementptr inbounds i64, i64* %417, i64 %div552
  %419 = load i64, i64* %arrayidx553, align 8
  %and554 = and i64 %419, -4294967296
  store i64 %and554, i64* %arrayidx553, align 8
  %420 = load i32, i32* %cur, align 4
  %conv555 = zext i32 %420 to i64
  %421 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p556 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %421, i32 0, i32 2
  %422 = load i64*, i64** %p556, align 8
  %423 = load i64, i64* %i, align 8
  %div557 = udiv i64 %423, 2
  %arrayidx558 = getelementptr inbounds i64, i64* %422, i64 %div557
  %424 = load i64, i64* %arrayidx558, align 8
  %or559 = or i64 %424, %conv555
  store i64 %or559, i64* %arrayidx558, align 8
  br label %if.end560

if.end560:                                        ; preds = %if.else550, %if.then539
  %425 = load i64, i64* %i, align 8
  %inc561 = add i64 %425, 1
  store i64 %inc561, i64* %i, align 8
  %426 = load i8, i8* %c, align 1
  %conv562 = sext i8 %426 to i32
  %cmp563 = icmp sgt i32 %conv562, 0
  br i1 %cmp563, label %cond.true565, label %cond.false567

cond.true565:                                     ; preds = %if.end560
  %427 = load i8, i8* %c, align 1
  %conv566 = sext i8 %427 to i32
  br label %cond.end568

cond.false567:                                    ; preds = %if.end560
  br label %cond.end568

cond.end568:                                      ; preds = %cond.false567, %cond.true565
  %cond569 = phi i32 [ %conv566, %cond.true565 ], [ 0, %cond.false567 ]
  store i32 %cond569, i32* %cur, align 4
  %428 = load i64, i64* %i, align 8
  %rem570 = urem i64 %428, 2
  %tobool571 = icmp ne i64 %rem570, 0
  br i1 %tobool571, label %if.then572, label %if.else583

if.then572:                                       ; preds = %cond.end568
  %429 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p573 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %429, i32 0, i32 2
  %430 = load i64*, i64** %p573, align 8
  %431 = load i64, i64* %i, align 8
  %div574 = udiv i64 %431, 2
  %arrayidx575 = getelementptr inbounds i64, i64* %430, i64 %div574
  %432 = load i64, i64* %arrayidx575, align 8
  %and576 = and i64 %432, 4294967295
  store i64 %and576, i64* %arrayidx575, align 8
  %433 = load i32, i32* %cur, align 4
  %conv577 = zext i32 %433 to i64
  %shl578 = shl i64 %conv577, 32
  %434 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p579 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %434, i32 0, i32 2
  %435 = load i64*, i64** %p579, align 8
  %436 = load i64, i64* %i, align 8
  %div580 = udiv i64 %436, 2
  %arrayidx581 = getelementptr inbounds i64, i64* %435, i64 %div580
  %437 = load i64, i64* %arrayidx581, align 8
  %or582 = or i64 %437, %shl578
  store i64 %or582, i64* %arrayidx581, align 8
  br label %if.end593

if.else583:                                       ; preds = %cond.end568
  %438 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p584 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %438, i32 0, i32 2
  %439 = load i64*, i64** %p584, align 8
  %440 = load i64, i64* %i, align 8
  %div585 = udiv i64 %440, 2
  %arrayidx586 = getelementptr inbounds i64, i64* %439, i64 %div585
  %441 = load i64, i64* %arrayidx586, align 8
  %and587 = and i64 %441, -4294967296
  store i64 %and587, i64* %arrayidx586, align 8
  %442 = load i32, i32* %cur, align 4
  %conv588 = zext i32 %442 to i64
  %443 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p589 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %443, i32 0, i32 2
  %444 = load i64*, i64** %p589, align 8
  %445 = load i64, i64* %i, align 8
  %div590 = udiv i64 %445, 2
  %arrayidx591 = getelementptr inbounds i64, i64* %444, i64 %div590
  %446 = load i64, i64* %arrayidx591, align 8
  %or592 = or i64 %446, %conv588
  store i64 %or592, i64* %arrayidx591, align 8
  br label %if.end593

if.end593:                                        ; preds = %if.else583, %if.then572
  store i32 0, i32* %cur, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end620, %if.end593
  %447 = load i64, i64* %i, align 8
  %inc594 = add i64 %447, 1
  store i64 %inc594, i64* %i, align 8
  %448 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %448, i32 0, i32 1
  %449 = load i64, i64* %n, align 8
  %mul = mul i64 %449, 2
  %cmp595 = icmp ult i64 %inc594, %mul
  br i1 %cmp595, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %450 = load i64, i64* %i, align 8
  %rem597 = urem i64 %450, 2
  %tobool598 = icmp ne i64 %rem597, 0
  br i1 %tobool598, label %if.then599, label %if.else610

if.then599:                                       ; preds = %while.body
  %451 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p600 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %451, i32 0, i32 2
  %452 = load i64*, i64** %p600, align 8
  %453 = load i64, i64* %i, align 8
  %div601 = udiv i64 %453, 2
  %arrayidx602 = getelementptr inbounds i64, i64* %452, i64 %div601
  %454 = load i64, i64* %arrayidx602, align 8
  %and603 = and i64 %454, 4294967295
  store i64 %and603, i64* %arrayidx602, align 8
  %455 = load i32, i32* %cur, align 4
  %conv604 = zext i32 %455 to i64
  %shl605 = shl i64 %conv604, 32
  %456 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p606 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %456, i32 0, i32 2
  %457 = load i64*, i64** %p606, align 8
  %458 = load i64, i64* %i, align 8
  %div607 = udiv i64 %458, 2
  %arrayidx608 = getelementptr inbounds i64, i64* %457, i64 %div607
  %459 = load i64, i64* %arrayidx608, align 8
  %or609 = or i64 %459, %shl605
  store i64 %or609, i64* %arrayidx608, align 8
  br label %if.end620

if.else610:                                       ; preds = %while.body
  %460 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p611 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %460, i32 0, i32 2
  %461 = load i64*, i64** %p611, align 8
  %462 = load i64, i64* %i, align 8
  %div612 = udiv i64 %462, 2
  %arrayidx613 = getelementptr inbounds i64, i64* %461, i64 %div612
  %463 = load i64, i64* %arrayidx613, align 8
  %and614 = and i64 %463, -4294967296
  store i64 %and614, i64* %arrayidx613, align 8
  %464 = load i32, i32* %cur, align 4
  %conv615 = zext i32 %464 to i64
  %465 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p616 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %465, i32 0, i32 2
  %466 = load i64*, i64** %p616, align 8
  %467 = load i64, i64* %i, align 8
  %div617 = udiv i64 %467, 2
  %arrayidx618 = getelementptr inbounds i64, i64* %466, i64 %div617
  %468 = load i64, i64* %arrayidx618, align 8
  %or619 = or i64 %468, %conv615
  store i64 %or619, i64* %arrayidx618, align 8
  br label %if.end620

if.end620:                                        ; preds = %if.else610, %if.then599
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %469 = load i8, i8* %c, align 1
  %conv621 = sext i8 %469 to i32
  %cmp622 = icmp slt i32 %conv621, 0
  br i1 %cmp622, label %if.then624, label %if.end625

if.then624:                                       ; preds = %while.end
  %470 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %471 = load i8, i8* %c, align 1
  %472 = load i64, i64* %bits, align 8
  call void @mbedtls_ecp_fix_negative(%struct.mbedtls_mpi* noundef %470, i8 noundef signext %471, i64 noundef %472) #4
  br label %if.end625

if.end625:                                        ; preds = %if.then624, %while.end
  br label %cleanup

cleanup:                                          ; preds = %if.end625, %if.then
  %473 = load i32, i32* %ret, align 4
  ret i32 %473
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p384(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %cur = alloca i32, align 4
  %i = alloca i64, align 8
  %bits = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8 0, i8* %c, align 1
  store i64 0, i64* %i, align 8
  store i64 384, i64* %bits, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %0, i64 noundef 13) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %i, align 8
  %rem = urem i64 %1, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %4 = load i64, i64* %i, align 8
  %div = udiv i64 %4, 2
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %div
  %5 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p1, align 8
  %8 = load i64, i64* %i, align 8
  %div2 = udiv i64 %8, 2
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %div2
  %9 = load i64, i64* %arrayidx3, align 8
  %conv4 = trunc i64 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  store i32 %cond, i32* %cur, align 4
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p5, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %11, i64 6
  %12 = load i64, i64* %arrayidx6, align 8
  %conv7 = trunc i64 %12 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv7, i8* noundef %c) #4
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i32 0, i32 2
  %14 = load i64*, i64** %p8, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %14, i64 10
  %15 = load i64, i64* %arrayidx9, align 8
  %shr10 = lshr i64 %15, 32
  %conv11 = trunc i64 %shr10 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv11, i8* noundef %c) #4
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 2
  %17 = load i64*, i64** %p12, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %17, i64 10
  %18 = load i64, i64* %arrayidx13, align 8
  %conv14 = trunc i64 %18 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv14, i8* noundef %c) #4
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i32 0, i32 2
  %20 = load i64*, i64** %p15, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %20, i64 11
  %21 = load i64, i64* %arrayidx16, align 8
  %shr17 = lshr i64 %21, 32
  %conv18 = trunc i64 %shr17 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv18, i8* noundef %c) #4
  %22 = load i64, i64* %i, align 8
  %rem19 = urem i64 %22, 2
  %tobool20 = icmp ne i64 %rem19, 0
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %cond.end
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 2
  %24 = load i64*, i64** %p22, align 8
  %25 = load i64, i64* %i, align 8
  %div23 = udiv i64 %25, 2
  %arrayidx24 = getelementptr inbounds i64, i64* %24, i64 %div23
  %26 = load i64, i64* %arrayidx24, align 8
  %and = and i64 %26, 4294967295
  store i64 %and, i64* %arrayidx24, align 8
  %27 = load i32, i32* %cur, align 4
  %conv25 = zext i32 %27 to i64
  %shl = shl i64 %conv25, 32
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i32 0, i32 2
  %29 = load i64*, i64** %p26, align 8
  %30 = load i64, i64* %i, align 8
  %div27 = udiv i64 %30, 2
  %arrayidx28 = getelementptr inbounds i64, i64* %29, i64 %div27
  %31 = load i64, i64* %arrayidx28, align 8
  %or = or i64 %31, %shl
  store i64 %or, i64* %arrayidx28, align 8
  br label %if.end38

if.else:                                          ; preds = %cond.end
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 2
  %33 = load i64*, i64** %p29, align 8
  %34 = load i64, i64* %i, align 8
  %div30 = udiv i64 %34, 2
  %arrayidx31 = getelementptr inbounds i64, i64* %33, i64 %div30
  %35 = load i64, i64* %arrayidx31, align 8
  %and32 = and i64 %35, -4294967296
  store i64 %and32, i64* %arrayidx31, align 8
  %36 = load i32, i32* %cur, align 4
  %conv33 = zext i32 %36 to i64
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i32 0, i32 2
  %38 = load i64*, i64** %p34, align 8
  %39 = load i64, i64* %i, align 8
  %div35 = udiv i64 %39, 2
  %arrayidx36 = getelementptr inbounds i64, i64* %38, i64 %div35
  %40 = load i64, i64* %arrayidx36, align 8
  %or37 = or i64 %40, %conv33
  store i64 %or37, i64* %arrayidx36, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then21
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  %42 = load i64, i64* %i, align 8
  %rem39 = urem i64 %42, 2
  %tobool40 = icmp ne i64 %rem39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false47

cond.true41:                                      ; preds = %if.end38
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i32 0, i32 2
  %44 = load i64*, i64** %p42, align 8
  %45 = load i64, i64* %i, align 8
  %div43 = udiv i64 %45, 2
  %arrayidx44 = getelementptr inbounds i64, i64* %44, i64 %div43
  %46 = load i64, i64* %arrayidx44, align 8
  %shr45 = lshr i64 %46, 32
  %conv46 = trunc i64 %shr45 to i32
  br label %cond.end52

cond.false47:                                     ; preds = %if.end38
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p48 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %47, i32 0, i32 2
  %48 = load i64*, i64** %p48, align 8
  %49 = load i64, i64* %i, align 8
  %div49 = udiv i64 %49, 2
  %arrayidx50 = getelementptr inbounds i64, i64* %48, i64 %div49
  %50 = load i64, i64* %arrayidx50, align 8
  %conv51 = trunc i64 %50 to i32
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false47, %cond.true41
  %cond53 = phi i32 [ %conv46, %cond.true41 ], [ %conv51, %cond.false47 ]
  store i32 %cond53, i32* %cur, align 4
  %51 = load i8, i8* %c, align 1
  store i8 %51, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %52 = load i8, i8* %cc, align 1
  %conv54 = sext i8 %52 to i32
  %cmp55 = icmp slt i32 %conv54, 0
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %cond.end52
  %53 = load i8, i8* %cc, align 1
  %conv58 = sext i8 %53 to i32
  %sub = sub nsw i32 0, %conv58
  call void @sub32(i32* noundef %cur, i32 noundef %sub, i8* noundef %c) #4
  br label %if.end61

if.else59:                                        ; preds = %cond.end52
  %54 = load i8, i8* %cc, align 1
  %conv60 = sext i8 %54 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv60, i8* noundef %c) #4
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %55 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p62 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %55, i32 0, i32 2
  %56 = load i64*, i64** %p62, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %56, i64 6
  %57 = load i64, i64* %arrayidx63, align 8
  %shr64 = lshr i64 %57, 32
  %conv65 = trunc i64 %shr64 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv65, i8* noundef %c) #4
  %58 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p66 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %58, i32 0, i32 2
  %59 = load i64*, i64** %p66, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %59, i64 11
  %60 = load i64, i64* %arrayidx67, align 8
  %conv68 = trunc i64 %60 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv68, i8* noundef %c) #4
  %61 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p69 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %61, i32 0, i32 2
  %62 = load i64*, i64** %p69, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %62, i64 11
  %63 = load i64, i64* %arrayidx70, align 8
  %shr71 = lshr i64 %63, 32
  %conv72 = trunc i64 %shr71 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv72, i8* noundef %c) #4
  %64 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p73 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %64, i32 0, i32 2
  %65 = load i64*, i64** %p73, align 8
  %arrayidx74 = getelementptr inbounds i64, i64* %65, i64 6
  %66 = load i64, i64* %arrayidx74, align 8
  %conv75 = trunc i64 %66 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv75, i8* noundef %c) #4
  %67 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p76 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %67, i32 0, i32 2
  %68 = load i64*, i64** %p76, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %68, i64 10
  %69 = load i64, i64* %arrayidx77, align 8
  %conv78 = trunc i64 %69 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv78, i8* noundef %c) #4
  %70 = load i64, i64* %i, align 8
  %rem79 = urem i64 %70, 2
  %tobool80 = icmp ne i64 %rem79, 0
  br i1 %tobool80, label %if.then81, label %if.else92

if.then81:                                        ; preds = %if.end61
  %71 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p82 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %71, i32 0, i32 2
  %72 = load i64*, i64** %p82, align 8
  %73 = load i64, i64* %i, align 8
  %div83 = udiv i64 %73, 2
  %arrayidx84 = getelementptr inbounds i64, i64* %72, i64 %div83
  %74 = load i64, i64* %arrayidx84, align 8
  %and85 = and i64 %74, 4294967295
  store i64 %and85, i64* %arrayidx84, align 8
  %75 = load i32, i32* %cur, align 4
  %conv86 = zext i32 %75 to i64
  %shl87 = shl i64 %conv86, 32
  %76 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p88 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %76, i32 0, i32 2
  %77 = load i64*, i64** %p88, align 8
  %78 = load i64, i64* %i, align 8
  %div89 = udiv i64 %78, 2
  %arrayidx90 = getelementptr inbounds i64, i64* %77, i64 %div89
  %79 = load i64, i64* %arrayidx90, align 8
  %or91 = or i64 %79, %shl87
  store i64 %or91, i64* %arrayidx90, align 8
  br label %if.end102

if.else92:                                        ; preds = %if.end61
  %80 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p93 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %80, i32 0, i32 2
  %81 = load i64*, i64** %p93, align 8
  %82 = load i64, i64* %i, align 8
  %div94 = udiv i64 %82, 2
  %arrayidx95 = getelementptr inbounds i64, i64* %81, i64 %div94
  %83 = load i64, i64* %arrayidx95, align 8
  %and96 = and i64 %83, -4294967296
  store i64 %and96, i64* %arrayidx95, align 8
  %84 = load i32, i32* %cur, align 4
  %conv97 = zext i32 %84 to i64
  %85 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p98 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %85, i32 0, i32 2
  %86 = load i64*, i64** %p98, align 8
  %87 = load i64, i64* %i, align 8
  %div99 = udiv i64 %87, 2
  %arrayidx100 = getelementptr inbounds i64, i64* %86, i64 %div99
  %88 = load i64, i64* %arrayidx100, align 8
  %or101 = or i64 %88, %conv97
  store i64 %or101, i64* %arrayidx100, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.else92, %if.then81
  %89 = load i64, i64* %i, align 8
  %inc103 = add i64 %89, 1
  store i64 %inc103, i64* %i, align 8
  %90 = load i64, i64* %i, align 8
  %rem104 = urem i64 %90, 2
  %tobool105 = icmp ne i64 %rem104, 0
  br i1 %tobool105, label %cond.true106, label %cond.false112

cond.true106:                                     ; preds = %if.end102
  %91 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p107 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %91, i32 0, i32 2
  %92 = load i64*, i64** %p107, align 8
  %93 = load i64, i64* %i, align 8
  %div108 = udiv i64 %93, 2
  %arrayidx109 = getelementptr inbounds i64, i64* %92, i64 %div108
  %94 = load i64, i64* %arrayidx109, align 8
  %shr110 = lshr i64 %94, 32
  %conv111 = trunc i64 %shr110 to i32
  br label %cond.end117

cond.false112:                                    ; preds = %if.end102
  %95 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p113 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %95, i32 0, i32 2
  %96 = load i64*, i64** %p113, align 8
  %97 = load i64, i64* %i, align 8
  %div114 = udiv i64 %97, 2
  %arrayidx115 = getelementptr inbounds i64, i64* %96, i64 %div114
  %98 = load i64, i64* %arrayidx115, align 8
  %conv116 = trunc i64 %98 to i32
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false112, %cond.true106
  %cond118 = phi i32 [ %conv111, %cond.true106 ], [ %conv116, %cond.false112 ]
  store i32 %cond118, i32* %cur, align 4
  %99 = load i8, i8* %c, align 1
  store i8 %99, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %100 = load i8, i8* %cc, align 1
  %conv119 = sext i8 %100 to i32
  %cmp120 = icmp slt i32 %conv119, 0
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %cond.end117
  %101 = load i8, i8* %cc, align 1
  %conv123 = sext i8 %101 to i32
  %sub124 = sub nsw i32 0, %conv123
  call void @sub32(i32* noundef %cur, i32 noundef %sub124, i8* noundef %c) #4
  br label %if.end127

if.else125:                                       ; preds = %cond.end117
  %102 = load i8, i8* %cc, align 1
  %conv126 = sext i8 %102 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv126, i8* noundef %c) #4
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then122
  %103 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p128 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %103, i32 0, i32 2
  %104 = load i64*, i64** %p128, align 8
  %arrayidx129 = getelementptr inbounds i64, i64* %104, i64 7
  %105 = load i64, i64* %arrayidx129, align 8
  %conv130 = trunc i64 %105 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv130, i8* noundef %c) #4
  %106 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p131 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %106, i32 0, i32 2
  %107 = load i64*, i64** %p131, align 8
  %arrayidx132 = getelementptr inbounds i64, i64* %107, i64 11
  %108 = load i64, i64* %arrayidx132, align 8
  %shr133 = lshr i64 %108, 32
  %conv134 = trunc i64 %shr133 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv134, i8* noundef %c) #4
  %109 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p135 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %109, i32 0, i32 2
  %110 = load i64*, i64** %p135, align 8
  %arrayidx136 = getelementptr inbounds i64, i64* %110, i64 6
  %111 = load i64, i64* %arrayidx136, align 8
  %shr137 = lshr i64 %111, 32
  %conv138 = trunc i64 %shr137 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv138, i8* noundef %c) #4
  %112 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p139 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %112, i32 0, i32 2
  %113 = load i64*, i64** %p139, align 8
  %arrayidx140 = getelementptr inbounds i64, i64* %113, i64 10
  %114 = load i64, i64* %arrayidx140, align 8
  %shr141 = lshr i64 %114, 32
  %conv142 = trunc i64 %shr141 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv142, i8* noundef %c) #4
  %115 = load i64, i64* %i, align 8
  %rem143 = urem i64 %115, 2
  %tobool144 = icmp ne i64 %rem143, 0
  br i1 %tobool144, label %if.then145, label %if.else156

if.then145:                                       ; preds = %if.end127
  %116 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p146 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %116, i32 0, i32 2
  %117 = load i64*, i64** %p146, align 8
  %118 = load i64, i64* %i, align 8
  %div147 = udiv i64 %118, 2
  %arrayidx148 = getelementptr inbounds i64, i64* %117, i64 %div147
  %119 = load i64, i64* %arrayidx148, align 8
  %and149 = and i64 %119, 4294967295
  store i64 %and149, i64* %arrayidx148, align 8
  %120 = load i32, i32* %cur, align 4
  %conv150 = zext i32 %120 to i64
  %shl151 = shl i64 %conv150, 32
  %121 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p152 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %121, i32 0, i32 2
  %122 = load i64*, i64** %p152, align 8
  %123 = load i64, i64* %i, align 8
  %div153 = udiv i64 %123, 2
  %arrayidx154 = getelementptr inbounds i64, i64* %122, i64 %div153
  %124 = load i64, i64* %arrayidx154, align 8
  %or155 = or i64 %124, %shl151
  store i64 %or155, i64* %arrayidx154, align 8
  br label %if.end166

if.else156:                                       ; preds = %if.end127
  %125 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p157 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %125, i32 0, i32 2
  %126 = load i64*, i64** %p157, align 8
  %127 = load i64, i64* %i, align 8
  %div158 = udiv i64 %127, 2
  %arrayidx159 = getelementptr inbounds i64, i64* %126, i64 %div158
  %128 = load i64, i64* %arrayidx159, align 8
  %and160 = and i64 %128, -4294967296
  store i64 %and160, i64* %arrayidx159, align 8
  %129 = load i32, i32* %cur, align 4
  %conv161 = zext i32 %129 to i64
  %130 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p162 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %130, i32 0, i32 2
  %131 = load i64*, i64** %p162, align 8
  %132 = load i64, i64* %i, align 8
  %div163 = udiv i64 %132, 2
  %arrayidx164 = getelementptr inbounds i64, i64* %131, i64 %div163
  %133 = load i64, i64* %arrayidx164, align 8
  %or165 = or i64 %133, %conv161
  store i64 %or165, i64* %arrayidx164, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.else156, %if.then145
  %134 = load i64, i64* %i, align 8
  %inc167 = add i64 %134, 1
  store i64 %inc167, i64* %i, align 8
  %135 = load i64, i64* %i, align 8
  %rem168 = urem i64 %135, 2
  %tobool169 = icmp ne i64 %rem168, 0
  br i1 %tobool169, label %cond.true170, label %cond.false176

cond.true170:                                     ; preds = %if.end166
  %136 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p171 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %136, i32 0, i32 2
  %137 = load i64*, i64** %p171, align 8
  %138 = load i64, i64* %i, align 8
  %div172 = udiv i64 %138, 2
  %arrayidx173 = getelementptr inbounds i64, i64* %137, i64 %div172
  %139 = load i64, i64* %arrayidx173, align 8
  %shr174 = lshr i64 %139, 32
  %conv175 = trunc i64 %shr174 to i32
  br label %cond.end181

cond.false176:                                    ; preds = %if.end166
  %140 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p177 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %140, i32 0, i32 2
  %141 = load i64*, i64** %p177, align 8
  %142 = load i64, i64* %i, align 8
  %div178 = udiv i64 %142, 2
  %arrayidx179 = getelementptr inbounds i64, i64* %141, i64 %div178
  %143 = load i64, i64* %arrayidx179, align 8
  %conv180 = trunc i64 %143 to i32
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false176, %cond.true170
  %cond182 = phi i32 [ %conv175, %cond.true170 ], [ %conv180, %cond.false176 ]
  store i32 %cond182, i32* %cur, align 4
  %144 = load i8, i8* %c, align 1
  store i8 %144, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %145 = load i8, i8* %cc, align 1
  %conv183 = sext i8 %145 to i32
  %cmp184 = icmp slt i32 %conv183, 0
  br i1 %cmp184, label %if.then186, label %if.else189

if.then186:                                       ; preds = %cond.end181
  %146 = load i8, i8* %cc, align 1
  %conv187 = sext i8 %146 to i32
  %sub188 = sub nsw i32 0, %conv187
  call void @sub32(i32* noundef %cur, i32 noundef %sub188, i8* noundef %c) #4
  br label %if.end191

if.else189:                                       ; preds = %cond.end181
  %147 = load i8, i8* %cc, align 1
  %conv190 = sext i8 %147 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv190, i8* noundef %c) #4
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %if.then186
  %148 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p192 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %148, i32 0, i32 2
  %149 = load i64*, i64** %p192, align 8
  %arrayidx193 = getelementptr inbounds i64, i64* %149, i64 7
  %150 = load i64, i64* %arrayidx193, align 8
  %shr194 = lshr i64 %150, 32
  %conv195 = trunc i64 %shr194 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv195, i8* noundef %c) #4
  %151 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p196 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %151, i32 0, i32 2
  %152 = load i64*, i64** %p196, align 8
  %arrayidx197 = getelementptr inbounds i64, i64* %152, i64 6
  %153 = load i64, i64* %arrayidx197, align 8
  %conv198 = trunc i64 %153 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv198, i8* noundef %c) #4
  %154 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p199 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %154, i32 0, i32 2
  %155 = load i64*, i64** %p199, align 8
  %arrayidx200 = getelementptr inbounds i64, i64* %155, i64 10
  %156 = load i64, i64* %arrayidx200, align 8
  %conv201 = trunc i64 %156 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv201, i8* noundef %c) #4
  %157 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p202 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %157, i32 0, i32 2
  %158 = load i64*, i64** %p202, align 8
  %arrayidx203 = getelementptr inbounds i64, i64* %158, i64 10
  %159 = load i64, i64* %arrayidx203, align 8
  %shr204 = lshr i64 %159, 32
  %conv205 = trunc i64 %shr204 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv205, i8* noundef %c) #4
  %160 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p206 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %160, i32 0, i32 2
  %161 = load i64*, i64** %p206, align 8
  %arrayidx207 = getelementptr inbounds i64, i64* %161, i64 7
  %162 = load i64, i64* %arrayidx207, align 8
  %conv208 = trunc i64 %162 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv208, i8* noundef %c) #4
  %163 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p209 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %163, i32 0, i32 2
  %164 = load i64*, i64** %p209, align 8
  %arrayidx210 = getelementptr inbounds i64, i64* %164, i64 11
  %165 = load i64, i64* %arrayidx210, align 8
  %conv211 = trunc i64 %165 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv211, i8* noundef %c) #4
  %166 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p212 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %166, i32 0, i32 2
  %167 = load i64*, i64** %p212, align 8
  %arrayidx213 = getelementptr inbounds i64, i64* %167, i64 11
  %168 = load i64, i64* %arrayidx213, align 8
  %shr214 = lshr i64 %168, 32
  %conv215 = trunc i64 %shr214 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv215, i8* noundef %c) #4
  %169 = load i64, i64* %i, align 8
  %rem216 = urem i64 %169, 2
  %tobool217 = icmp ne i64 %rem216, 0
  br i1 %tobool217, label %if.then218, label %if.else229

if.then218:                                       ; preds = %if.end191
  %170 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p219 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %170, i32 0, i32 2
  %171 = load i64*, i64** %p219, align 8
  %172 = load i64, i64* %i, align 8
  %div220 = udiv i64 %172, 2
  %arrayidx221 = getelementptr inbounds i64, i64* %171, i64 %div220
  %173 = load i64, i64* %arrayidx221, align 8
  %and222 = and i64 %173, 4294967295
  store i64 %and222, i64* %arrayidx221, align 8
  %174 = load i32, i32* %cur, align 4
  %conv223 = zext i32 %174 to i64
  %shl224 = shl i64 %conv223, 32
  %175 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p225 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %175, i32 0, i32 2
  %176 = load i64*, i64** %p225, align 8
  %177 = load i64, i64* %i, align 8
  %div226 = udiv i64 %177, 2
  %arrayidx227 = getelementptr inbounds i64, i64* %176, i64 %div226
  %178 = load i64, i64* %arrayidx227, align 8
  %or228 = or i64 %178, %shl224
  store i64 %or228, i64* %arrayidx227, align 8
  br label %if.end239

if.else229:                                       ; preds = %if.end191
  %179 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p230 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %179, i32 0, i32 2
  %180 = load i64*, i64** %p230, align 8
  %181 = load i64, i64* %i, align 8
  %div231 = udiv i64 %181, 2
  %arrayidx232 = getelementptr inbounds i64, i64* %180, i64 %div231
  %182 = load i64, i64* %arrayidx232, align 8
  %and233 = and i64 %182, -4294967296
  store i64 %and233, i64* %arrayidx232, align 8
  %183 = load i32, i32* %cur, align 4
  %conv234 = zext i32 %183 to i64
  %184 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p235 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %184, i32 0, i32 2
  %185 = load i64*, i64** %p235, align 8
  %186 = load i64, i64* %i, align 8
  %div236 = udiv i64 %186, 2
  %arrayidx237 = getelementptr inbounds i64, i64* %185, i64 %div236
  %187 = load i64, i64* %arrayidx237, align 8
  %or238 = or i64 %187, %conv234
  store i64 %or238, i64* %arrayidx237, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.else229, %if.then218
  %188 = load i64, i64* %i, align 8
  %inc240 = add i64 %188, 1
  store i64 %inc240, i64* %i, align 8
  %189 = load i64, i64* %i, align 8
  %rem241 = urem i64 %189, 2
  %tobool242 = icmp ne i64 %rem241, 0
  br i1 %tobool242, label %cond.true243, label %cond.false249

cond.true243:                                     ; preds = %if.end239
  %190 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p244 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %190, i32 0, i32 2
  %191 = load i64*, i64** %p244, align 8
  %192 = load i64, i64* %i, align 8
  %div245 = udiv i64 %192, 2
  %arrayidx246 = getelementptr inbounds i64, i64* %191, i64 %div245
  %193 = load i64, i64* %arrayidx246, align 8
  %shr247 = lshr i64 %193, 32
  %conv248 = trunc i64 %shr247 to i32
  br label %cond.end254

cond.false249:                                    ; preds = %if.end239
  %194 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p250 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %194, i32 0, i32 2
  %195 = load i64*, i64** %p250, align 8
  %196 = load i64, i64* %i, align 8
  %div251 = udiv i64 %196, 2
  %arrayidx252 = getelementptr inbounds i64, i64* %195, i64 %div251
  %197 = load i64, i64* %arrayidx252, align 8
  %conv253 = trunc i64 %197 to i32
  br label %cond.end254

cond.end254:                                      ; preds = %cond.false249, %cond.true243
  %cond255 = phi i32 [ %conv248, %cond.true243 ], [ %conv253, %cond.false249 ]
  store i32 %cond255, i32* %cur, align 4
  %198 = load i8, i8* %c, align 1
  store i8 %198, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %199 = load i8, i8* %cc, align 1
  %conv256 = sext i8 %199 to i32
  %cmp257 = icmp slt i32 %conv256, 0
  br i1 %cmp257, label %if.then259, label %if.else262

if.then259:                                       ; preds = %cond.end254
  %200 = load i8, i8* %cc, align 1
  %conv260 = sext i8 %200 to i32
  %sub261 = sub nsw i32 0, %conv260
  call void @sub32(i32* noundef %cur, i32 noundef %sub261, i8* noundef %c) #4
  br label %if.end264

if.else262:                                       ; preds = %cond.end254
  %201 = load i8, i8* %cc, align 1
  %conv263 = sext i8 %201 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv263, i8* noundef %c) #4
  br label %if.end264

if.end264:                                        ; preds = %if.else262, %if.then259
  %202 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p265 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %202, i32 0, i32 2
  %203 = load i64*, i64** %p265, align 8
  %arrayidx266 = getelementptr inbounds i64, i64* %203, i64 10
  %204 = load i64, i64* %arrayidx266, align 8
  %shr267 = lshr i64 %204, 32
  %conv268 = trunc i64 %shr267 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv268, i8* noundef %c) #4
  %205 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p269 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %205, i32 0, i32 2
  %206 = load i64*, i64** %p269, align 8
  %arrayidx270 = getelementptr inbounds i64, i64* %206, i64 10
  %207 = load i64, i64* %arrayidx270, align 8
  %shr271 = lshr i64 %207, 32
  %conv272 = trunc i64 %shr271 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv272, i8* noundef %c) #4
  %208 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p273 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %208, i32 0, i32 2
  %209 = load i64*, i64** %p273, align 8
  %arrayidx274 = getelementptr inbounds i64, i64* %209, i64 8
  %210 = load i64, i64* %arrayidx274, align 8
  %conv275 = trunc i64 %210 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv275, i8* noundef %c) #4
  %211 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p276 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %211, i32 0, i32 2
  %212 = load i64*, i64** %p276, align 8
  %arrayidx277 = getelementptr inbounds i64, i64* %212, i64 6
  %213 = load i64, i64* %arrayidx277, align 8
  %shr278 = lshr i64 %213, 32
  %conv279 = trunc i64 %shr278 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv279, i8* noundef %c) #4
  %214 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p280 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %214, i32 0, i32 2
  %215 = load i64*, i64** %p280, align 8
  %arrayidx281 = getelementptr inbounds i64, i64* %215, i64 6
  %216 = load i64, i64* %arrayidx281, align 8
  %conv282 = trunc i64 %216 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv282, i8* noundef %c) #4
  %217 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p283 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %217, i32 0, i32 2
  %218 = load i64*, i64** %p283, align 8
  %arrayidx284 = getelementptr inbounds i64, i64* %218, i64 10
  %219 = load i64, i64* %arrayidx284, align 8
  %conv285 = trunc i64 %219 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv285, i8* noundef %c) #4
  %220 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p286 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %220, i32 0, i32 2
  %221 = load i64*, i64** %p286, align 8
  %arrayidx287 = getelementptr inbounds i64, i64* %221, i64 11
  %222 = load i64, i64* %arrayidx287, align 8
  %conv288 = trunc i64 %222 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv288, i8* noundef %c) #4
  %223 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p289 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %223, i32 0, i32 2
  %224 = load i64*, i64** %p289, align 8
  %arrayidx290 = getelementptr inbounds i64, i64* %224, i64 7
  %225 = load i64, i64* %arrayidx290, align 8
  %shr291 = lshr i64 %225, 32
  %conv292 = trunc i64 %shr291 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv292, i8* noundef %c) #4
  %226 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p293 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %226, i32 0, i32 2
  %227 = load i64*, i64** %p293, align 8
  %arrayidx294 = getelementptr inbounds i64, i64* %227, i64 11
  %228 = load i64, i64* %arrayidx294, align 8
  %shr295 = lshr i64 %228, 32
  %conv296 = trunc i64 %shr295 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv296, i8* noundef %c) #4
  %229 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p297 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %229, i32 0, i32 2
  %230 = load i64*, i64** %p297, align 8
  %arrayidx298 = getelementptr inbounds i64, i64* %230, i64 11
  %231 = load i64, i64* %arrayidx298, align 8
  %shr299 = lshr i64 %231, 32
  %conv300 = trunc i64 %shr299 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv300, i8* noundef %c) #4
  %232 = load i64, i64* %i, align 8
  %rem301 = urem i64 %232, 2
  %tobool302 = icmp ne i64 %rem301, 0
  br i1 %tobool302, label %if.then303, label %if.else314

if.then303:                                       ; preds = %if.end264
  %233 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p304 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %233, i32 0, i32 2
  %234 = load i64*, i64** %p304, align 8
  %235 = load i64, i64* %i, align 8
  %div305 = udiv i64 %235, 2
  %arrayidx306 = getelementptr inbounds i64, i64* %234, i64 %div305
  %236 = load i64, i64* %arrayidx306, align 8
  %and307 = and i64 %236, 4294967295
  store i64 %and307, i64* %arrayidx306, align 8
  %237 = load i32, i32* %cur, align 4
  %conv308 = zext i32 %237 to i64
  %shl309 = shl i64 %conv308, 32
  %238 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p310 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %238, i32 0, i32 2
  %239 = load i64*, i64** %p310, align 8
  %240 = load i64, i64* %i, align 8
  %div311 = udiv i64 %240, 2
  %arrayidx312 = getelementptr inbounds i64, i64* %239, i64 %div311
  %241 = load i64, i64* %arrayidx312, align 8
  %or313 = or i64 %241, %shl309
  store i64 %or313, i64* %arrayidx312, align 8
  br label %if.end324

if.else314:                                       ; preds = %if.end264
  %242 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p315 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %242, i32 0, i32 2
  %243 = load i64*, i64** %p315, align 8
  %244 = load i64, i64* %i, align 8
  %div316 = udiv i64 %244, 2
  %arrayidx317 = getelementptr inbounds i64, i64* %243, i64 %div316
  %245 = load i64, i64* %arrayidx317, align 8
  %and318 = and i64 %245, -4294967296
  store i64 %and318, i64* %arrayidx317, align 8
  %246 = load i32, i32* %cur, align 4
  %conv319 = zext i32 %246 to i64
  %247 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p320 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %247, i32 0, i32 2
  %248 = load i64*, i64** %p320, align 8
  %249 = load i64, i64* %i, align 8
  %div321 = udiv i64 %249, 2
  %arrayidx322 = getelementptr inbounds i64, i64* %248, i64 %div321
  %250 = load i64, i64* %arrayidx322, align 8
  %or323 = or i64 %250, %conv319
  store i64 %or323, i64* %arrayidx322, align 8
  br label %if.end324

if.end324:                                        ; preds = %if.else314, %if.then303
  %251 = load i64, i64* %i, align 8
  %inc325 = add i64 %251, 1
  store i64 %inc325, i64* %i, align 8
  %252 = load i64, i64* %i, align 8
  %rem326 = urem i64 %252, 2
  %tobool327 = icmp ne i64 %rem326, 0
  br i1 %tobool327, label %cond.true328, label %cond.false334

cond.true328:                                     ; preds = %if.end324
  %253 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p329 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %253, i32 0, i32 2
  %254 = load i64*, i64** %p329, align 8
  %255 = load i64, i64* %i, align 8
  %div330 = udiv i64 %255, 2
  %arrayidx331 = getelementptr inbounds i64, i64* %254, i64 %div330
  %256 = load i64, i64* %arrayidx331, align 8
  %shr332 = lshr i64 %256, 32
  %conv333 = trunc i64 %shr332 to i32
  br label %cond.end339

cond.false334:                                    ; preds = %if.end324
  %257 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p335 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %257, i32 0, i32 2
  %258 = load i64*, i64** %p335, align 8
  %259 = load i64, i64* %i, align 8
  %div336 = udiv i64 %259, 2
  %arrayidx337 = getelementptr inbounds i64, i64* %258, i64 %div336
  %260 = load i64, i64* %arrayidx337, align 8
  %conv338 = trunc i64 %260 to i32
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false334, %cond.true328
  %cond340 = phi i32 [ %conv333, %cond.true328 ], [ %conv338, %cond.false334 ]
  store i32 %cond340, i32* %cur, align 4
  %261 = load i8, i8* %c, align 1
  store i8 %261, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %262 = load i8, i8* %cc, align 1
  %conv341 = sext i8 %262 to i32
  %cmp342 = icmp slt i32 %conv341, 0
  br i1 %cmp342, label %if.then344, label %if.else347

if.then344:                                       ; preds = %cond.end339
  %263 = load i8, i8* %cc, align 1
  %conv345 = sext i8 %263 to i32
  %sub346 = sub nsw i32 0, %conv345
  call void @sub32(i32* noundef %cur, i32 noundef %sub346, i8* noundef %c) #4
  br label %if.end349

if.else347:                                       ; preds = %cond.end339
  %264 = load i8, i8* %cc, align 1
  %conv348 = sext i8 %264 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv348, i8* noundef %c) #4
  br label %if.end349

if.end349:                                        ; preds = %if.else347, %if.then344
  %265 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p350 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %265, i32 0, i32 2
  %266 = load i64*, i64** %p350, align 8
  %arrayidx351 = getelementptr inbounds i64, i64* %266, i64 11
  %267 = load i64, i64* %arrayidx351, align 8
  %conv352 = trunc i64 %267 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv352, i8* noundef %c) #4
  %268 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p353 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %268, i32 0, i32 2
  %269 = load i64*, i64** %p353, align 8
  %arrayidx354 = getelementptr inbounds i64, i64* %269, i64 11
  %270 = load i64, i64* %arrayidx354, align 8
  %conv355 = trunc i64 %270 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv355, i8* noundef %c) #4
  %271 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p356 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %271, i32 0, i32 2
  %272 = load i64*, i64** %p356, align 8
  %arrayidx357 = getelementptr inbounds i64, i64* %272, i64 8
  %273 = load i64, i64* %arrayidx357, align 8
  %shr358 = lshr i64 %273, 32
  %conv359 = trunc i64 %shr358 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv359, i8* noundef %c) #4
  %274 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p360 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %274, i32 0, i32 2
  %275 = load i64*, i64** %p360, align 8
  %arrayidx361 = getelementptr inbounds i64, i64* %275, i64 7
  %276 = load i64, i64* %arrayidx361, align 8
  %conv362 = trunc i64 %276 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv362, i8* noundef %c) #4
  %277 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p363 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %277, i32 0, i32 2
  %278 = load i64*, i64** %p363, align 8
  %arrayidx364 = getelementptr inbounds i64, i64* %278, i64 6
  %279 = load i64, i64* %arrayidx364, align 8
  %shr365 = lshr i64 %279, 32
  %conv366 = trunc i64 %shr365 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv366, i8* noundef %c) #4
  %280 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p367 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %280, i32 0, i32 2
  %281 = load i64*, i64** %p367, align 8
  %arrayidx368 = getelementptr inbounds i64, i64* %281, i64 10
  %282 = load i64, i64* %arrayidx368, align 8
  %shr369 = lshr i64 %282, 32
  %conv370 = trunc i64 %shr369 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv370, i8* noundef %c) #4
  %283 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p371 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %283, i32 0, i32 2
  %284 = load i64*, i64** %p371, align 8
  %arrayidx372 = getelementptr inbounds i64, i64* %284, i64 11
  %285 = load i64, i64* %arrayidx372, align 8
  %shr373 = lshr i64 %285, 32
  %conv374 = trunc i64 %shr373 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv374, i8* noundef %c) #4
  %286 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p375 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %286, i32 0, i32 2
  %287 = load i64*, i64** %p375, align 8
  %arrayidx376 = getelementptr inbounds i64, i64* %287, i64 8
  %288 = load i64, i64* %arrayidx376, align 8
  %conv377 = trunc i64 %288 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv377, i8* noundef %c) #4
  %289 = load i64, i64* %i, align 8
  %rem378 = urem i64 %289, 2
  %tobool379 = icmp ne i64 %rem378, 0
  br i1 %tobool379, label %if.then380, label %if.else391

if.then380:                                       ; preds = %if.end349
  %290 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p381 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %290, i32 0, i32 2
  %291 = load i64*, i64** %p381, align 8
  %292 = load i64, i64* %i, align 8
  %div382 = udiv i64 %292, 2
  %arrayidx383 = getelementptr inbounds i64, i64* %291, i64 %div382
  %293 = load i64, i64* %arrayidx383, align 8
  %and384 = and i64 %293, 4294967295
  store i64 %and384, i64* %arrayidx383, align 8
  %294 = load i32, i32* %cur, align 4
  %conv385 = zext i32 %294 to i64
  %shl386 = shl i64 %conv385, 32
  %295 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p387 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %295, i32 0, i32 2
  %296 = load i64*, i64** %p387, align 8
  %297 = load i64, i64* %i, align 8
  %div388 = udiv i64 %297, 2
  %arrayidx389 = getelementptr inbounds i64, i64* %296, i64 %div388
  %298 = load i64, i64* %arrayidx389, align 8
  %or390 = or i64 %298, %shl386
  store i64 %or390, i64* %arrayidx389, align 8
  br label %if.end401

if.else391:                                       ; preds = %if.end349
  %299 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p392 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %299, i32 0, i32 2
  %300 = load i64*, i64** %p392, align 8
  %301 = load i64, i64* %i, align 8
  %div393 = udiv i64 %301, 2
  %arrayidx394 = getelementptr inbounds i64, i64* %300, i64 %div393
  %302 = load i64, i64* %arrayidx394, align 8
  %and395 = and i64 %302, -4294967296
  store i64 %and395, i64* %arrayidx394, align 8
  %303 = load i32, i32* %cur, align 4
  %conv396 = zext i32 %303 to i64
  %304 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p397 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %304, i32 0, i32 2
  %305 = load i64*, i64** %p397, align 8
  %306 = load i64, i64* %i, align 8
  %div398 = udiv i64 %306, 2
  %arrayidx399 = getelementptr inbounds i64, i64* %305, i64 %div398
  %307 = load i64, i64* %arrayidx399, align 8
  %or400 = or i64 %307, %conv396
  store i64 %or400, i64* %arrayidx399, align 8
  br label %if.end401

if.end401:                                        ; preds = %if.else391, %if.then380
  %308 = load i64, i64* %i, align 8
  %inc402 = add i64 %308, 1
  store i64 %inc402, i64* %i, align 8
  %309 = load i64, i64* %i, align 8
  %rem403 = urem i64 %309, 2
  %tobool404 = icmp ne i64 %rem403, 0
  br i1 %tobool404, label %cond.true405, label %cond.false411

cond.true405:                                     ; preds = %if.end401
  %310 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p406 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %310, i32 0, i32 2
  %311 = load i64*, i64** %p406, align 8
  %312 = load i64, i64* %i, align 8
  %div407 = udiv i64 %312, 2
  %arrayidx408 = getelementptr inbounds i64, i64* %311, i64 %div407
  %313 = load i64, i64* %arrayidx408, align 8
  %shr409 = lshr i64 %313, 32
  %conv410 = trunc i64 %shr409 to i32
  br label %cond.end416

cond.false411:                                    ; preds = %if.end401
  %314 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p412 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %314, i32 0, i32 2
  %315 = load i64*, i64** %p412, align 8
  %316 = load i64, i64* %i, align 8
  %div413 = udiv i64 %316, 2
  %arrayidx414 = getelementptr inbounds i64, i64* %315, i64 %div413
  %317 = load i64, i64* %arrayidx414, align 8
  %conv415 = trunc i64 %317 to i32
  br label %cond.end416

cond.end416:                                      ; preds = %cond.false411, %cond.true405
  %cond417 = phi i32 [ %conv410, %cond.true405 ], [ %conv415, %cond.false411 ]
  store i32 %cond417, i32* %cur, align 4
  %318 = load i8, i8* %c, align 1
  store i8 %318, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %319 = load i8, i8* %cc, align 1
  %conv418 = sext i8 %319 to i32
  %cmp419 = icmp slt i32 %conv418, 0
  br i1 %cmp419, label %if.then421, label %if.else424

if.then421:                                       ; preds = %cond.end416
  %320 = load i8, i8* %cc, align 1
  %conv422 = sext i8 %320 to i32
  %sub423 = sub nsw i32 0, %conv422
  call void @sub32(i32* noundef %cur, i32 noundef %sub423, i8* noundef %c) #4
  br label %if.end426

if.else424:                                       ; preds = %cond.end416
  %321 = load i8, i8* %cc, align 1
  %conv425 = sext i8 %321 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv425, i8* noundef %c) #4
  br label %if.end426

if.end426:                                        ; preds = %if.else424, %if.then421
  %322 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p427 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %322, i32 0, i32 2
  %323 = load i64*, i64** %p427, align 8
  %arrayidx428 = getelementptr inbounds i64, i64* %323, i64 11
  %324 = load i64, i64* %arrayidx428, align 8
  %shr429 = lshr i64 %324, 32
  %conv430 = trunc i64 %shr429 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv430, i8* noundef %c) #4
  %325 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p431 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %325, i32 0, i32 2
  %326 = load i64*, i64** %p431, align 8
  %arrayidx432 = getelementptr inbounds i64, i64* %326, i64 11
  %327 = load i64, i64* %arrayidx432, align 8
  %shr433 = lshr i64 %327, 32
  %conv434 = trunc i64 %shr433 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv434, i8* noundef %c) #4
  %328 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p435 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %328, i32 0, i32 2
  %329 = load i64*, i64** %p435, align 8
  %arrayidx436 = getelementptr inbounds i64, i64* %329, i64 9
  %330 = load i64, i64* %arrayidx436, align 8
  %conv437 = trunc i64 %330 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv437, i8* noundef %c) #4
  %331 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p438 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %331, i32 0, i32 2
  %332 = load i64*, i64** %p438, align 8
  %arrayidx439 = getelementptr inbounds i64, i64* %332, i64 7
  %333 = load i64, i64* %arrayidx439, align 8
  %shr440 = lshr i64 %333, 32
  %conv441 = trunc i64 %shr440 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv441, i8* noundef %c) #4
  %334 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p442 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %334, i32 0, i32 2
  %335 = load i64*, i64** %p442, align 8
  %arrayidx443 = getelementptr inbounds i64, i64* %335, i64 7
  %336 = load i64, i64* %arrayidx443, align 8
  %conv444 = trunc i64 %336 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv444, i8* noundef %c) #4
  %337 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p445 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %337, i32 0, i32 2
  %338 = load i64*, i64** %p445, align 8
  %arrayidx446 = getelementptr inbounds i64, i64* %338, i64 11
  %339 = load i64, i64* %arrayidx446, align 8
  %conv447 = trunc i64 %339 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv447, i8* noundef %c) #4
  %340 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p448 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %340, i32 0, i32 2
  %341 = load i64*, i64** %p448, align 8
  %arrayidx449 = getelementptr inbounds i64, i64* %341, i64 8
  %342 = load i64, i64* %arrayidx449, align 8
  %shr450 = lshr i64 %342, 32
  %conv451 = trunc i64 %shr450 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv451, i8* noundef %c) #4
  %343 = load i64, i64* %i, align 8
  %rem452 = urem i64 %343, 2
  %tobool453 = icmp ne i64 %rem452, 0
  br i1 %tobool453, label %if.then454, label %if.else465

if.then454:                                       ; preds = %if.end426
  %344 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p455 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %344, i32 0, i32 2
  %345 = load i64*, i64** %p455, align 8
  %346 = load i64, i64* %i, align 8
  %div456 = udiv i64 %346, 2
  %arrayidx457 = getelementptr inbounds i64, i64* %345, i64 %div456
  %347 = load i64, i64* %arrayidx457, align 8
  %and458 = and i64 %347, 4294967295
  store i64 %and458, i64* %arrayidx457, align 8
  %348 = load i32, i32* %cur, align 4
  %conv459 = zext i32 %348 to i64
  %shl460 = shl i64 %conv459, 32
  %349 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p461 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %349, i32 0, i32 2
  %350 = load i64*, i64** %p461, align 8
  %351 = load i64, i64* %i, align 8
  %div462 = udiv i64 %351, 2
  %arrayidx463 = getelementptr inbounds i64, i64* %350, i64 %div462
  %352 = load i64, i64* %arrayidx463, align 8
  %or464 = or i64 %352, %shl460
  store i64 %or464, i64* %arrayidx463, align 8
  br label %if.end475

if.else465:                                       ; preds = %if.end426
  %353 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p466 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %353, i32 0, i32 2
  %354 = load i64*, i64** %p466, align 8
  %355 = load i64, i64* %i, align 8
  %div467 = udiv i64 %355, 2
  %arrayidx468 = getelementptr inbounds i64, i64* %354, i64 %div467
  %356 = load i64, i64* %arrayidx468, align 8
  %and469 = and i64 %356, -4294967296
  store i64 %and469, i64* %arrayidx468, align 8
  %357 = load i32, i32* %cur, align 4
  %conv470 = zext i32 %357 to i64
  %358 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p471 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %358, i32 0, i32 2
  %359 = load i64*, i64** %p471, align 8
  %360 = load i64, i64* %i, align 8
  %div472 = udiv i64 %360, 2
  %arrayidx473 = getelementptr inbounds i64, i64* %359, i64 %div472
  %361 = load i64, i64* %arrayidx473, align 8
  %or474 = or i64 %361, %conv470
  store i64 %or474, i64* %arrayidx473, align 8
  br label %if.end475

if.end475:                                        ; preds = %if.else465, %if.then454
  %362 = load i64, i64* %i, align 8
  %inc476 = add i64 %362, 1
  store i64 %inc476, i64* %i, align 8
  %363 = load i64, i64* %i, align 8
  %rem477 = urem i64 %363, 2
  %tobool478 = icmp ne i64 %rem477, 0
  br i1 %tobool478, label %cond.true479, label %cond.false485

cond.true479:                                     ; preds = %if.end475
  %364 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p480 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %364, i32 0, i32 2
  %365 = load i64*, i64** %p480, align 8
  %366 = load i64, i64* %i, align 8
  %div481 = udiv i64 %366, 2
  %arrayidx482 = getelementptr inbounds i64, i64* %365, i64 %div481
  %367 = load i64, i64* %arrayidx482, align 8
  %shr483 = lshr i64 %367, 32
  %conv484 = trunc i64 %shr483 to i32
  br label %cond.end490

cond.false485:                                    ; preds = %if.end475
  %368 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p486 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %368, i32 0, i32 2
  %369 = load i64*, i64** %p486, align 8
  %370 = load i64, i64* %i, align 8
  %div487 = udiv i64 %370, 2
  %arrayidx488 = getelementptr inbounds i64, i64* %369, i64 %div487
  %371 = load i64, i64* %arrayidx488, align 8
  %conv489 = trunc i64 %371 to i32
  br label %cond.end490

cond.end490:                                      ; preds = %cond.false485, %cond.true479
  %cond491 = phi i32 [ %conv484, %cond.true479 ], [ %conv489, %cond.false485 ]
  store i32 %cond491, i32* %cur, align 4
  %372 = load i8, i8* %c, align 1
  store i8 %372, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %373 = load i8, i8* %cc, align 1
  %conv492 = sext i8 %373 to i32
  %cmp493 = icmp slt i32 %conv492, 0
  br i1 %cmp493, label %if.then495, label %if.else498

if.then495:                                       ; preds = %cond.end490
  %374 = load i8, i8* %cc, align 1
  %conv496 = sext i8 %374 to i32
  %sub497 = sub nsw i32 0, %conv496
  call void @sub32(i32* noundef %cur, i32 noundef %sub497, i8* noundef %c) #4
  br label %if.end500

if.else498:                                       ; preds = %cond.end490
  %375 = load i8, i8* %cc, align 1
  %conv499 = sext i8 %375 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv499, i8* noundef %c) #4
  br label %if.end500

if.end500:                                        ; preds = %if.else498, %if.then495
  %376 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p501 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %376, i32 0, i32 2
  %377 = load i64*, i64** %p501, align 8
  %arrayidx502 = getelementptr inbounds i64, i64* %377, i64 9
  %378 = load i64, i64* %arrayidx502, align 8
  %shr503 = lshr i64 %378, 32
  %conv504 = trunc i64 %shr503 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv504, i8* noundef %c) #4
  %379 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p505 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %379, i32 0, i32 2
  %380 = load i64*, i64** %p505, align 8
  %arrayidx506 = getelementptr inbounds i64, i64* %380, i64 8
  %381 = load i64, i64* %arrayidx506, align 8
  %conv507 = trunc i64 %381 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv507, i8* noundef %c) #4
  %382 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p508 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %382, i32 0, i32 2
  %383 = load i64*, i64** %p508, align 8
  %arrayidx509 = getelementptr inbounds i64, i64* %383, i64 7
  %384 = load i64, i64* %arrayidx509, align 8
  %shr510 = lshr i64 %384, 32
  %conv511 = trunc i64 %shr510 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv511, i8* noundef %c) #4
  %385 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p512 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %385, i32 0, i32 2
  %386 = load i64*, i64** %p512, align 8
  %arrayidx513 = getelementptr inbounds i64, i64* %386, i64 11
  %387 = load i64, i64* %arrayidx513, align 8
  %shr514 = lshr i64 %387, 32
  %conv515 = trunc i64 %shr514 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv515, i8* noundef %c) #4
  %388 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p516 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %388, i32 0, i32 2
  %389 = load i64*, i64** %p516, align 8
  %arrayidx517 = getelementptr inbounds i64, i64* %389, i64 9
  %390 = load i64, i64* %arrayidx517, align 8
  %conv518 = trunc i64 %390 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv518, i8* noundef %c) #4
  %391 = load i64, i64* %i, align 8
  %rem519 = urem i64 %391, 2
  %tobool520 = icmp ne i64 %rem519, 0
  br i1 %tobool520, label %if.then521, label %if.else532

if.then521:                                       ; preds = %if.end500
  %392 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p522 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %392, i32 0, i32 2
  %393 = load i64*, i64** %p522, align 8
  %394 = load i64, i64* %i, align 8
  %div523 = udiv i64 %394, 2
  %arrayidx524 = getelementptr inbounds i64, i64* %393, i64 %div523
  %395 = load i64, i64* %arrayidx524, align 8
  %and525 = and i64 %395, 4294967295
  store i64 %and525, i64* %arrayidx524, align 8
  %396 = load i32, i32* %cur, align 4
  %conv526 = zext i32 %396 to i64
  %shl527 = shl i64 %conv526, 32
  %397 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p528 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %397, i32 0, i32 2
  %398 = load i64*, i64** %p528, align 8
  %399 = load i64, i64* %i, align 8
  %div529 = udiv i64 %399, 2
  %arrayidx530 = getelementptr inbounds i64, i64* %398, i64 %div529
  %400 = load i64, i64* %arrayidx530, align 8
  %or531 = or i64 %400, %shl527
  store i64 %or531, i64* %arrayidx530, align 8
  br label %if.end542

if.else532:                                       ; preds = %if.end500
  %401 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p533 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %401, i32 0, i32 2
  %402 = load i64*, i64** %p533, align 8
  %403 = load i64, i64* %i, align 8
  %div534 = udiv i64 %403, 2
  %arrayidx535 = getelementptr inbounds i64, i64* %402, i64 %div534
  %404 = load i64, i64* %arrayidx535, align 8
  %and536 = and i64 %404, -4294967296
  store i64 %and536, i64* %arrayidx535, align 8
  %405 = load i32, i32* %cur, align 4
  %conv537 = zext i32 %405 to i64
  %406 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p538 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %406, i32 0, i32 2
  %407 = load i64*, i64** %p538, align 8
  %408 = load i64, i64* %i, align 8
  %div539 = udiv i64 %408, 2
  %arrayidx540 = getelementptr inbounds i64, i64* %407, i64 %div539
  %409 = load i64, i64* %arrayidx540, align 8
  %or541 = or i64 %409, %conv537
  store i64 %or541, i64* %arrayidx540, align 8
  br label %if.end542

if.end542:                                        ; preds = %if.else532, %if.then521
  %410 = load i64, i64* %i, align 8
  %inc543 = add i64 %410, 1
  store i64 %inc543, i64* %i, align 8
  %411 = load i64, i64* %i, align 8
  %rem544 = urem i64 %411, 2
  %tobool545 = icmp ne i64 %rem544, 0
  br i1 %tobool545, label %cond.true546, label %cond.false552

cond.true546:                                     ; preds = %if.end542
  %412 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p547 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %412, i32 0, i32 2
  %413 = load i64*, i64** %p547, align 8
  %414 = load i64, i64* %i, align 8
  %div548 = udiv i64 %414, 2
  %arrayidx549 = getelementptr inbounds i64, i64* %413, i64 %div548
  %415 = load i64, i64* %arrayidx549, align 8
  %shr550 = lshr i64 %415, 32
  %conv551 = trunc i64 %shr550 to i32
  br label %cond.end557

cond.false552:                                    ; preds = %if.end542
  %416 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p553 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %416, i32 0, i32 2
  %417 = load i64*, i64** %p553, align 8
  %418 = load i64, i64* %i, align 8
  %div554 = udiv i64 %418, 2
  %arrayidx555 = getelementptr inbounds i64, i64* %417, i64 %div554
  %419 = load i64, i64* %arrayidx555, align 8
  %conv556 = trunc i64 %419 to i32
  br label %cond.end557

cond.end557:                                      ; preds = %cond.false552, %cond.true546
  %cond558 = phi i32 [ %conv551, %cond.true546 ], [ %conv556, %cond.false552 ]
  store i32 %cond558, i32* %cur, align 4
  %420 = load i8, i8* %c, align 1
  store i8 %420, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %421 = load i8, i8* %cc, align 1
  %conv559 = sext i8 %421 to i32
  %cmp560 = icmp slt i32 %conv559, 0
  br i1 %cmp560, label %if.then562, label %if.else565

if.then562:                                       ; preds = %cond.end557
  %422 = load i8, i8* %cc, align 1
  %conv563 = sext i8 %422 to i32
  %sub564 = sub nsw i32 0, %conv563
  call void @sub32(i32* noundef %cur, i32 noundef %sub564, i8* noundef %c) #4
  br label %if.end567

if.else565:                                       ; preds = %cond.end557
  %423 = load i8, i8* %cc, align 1
  %conv566 = sext i8 %423 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv566, i8* noundef %c) #4
  br label %if.end567

if.end567:                                        ; preds = %if.else565, %if.then562
  %424 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p568 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %424, i32 0, i32 2
  %425 = load i64*, i64** %p568, align 8
  %arrayidx569 = getelementptr inbounds i64, i64* %425, i64 10
  %426 = load i64, i64* %arrayidx569, align 8
  %conv570 = trunc i64 %426 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv570, i8* noundef %c) #4
  %427 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p571 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %427, i32 0, i32 2
  %428 = load i64*, i64** %p571, align 8
  %arrayidx572 = getelementptr inbounds i64, i64* %428, i64 8
  %429 = load i64, i64* %arrayidx572, align 8
  %shr573 = lshr i64 %429, 32
  %conv574 = trunc i64 %shr573 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv574, i8* noundef %c) #4
  %430 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p575 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %430, i32 0, i32 2
  %431 = load i64*, i64** %p575, align 8
  %arrayidx576 = getelementptr inbounds i64, i64* %431, i64 8
  %432 = load i64, i64* %arrayidx576, align 8
  %conv577 = trunc i64 %432 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv577, i8* noundef %c) #4
  %433 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p578 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %433, i32 0, i32 2
  %434 = load i64*, i64** %p578, align 8
  %arrayidx579 = getelementptr inbounds i64, i64* %434, i64 9
  %435 = load i64, i64* %arrayidx579, align 8
  %shr580 = lshr i64 %435, 32
  %conv581 = trunc i64 %shr580 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv581, i8* noundef %c) #4
  %436 = load i64, i64* %i, align 8
  %rem582 = urem i64 %436, 2
  %tobool583 = icmp ne i64 %rem582, 0
  br i1 %tobool583, label %if.then584, label %if.else595

if.then584:                                       ; preds = %if.end567
  %437 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p585 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %437, i32 0, i32 2
  %438 = load i64*, i64** %p585, align 8
  %439 = load i64, i64* %i, align 8
  %div586 = udiv i64 %439, 2
  %arrayidx587 = getelementptr inbounds i64, i64* %438, i64 %div586
  %440 = load i64, i64* %arrayidx587, align 8
  %and588 = and i64 %440, 4294967295
  store i64 %and588, i64* %arrayidx587, align 8
  %441 = load i32, i32* %cur, align 4
  %conv589 = zext i32 %441 to i64
  %shl590 = shl i64 %conv589, 32
  %442 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p591 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %442, i32 0, i32 2
  %443 = load i64*, i64** %p591, align 8
  %444 = load i64, i64* %i, align 8
  %div592 = udiv i64 %444, 2
  %arrayidx593 = getelementptr inbounds i64, i64* %443, i64 %div592
  %445 = load i64, i64* %arrayidx593, align 8
  %or594 = or i64 %445, %shl590
  store i64 %or594, i64* %arrayidx593, align 8
  br label %if.end605

if.else595:                                       ; preds = %if.end567
  %446 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p596 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %446, i32 0, i32 2
  %447 = load i64*, i64** %p596, align 8
  %448 = load i64, i64* %i, align 8
  %div597 = udiv i64 %448, 2
  %arrayidx598 = getelementptr inbounds i64, i64* %447, i64 %div597
  %449 = load i64, i64* %arrayidx598, align 8
  %and599 = and i64 %449, -4294967296
  store i64 %and599, i64* %arrayidx598, align 8
  %450 = load i32, i32* %cur, align 4
  %conv600 = zext i32 %450 to i64
  %451 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p601 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %451, i32 0, i32 2
  %452 = load i64*, i64** %p601, align 8
  %453 = load i64, i64* %i, align 8
  %div602 = udiv i64 %453, 2
  %arrayidx603 = getelementptr inbounds i64, i64* %452, i64 %div602
  %454 = load i64, i64* %arrayidx603, align 8
  %or604 = or i64 %454, %conv600
  store i64 %or604, i64* %arrayidx603, align 8
  br label %if.end605

if.end605:                                        ; preds = %if.else595, %if.then584
  %455 = load i64, i64* %i, align 8
  %inc606 = add i64 %455, 1
  store i64 %inc606, i64* %i, align 8
  %456 = load i64, i64* %i, align 8
  %rem607 = urem i64 %456, 2
  %tobool608 = icmp ne i64 %rem607, 0
  br i1 %tobool608, label %cond.true609, label %cond.false615

cond.true609:                                     ; preds = %if.end605
  %457 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p610 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %457, i32 0, i32 2
  %458 = load i64*, i64** %p610, align 8
  %459 = load i64, i64* %i, align 8
  %div611 = udiv i64 %459, 2
  %arrayidx612 = getelementptr inbounds i64, i64* %458, i64 %div611
  %460 = load i64, i64* %arrayidx612, align 8
  %shr613 = lshr i64 %460, 32
  %conv614 = trunc i64 %shr613 to i32
  br label %cond.end620

cond.false615:                                    ; preds = %if.end605
  %461 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p616 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %461, i32 0, i32 2
  %462 = load i64*, i64** %p616, align 8
  %463 = load i64, i64* %i, align 8
  %div617 = udiv i64 %463, 2
  %arrayidx618 = getelementptr inbounds i64, i64* %462, i64 %div617
  %464 = load i64, i64* %arrayidx618, align 8
  %conv619 = trunc i64 %464 to i32
  br label %cond.end620

cond.end620:                                      ; preds = %cond.false615, %cond.true609
  %cond621 = phi i32 [ %conv614, %cond.true609 ], [ %conv619, %cond.false615 ]
  store i32 %cond621, i32* %cur, align 4
  %465 = load i8, i8* %c, align 1
  store i8 %465, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %466 = load i8, i8* %cc, align 1
  %conv622 = sext i8 %466 to i32
  %cmp623 = icmp slt i32 %conv622, 0
  br i1 %cmp623, label %if.then625, label %if.else628

if.then625:                                       ; preds = %cond.end620
  %467 = load i8, i8* %cc, align 1
  %conv626 = sext i8 %467 to i32
  %sub627 = sub nsw i32 0, %conv626
  call void @sub32(i32* noundef %cur, i32 noundef %sub627, i8* noundef %c) #4
  br label %if.end630

if.else628:                                       ; preds = %cond.end620
  %468 = load i8, i8* %cc, align 1
  %conv629 = sext i8 %468 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv629, i8* noundef %c) #4
  br label %if.end630

if.end630:                                        ; preds = %if.else628, %if.then625
  %469 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p631 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %469, i32 0, i32 2
  %470 = load i64*, i64** %p631, align 8
  %arrayidx632 = getelementptr inbounds i64, i64* %470, i64 10
  %471 = load i64, i64* %arrayidx632, align 8
  %shr633 = lshr i64 %471, 32
  %conv634 = trunc i64 %shr633 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv634, i8* noundef %c) #4
  %472 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p635 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %472, i32 0, i32 2
  %473 = load i64*, i64** %p635, align 8
  %arrayidx636 = getelementptr inbounds i64, i64* %473, i64 9
  %474 = load i64, i64* %arrayidx636, align 8
  %conv637 = trunc i64 %474 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv637, i8* noundef %c) #4
  %475 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p638 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %475, i32 0, i32 2
  %476 = load i64*, i64** %p638, align 8
  %arrayidx639 = getelementptr inbounds i64, i64* %476, i64 8
  %477 = load i64, i64* %arrayidx639, align 8
  %shr640 = lshr i64 %477, 32
  %conv641 = trunc i64 %shr640 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv641, i8* noundef %c) #4
  %478 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p642 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %478, i32 0, i32 2
  %479 = load i64*, i64** %p642, align 8
  %arrayidx643 = getelementptr inbounds i64, i64* %479, i64 10
  %480 = load i64, i64* %arrayidx643, align 8
  %conv644 = trunc i64 %480 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv644, i8* noundef %c) #4
  %481 = load i64, i64* %i, align 8
  %rem645 = urem i64 %481, 2
  %tobool646 = icmp ne i64 %rem645, 0
  br i1 %tobool646, label %if.then647, label %if.else658

if.then647:                                       ; preds = %if.end630
  %482 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p648 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %482, i32 0, i32 2
  %483 = load i64*, i64** %p648, align 8
  %484 = load i64, i64* %i, align 8
  %div649 = udiv i64 %484, 2
  %arrayidx650 = getelementptr inbounds i64, i64* %483, i64 %div649
  %485 = load i64, i64* %arrayidx650, align 8
  %and651 = and i64 %485, 4294967295
  store i64 %and651, i64* %arrayidx650, align 8
  %486 = load i32, i32* %cur, align 4
  %conv652 = zext i32 %486 to i64
  %shl653 = shl i64 %conv652, 32
  %487 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p654 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %487, i32 0, i32 2
  %488 = load i64*, i64** %p654, align 8
  %489 = load i64, i64* %i, align 8
  %div655 = udiv i64 %489, 2
  %arrayidx656 = getelementptr inbounds i64, i64* %488, i64 %div655
  %490 = load i64, i64* %arrayidx656, align 8
  %or657 = or i64 %490, %shl653
  store i64 %or657, i64* %arrayidx656, align 8
  br label %if.end668

if.else658:                                       ; preds = %if.end630
  %491 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p659 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %491, i32 0, i32 2
  %492 = load i64*, i64** %p659, align 8
  %493 = load i64, i64* %i, align 8
  %div660 = udiv i64 %493, 2
  %arrayidx661 = getelementptr inbounds i64, i64* %492, i64 %div660
  %494 = load i64, i64* %arrayidx661, align 8
  %and662 = and i64 %494, -4294967296
  store i64 %and662, i64* %arrayidx661, align 8
  %495 = load i32, i32* %cur, align 4
  %conv663 = zext i32 %495 to i64
  %496 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p664 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %496, i32 0, i32 2
  %497 = load i64*, i64** %p664, align 8
  %498 = load i64, i64* %i, align 8
  %div665 = udiv i64 %498, 2
  %arrayidx666 = getelementptr inbounds i64, i64* %497, i64 %div665
  %499 = load i64, i64* %arrayidx666, align 8
  %or667 = or i64 %499, %conv663
  store i64 %or667, i64* %arrayidx666, align 8
  br label %if.end668

if.end668:                                        ; preds = %if.else658, %if.then647
  %500 = load i64, i64* %i, align 8
  %inc669 = add i64 %500, 1
  store i64 %inc669, i64* %i, align 8
  %501 = load i64, i64* %i, align 8
  %rem670 = urem i64 %501, 2
  %tobool671 = icmp ne i64 %rem670, 0
  br i1 %tobool671, label %cond.true672, label %cond.false678

cond.true672:                                     ; preds = %if.end668
  %502 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p673 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %502, i32 0, i32 2
  %503 = load i64*, i64** %p673, align 8
  %504 = load i64, i64* %i, align 8
  %div674 = udiv i64 %504, 2
  %arrayidx675 = getelementptr inbounds i64, i64* %503, i64 %div674
  %505 = load i64, i64* %arrayidx675, align 8
  %shr676 = lshr i64 %505, 32
  %conv677 = trunc i64 %shr676 to i32
  br label %cond.end683

cond.false678:                                    ; preds = %if.end668
  %506 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p679 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %506, i32 0, i32 2
  %507 = load i64*, i64** %p679, align 8
  %508 = load i64, i64* %i, align 8
  %div680 = udiv i64 %508, 2
  %arrayidx681 = getelementptr inbounds i64, i64* %507, i64 %div680
  %509 = load i64, i64* %arrayidx681, align 8
  %conv682 = trunc i64 %509 to i32
  br label %cond.end683

cond.end683:                                      ; preds = %cond.false678, %cond.true672
  %cond684 = phi i32 [ %conv677, %cond.true672 ], [ %conv682, %cond.false678 ]
  store i32 %cond684, i32* %cur, align 4
  %510 = load i8, i8* %c, align 1
  store i8 %510, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %511 = load i8, i8* %cc, align 1
  %conv685 = sext i8 %511 to i32
  %cmp686 = icmp slt i32 %conv685, 0
  br i1 %cmp686, label %if.then688, label %if.else691

if.then688:                                       ; preds = %cond.end683
  %512 = load i8, i8* %cc, align 1
  %conv689 = sext i8 %512 to i32
  %sub690 = sub nsw i32 0, %conv689
  call void @sub32(i32* noundef %cur, i32 noundef %sub690, i8* noundef %c) #4
  br label %if.end693

if.else691:                                       ; preds = %cond.end683
  %513 = load i8, i8* %cc, align 1
  %conv692 = sext i8 %513 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv692, i8* noundef %c) #4
  br label %if.end693

if.end693:                                        ; preds = %if.else691, %if.then688
  %514 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p694 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %514, i32 0, i32 2
  %515 = load i64*, i64** %p694, align 8
  %arrayidx695 = getelementptr inbounds i64, i64* %515, i64 11
  %516 = load i64, i64* %arrayidx695, align 8
  %conv696 = trunc i64 %516 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv696, i8* noundef %c) #4
  %517 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p697 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %517, i32 0, i32 2
  %518 = load i64*, i64** %p697, align 8
  %arrayidx698 = getelementptr inbounds i64, i64* %518, i64 9
  %519 = load i64, i64* %arrayidx698, align 8
  %shr699 = lshr i64 %519, 32
  %conv700 = trunc i64 %shr699 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv700, i8* noundef %c) #4
  %520 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p701 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %520, i32 0, i32 2
  %521 = load i64*, i64** %p701, align 8
  %arrayidx702 = getelementptr inbounds i64, i64* %521, i64 9
  %522 = load i64, i64* %arrayidx702, align 8
  %conv703 = trunc i64 %522 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv703, i8* noundef %c) #4
  %523 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p704 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %523, i32 0, i32 2
  %524 = load i64*, i64** %p704, align 8
  %arrayidx705 = getelementptr inbounds i64, i64* %524, i64 10
  %525 = load i64, i64* %arrayidx705, align 8
  %shr706 = lshr i64 %525, 32
  %conv707 = trunc i64 %shr706 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv707, i8* noundef %c) #4
  %526 = load i64, i64* %i, align 8
  %rem708 = urem i64 %526, 2
  %tobool709 = icmp ne i64 %rem708, 0
  br i1 %tobool709, label %if.then710, label %if.else721

if.then710:                                       ; preds = %if.end693
  %527 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p711 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %527, i32 0, i32 2
  %528 = load i64*, i64** %p711, align 8
  %529 = load i64, i64* %i, align 8
  %div712 = udiv i64 %529, 2
  %arrayidx713 = getelementptr inbounds i64, i64* %528, i64 %div712
  %530 = load i64, i64* %arrayidx713, align 8
  %and714 = and i64 %530, 4294967295
  store i64 %and714, i64* %arrayidx713, align 8
  %531 = load i32, i32* %cur, align 4
  %conv715 = zext i32 %531 to i64
  %shl716 = shl i64 %conv715, 32
  %532 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p717 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %532, i32 0, i32 2
  %533 = load i64*, i64** %p717, align 8
  %534 = load i64, i64* %i, align 8
  %div718 = udiv i64 %534, 2
  %arrayidx719 = getelementptr inbounds i64, i64* %533, i64 %div718
  %535 = load i64, i64* %arrayidx719, align 8
  %or720 = or i64 %535, %shl716
  store i64 %or720, i64* %arrayidx719, align 8
  br label %if.end731

if.else721:                                       ; preds = %if.end693
  %536 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p722 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %536, i32 0, i32 2
  %537 = load i64*, i64** %p722, align 8
  %538 = load i64, i64* %i, align 8
  %div723 = udiv i64 %538, 2
  %arrayidx724 = getelementptr inbounds i64, i64* %537, i64 %div723
  %539 = load i64, i64* %arrayidx724, align 8
  %and725 = and i64 %539, -4294967296
  store i64 %and725, i64* %arrayidx724, align 8
  %540 = load i32, i32* %cur, align 4
  %conv726 = zext i32 %540 to i64
  %541 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p727 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %541, i32 0, i32 2
  %542 = load i64*, i64** %p727, align 8
  %543 = load i64, i64* %i, align 8
  %div728 = udiv i64 %543, 2
  %arrayidx729 = getelementptr inbounds i64, i64* %542, i64 %div728
  %544 = load i64, i64* %arrayidx729, align 8
  %or730 = or i64 %544, %conv726
  store i64 %or730, i64* %arrayidx729, align 8
  br label %if.end731

if.end731:                                        ; preds = %if.else721, %if.then710
  %545 = load i64, i64* %i, align 8
  %inc732 = add i64 %545, 1
  store i64 %inc732, i64* %i, align 8
  %546 = load i64, i64* %i, align 8
  %rem733 = urem i64 %546, 2
  %tobool734 = icmp ne i64 %rem733, 0
  br i1 %tobool734, label %cond.true735, label %cond.false741

cond.true735:                                     ; preds = %if.end731
  %547 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p736 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %547, i32 0, i32 2
  %548 = load i64*, i64** %p736, align 8
  %549 = load i64, i64* %i, align 8
  %div737 = udiv i64 %549, 2
  %arrayidx738 = getelementptr inbounds i64, i64* %548, i64 %div737
  %550 = load i64, i64* %arrayidx738, align 8
  %shr739 = lshr i64 %550, 32
  %conv740 = trunc i64 %shr739 to i32
  br label %cond.end746

cond.false741:                                    ; preds = %if.end731
  %551 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p742 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %551, i32 0, i32 2
  %552 = load i64*, i64** %p742, align 8
  %553 = load i64, i64* %i, align 8
  %div743 = udiv i64 %553, 2
  %arrayidx744 = getelementptr inbounds i64, i64* %552, i64 %div743
  %554 = load i64, i64* %arrayidx744, align 8
  %conv745 = trunc i64 %554 to i32
  br label %cond.end746

cond.end746:                                      ; preds = %cond.false741, %cond.true735
  %cond747 = phi i32 [ %conv740, %cond.true735 ], [ %conv745, %cond.false741 ]
  store i32 %cond747, i32* %cur, align 4
  %555 = load i8, i8* %c, align 1
  store i8 %555, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  %556 = load i8, i8* %cc, align 1
  %conv748 = sext i8 %556 to i32
  %cmp749 = icmp slt i32 %conv748, 0
  br i1 %cmp749, label %if.then751, label %if.else754

if.then751:                                       ; preds = %cond.end746
  %557 = load i8, i8* %cc, align 1
  %conv752 = sext i8 %557 to i32
  %sub753 = sub nsw i32 0, %conv752
  call void @sub32(i32* noundef %cur, i32 noundef %sub753, i8* noundef %c) #4
  br label %if.end756

if.else754:                                       ; preds = %cond.end746
  %558 = load i8, i8* %cc, align 1
  %conv755 = sext i8 %558 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv755, i8* noundef %c) #4
  br label %if.end756

if.end756:                                        ; preds = %if.else754, %if.then751
  %559 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p757 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %559, i32 0, i32 2
  %560 = load i64*, i64** %p757, align 8
  %arrayidx758 = getelementptr inbounds i64, i64* %560, i64 11
  %561 = load i64, i64* %arrayidx758, align 8
  %shr759 = lshr i64 %561, 32
  %conv760 = trunc i64 %shr759 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv760, i8* noundef %c) #4
  %562 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p761 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %562, i32 0, i32 2
  %563 = load i64*, i64** %p761, align 8
  %arrayidx762 = getelementptr inbounds i64, i64* %563, i64 10
  %564 = load i64, i64* %arrayidx762, align 8
  %conv763 = trunc i64 %564 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv763, i8* noundef %c) #4
  %565 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p764 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %565, i32 0, i32 2
  %566 = load i64*, i64** %p764, align 8
  %arrayidx765 = getelementptr inbounds i64, i64* %566, i64 9
  %567 = load i64, i64* %arrayidx765, align 8
  %shr766 = lshr i64 %567, 32
  %conv767 = trunc i64 %shr766 to i32
  call void @add32(i32* noundef %cur, i32 noundef %conv767, i8* noundef %c) #4
  %568 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p768 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %568, i32 0, i32 2
  %569 = load i64*, i64** %p768, align 8
  %arrayidx769 = getelementptr inbounds i64, i64* %569, i64 11
  %570 = load i64, i64* %arrayidx769, align 8
  %conv770 = trunc i64 %570 to i32
  call void @sub32(i32* noundef %cur, i32 noundef %conv770, i8* noundef %c) #4
  %571 = load i64, i64* %i, align 8
  %rem771 = urem i64 %571, 2
  %tobool772 = icmp ne i64 %rem771, 0
  br i1 %tobool772, label %if.then773, label %if.else784

if.then773:                                       ; preds = %if.end756
  %572 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p774 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %572, i32 0, i32 2
  %573 = load i64*, i64** %p774, align 8
  %574 = load i64, i64* %i, align 8
  %div775 = udiv i64 %574, 2
  %arrayidx776 = getelementptr inbounds i64, i64* %573, i64 %div775
  %575 = load i64, i64* %arrayidx776, align 8
  %and777 = and i64 %575, 4294967295
  store i64 %and777, i64* %arrayidx776, align 8
  %576 = load i32, i32* %cur, align 4
  %conv778 = zext i32 %576 to i64
  %shl779 = shl i64 %conv778, 32
  %577 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p780 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %577, i32 0, i32 2
  %578 = load i64*, i64** %p780, align 8
  %579 = load i64, i64* %i, align 8
  %div781 = udiv i64 %579, 2
  %arrayidx782 = getelementptr inbounds i64, i64* %578, i64 %div781
  %580 = load i64, i64* %arrayidx782, align 8
  %or783 = or i64 %580, %shl779
  store i64 %or783, i64* %arrayidx782, align 8
  br label %if.end794

if.else784:                                       ; preds = %if.end756
  %581 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p785 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %581, i32 0, i32 2
  %582 = load i64*, i64** %p785, align 8
  %583 = load i64, i64* %i, align 8
  %div786 = udiv i64 %583, 2
  %arrayidx787 = getelementptr inbounds i64, i64* %582, i64 %div786
  %584 = load i64, i64* %arrayidx787, align 8
  %and788 = and i64 %584, -4294967296
  store i64 %and788, i64* %arrayidx787, align 8
  %585 = load i32, i32* %cur, align 4
  %conv789 = zext i32 %585 to i64
  %586 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p790 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %586, i32 0, i32 2
  %587 = load i64*, i64** %p790, align 8
  %588 = load i64, i64* %i, align 8
  %div791 = udiv i64 %588, 2
  %arrayidx792 = getelementptr inbounds i64, i64* %587, i64 %div791
  %589 = load i64, i64* %arrayidx792, align 8
  %or793 = or i64 %589, %conv789
  store i64 %or793, i64* %arrayidx792, align 8
  br label %if.end794

if.end794:                                        ; preds = %if.else784, %if.then773
  %590 = load i64, i64* %i, align 8
  %inc795 = add i64 %590, 1
  store i64 %inc795, i64* %i, align 8
  %591 = load i8, i8* %c, align 1
  %conv796 = sext i8 %591 to i32
  %cmp797 = icmp sgt i32 %conv796, 0
  br i1 %cmp797, label %cond.true799, label %cond.false801

cond.true799:                                     ; preds = %if.end794
  %592 = load i8, i8* %c, align 1
  %conv800 = sext i8 %592 to i32
  br label %cond.end802

cond.false801:                                    ; preds = %if.end794
  br label %cond.end802

cond.end802:                                      ; preds = %cond.false801, %cond.true799
  %cond803 = phi i32 [ %conv800, %cond.true799 ], [ 0, %cond.false801 ]
  store i32 %cond803, i32* %cur, align 4
  %593 = load i64, i64* %i, align 8
  %rem804 = urem i64 %593, 2
  %tobool805 = icmp ne i64 %rem804, 0
  br i1 %tobool805, label %if.then806, label %if.else817

if.then806:                                       ; preds = %cond.end802
  %594 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p807 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %594, i32 0, i32 2
  %595 = load i64*, i64** %p807, align 8
  %596 = load i64, i64* %i, align 8
  %div808 = udiv i64 %596, 2
  %arrayidx809 = getelementptr inbounds i64, i64* %595, i64 %div808
  %597 = load i64, i64* %arrayidx809, align 8
  %and810 = and i64 %597, 4294967295
  store i64 %and810, i64* %arrayidx809, align 8
  %598 = load i32, i32* %cur, align 4
  %conv811 = zext i32 %598 to i64
  %shl812 = shl i64 %conv811, 32
  %599 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p813 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %599, i32 0, i32 2
  %600 = load i64*, i64** %p813, align 8
  %601 = load i64, i64* %i, align 8
  %div814 = udiv i64 %601, 2
  %arrayidx815 = getelementptr inbounds i64, i64* %600, i64 %div814
  %602 = load i64, i64* %arrayidx815, align 8
  %or816 = or i64 %602, %shl812
  store i64 %or816, i64* %arrayidx815, align 8
  br label %if.end827

if.else817:                                       ; preds = %cond.end802
  %603 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p818 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %603, i32 0, i32 2
  %604 = load i64*, i64** %p818, align 8
  %605 = load i64, i64* %i, align 8
  %div819 = udiv i64 %605, 2
  %arrayidx820 = getelementptr inbounds i64, i64* %604, i64 %div819
  %606 = load i64, i64* %arrayidx820, align 8
  %and821 = and i64 %606, -4294967296
  store i64 %and821, i64* %arrayidx820, align 8
  %607 = load i32, i32* %cur, align 4
  %conv822 = zext i32 %607 to i64
  %608 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p823 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %608, i32 0, i32 2
  %609 = load i64*, i64** %p823, align 8
  %610 = load i64, i64* %i, align 8
  %div824 = udiv i64 %610, 2
  %arrayidx825 = getelementptr inbounds i64, i64* %609, i64 %div824
  %611 = load i64, i64* %arrayidx825, align 8
  %or826 = or i64 %611, %conv822
  store i64 %or826, i64* %arrayidx825, align 8
  br label %if.end827

if.end827:                                        ; preds = %if.else817, %if.then806
  store i32 0, i32* %cur, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end854, %if.end827
  %612 = load i64, i64* %i, align 8
  %inc828 = add i64 %612, 1
  store i64 %inc828, i64* %i, align 8
  %613 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %613, i32 0, i32 1
  %614 = load i64, i64* %n, align 8
  %mul = mul i64 %614, 2
  %cmp829 = icmp ult i64 %inc828, %mul
  br i1 %cmp829, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %615 = load i64, i64* %i, align 8
  %rem831 = urem i64 %615, 2
  %tobool832 = icmp ne i64 %rem831, 0
  br i1 %tobool832, label %if.then833, label %if.else844

if.then833:                                       ; preds = %while.body
  %616 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p834 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %616, i32 0, i32 2
  %617 = load i64*, i64** %p834, align 8
  %618 = load i64, i64* %i, align 8
  %div835 = udiv i64 %618, 2
  %arrayidx836 = getelementptr inbounds i64, i64* %617, i64 %div835
  %619 = load i64, i64* %arrayidx836, align 8
  %and837 = and i64 %619, 4294967295
  store i64 %and837, i64* %arrayidx836, align 8
  %620 = load i32, i32* %cur, align 4
  %conv838 = zext i32 %620 to i64
  %shl839 = shl i64 %conv838, 32
  %621 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p840 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %621, i32 0, i32 2
  %622 = load i64*, i64** %p840, align 8
  %623 = load i64, i64* %i, align 8
  %div841 = udiv i64 %623, 2
  %arrayidx842 = getelementptr inbounds i64, i64* %622, i64 %div841
  %624 = load i64, i64* %arrayidx842, align 8
  %or843 = or i64 %624, %shl839
  store i64 %or843, i64* %arrayidx842, align 8
  br label %if.end854

if.else844:                                       ; preds = %while.body
  %625 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p845 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %625, i32 0, i32 2
  %626 = load i64*, i64** %p845, align 8
  %627 = load i64, i64* %i, align 8
  %div846 = udiv i64 %627, 2
  %arrayidx847 = getelementptr inbounds i64, i64* %626, i64 %div846
  %628 = load i64, i64* %arrayidx847, align 8
  %and848 = and i64 %628, -4294967296
  store i64 %and848, i64* %arrayidx847, align 8
  %629 = load i32, i32* %cur, align 4
  %conv849 = zext i32 %629 to i64
  %630 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p850 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %630, i32 0, i32 2
  %631 = load i64*, i64** %p850, align 8
  %632 = load i64, i64* %i, align 8
  %div851 = udiv i64 %632, 2
  %arrayidx852 = getelementptr inbounds i64, i64* %631, i64 %div851
  %633 = load i64, i64* %arrayidx852, align 8
  %or853 = or i64 %633, %conv849
  store i64 %or853, i64* %arrayidx852, align 8
  br label %if.end854

if.end854:                                        ; preds = %if.else844, %if.then833
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %634 = load i8, i8* %c, align 1
  %conv855 = sext i8 %634 to i32
  %cmp856 = icmp slt i32 %conv855, 0
  br i1 %cmp856, label %if.then858, label %if.end859

if.then858:                                       ; preds = %while.end
  %635 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %636 = load i8, i8* %c, align 1
  %637 = load i64, i64* %bits, align 8
  call void @mbedtls_ecp_fix_negative(%struct.mbedtls_mpi* noundef %635, i8 noundef signext %636, i64 noundef %637) #4
  br label %if.end859

if.end859:                                        ; preds = %if.then858, %while.end
  br label %cleanup

cleanup:                                          ; preds = %if.end859, %if.then
  %638 = load i32, i32* %ret, align 4
  ret i32 %638
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p521(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %M = alloca %struct.mbedtls_mpi, align 8
  %Mp = alloca [10 x i64], align 16
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %1, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n1, align 8
  %sub = sub i64 %3, 8
  %n2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %sub, i64* %n2, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %4 = load i64, i64* %n3, align 8
  %cmp4 = icmp ugt i64 %4, 10
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 10, i64* %n6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %arraydecay = getelementptr inbounds [10 x i64], [10 x i64]* %Mp, i64 0, i64 0
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 2
  store i64* %arraydecay, i64** %p, align 8
  %arraydecay8 = getelementptr inbounds [10 x i64], [10 x i64]* %Mp, i64 0, i64 0
  %5 = bitcast i64* %arraydecay8 to i8*
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p9, align 8
  %add.ptr = getelementptr inbounds i64, i64* %7, i64 9
  %add.ptr10 = getelementptr inbounds i64, i64* %add.ptr, i64 -1
  %8 = bitcast i64* %add.ptr10 to i8*
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %9 = load i64, i64* %n11, align 8
  %mul = mul i64 %9, 8
  %call = call i8* @memcpy(i8* noundef %5, i8* noundef %8, i64 noundef %mul) #5
  br label %do.body

do.body:                                          ; preds = %if.end7
  %call12 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %M, i64 noundef 9) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body
  br label %cleanup

if.end15:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end15
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p16, align 8
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 8
  %12 = load i64, i64* %arrayidx, align 8
  %and = and i64 %12, 511
  store i64 %and, i64* %arrayidx, align 8
  store i64 9, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 1
  %15 = load i64, i64* %n17, align 8
  %cmp18 = icmp ult i64 %13, %15
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 2
  %17 = load i64*, i64** %p19, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %do.body21

do.body21:                                        ; preds = %for.end
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call22 = call i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %20, %struct.mbedtls_mpi* noundef %21, %struct.mbedtls_mpi* noundef %M) #4
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body21
  br label %cleanup

if.end25:                                         ; preds = %do.body21
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then24, %if.then14
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p192k1(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @ecp_mod_koblitz(%struct.mbedtls_mpi* noundef %0, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @ecp_mod_p192k1.Rp, i64 0, i64 0), i64 noundef 3, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p224k1(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @ecp_mod_koblitz(%struct.mbedtls_mpi* noundef %0, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @ecp_mod_p224k1.Rp, i64 0, i64 0), i64 noundef 4, i64 noundef 1, i64 noundef 32, i64 noundef 4294967295) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p256k1(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @ecp_mod_koblitz(%struct.mbedtls_mpi* noundef %0, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @ecp_mod_p256k1.Rp, i64 0, i64 0), i64 noundef 4, i64 noundef 0, i64 noundef 0, i64 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p255(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %Mp = alloca [4 x i64], align 16
  %NT_p = alloca i64*, align 8
  %NT_n = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 4
  store i64* %add.ptr, i64** %NT_p, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n, align 8
  %sub = sub i64 %3, 4
  store i64 %sub, i64* %NT_n, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n1, align 8
  %cmp = icmp ule i64 %5, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %NT_n, align 8
  %cmp2 = icmp ugt i64 %6, 4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %Mp, i64 0, i64 0
  %7 = bitcast i64* %arraydecay to i8*
  %8 = load i64*, i64** %NT_p, align 8
  %9 = bitcast i64* %8 to i8*
  %10 = load i64, i64* %NT_n, align 8
  %mul = mul i64 8, %10
  %call = call i8* @memcpy(i8* noundef %7, i8* noundef %9, i64 noundef %mul) #5
  %11 = load i64*, i64** %NT_p, align 8
  %12 = bitcast i64* %11 to i8*
  %13 = load i64, i64* %NT_n, align 8
  %mul5 = mul i64 8, %13
  %call6 = call i8* @memset(i8* noundef %12, i32 noundef 0, i64 noundef %mul5) #5
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p7, align 8
  %arraydecay8 = getelementptr inbounds [4 x i64], [4 x i64]* %Mp, i64 0, i64 0
  %16 = load i64, i64* %NT_n, align 8
  %call9 = call i64 @mbedtls_mpi_core_mla(i64* noundef %15, i64 noundef 5, i64* noundef %arraydecay8, i64 noundef %16, i64 noundef 38) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_use_curve25519(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %A, i64 noundef 121666) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 1
  %call2 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %P, i64 noundef 1) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P8 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 1
  %call9 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %P8, i64 noundef 255) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body7
  br label %cleanup

if.end12:                                         ; preds = %do.body7
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P15 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P16 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 1
  %call17 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P15, %struct.mbedtls_mpi* noundef %P16, i64 noundef 19) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body14
  br label %cleanup

if.end20:                                         ; preds = %do.body14
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P22 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 1
  %call23 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %P22) #4
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 6
  store i64 %call23, i64* %pbits, align 8
  br label %do.body24

do.body24:                                        ; preds = %do.end21
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 5
  %call25 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %N, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @curve25519_part_of_n, i64 0, i64 0), i64 noundef 16) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  br label %cleanup

if.end28:                                         ; preds = %do.body24
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N31 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %8, i32 0, i32 5
  %call32 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %N31, i64 noundef 252, i8 noundef zeroext 1) #4
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.body30
  br label %cleanup

if.end35:                                         ; preds = %do.body30
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  br label %do.body37

do.body37:                                        ; preds = %do.end36
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 0
  %call38 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X, i64 noundef 9) #4
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body37
  br label %cleanup

if.end41:                                         ; preds = %do.body37
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G44 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 4
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G44, i32 0, i32 2
  %call45 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #4
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.body43
  br label %cleanup

if.end48:                                         ; preds = %do.body43
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G50 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G50, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #4
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 7
  store i64 254, i64* %nbits, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then47, %if.then40, %if.then34, %if.then27, %if.then19, %if.then11, %if.then4, %if.then
  %13 = load i32, i32* %ret, align 4
  %cmp51 = icmp ne i32 %13, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %cleanup
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %14) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %cleanup
  %15 = load i32, i32* %ret, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p448(%struct.mbedtls_mpi* noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %M = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %Mp = alloca [8 x i64], align 16
  %Qp = alloca [7 x i64], align 16
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %cmp = icmp ule i64 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n1, align 8
  %sub = sub i64 %3, 7
  %n2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %sub, i64* %n2, align 8
  %n3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %4 = load i64, i64* %n3, align 8
  %cmp4 = icmp ugt i64 %4, 7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 0
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 2
  store i64* %arraydecay, i64** %p, align 8
  %arraydecay7 = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 0
  %5 = bitcast i64* %arraydecay7 to i8*
  %call = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef 64) #5
  %arraydecay8 = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 0
  %6 = bitcast i64* %arraydecay8 to i8*
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 2
  %8 = load i64*, i64** %p9, align 8
  %add.ptr = getelementptr inbounds i64, i64* %8, i64 7
  %9 = bitcast i64* %add.ptr to i8*
  %n10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %10 = load i64, i64* %n10, align 8
  %mul = mul i64 %10, 8
  %call11 = call i8* @memcpy(i8* noundef %6, i8* noundef %9, i64 noundef %mul) #5
  store i64 7, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 1
  %13 = load i64, i64* %n12, align 8
  %cmp13 = icmp ult i64 %11, %13
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p14, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call15 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %19, %struct.mbedtls_mpi* noundef %M) #4
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body
  br label %cleanup

if.end18:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end18
  %20 = bitcast %struct.mbedtls_mpi* %Q to i8*
  %21 = bitcast %struct.mbedtls_mpi* %M to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %arraydecay19 = getelementptr inbounds [7 x i64], [7 x i64]* %Qp, i64 0, i64 0
  %p20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Q, i32 0, i32 2
  store i64* %arraydecay19, i64** %p20, align 8
  %arraydecay21 = getelementptr inbounds [7 x i64], [7 x i64]* %Qp, i64 0, i64 0
  %22 = bitcast i64* %arraydecay21 to i8*
  %arraydecay22 = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 0
  %23 = bitcast i64* %arraydecay22 to i8*
  %call23 = call i8* @memcpy(i8* noundef %22, i8* noundef %23, i64 noundef 56) #5
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %call25 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %Q, i64 noundef 224) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  br label %cleanup

if.end28:                                         ; preds = %do.body24
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call31 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %24, %struct.mbedtls_mpi* noundef %25, %struct.mbedtls_mpi* noundef %Q) #4
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body30
  br label %cleanup

if.end34:                                         ; preds = %do.body30
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  %arrayidx36 = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 3
  %26 = load i64, i64* %arrayidx36, align 8
  %and = and i64 %26, 4294967295
  store i64 %and, i64* %arrayidx36, align 8
  store i64 4, i64* %i, align 8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc42, %do.end35
  %27 = load i64, i64* %i, align 8
  %n38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %28 = load i64, i64* %n38, align 8
  %cmp39 = icmp ult i64 %27, %28
  br i1 %cmp39, label %for.body40, label %for.end44

for.body40:                                       ; preds = %for.cond37
  %29 = load i64, i64* %i, align 8
  %arrayidx41 = getelementptr inbounds [8 x i64], [8 x i64]* %Mp, i64 0, i64 %29
  store i64 0, i64* %arrayidx41, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body40
  %30 = load i64, i64* %i, align 8
  %inc43 = add i64 %30, 1
  store i64 %inc43, i64* %i, align 8
  br label %for.cond37, !llvm.loop !11

for.end44:                                        ; preds = %for.cond37
  br label %do.body45

do.body45:                                        ; preds = %for.end44
  %call46 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %Q) #4
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body45
  br label %cleanup

if.end49:                                         ; preds = %do.body45
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  %n51 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 8, i64* %n51, align 8
  br label %do.body52

do.body52:                                        ; preds = %do.end50
  %call53 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %M, i64 noundef 224) #4
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body52
  br label %cleanup

if.end56:                                         ; preds = %do.body52
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  br label %do.body58

do.body58:                                        ; preds = %do.end57
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call59 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %31, %struct.mbedtls_mpi* noundef %32, %struct.mbedtls_mpi* noundef %M) #4
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body58
  br label %cleanup

if.end62:                                         ; preds = %do.body58
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then61, %if.then55, %if.then48, %if.then33, %if.then27, %if.then17
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then5, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_use_curve448(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %Ns = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Ns) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %A, i64 noundef 39082) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 1
  %call2 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %P, i64 noundef 1) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P8 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 1
  %call9 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %P8, i64 noundef 224) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body7
  br label %cleanup

if.end12:                                         ; preds = %do.body7
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P15 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 1
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P16 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 1
  %call17 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P15, %struct.mbedtls_mpi* noundef %P16, i64 noundef 1) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body14
  br label %cleanup

if.end20:                                         ; preds = %do.body14
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P23 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 1
  %call24 = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %P23, i64 noundef 224) #4
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body22
  br label %cleanup

if.end27:                                         ; preds = %do.body22
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 1
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P31 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 1
  %call32 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P30, %struct.mbedtls_mpi* noundef %P31, i64 noundef 1) #4
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.body29
  br label %cleanup

if.end35:                                         ; preds = %do.body29
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P37 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %8, i32 0, i32 1
  %call38 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %P37) #4
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 6
  store i64 %call38, i64* %pbits, align 8
  br label %do.body39

do.body39:                                        ; preds = %do.end36
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 0
  %call40 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X, i64 noundef 5) #4
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body39
  br label %cleanup

if.end43:                                         ; preds = %do.body39
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G46 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 4
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G46, i32 0, i32 2
  %call47 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #4
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body45
  br label %cleanup

if.end50:                                         ; preds = %do.body45
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G52 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G52, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #4
  br label %do.body53

do.body53:                                        ; preds = %do.end51
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %13, i32 0, i32 5
  %call54 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %N, i64 noundef 446, i8 noundef zeroext 1) #4
  store i32 %call54, i32* %ret, align 4
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body53
  br label %cleanup

if.end57:                                         ; preds = %do.body53
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  %call60 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %Ns, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @curve448_part_of_n, i64 0, i64 0), i64 noundef 28) #4
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body59
  br label %cleanup

if.end63:                                         ; preds = %do.body59
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  br label %do.body65

do.body65:                                        ; preds = %do.end64
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N66 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 5
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N67 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %15, i32 0, i32 5
  %call68 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %N66, %struct.mbedtls_mpi* noundef %N67, %struct.mbedtls_mpi* noundef %Ns) #4
  store i32 %call68, i32* %ret, align 4
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body65
  br label %cleanup

if.end71:                                         ; preds = %do.body65
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %16, i32 0, i32 7
  store i64 447, i64* %nbits, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.then70, %if.then62, %if.then56, %if.then49, %if.then42, %if.then34, %if.then26, %if.then19, %if.then11, %if.then4, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Ns) #4
  %17 = load i32, i32* %ret, align 4
  %cmp73 = icmp ne i32 %17, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %cleanup
  %18 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %18) #4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %cleanup
  %19 = load i32, i32* %ret, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecp_mpi_load(%struct.mbedtls_mpi* noundef %X, i64* noundef %p, i64 noundef %len) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %p.addr = alloca i64*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64* %p, i64** %p.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %1 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %1, 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  store i64 %div, i64* %n, align 8
  %3 = load i64*, i64** %p.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 2
  store i64* %3, i64** %p1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecp_mpi_set1(%struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1
  store i64 1, i64* %n, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  store i64* getelementptr inbounds ([1 x i64], [1 x i64]* @mpi_one, i64 0, i64 0), i64** %p, align 8
  ret void
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef, i64 noundef, i8 noundef zeroext) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add64(i64* noundef %dst, i64* noundef %src, i64* noundef %carry) #0 {
entry:
  %dst.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %carry.addr = alloca i64*, align 8
  %i = alloca i8, align 1
  %c = alloca i64, align 8
  store i64* %dst, i64** %dst.addr, align 8
  store i64* %src, i64** %src.addr, align 8
  store i64* %carry, i64** %carry.addr, align 8
  store i64 0, i64* %c, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %c, align 8
  %2 = load i64*, i64** %dst.addr, align 8
  %3 = load i64, i64* %2, align 8
  %add = add i64 %3, %1
  store i64 %add, i64* %2, align 8
  %4 = load i64*, i64** %dst.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %c, align 8
  %cmp2 = icmp ult i64 %5, %6
  %conv3 = zext i1 %cmp2 to i32
  %conv4 = sext i32 %conv3 to i64
  store i64 %conv4, i64* %c, align 8
  %7 = load i64*, i64** %src.addr, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64*, i64** %dst.addr, align 8
  %10 = load i64, i64* %9, align 8
  %add5 = add i64 %10, %8
  store i64 %add5, i64* %9, align 8
  %11 = load i64*, i64** %dst.addr, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %src.addr, align 8
  %14 = load i64, i64* %13, align 8
  %cmp6 = icmp ult i64 %12, %14
  %conv7 = zext i1 %cmp6 to i32
  %conv8 = sext i32 %conv7 to i64
  %15 = load i64, i64* %c, align 8
  %add9 = add i64 %15, %conv8
  store i64 %add9, i64* %c, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8, i8* %i, align 1
  %inc = add i8 %16, 1
  store i8 %inc, i8* %i, align 1
  %17 = load i64*, i64** %dst.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr, i64** %dst.addr, align 8
  %18 = load i64*, i64** %src.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %incdec.ptr10, i64** %src.addr, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %c, align 8
  %20 = load i64*, i64** %carry.addr, align 8
  %21 = load i64, i64* %20, align 8
  %add11 = add i64 %21, %19
  store i64 %add11, i64* %20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carry64(i64* noundef %dst, i64* noundef %carry) #0 {
entry:
  %dst.addr = alloca i64*, align 8
  %carry.addr = alloca i64*, align 8
  %i = alloca i8, align 1
  store i64* %dst, i64** %dst.addr, align 8
  store i64* %carry, i64** %carry.addr, align 8
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i64
  %cmp = icmp ult i64 %conv, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64*, i64** %carry.addr, align 8
  %2 = load i64, i64* %1, align 8
  %3 = load i64*, i64** %dst.addr, align 8
  %4 = load i64, i64* %3, align 8
  %add = add i64 %4, %2
  store i64 %add, i64* %3, align 8
  %5 = load i64*, i64** %dst.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** %carry.addr, align 8
  %8 = load i64, i64* %7, align 8
  %cmp2 = icmp ult i64 %6, %8
  %conv3 = zext i1 %cmp2 to i32
  %conv4 = sext i32 %conv3 to i64
  %9 = load i64*, i64** %carry.addr, align 8
  store i64 %conv4, i64* %9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i8, i8* %i, align 1
  %inc = add i8 %10, 1
  store i8 %inc, i8* %i, align 1
  %11 = load i64*, i64** %dst.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr, i64** %dst.addr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub32(i32* noundef %dst, i32 noundef %src, i8* noundef %carry) #0 {
entry:
  %dst.addr = alloca i32*, align 8
  %src.addr = alloca i32, align 4
  %carry.addr = alloca i8*, align 8
  store i32* %dst, i32** %dst.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  store i8* %carry, i8** %carry.addr, align 8
  %0 = load i32*, i32** %dst.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32, i32* %src.addr, align 4
  %cmp = icmp ult i32 %1, %2
  %conv = zext i1 %cmp to i32
  %3 = load i8*, i8** %carry.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %sub = sub nsw i32 %conv1, %conv
  %conv2 = trunc i32 %sub to i8
  store i8 %conv2, i8* %3, align 1
  %5 = load i32, i32* %src.addr, align 4
  %6 = load i32*, i32** %dst.addr, align 8
  %7 = load i32, i32* %6, align 4
  %sub3 = sub i32 %7, %5
  store i32 %sub3, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add32(i32* noundef %dst, i32 noundef %src, i8* noundef %carry) #0 {
entry:
  %dst.addr = alloca i32*, align 8
  %src.addr = alloca i32, align 4
  %carry.addr = alloca i8*, align 8
  store i32* %dst, i32** %dst.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  store i8* %carry, i8** %carry.addr, align 8
  %0 = load i32, i32* %src.addr, align 4
  %1 = load i32*, i32** %dst.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add i32 %2, %0
  store i32 %add, i32* %1, align 4
  %3 = load i32*, i32** %dst.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %src.addr, align 4
  %cmp = icmp ult i32 %4, %5
  %conv = zext i1 %cmp to i32
  %6 = load i8*, i8** %carry.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv1 = sext i8 %7 to i32
  %add2 = add nsw i32 %conv1, %conv
  %conv3 = trunc i32 %add2 to i8
  store i8 %conv3, i8* %6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ecp_fix_negative(%struct.mbedtls_mpi* noundef %N, i8 noundef signext %c, i64 noundef %bits) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %c.addr = alloca i8, align 1
  %bits.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %msw = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i64 %bits, i64* %bits.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %bits.addr, align 8
  %div = udiv i64 %1, 8
  %div1 = udiv i64 %div, 8
  %cmp = icmp ule i64 %0, %div1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 2
  %3 = load i64*, i64** %p, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %4
  %5 = load i64, i64* %arrayidx, align 8
  %sub = sub i64 -1, %5
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 2
  %7 = load i64*, i64** %p2, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 %sub, i64* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %for.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 2
  %11 = load i64*, i64** %p4, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %12
  %13 = load i64, i64* %arrayidx5, align 8
  %inc6 = add i64 %13, 1
  store i64 %inc6, i64* %arrayidx5, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p7, align 8
  %16 = load i64, i64* %i, align 8
  %inc8 = add i64 %16, 1
  store i64 %inc8, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %15, i64 %16
  %17 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp eq i64 %17, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %bits.addr, align 8
  %div11 = udiv i64 %19, 8
  %div12 = udiv i64 %div11, 8
  %cmp13 = icmp ule i64 %18, %div12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %20 = phi i1 [ false, %do.cond ], [ %cmp13, %land.rhs ]
  br i1 %20, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %land.end
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 0
  store i32 -1, i32* %s, align 8
  %22 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %22 to i32
  %sub14 = sub nsw i32 0, %conv
  %conv15 = sext i32 %sub14 to i64
  store i64 %conv15, i64* %msw, align 8
  %23 = load i64, i64* %bits.addr, align 8
  %cmp16 = icmp eq i64 %23, 224
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %24 = load i64, i64* %msw, align 8
  %shl = shl i64 %24, 32
  store i64 %shl, i64* %msw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %25 = load i64, i64* %msw, align 8
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i32 0, i32 2
  %27 = load i64*, i64** %p18, align 8
  %28 = load i64, i64* %bits.addr, align 8
  %div19 = udiv i64 %28, 8
  %div20 = udiv i64 %div19, 8
  %arrayidx21 = getelementptr inbounds i64, i64* %27, i64 %div20
  %29 = load i64, i64* %arrayidx21, align 8
  %add = add i64 %29, %25
  store i64 %add, i64* %arrayidx21, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i64 @mbedtls_mpi_core_mla(i64* noundef, i64 noundef, i64* noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_koblitz(%struct.mbedtls_mpi* noundef %N, i64* noundef %Rp, i64 noundef %p_limbs, i64 noundef %adjust, i64 noundef %shift, i64 noundef %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %Rp.addr = alloca i64*, align 8
  %p_limbs.addr = alloca i64, align 8
  %adjust.addr = alloca i64, align 8
  %shift.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %M = alloca %struct.mbedtls_mpi, align 8
  %R = alloca %struct.mbedtls_mpi, align 8
  %Mp = alloca [6 x i64], align 16
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store i64* %Rp, i64** %Rp.addr, align 8
  store i64 %p_limbs, i64* %p_limbs.addr, align 8
  store i64 %adjust, i64* %adjust.addr, align 8
  store i64 %shift, i64* %shift.addr, align 8
  store i64 %mask, i64* %mask.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %2 = load i64, i64* %p_limbs.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %R, i32 0, i32 0
  store i32 1, i32* %s, align 8
  %3 = load i64*, i64** %Rp.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %R, i32 0, i32 2
  store i64* %3, i64** %p, align 8
  %n1 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %R, i32 0, i32 1
  store i64 1, i64* %n1, align 8
  %s2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 0
  store i32 1, i32* %s2, align 8
  %arraydecay = getelementptr inbounds [6 x i64], [6 x i64]* %Mp, i64 0, i64 0
  %p3 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 2
  store i64* %arraydecay, i64** %p3, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n4 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n4, align 8
  %6 = load i64, i64* %p_limbs.addr, align 8
  %7 = load i64, i64* %adjust.addr, align 8
  %sub = sub i64 %6, %7
  %sub5 = sub i64 %5, %sub
  %n6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %sub5, i64* %n6, align 8
  %n7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %8 = load i64, i64* %n7, align 8
  %9 = load i64, i64* %p_limbs.addr, align 8
  %10 = load i64, i64* %adjust.addr, align 8
  %add = add i64 %9, %10
  %cmp8 = icmp ugt i64 %8, %add
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %11 = load i64, i64* %p_limbs.addr, align 8
  %12 = load i64, i64* %adjust.addr, align 8
  %add10 = add i64 %11, %12
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %add10, i64* %n11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %arraydecay13 = getelementptr inbounds [6 x i64], [6 x i64]* %Mp, i64 0, i64 0
  %13 = bitcast i64* %arraydecay13 to i8*
  %call = call i8* @memset(i8* noundef %13, i32 noundef 0, i64 noundef 48) #5
  %arraydecay14 = getelementptr inbounds [6 x i64], [6 x i64]* %Mp, i64 0, i64 0
  %14 = bitcast i64* %arraydecay14 to i8*
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %15, i32 0, i32 2
  %16 = load i64*, i64** %p15, align 8
  %17 = load i64, i64* %p_limbs.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %16, i64 %17
  %18 = load i64, i64* %adjust.addr, align 8
  %idx.neg = sub i64 0, %18
  %add.ptr16 = getelementptr inbounds i64, i64* %add.ptr, i64 %idx.neg
  %19 = bitcast i64* %add.ptr16 to i8*
  %n17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %20 = load i64, i64* %n17, align 8
  %mul = mul i64 %20, 8
  %call18 = call i8* @memcpy(i8* noundef %14, i8* noundef %19, i64 noundef %mul) #5
  %21 = load i64, i64* %shift.addr, align 8
  %cmp19 = icmp ne i64 %21, 0
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end12
  br label %do.body

do.body:                                          ; preds = %if.then20
  %22 = load i64, i64* %shift.addr, align 8
  %call21 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %M, i64 noundef %22) #4
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body
  br label %cleanup

if.end24:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end24
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end12
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %R, i32 0, i32 1
  %23 = load i64, i64* %n26, align 8
  %n27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %24 = load i64, i64* %n27, align 8
  %add28 = add i64 %24, %23
  store i64 %add28, i64* %n27, align 8
  %25 = load i64, i64* %mask.addr, align 8
  %cmp29 = icmp ne i64 %25, 0
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  %26 = load i64, i64* %mask.addr, align 8
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i32 0, i32 2
  %28 = load i64*, i64** %p31, align 8
  %29 = load i64, i64* %p_limbs.addr, align 8
  %sub32 = sub i64 %29, 1
  %arrayidx = getelementptr inbounds i64, i64* %28, i64 %sub32
  %30 = load i64, i64* %arrayidx, align 8
  %and = and i64 %30, %26
  store i64 %and, i64* %arrayidx, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25
  %31 = load i64, i64* %p_limbs.addr, align 8
  store i64 %31, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %33, i32 0, i32 1
  %34 = load i64, i64* %n34, align 8
  %cmp35 = icmp ult i64 %32, %34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i32 0, i32 2
  %36 = load i64*, i64** %p36, align 8
  %37 = load i64, i64* %i, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 0, i64* %arrayidx37, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %do.body38

do.body38:                                        ; preds = %for.end
  %call39 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %R) #4
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.body38
  br label %cleanup

if.end42:                                         ; preds = %do.body38
  br label %do.end43

do.end43:                                         ; preds = %if.end42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call45 = call i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %39, %struct.mbedtls_mpi* noundef %40, %struct.mbedtls_mpi* noundef %M) #4
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.body44
  br label %cleanup

if.end48:                                         ; preds = %do.body44
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %41 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n50 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %41, i32 0, i32 1
  %42 = load i64, i64* %n50, align 8
  %43 = load i64, i64* %p_limbs.addr, align 8
  %44 = load i64, i64* %adjust.addr, align 8
  %sub51 = sub i64 %43, %44
  %sub52 = sub i64 %42, %sub51
  %n53 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %sub52, i64* %n53, align 8
  %n54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %45 = load i64, i64* %n54, align 8
  %46 = load i64, i64* %p_limbs.addr, align 8
  %47 = load i64, i64* %adjust.addr, align 8
  %add55 = add i64 %46, %47
  %cmp56 = icmp ugt i64 %45, %add55
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %do.end49
  %48 = load i64, i64* %p_limbs.addr, align 8
  %49 = load i64, i64* %adjust.addr, align 8
  %add58 = add i64 %48, %49
  %n59 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  store i64 %add58, i64* %n59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %do.end49
  %arraydecay61 = getelementptr inbounds [6 x i64], [6 x i64]* %Mp, i64 0, i64 0
  %50 = bitcast i64* %arraydecay61 to i8*
  %call62 = call i8* @memset(i8* noundef %50, i32 noundef 0, i64 noundef 48) #5
  %arraydecay63 = getelementptr inbounds [6 x i64], [6 x i64]* %Mp, i64 0, i64 0
  %51 = bitcast i64* %arraydecay63 to i8*
  %52 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p64 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %52, i32 0, i32 2
  %53 = load i64*, i64** %p64, align 8
  %54 = load i64, i64* %p_limbs.addr, align 8
  %add.ptr65 = getelementptr inbounds i64, i64* %53, i64 %54
  %55 = load i64, i64* %adjust.addr, align 8
  %idx.neg66 = sub i64 0, %55
  %add.ptr67 = getelementptr inbounds i64, i64* %add.ptr65, i64 %idx.neg66
  %56 = bitcast i64* %add.ptr67 to i8*
  %n68 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %57 = load i64, i64* %n68, align 8
  %mul69 = mul i64 %57, 8
  %call70 = call i8* @memcpy(i8* noundef %51, i8* noundef %56, i64 noundef %mul69) #5
  %58 = load i64, i64* %shift.addr, align 8
  %cmp71 = icmp ne i64 %58, 0
  br i1 %cmp71, label %if.then72, label %if.end79

if.then72:                                        ; preds = %if.end60
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  %59 = load i64, i64* %shift.addr, align 8
  %call74 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %M, i64 noundef %59) #4
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %do.body73
  br label %cleanup

if.end77:                                         ; preds = %do.body73
  br label %do.end78

do.end78:                                         ; preds = %if.end77
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %if.end60
  %n80 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %R, i32 0, i32 1
  %60 = load i64, i64* %n80, align 8
  %n81 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %M, i32 0, i32 1
  %61 = load i64, i64* %n81, align 8
  %add82 = add i64 %61, %60
  store i64 %add82, i64* %n81, align 8
  %62 = load i64, i64* %mask.addr, align 8
  %cmp83 = icmp ne i64 %62, 0
  br i1 %cmp83, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end79
  %63 = load i64, i64* %mask.addr, align 8
  %64 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p85 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %64, i32 0, i32 2
  %65 = load i64*, i64** %p85, align 8
  %66 = load i64, i64* %p_limbs.addr, align 8
  %sub86 = sub i64 %66, 1
  %arrayidx87 = getelementptr inbounds i64, i64* %65, i64 %sub86
  %67 = load i64, i64* %arrayidx87, align 8
  %and88 = and i64 %67, %63
  store i64 %and88, i64* %arrayidx87, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end79
  %68 = load i64, i64* %p_limbs.addr, align 8
  store i64 %68, i64* %i, align 8
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc96, %if.end89
  %69 = load i64, i64* %i, align 8
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %n91 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i32 0, i32 1
  %71 = load i64, i64* %n91, align 8
  %cmp92 = icmp ult i64 %69, %71
  br i1 %cmp92, label %for.body93, label %for.end98

for.body93:                                       ; preds = %for.cond90
  %72 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p94 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %72, i32 0, i32 2
  %73 = load i64*, i64** %p94, align 8
  %74 = load i64, i64* %i, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 0, i64* %arrayidx95, align 8
  br label %for.inc96

for.inc96:                                        ; preds = %for.body93
  %75 = load i64, i64* %i, align 8
  %inc97 = add i64 %75, 1
  store i64 %inc97, i64* %i, align 8
  br label %for.cond90, !llvm.loop !17

for.end98:                                        ; preds = %for.cond90
  br label %do.body99

do.body99:                                        ; preds = %for.end98
  %call100 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %R) #4
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body99
  br label %cleanup

if.end103:                                        ; preds = %do.body99
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %76 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %77 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call106 = call i32 @mbedtls_mpi_add_abs(%struct.mbedtls_mpi* noundef %76, %struct.mbedtls_mpi* noundef %77, %struct.mbedtls_mpi* noundef %M) #4
  store i32 %call106, i32* %ret, align 4
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %do.body105
  br label %cleanup

if.end109:                                        ; preds = %do.body105
  br label %do.end110

do.end110:                                        ; preds = %if.end109
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.then108, %if.then102, %if.then76, %if.then47, %if.then41, %if.then23
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %79 = load i32, i32* %retval, align 4
  ret i32 %79
}

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
