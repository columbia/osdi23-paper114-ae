; ModuleID = 'ssl_ciphersuites.c'
source_filename = "ssl_ciphersuites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_ciphersuite_t = type { i32, i8*, i8, i8, i8, i8, i16, i16 }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque

@supported_init = internal global i32 0, align 4
@ciphersuite_preference = internal constant [186 x i32] [i32 52392, i32 52393, i32 52394, i32 49196, i32 49200, i32 159, i32 49325, i32 49311, i32 49188, i32 49192, i32 107, i32 49162, i32 49172, i32 57, i32 49327, i32 49315, i32 49287, i32 49291, i32 49277, i32 49267, i32 49271, i32 196, i32 136, i32 49245, i32 49249, i32 49235, i32 49225, i32 49229, i32 49221, i32 49195, i32 49199, i32 158, i32 49324, i32 49310, i32 49187, i32 49191, i32 103, i32 49161, i32 49171, i32 51, i32 49326, i32 49314, i32 49286, i32 49290, i32 49276, i32 49266, i32 49270, i32 190, i32 69, i32 49244, i32 49248, i32 49234, i32 49224, i32 49228, i32 49220, i32 52396, i32 52397, i32 171, i32 49319, i32 49208, i32 179, i32 49206, i32 145, i32 49297, i32 49307, i32 49303, i32 49323, i32 49261, i32 49265, i32 49255, i32 170, i32 49318, i32 49207, i32 178, i32 49205, i32 144, i32 49296, i32 49302, i32 49306, i32 49322, i32 49260, i32 49264, i32 49254, i32 49407, i32 157, i32 49309, i32 61, i32 53, i32 49202, i32 49194, i32 49167, i32 49198, i32 49190, i32 49157, i32 49313, i32 49275, i32 192, i32 132, i32 49293, i32 49273, i32 49289, i32 49269, i32 49247, i32 49251, i32 49233, i32 49227, i32 49231, i32 49213, i32 156, i32 49308, i32 60, i32 47, i32 49201, i32 49193, i32 49166, i32 49197, i32 49189, i32 49156, i32 49312, i32 49274, i32 186, i32 65, i32 49292, i32 49272, i32 49288, i32 49268, i32 49246, i32 49250, i32 49232, i32 49226, i32 49230, i32 49212, i32 52398, i32 173, i32 183, i32 149, i32 49299, i32 49305, i32 49263, i32 49257, i32 172, i32 182, i32 148, i32 49298, i32 49304, i32 49262, i32 49256, i32 52395, i32 169, i32 49317, i32 175, i32 141, i32 49295, i32 49301, i32 49321, i32 49259, i32 49253, i32 168, i32 49316, i32 174, i32 140, i32 49294, i32 49300, i32 49320, i32 49258, i32 49252, i32 49158, i32 49168, i32 49211, i32 49210, i32 49209, i32 181, i32 180, i32 45, i32 59, i32 2, i32 1, i32 49163, i32 49153, i32 185, i32 184, i32 46, i32 177, i32 176, i32 44, i32 0], align 16
@supported_ciphersuites = internal global [166 x i32] zeroinitializer, align 16
@ciphersuite_definitions = internal constant [166 x %struct.mbedtls_ssl_ciphersuite_t] [%struct.mbedtls_ssl_ciphersuite_t { i32 52392, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8 77, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52393, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8 77, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52394, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8 77, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52395, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8 77, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52396, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8 77, i8 4, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52397, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8 77, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 52398, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8 77, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i8 5, i8 2, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8 7, i8 2, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49187, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i8 5, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8 14, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8 7, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49196, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8 16, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49325, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8 40, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49327, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i8 40, i8 4, i8 4, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49324, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8 38, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49326, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8 38, i8 4, i8 4, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49266, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8 20, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49267, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i8 22, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49286, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0), i8 29, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49287, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i8 31, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i8 5, i8 2, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8 7, i8 2, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i8 5, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0), i8 14, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i8 7, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0), i8 16, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), i8 20, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0), i8 22, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49290, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0), i8 29, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49291, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0), i8 31, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8 16, i8 5, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0), i8 14, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i8 5, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0), i8 7, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i8 5, i8 2, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8 7, i8 2, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), i8 40, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49315, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0), i8 40, i8 4, i8 2, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49310, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8 38, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49314, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8 38, i8 4, i8 2, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i8 20, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0), i8 22, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0), i8 20, i8 2, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0), i8 22, i8 2, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49276, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0), i8 29, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49277, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i32 0, i32 0), i8 31, i8 5, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i8 16, i8 5, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0), i8 14, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0), i8 5, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i32 0, i32 0), i8 7, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0), i8 5, i8 2, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0), i8 7, i8 2, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49309, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8 40, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49313, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i8 40, i8 4, i8 1, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49308, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0), i8 38, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i8 38, i8 4, i8 1, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0), i8 20, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0), i8 22, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i8 20, i8 2, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0), i8 22, i8 2, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49274, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0), i8 29, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i32 0, i32 0), i8 31, i8 5, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i32 0, i32 0), i8 5, i8 2, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8 7, i8 2, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i32 0, i32 0), i8 5, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i32 0, i32 0), i8 14, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0), i8 7, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.69, i32 0, i32 0), i8 16, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49272, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0), i8 20, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49273, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i32 0, i32 0), i8 22, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49292, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i32 0, i32 0), i8 29, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49293, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.73, i32 0, i32 0), i8 31, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0), i8 5, i8 2, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i32 0, i32 0), i8 7, i8 2, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i32 0, i32 0), i8 5, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49197, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i32 0, i32 0), i8 14, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i32 0, i32 0), i8 7, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.79, i32 0, i32 0), i8 16, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49268, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i32 0, i32 0), i8 20, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49269, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0), i8 22, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49288, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i32 0, i32 0), i8 29, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49289, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i32 0, i32 0), i8 31, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i32 0, i32 0), i8 14, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0), i8 16, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i32 0, i32 0), i8 5, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.87, i32 0, i32 0), i8 7, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i32 0, i32 0), i8 5, i8 2, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.89, i32 0, i32 0), i8 7, i8 2, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49317, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i32 0, i32 0), i8 40, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49321, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), i8 40, i8 4, i8 5, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49316, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i32 0, i32 0), i8 38, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), i8 38, i8 4, i8 5, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49300, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.94, i32 0, i32 0), i8 20, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49301, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.95, i32 0, i32 0), i8 22, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.96, i32 0, i32 0), i8 29, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49295, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i32 0, i32 0), i8 31, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0), i8 14, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.99, i32 0, i32 0), i8 16, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0), i8 5, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0), i8 7, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i32 0, i32 0), i8 5, i8 2, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i32 0, i32 0), i8 7, i8 2, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8 40, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49323, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0), i8 40, i8 4, i8 6, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49318, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0), i8 38, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49322, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i32 0, i32 0), i8 38, i8 4, i8 6, i8 2, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49302, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.108, i32 0, i32 0), i8 20, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49303, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0), i8 22, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49296, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.110, i32 0, i32 0), i8 29, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49297, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.111, i32 0, i32 0), i8 31, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.112, i32 0, i32 0), i8 5, i8 4, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i32 0, i32 0), i8 7, i8 5, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.114, i32 0, i32 0), i8 5, i8 2, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.115, i32 0, i32 0), i8 7, i8 2, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49306, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.116, i32 0, i32 0), i8 20, i8 4, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49307, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.117, i32 0, i32 0), i8 22, i8 5, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i32 0, i32 0), i8 14, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.119, i32 0, i32 0), i8 16, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.120, i32 0, i32 0), i8 5, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.121, i32 0, i32 0), i8 7, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.122, i32 0, i32 0), i8 5, i8 2, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.123, i32 0, i32 0), i8 7, i8 2, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49304, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.124, i32 0, i32 0), i8 20, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.125, i32 0, i32 0), i8 22, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49298, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.126, i32 0, i32 0), i8 29, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49299, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.127, i32 0, i32 0), i8 31, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i32 0, i32 0), i8 64, i8 5, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0), i8 55, i8 5, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.130, i32 0, i32 0), i8 62, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.131, i32 0, i32 0), i8 53, i8 4, i8 1, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.132, i32 0, i32 0), i8 64, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49257, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i32 0, i32 0), i8 55, i8 5, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49262, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.134, i32 0, i32 0), i8 62, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49256, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.135, i32 0, i32 0), i8 53, i8 4, i8 7, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49259, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.136, i32 0, i32 0), i8 64, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i8 55, i8 5, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.138, i32 0, i32 0), i8 62, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.139, i32 0, i32 0), i8 53, i8 4, i8 5, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.140, i32 0, i32 0), i8 64, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.141, i32 0, i32 0), i8 55, i8 5, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.142, i32 0, i32 0), i8 62, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49230, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.143, i32 0, i32 0), i8 53, i8 4, i8 9, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49249, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.144, i32 0, i32 0), i8 64, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49229, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.145, i32 0, i32 0), i8 55, i8 5, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.146, i32 0, i32 0), i8 62, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49228, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.147, i32 0, i32 0), i8 53, i8 4, i8 3, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49265, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.148, i32 0, i32 0), i8 55, i8 5, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.149, i32 0, i32 0), i8 53, i8 4, i8 8, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49245, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.150, i32 0, i32 0), i8 64, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49225, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.151, i32 0, i32 0), i8 55, i8 5, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49244, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.152, i32 0, i32 0), i8 62, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49224, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.153, i32 0, i32 0), i8 53, i8 4, i8 4, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49247, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.154, i32 0, i32 0), i8 64, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49227, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.155, i32 0, i32 0), i8 55, i8 5, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49246, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.156, i32 0, i32 0), i8 62, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.157, i32 0, i32 0), i8 53, i8 4, i8 10, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49235, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.158, i32 0, i32 0), i8 64, i8 5, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.159, i32 0, i32 0), i8 55, i8 5, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49234, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.160, i32 0, i32 0), i8 62, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49220, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.161, i32 0, i32 0), i8 53, i8 4, i8 2, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49261, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.162, i32 0, i32 0), i8 64, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.163, i32 0, i32 0), i8 55, i8 5, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49260, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.164, i32 0, i32 0), i8 62, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 49254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.165, i32 0, i32 0), i8 53, i8 4, i8 6, i8 0, i16 771, i16 771 }, %struct.mbedtls_ssl_ciphersuite_t { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i32 0, i32 0), i8 0, i8 0, i8 0, i8 0, i16 0, i16 0 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"TLS-PSK-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"TLS-ECDHE-PSK-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"TLS-DHE-PSK-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"TLS-RSA-PSK-WITH-CHACHA20-POLY1305-SHA256\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-256-CCM\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-256-CCM-8\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-128-CCM\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-ECDSA-WITH-AES-128-CCM-8\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"TLS-ECDHE-ECDSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"TLS-ECDHE-ECDSA-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"TLS-ECDHE-ECDSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"TLS-ECDHE-ECDSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-RSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-RSA-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-RSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-RSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"TLS-DHE-RSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"TLS-DHE-RSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"TLS-DHE-RSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"TLS-DHE-RSA-WITH-AES-256-CBC-SHA256\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"TLS-DHE-RSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"TLS-DHE-RSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"TLS-DHE-RSA-WITH-AES-256-CCM\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"TLS-DHE-RSA-WITH-AES-256-CCM-8\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"TLS-DHE-RSA-WITH-AES-128-CCM\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"TLS-DHE-RSA-WITH-AES-128-CCM-8\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"TLS-DHE-RSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"TLS-RSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"TLS-RSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"TLS-RSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"TLS-RSA-WITH-AES-256-CBC-SHA256\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"TLS-RSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"TLS-RSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"TLS-RSA-WITH-AES-256-CCM\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"TLS-RSA-WITH-AES-256-CCM-8\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"TLS-RSA-WITH-AES-128-CCM\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"TLS-RSA-WITH-AES-128-CCM-8\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"TLS-RSA-WITH-CAMELLIA-128-CBC-SHA\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"TLS-RSA-WITH-CAMELLIA-256-CBC-SHA\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"TLS-RSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"TLS-RSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"TLS-ECDH-RSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"TLS-ECDH-RSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"TLS-ECDH-RSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"TLS-ECDH-RSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"TLS-ECDH-RSA-WITH-AES-256-CBC-SHA384\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"TLS-ECDH-RSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"TLS-ECDH-RSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"TLS-ECDH-RSA-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"TLS-ECDH-RSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"TLS-ECDH-RSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA256\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"TLS-ECDH-ECDSA-WITH-AES-128-GCM-SHA256\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA384\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"TLS-ECDH-ECDSA-WITH-AES-256-GCM-SHA384\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"TLS-ECDH-ECDSA-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"TLS-ECDH-ECDSA-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"TLS-ECDH-ECDSA-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.83 = private unnamed_addr constant [44 x i8] c"TLS-ECDH-ECDSA-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"TLS-PSK-WITH-AES-128-GCM-SHA256\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"TLS-PSK-WITH-AES-256-GCM-SHA384\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"TLS-PSK-WITH-AES-128-CBC-SHA256\00", align 1
@.str.87 = private unnamed_addr constant [32 x i8] c"TLS-PSK-WITH-AES-256-CBC-SHA384\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"TLS-PSK-WITH-AES-128-CBC-SHA\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"TLS-PSK-WITH-AES-256-CBC-SHA\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"TLS-PSK-WITH-AES-256-CCM\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"TLS-PSK-WITH-AES-256-CCM-8\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"TLS-PSK-WITH-AES-128-CCM\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"TLS-PSK-WITH-AES-128-CCM-8\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"TLS-PSK-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"TLS-PSK-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"TLS-PSK-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"TLS-PSK-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"TLS-DHE-PSK-WITH-AES-128-GCM-SHA256\00", align 1
@.str.99 = private unnamed_addr constant [36 x i8] c"TLS-DHE-PSK-WITH-AES-256-GCM-SHA384\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"TLS-DHE-PSK-WITH-AES-128-CBC-SHA256\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"TLS-DHE-PSK-WITH-AES-256-CBC-SHA384\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"TLS-DHE-PSK-WITH-AES-128-CBC-SHA\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"TLS-DHE-PSK-WITH-AES-256-CBC-SHA\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"TLS-DHE-PSK-WITH-AES-256-CCM\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"TLS-DHE-PSK-WITH-AES-256-CCM-8\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"TLS-DHE-PSK-WITH-AES-128-CCM\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"TLS-DHE-PSK-WITH-AES-128-CCM-8\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"TLS-DHE-PSK-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"TLS-DHE-PSK-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"TLS-DHE-PSK-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.111 = private unnamed_addr constant [41 x i8] c"TLS-DHE-PSK-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA256\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA384\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-PSK-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.117 = private unnamed_addr constant [43 x i8] c"TLS-ECDHE-PSK-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"TLS-RSA-PSK-WITH-AES-128-GCM-SHA256\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"TLS-RSA-PSK-WITH-AES-256-GCM-SHA384\00", align 1
@.str.120 = private unnamed_addr constant [36 x i8] c"TLS-RSA-PSK-WITH-AES-128-CBC-SHA256\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"TLS-RSA-PSK-WITH-AES-256-CBC-SHA384\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"TLS-RSA-PSK-WITH-AES-128-CBC-SHA\00", align 1
@.str.123 = private unnamed_addr constant [33 x i8] c"TLS-RSA-PSK-WITH-AES-256-CBC-SHA\00", align 1
@.str.124 = private unnamed_addr constant [41 x i8] c"TLS-RSA-PSK-WITH-CAMELLIA-128-CBC-SHA256\00", align 1
@.str.125 = private unnamed_addr constant [41 x i8] c"TLS-RSA-PSK-WITH-CAMELLIA-256-CBC-SHA384\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"TLS-RSA-PSK-WITH-CAMELLIA-128-GCM-SHA256\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"TLS-RSA-PSK-WITH-CAMELLIA-256-GCM-SHA384\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"TLS-RSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"TLS-RSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.130 = private unnamed_addr constant [33 x i8] c"TLS-RSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"TLS-RSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"TLS-RSA-PSK-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"TLS-RSA-PSK-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.134 = private unnamed_addr constant [37 x i8] c"TLS-RSA-PSK-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.135 = private unnamed_addr constant [37 x i8] c"TLS-RSA-PSK-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.136 = private unnamed_addr constant [33 x i8] c"TLS-PSK-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"TLS-PSK-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"TLS-PSK-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"TLS-PSK-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.140 = private unnamed_addr constant [38 x i8] c"TLS-ECDH-RSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"TLS-ECDH-RSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"TLS-ECDH-RSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.143 = private unnamed_addr constant [38 x i8] c"TLS-ECDH-RSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.144 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-RSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.146 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-RSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.148 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-PSK-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.149 = private unnamed_addr constant [39 x i8] c"TLS-ECDHE-PSK-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.150 = private unnamed_addr constant [41 x i8] c"TLS-ECDHE-ECDSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.151 = private unnamed_addr constant [41 x i8] c"TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.152 = private unnamed_addr constant [41 x i8] c"TLS-ECDHE-ECDSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.153 = private unnamed_addr constant [41 x i8] c"TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.154 = private unnamed_addr constant [40 x i8] c"TLS-ECDH-ECDSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.155 = private unnamed_addr constant [40 x i8] c"TLS-ECDH-ECDSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.156 = private unnamed_addr constant [40 x i8] c"TLS-ECDH-ECDSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.157 = private unnamed_addr constant [40 x i8] c"TLS-ECDH-ECDSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"TLS-DHE-RSA-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.159 = private unnamed_addr constant [37 x i8] c"TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.160 = private unnamed_addr constant [37 x i8] c"TLS-DHE-RSA-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"TLS-DHE-PSK-WITH-ARIA-256-GCM-SHA384\00", align 1
@.str.163 = private unnamed_addr constant [37 x i8] c"TLS-DHE-PSK-WITH-ARIA-256-CBC-SHA384\00", align 1
@.str.164 = private unnamed_addr constant [37 x i8] c"TLS-DHE-PSK-WITH-ARIA-128-GCM-SHA256\00", align 1
@.str.165 = private unnamed_addr constant [37 x i8] c"TLS-DHE-PSK-WITH-ARIA-128-CBC-SHA256\00", align 1
@.str.166 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_ssl_list_ciphersuites() #0 {
entry:
  %p = alloca i32*, align 8
  %q = alloca i32*, align 8
  %cs_info = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %0 = load i32, i32* @supported_init, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([186 x i32], [186 x i32]* @ciphersuite_preference, i64 0, i64 0), i32** %p, align 8
  store i32* getelementptr inbounds ([166 x i32], [166 x i32]* @supported_ciphersuites, i64 0, i64 0), i32** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32*, i32** %p, align 8
  %2 = load i32, i32* %1, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32*, i32** %q, align 8
  %cmp2 = icmp ult i32* %3, getelementptr inbounds ([166 x i32], [166 x i32]* @supported_ciphersuites, i64 1, i64 -1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32*, i32** %p, align 8
  %6 = load i32, i32* %5, align 4
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %6) #3
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %cs_info, align 8
  %cmp3 = icmp ne %struct.mbedtls_ssl_ciphersuite_t* %call, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cs_info, align 8
  %call4 = call i32 @ciphersuite_is_removed(%struct.mbedtls_ssl_ciphersuite_t* noundef %7) #3
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %8 = load i32*, i32** %p, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %q, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %q, align 8
  store i32 %9, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32*, i32** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr6, i32** %p, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %12 = load i32*, i32** %q, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* @supported_init, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.end, %entry
  ret i32* getelementptr inbounds ([166 x i32], [166 x i32]* @supported_ciphersuites, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %ciphersuite) #0 {
entry:
  %retval = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ciphersuite.addr = alloca i32, align 4
  %cur = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store i32 %ciphersuite, i32* %ciphersuite.addr, align 4
  store %struct.mbedtls_ssl_ciphersuite_t* getelementptr inbounds ([166 x %struct.mbedtls_ssl_ciphersuite_t], [166 x %struct.mbedtls_ssl_ciphersuite_t]* @ciphersuite_definitions, i64 0, i64 0), %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %id1 = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %2, i32 0, i32 0
  %3 = load i32, i32* %id1, align 8
  %4 = load i32, i32* %ciphersuite.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %5, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %6, i32 1
  store %struct.mbedtls_ssl_ciphersuite_t* %incdec.ptr, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store %struct.mbedtls_ssl_ciphersuite_t* null, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  ret %struct.mbedtls_ssl_ciphersuite_t* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciphersuite_is_removed(%struct.mbedtls_ssl_ciphersuite_t* noundef %cs_info) #0 {
entry:
  %cs_info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %cs_info, %struct.mbedtls_ssl_ciphersuite_t** %cs_info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cs_info.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_string(i8* noundef %ciphersuite_name) #0 {
entry:
  %retval = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %ciphersuite_name.addr = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store i8* %ciphersuite_name, i8** %ciphersuite_name.addr, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* getelementptr inbounds ([166 x %struct.mbedtls_ssl_ciphersuite_t], [166 x %struct.mbedtls_ssl_ciphersuite_t]* @ciphersuite_definitions, i64 0, i64 0), %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %0 = load i8*, i8** %ciphersuite_name.addr, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mbedtls_ssl_ciphersuite_t* null, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** %ciphersuite_name.addr, align 8
  %call = call i32 @strcmp(i8* noundef %4, i8* noundef %5) #4
  %cmp2 = icmp eq i32 0, %call
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %6 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %6, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %7 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %7, i32 1
  store %struct.mbedtls_ssl_ciphersuite_t* %incdec.ptr, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store %struct.mbedtls_ssl_ciphersuite_t* null, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %8 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %retval, align 8
  ret %struct.mbedtls_ssl_ciphersuite_t* %8
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbedtls_ssl_get_ciphersuite_name(i32 noundef %ciphersuite_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %ciphersuite_id.addr = alloca i32, align 4
  %cur = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store i32 %ciphersuite_id, i32* %ciphersuite_id.addr, align 4
  %0 = load i32, i32* %ciphersuite_id.addr, align 4
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_id(i32 noundef %0) #3
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %name = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_ciphersuite_id(i8* noundef %ciphersuite_name) #0 {
entry:
  %retval = alloca i32, align 4
  %ciphersuite_name.addr = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store i8* %ciphersuite_name, i8** %ciphersuite_name.addr, align 8
  %0 = load i8*, i8** %ciphersuite_name.addr, align 8
  %call = call %struct.mbedtls_ssl_ciphersuite_t* @mbedtls_ssl_ciphersuite_from_string(i8* noundef %0) #3
  store %struct.mbedtls_ssl_ciphersuite_t* %call, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %1 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_ciphersuite_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %cur, align 8
  %id = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %2, i32 0, i32 0
  %3 = load i32, i32* %id, align 8
  store i32 %3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ssl_ciphersuite_get_cipher_key_bitlen(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %cipher = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 2
  %1 = load i8, i8* %cipher, align 8
  %conv = zext i8 %1 to i32
  %call = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %conv) #3
  store %struct.mbedtls_cipher_info_t* %call, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %2 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call1 = call i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %2) #3
  ret i64 %call1
}

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_cipher_info_get_key_bitlen(%struct.mbedtls_cipher_info_t* noundef %info) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca %struct.mbedtls_cipher_info_t*, align 8
  store %struct.mbedtls_cipher_info_t* %info, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %0 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %cmp = icmp eq %struct.mbedtls_cipher_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %info.addr, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %1, i32 0, i32 2
  %2 = load i32, i32* %key_bitlen, align 8
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 4, label %sw.bb1
    i32 9, label %sw.bb2
    i32 10, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry, %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_get_ciphersuite_sig_alg(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ciphersuite_uses_ec(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ciphersuite_uses_psk(%struct.mbedtls_ssl_ciphersuite_t* noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.mbedtls_ssl_ciphersuite_t*, align 8
  store %struct.mbedtls_ssl_ciphersuite_t* %info, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %0 = load %struct.mbedtls_ssl_ciphersuite_t*, %struct.mbedtls_ssl_ciphersuite_t** %info.addr, align 8
  %key_exchange = getelementptr inbounds %struct.mbedtls_ssl_ciphersuite_t, %struct.mbedtls_ssl_ciphersuite_t* %0, i32 0, i32 4
  %1 = load i8, i8* %key_exchange, align 2
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
