; ModuleID = 'oid.c'
source_filename = "oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_sig_alg_t = type { %struct.mbedtls_oid_descriptor_t, i32, i32 }
%struct.mbedtls_oid_descriptor_t = type { i8*, i64, i8*, i8* }
%struct.oid_pk_alg_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_ecp_grp_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_md_alg_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_x520_attr_t = type { %struct.mbedtls_oid_descriptor_t, i8* }
%struct.oid_x509_ext_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_cipher_alg_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_md_hmac_t = type { %struct.mbedtls_oid_descriptor_t, i32 }
%struct.oid_pkcs12_pbe_alg_t = type { %struct.mbedtls_oid_descriptor_t, i32, i32 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

@oid_sig_alg = internal constant [14 x %struct.oid_sig_alg_t] [%struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0) }, i32 1, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i32 0, i32 0) }, i32 2, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i32 0, i32 0) }, i32 3, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0) }, i32 4, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.137, i32 0, i32 0) }, i32 5, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0) }, i32 6, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i32 0, i32 0) }, i32 2, i32 1 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0) }, i32 2, i32 4 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0) }, i32 3, i32 4 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0) }, i32 4, i32 4 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.153, i32 0, i32 0) }, i32 5, i32 4 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, i32 6, i32 4 }, %struct.oid_sig_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0) }, i32 0, i32 6 }, %struct.oid_sig_alg_t zeroinitializer], align 16
@oid_pk_alg = internal constant [4 x %struct.oid_pk_alg_t] [%struct.oid_pk_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0) }, i32 1 }, %struct.oid_pk_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.164, i32 0, i32 0) }, i32 2 }, %struct.oid_pk_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.167, i32 0, i32 0) }, i32 3 }, %struct.oid_pk_alg_t zeroinitializer], align 16
@oid_ecp_grp = internal constant [12 x %struct.oid_ecp_grp_t] [%struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0) }, i32 1 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0) }, i32 2 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0) }, i32 3 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i32 0, i32 0) }, i32 4 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i32 0, i32 0) }, i32 5 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i32 0, i32 0) }, i32 10 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.181, i32 0, i32 0) }, i32 11 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0) }, i32 12 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.184, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.186, i32 0, i32 0) }, i32 6 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.189, i32 0, i32 0) }, i32 7 }, %struct.oid_ecp_grp_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.190, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.192, i32 0, i32 0) }, i32 8 }, %struct.oid_ecp_grp_t zeroinitializer], align 16
@oid_md_alg = internal constant [8 x %struct.oid_md_alg_t] [%struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0) }, i32 1 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i32 0, i32 0) }, i32 2 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.205, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.207, i32 0, i32 0) }, i32 3 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.208, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0) }, i32 4 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i32 0, i32 0) }, i32 5 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i32 0, i32 0) }, i32 6 }, %struct.oid_md_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.219, i32 0, i32 0) }, i32 7 }, %struct.oid_md_alg_t zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".%u\00", align 1
@oid_x520_attr_type = internal constant [21 x %struct.oid_x520_attr_t] [%struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0) }, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0) }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0) }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0) }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0) }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0) }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0) }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0) }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0) }, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0) }, %struct.oid_x520_attr_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0) }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0) }, %struct.oid_x520_attr_t zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"U\04\03\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"id-at-commonName\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Common Name\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"U\04\06\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"id-at-countryName\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"U\04\07\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"id-at-locality\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Locality\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"U\04\08\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"id-at-state\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"U\04\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"id-at-organizationName\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Organization\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"U\04\0B\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"id-at-organizationalUnitName\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Org Unit\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\09\01\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"emailAddress\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"E-mail address\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"U\04\05\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"id-at-serialNumber\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Serial number\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"U\04\10\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"id-at-postalAddress\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Postal address\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"postalAddress\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"U\04\11\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"id-at-postalCode\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Postal code\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"postalCode\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"U\04\04\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"id-at-surName\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"Surname\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"U\04*\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"id-at-givenName\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Given name\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"U\04+\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"id-at-initials\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Initials\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"initials\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"U\04,\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"id-at-generationQualifier\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Generation qualifier\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"generationQualifier\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"U\04\0C\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"id-at-title\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"U\04.\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"id-at-dnQualifier\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Distinguished Name qualifier\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"dnQualifier\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"U\04A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"id-at-pseudonym\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"Pseudonym\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"pseudonym\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"\09\92&\89\93\F2,d\01\01\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"id-uid\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"User Id\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"\09\92&\89\93\F2,d\01\19\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"id-domainComponent\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"Domain component\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"U\04-\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"id-at-uniqueIdentifier\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"Unique Identifier\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"uniqueIdentifier\00", align 1
@oid_x509_ext = internal constant [7 x %struct.oid_x509_ext_t] [%struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0) }, i32 256 }, %struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0) }, i32 4 }, %struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i32 0, i32 0) }, i32 2048 }, %struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0) }, i32 32 }, %struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0) }, i32 65536 }, %struct.oid_x509_ext_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0) }, i32 8 }, %struct.oid_x509_ext_t zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [4 x i8] c"U\1D\13\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"id-ce-basicConstraints\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Basic Constraints\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"U\1D\0F\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"id-ce-keyUsage\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"Key Usage\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"U\1D%\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"id-ce-extKeyUsage\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"Extended Key Usage\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"U\1D\11\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"id-ce-subjectAltName\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"Subject Alt Name\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"`\86H\01\86\F8B\01\01\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"id-netscape-certtype\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"Netscape Certificate Type\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"U\1D \00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"id-ce-certificatePolicies\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"Certificate Policies\00", align 1
@oid_ext_key_usage = internal constant [8 x %struct.mbedtls_oid_descriptor_t] [%struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.104, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.119, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t zeroinitializer], align 16
@.str.99 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\01\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"id-kp-serverAuth\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"TLS Web Server Authentication\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\02\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"id-kp-clientAuth\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"TLS Web Client Authentication\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\03\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"id-kp-codeSigning\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Code Signing\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\04\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"id-kp-emailProtection\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"E-mail Protection\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\08\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"id-kp-timeStamping\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"Time Stamping\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\03\09\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"id-kp-OCSPSigning\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"OCSP Signing\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"+\06\01\04\01\82\E4%\01\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"id-kp-wisun-fan-device\00", align 1
@.str.119 = private unnamed_addr constant [41 x i8] c"Wi-SUN Alliance Field Area Network (FAN)\00", align 1
@oid_certificate_policies = internal constant [2 x %struct.mbedtls_oid_descriptor_t] [%struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0) }, %struct.mbedtls_oid_descriptor_t zeroinitializer], align 16
@.str.120 = private unnamed_addr constant [5 x i8] c"U\1D \00\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"anyPolicy\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"Any Policy\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\04\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"md5WithRSAEncryption\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"RSA with MD5\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\05\00", align 1
@.str.127 = private unnamed_addr constant [23 x i8] c"sha-1WithRSAEncryption\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"RSA with SHA1\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\0E\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"sha224WithRSAEncryption\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"RSA with SHA-224\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\0B\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"sha256WithRSAEncryption\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"RSA with SHA-256\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\0C\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"sha384WithRSAEncryption\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"RSA with SHA-384\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\0D\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"sha512WithRSAEncryption\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"RSA with SHA-512\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"+\0E\03\02\1D\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"*\86H\CE=\04\01\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"ecdsa-with-SHA1\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"ECDSA with SHA1\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\04\03\01\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"ecdsa-with-SHA224\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"ECDSA with SHA224\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\04\03\02\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"ecdsa-with-SHA256\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"ECDSA with SHA256\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\04\03\03\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"ecdsa-with-SHA384\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"ECDSA with SHA384\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\04\03\04\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"ecdsa-with-SHA512\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"ECDSA with SHA512\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\0A\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"RSASSA-PSS\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\01\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"rsaEncryption\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"*\86H\CE=\02\01\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"id-ecPublicKey\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Generic EC key\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"+\81\04\01\0C\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"id-ecDH\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"EC key for ECDH\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\03\01\01\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"secp192r1\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"+\81\04\00!\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"secp224r1\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"*\86H\CE=\03\01\07\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"+\81\04\00\22\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"+\81\04\00#\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"+\81\04\00\1F\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"+\81\04\00 \00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"+\81\04\00\0A\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"+$\03\03\02\08\01\01\07\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"brainpool256r1\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"+$\03\03\02\08\01\01\0B\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"brainpool384r1\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"+$\03\03\02\08\01\01\0D\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"brainpool512r1\00", align 1
@oid_cipher_alg = internal constant [3 x %struct.oid_cipher_alg_t] [%struct.oid_cipher_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0) }, i32 33 }, %struct.oid_cipher_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0) }, i32 37 }, %struct.oid_cipher_alg_t zeroinitializer], align 16
@.str.193 = private unnamed_addr constant [6 x i8] c"+\0E\03\02\07\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"desCBC\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"DES-CBC\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\03\07\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"des-ede3-cbc\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"DES-EDE3-CBC\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\05\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"id-md5\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"+\0E\03\02\1A\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"id-sha1\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"SHA-1\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"`\86H\01e\03\04\02\04\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"id-sha224\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"SHA-224\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"`\86H\01e\03\04\02\01\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"id-sha256\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"SHA-256\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"`\86H\01e\03\04\02\02\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"id-sha384\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"SHA-384\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"`\86H\01e\03\04\02\03\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"id-sha512\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"SHA-512\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"+$\03\02\01\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"id-ripemd160\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"RIPEMD-160\00", align 1
@oid_md_hmac = internal constant [6 x %struct.oid_md_hmac_t] [%struct.oid_md_hmac_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0) }, i32 2 }, %struct.oid_md_hmac_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.223, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0) }, i32 3 }, %struct.oid_md_hmac_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.228, i32 0, i32 0) }, i32 4 }, %struct.oid_md_hmac_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.229, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0) }, i32 5 }, %struct.oid_md_hmac_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i32 0, i32 0) }, i32 6 }, %struct.oid_md_hmac_t zeroinitializer], align 16
@.str.220 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\07\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"hmacSHA1\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"HMAC-SHA-1\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\08\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"hmacSHA224\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"HMAC-SHA-224\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\09\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"hmacSHA256\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"HMAC-SHA-256\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\0A\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"hmacSHA384\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"HMAC-SHA-384\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"*\86H\86\F7\0D\02\0B\00", align 1
@.str.233 = private unnamed_addr constant [11 x i8] c"hmacSHA512\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"HMAC-SHA-512\00", align 1
@oid_pkcs12_pbe_alg = internal constant [3 x %struct.oid_pkcs12_pbe_alg_t] [%struct.oid_pkcs12_pbe_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.237, i32 0, i32 0) }, i32 2, i32 37 }, %struct.oid_pkcs12_pbe_alg_t { %struct.mbedtls_oid_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.240, i32 0, i32 0) }, i32 2, i32 35 }, %struct.oid_pkcs12_pbe_alg_t zeroinitializer], align 16
@.str.235 = private unnamed_addr constant [11 x i8] c"*\86H\86\F7\0D\01\0C\01\03\00", align 1
@.str.236 = private unnamed_addr constant [32 x i8] c"pbeWithSHAAnd3-KeyTripleDES-CBC\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"PBE with SHA1 and 3-Key 3DES\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"*\86H\86\F7\0D\01\0C\01\04\00", align 1
@.str.239 = private unnamed_addr constant [32 x i8] c"pbeWithSHAAnd2-KeyTripleDES-CBC\00", align 1
@.str.240 = private unnamed_addr constant [29 x i8] c"PBE with SHA1 and 2-Key 3DES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_attr_short_name(%struct.mbedtls_asn1_buf* noundef %oid, i8** noundef %short_name) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %short_name.addr = alloca i8**, align 8
  %data = alloca %struct.oid_x520_attr_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i8** %short_name, i8*** %short_name.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_x520_attr_t* @oid_x520_attr_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_x520_attr_t* %call, %struct.oid_x520_attr_t** %data, align 8
  %1 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %data, align 8
  %cmp = icmp eq %struct.oid_x520_attr_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %data, align 8
  %short_name1 = getelementptr inbounds %struct.oid_x520_attr_t, %struct.oid_x520_attr_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %short_name1, align 8
  %4 = load i8**, i8*** %short_name.addr, align 8
  store i8* %3, i8** %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_x520_attr_t* @oid_x520_attr_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_x520_attr_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_x520_attr_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_x520_attr_t* getelementptr inbounds ([21 x %struct.oid_x520_attr_t], [21 x %struct.oid_x520_attr_t]* @oid_x520_attr_type, i64 0, i64 0), %struct.oid_x520_attr_t** %p, align 8
  %0 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %p, align 8
  %1 = bitcast %struct.oid_x520_attr_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %p, align 8
  %cmp = icmp eq %struct.oid_x520_attr_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_x520_attr_t* null, %struct.oid_x520_attr_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %p, align 8
  store %struct.oid_x520_attr_t* %16, %struct.oid_x520_attr_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_x520_attr_t, %struct.oid_x520_attr_t* %17, i32 1
  store %struct.oid_x520_attr_t* %incdec.ptr, %struct.oid_x520_attr_t** %p, align 8
  %18 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %p, align 8
  %19 = bitcast %struct.oid_x520_attr_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store %struct.oid_x520_attr_t* null, %struct.oid_x520_attr_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_x520_attr_t*, %struct.oid_x520_attr_t** %retval, align 8
  ret %struct.oid_x520_attr_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_x509_ext_type(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %ext_type) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ext_type.addr = alloca i32*, align 8
  %data = alloca %struct.oid_x509_ext_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %ext_type, i32** %ext_type.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_x509_ext_t* @oid_x509_ext_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_x509_ext_t* %call, %struct.oid_x509_ext_t** %data, align 8
  %1 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %data, align 8
  %cmp = icmp eq %struct.oid_x509_ext_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %data, align 8
  %ext_type1 = getelementptr inbounds %struct.oid_x509_ext_t, %struct.oid_x509_ext_t* %2, i32 0, i32 1
  %3 = load i32, i32* %ext_type1, align 8
  %4 = load i32*, i32** %ext_type.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_x509_ext_t* @oid_x509_ext_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_x509_ext_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_x509_ext_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_x509_ext_t* getelementptr inbounds ([7 x %struct.oid_x509_ext_t], [7 x %struct.oid_x509_ext_t]* @oid_x509_ext, i64 0, i64 0), %struct.oid_x509_ext_t** %p, align 8
  %0 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %p, align 8
  %1 = bitcast %struct.oid_x509_ext_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %p, align 8
  %cmp = icmp eq %struct.oid_x509_ext_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_x509_ext_t* null, %struct.oid_x509_ext_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %p, align 8
  store %struct.oid_x509_ext_t* %16, %struct.oid_x509_ext_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_x509_ext_t, %struct.oid_x509_ext_t* %17, i32 1
  store %struct.oid_x509_ext_t* %incdec.ptr, %struct.oid_x509_ext_t** %p, align 8
  %18 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %p, align 8
  %19 = bitcast %struct.oid_x509_ext_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store %struct.oid_x509_ext_t* null, %struct.oid_x509_ext_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_x509_ext_t*, %struct.oid_x509_ext_t** %retval, align 8
  ret %struct.oid_x509_ext_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_extended_key_usage(%struct.mbedtls_asn1_buf* noundef %oid, i8** noundef %description) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %description.addr = alloca i8**, align 8
  %data = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i8** %description, i8*** %description.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.mbedtls_oid_descriptor_t* @oid_ext_key_usage_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.mbedtls_oid_descriptor_t* %call, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %1 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %cmp = icmp eq %struct.mbedtls_oid_descriptor_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %description1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %2, i32 0, i32 3
  %3 = load i8*, i8** %description1, align 8
  %4 = load i8**, i8*** %description.addr, align 8
  store i8* %3, i8** %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_oid_descriptor_t* @oid_ext_key_usage_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.mbedtls_oid_descriptor_t* getelementptr inbounds ([8 x %struct.mbedtls_oid_descriptor_t], [8 x %struct.mbedtls_oid_descriptor_t]* @oid_ext_key_usage, i64 0, i64 0), %struct.mbedtls_oid_descriptor_t** %p, align 8
  %0 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %0, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %1 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %cmp = icmp eq %struct.mbedtls_oid_descriptor_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.mbedtls_oid_descriptor_t* null, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %3 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %5, i32 0, i32 1
  %6 = load i64, i64* %asn1_len, align 8
  %7 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %7, i32 0, i32 1
  %8 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %6, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %asn14, align 8
  %11 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %11, i32 0, i32 2
  %12 = load i8*, i8** %p5, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %10, i8* noundef %12, i64 noundef %14) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %15 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %15, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %16 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %16, i32 1
  store %struct.mbedtls_oid_descriptor_t* %incdec.ptr, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %17 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %17, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store %struct.mbedtls_oid_descriptor_t* null, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %18 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  ret %struct.mbedtls_oid_descriptor_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_certificate_policies(%struct.mbedtls_asn1_buf* noundef %oid, i8** noundef %description) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %description.addr = alloca i8**, align 8
  %data = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i8** %description, i8*** %description.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.mbedtls_oid_descriptor_t* @oid_certificate_policies_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.mbedtls_oid_descriptor_t* %call, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %1 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %cmp = icmp eq %struct.mbedtls_oid_descriptor_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %data, align 8
  %description1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %2, i32 0, i32 3
  %3 = load i8*, i8** %description1, align 8
  %4 = load i8**, i8*** %description.addr, align 8
  store i8* %3, i8** %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_oid_descriptor_t* @oid_certificate_policies_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.mbedtls_oid_descriptor_t* getelementptr inbounds ([2 x %struct.mbedtls_oid_descriptor_t], [2 x %struct.mbedtls_oid_descriptor_t]* @oid_certificate_policies, i64 0, i64 0), %struct.mbedtls_oid_descriptor_t** %p, align 8
  %0 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %0, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %1 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %cmp = icmp eq %struct.mbedtls_oid_descriptor_t* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.mbedtls_oid_descriptor_t* null, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %3 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %5, i32 0, i32 1
  %6 = load i64, i64* %asn1_len, align 8
  %7 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %7, i32 0, i32 1
  %8 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %6, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %asn14, align 8
  %11 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %11, i32 0, i32 2
  %12 = load i8*, i8** %p5, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %10, i8* noundef %12, i64 noundef %14) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %15 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %15, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %16 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %16, i32 1
  store %struct.mbedtls_oid_descriptor_t* %incdec.ptr, %struct.mbedtls_oid_descriptor_t** %p, align 8
  %17 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %p, align 8
  store %struct.mbedtls_oid_descriptor_t* %17, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store %struct.mbedtls_oid_descriptor_t* null, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %18 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %retval, align 8
  ret %struct.mbedtls_oid_descriptor_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_sig_alg_desc(%struct.mbedtls_asn1_buf* noundef %oid, i8** noundef %description) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %description.addr = alloca i8**, align 8
  %data = alloca %struct.oid_sig_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i8** %description, i8*** %description.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_sig_alg_t* @oid_sig_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_sig_alg_t* %call, %struct.oid_sig_alg_t** %data, align 8
  %1 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_sig_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %data, align 8
  %descriptor = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %2, i32 0, i32 0
  %description1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor, i32 0, i32 3
  %3 = load i8*, i8** %description1, align 8
  %4 = load i8**, i8*** %description.addr, align 8
  store i8* %3, i8** %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_sig_alg_t* @oid_sig_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_sig_alg_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_sig_alg_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_sig_alg_t* getelementptr inbounds ([14 x %struct.oid_sig_alg_t], [14 x %struct.oid_sig_alg_t]* @oid_sig_alg, i64 0, i64 0), %struct.oid_sig_alg_t** %p, align 8
  %0 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %p, align 8
  %1 = bitcast %struct.oid_sig_alg_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %p, align 8
  %cmp = icmp eq %struct.oid_sig_alg_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_sig_alg_t* null, %struct.oid_sig_alg_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %p, align 8
  store %struct.oid_sig_alg_t* %16, %struct.oid_sig_alg_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %17, i32 1
  store %struct.oid_sig_alg_t* %incdec.ptr, %struct.oid_sig_alg_t** %p, align 8
  %18 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %p, align 8
  %19 = bitcast %struct.oid_sig_alg_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store %struct.oid_sig_alg_t* null, %struct.oid_sig_alg_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %retval, align 8
  ret %struct.oid_sig_alg_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %md_alg, i32* noundef %pk_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %pk_alg.addr = alloca i32*, align 8
  %data = alloca %struct.oid_sig_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32* %pk_alg, i32** %pk_alg.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_sig_alg_t* @oid_sig_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_sig_alg_t* %call, %struct.oid_sig_alg_t** %data, align 8
  %1 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_sig_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %data, align 8
  %md_alg1 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %md_alg1, align 8
  %4 = load i32*, i32** %md_alg.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %data, align 8
  %pk_alg2 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %5, i32 0, i32 2
  %6 = load i32, i32* %pk_alg2, align 4
  %7 = load i32*, i32** %pk_alg.addr, align 8
  store i32 %6, i32* %7, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef %pk_alg, i32 noundef %md_alg, i8** noundef %oid, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %pk_alg.addr = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  %oid.addr = alloca i8**, align 8
  %olen.addr = alloca i64*, align 8
  %cur = alloca %struct.oid_sig_alg_t*, align 8
  store i32 %pk_alg, i32* %pk_alg.addr, align 4
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8** %oid, i8*** %oid.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store %struct.oid_sig_alg_t* getelementptr inbounds ([14 x %struct.oid_sig_alg_t], [14 x %struct.oid_sig_alg_t]* @oid_sig_alg, i64 0, i64 0), %struct.oid_sig_alg_t** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %descriptor = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %0, i32 0, i32 0
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor, i32 0, i32 0
  %1 = load i8*, i8** %asn1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %pk_alg1 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %2, i32 0, i32 2
  %3 = load i32, i32* %pk_alg1, align 4
  %4 = load i32, i32* %pk_alg.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %md_alg3 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %5, i32 0, i32 1
  %6 = load i32, i32* %md_alg3, align 8
  %7 = load i32, i32* %md_alg.addr, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %descriptor5 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %8, i32 0, i32 0
  %asn16 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor5, i32 0, i32 0
  %9 = load i8*, i8** %asn16, align 8
  %10 = load i8**, i8*** %oid.addr, align 8
  store i8* %9, i8** %10, align 8
  %11 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %descriptor7 = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %11, i32 0, i32 0
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor7, i32 0, i32 1
  %12 = load i64, i64* %asn1_len, align 8
  %13 = load i64*, i64** %olen.addr, align 8
  store i64 %12, i64* %13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load %struct.oid_sig_alg_t*, %struct.oid_sig_alg_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_sig_alg_t, %struct.oid_sig_alg_t* %14, i32 1
  store %struct.oid_sig_alg_t* %incdec.ptr, %struct.oid_sig_alg_t** %cur, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 -46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_pk_alg(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %pk_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %pk_alg.addr = alloca i32*, align 8
  %data = alloca %struct.oid_pk_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %pk_alg, i32** %pk_alg.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_pk_alg_t* @oid_pk_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_pk_alg_t* %call, %struct.oid_pk_alg_t** %data, align 8
  %1 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_pk_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %data, align 8
  %pk_alg1 = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %pk_alg1, align 8
  %4 = load i32*, i32** %pk_alg.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_pk_alg_t* @oid_pk_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_pk_alg_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_pk_alg_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_pk_alg_t* getelementptr inbounds ([4 x %struct.oid_pk_alg_t], [4 x %struct.oid_pk_alg_t]* @oid_pk_alg, i64 0, i64 0), %struct.oid_pk_alg_t** %p, align 8
  %0 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %p, align 8
  %1 = bitcast %struct.oid_pk_alg_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %p, align 8
  %cmp = icmp eq %struct.oid_pk_alg_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_pk_alg_t* null, %struct.oid_pk_alg_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %p, align 8
  store %struct.oid_pk_alg_t* %16, %struct.oid_pk_alg_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %17, i32 1
  store %struct.oid_pk_alg_t* %incdec.ptr, %struct.oid_pk_alg_t** %p, align 8
  %18 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %p, align 8
  %19 = bitcast %struct.oid_pk_alg_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  store %struct.oid_pk_alg_t* null, %struct.oid_pk_alg_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %retval, align 8
  ret %struct.oid_pk_alg_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_oid_by_pk_alg(i32 noundef %pk_alg, i8** noundef %oid, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %pk_alg.addr = alloca i32, align 4
  %oid.addr = alloca i8**, align 8
  %olen.addr = alloca i64*, align 8
  %cur = alloca %struct.oid_pk_alg_t*, align 8
  store i32 %pk_alg, i32* %pk_alg.addr, align 4
  store i8** %oid, i8*** %oid.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store %struct.oid_pk_alg_t* getelementptr inbounds ([4 x %struct.oid_pk_alg_t], [4 x %struct.oid_pk_alg_t]* @oid_pk_alg, i64 0, i64 0), %struct.oid_pk_alg_t** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %cur, align 8
  %descriptor = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %0, i32 0, i32 0
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor, i32 0, i32 0
  %1 = load i8*, i8** %asn1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %cur, align 8
  %pk_alg1 = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %pk_alg1, align 8
  %4 = load i32, i32* %pk_alg.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %cur, align 8
  %descriptor3 = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %5, i32 0, i32 0
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor3, i32 0, i32 0
  %6 = load i8*, i8** %asn14, align 8
  %7 = load i8**, i8*** %oid.addr, align 8
  store i8* %6, i8** %7, align 8
  %8 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %cur, align 8
  %descriptor5 = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %8, i32 0, i32 0
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor5, i32 0, i32 1
  %9 = load i64, i64* %asn1_len, align 8
  %10 = load i64*, i64** %olen.addr, align 8
  store i64 %9, i64* %10, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.oid_pk_alg_t*, %struct.oid_pk_alg_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_pk_alg_t, %struct.oid_pk_alg_t* %11, i32 1
  store %struct.oid_pk_alg_t* %incdec.ptr, %struct.oid_pk_alg_t** %cur, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i32 -46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_ec_grp(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %grp_id) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %grp_id.addr = alloca i32*, align 8
  %data = alloca %struct.oid_ecp_grp_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %grp_id, i32** %grp_id.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_ecp_grp_t* @oid_grp_id_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_ecp_grp_t* %call, %struct.oid_ecp_grp_t** %data, align 8
  %1 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %data, align 8
  %cmp = icmp eq %struct.oid_ecp_grp_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %data, align 8
  %grp_id1 = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %2, i32 0, i32 1
  %3 = load i32, i32* %grp_id1, align 8
  %4 = load i32*, i32** %grp_id.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_ecp_grp_t* @oid_grp_id_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_ecp_grp_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_ecp_grp_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_ecp_grp_t* getelementptr inbounds ([12 x %struct.oid_ecp_grp_t], [12 x %struct.oid_ecp_grp_t]* @oid_ecp_grp, i64 0, i64 0), %struct.oid_ecp_grp_t** %p, align 8
  %0 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %p, align 8
  %1 = bitcast %struct.oid_ecp_grp_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %p, align 8
  %cmp = icmp eq %struct.oid_ecp_grp_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_ecp_grp_t* null, %struct.oid_ecp_grp_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %p, align 8
  store %struct.oid_ecp_grp_t* %16, %struct.oid_ecp_grp_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %17, i32 1
  store %struct.oid_ecp_grp_t* %incdec.ptr, %struct.oid_ecp_grp_t** %p, align 8
  %18 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %p, align 8
  %19 = bitcast %struct.oid_ecp_grp_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store %struct.oid_ecp_grp_t* null, %struct.oid_ecp_grp_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %retval, align 8
  ret %struct.oid_ecp_grp_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_oid_by_ec_grp(i32 noundef %grp_id, i8** noundef %oid, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp_id.addr = alloca i32, align 4
  %oid.addr = alloca i8**, align 8
  %olen.addr = alloca i64*, align 8
  %cur = alloca %struct.oid_ecp_grp_t*, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  store i8** %oid, i8*** %oid.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store %struct.oid_ecp_grp_t* getelementptr inbounds ([12 x %struct.oid_ecp_grp_t], [12 x %struct.oid_ecp_grp_t]* @oid_ecp_grp, i64 0, i64 0), %struct.oid_ecp_grp_t** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %cur, align 8
  %descriptor = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %0, i32 0, i32 0
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor, i32 0, i32 0
  %1 = load i8*, i8** %asn1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %cur, align 8
  %grp_id1 = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %2, i32 0, i32 1
  %3 = load i32, i32* %grp_id1, align 8
  %4 = load i32, i32* %grp_id.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %cur, align 8
  %descriptor3 = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %5, i32 0, i32 0
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor3, i32 0, i32 0
  %6 = load i8*, i8** %asn14, align 8
  %7 = load i8**, i8*** %oid.addr, align 8
  store i8* %6, i8** %7, align 8
  %8 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %cur, align 8
  %descriptor5 = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %8, i32 0, i32 0
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor5, i32 0, i32 1
  %9 = load i64, i64* %asn1_len, align 8
  %10 = load i64*, i64** %olen.addr, align 8
  store i64 %9, i64* %10, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.oid_ecp_grp_t*, %struct.oid_ecp_grp_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_ecp_grp_t, %struct.oid_ecp_grp_t* %11, i32 1
  store %struct.oid_ecp_grp_t* %incdec.ptr, %struct.oid_ecp_grp_t** %cur, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  store i32 -46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_cipher_alg(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %cipher_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %cipher_alg.addr = alloca i32*, align 8
  %data = alloca %struct.oid_cipher_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %cipher_alg, i32** %cipher_alg.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_cipher_alg_t* @oid_cipher_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_cipher_alg_t* %call, %struct.oid_cipher_alg_t** %data, align 8
  %1 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_cipher_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %data, align 8
  %cipher_alg1 = getelementptr inbounds %struct.oid_cipher_alg_t, %struct.oid_cipher_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %cipher_alg1, align 8
  %4 = load i32*, i32** %cipher_alg.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_cipher_alg_t* @oid_cipher_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_cipher_alg_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_cipher_alg_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_cipher_alg_t* getelementptr inbounds ([3 x %struct.oid_cipher_alg_t], [3 x %struct.oid_cipher_alg_t]* @oid_cipher_alg, i64 0, i64 0), %struct.oid_cipher_alg_t** %p, align 8
  %0 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %p, align 8
  %1 = bitcast %struct.oid_cipher_alg_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %p, align 8
  %cmp = icmp eq %struct.oid_cipher_alg_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_cipher_alg_t* null, %struct.oid_cipher_alg_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %p, align 8
  store %struct.oid_cipher_alg_t* %16, %struct.oid_cipher_alg_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_cipher_alg_t, %struct.oid_cipher_alg_t* %17, i32 1
  store %struct.oid_cipher_alg_t* %incdec.ptr, %struct.oid_cipher_alg_t** %p, align 8
  %18 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %p, align 8
  %19 = bitcast %struct.oid_cipher_alg_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  store %struct.oid_cipher_alg_t* null, %struct.oid_cipher_alg_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_cipher_alg_t*, %struct.oid_cipher_alg_t** %retval, align 8
  ret %struct.oid_cipher_alg_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_md_alg(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %md_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %data = alloca %struct.oid_md_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_md_alg_t* @oid_md_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_md_alg_t* %call, %struct.oid_md_alg_t** %data, align 8
  %1 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_md_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %data, align 8
  %md_alg1 = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %md_alg1, align 8
  %4 = load i32*, i32** %md_alg.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_md_alg_t* @oid_md_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_md_alg_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_md_alg_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_md_alg_t* getelementptr inbounds ([8 x %struct.oid_md_alg_t], [8 x %struct.oid_md_alg_t]* @oid_md_alg, i64 0, i64 0), %struct.oid_md_alg_t** %p, align 8
  %0 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %p, align 8
  %1 = bitcast %struct.oid_md_alg_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %p, align 8
  %cmp = icmp eq %struct.oid_md_alg_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_md_alg_t* null, %struct.oid_md_alg_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %p, align 8
  store %struct.oid_md_alg_t* %16, %struct.oid_md_alg_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %17, i32 1
  store %struct.oid_md_alg_t* %incdec.ptr, %struct.oid_md_alg_t** %p, align 8
  %18 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %p, align 8
  %19 = bitcast %struct.oid_md_alg_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  store %struct.oid_md_alg_t* null, %struct.oid_md_alg_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %retval, align 8
  ret %struct.oid_md_alg_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_oid_by_md(i32 noundef %md_alg, i8** noundef %oid, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  %oid.addr = alloca i8**, align 8
  %olen.addr = alloca i64*, align 8
  %cur = alloca %struct.oid_md_alg_t*, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8** %oid, i8*** %oid.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store %struct.oid_md_alg_t* getelementptr inbounds ([8 x %struct.oid_md_alg_t], [8 x %struct.oid_md_alg_t]* @oid_md_alg, i64 0, i64 0), %struct.oid_md_alg_t** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %cur, align 8
  %descriptor = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %0, i32 0, i32 0
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor, i32 0, i32 0
  %1 = load i8*, i8** %asn1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %cur, align 8
  %md_alg1 = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %md_alg1, align 8
  %4 = load i32, i32* %md_alg.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %cur, align 8
  %descriptor3 = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %5, i32 0, i32 0
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor3, i32 0, i32 0
  %6 = load i8*, i8** %asn14, align 8
  %7 = load i8**, i8*** %oid.addr, align 8
  store i8* %6, i8** %7, align 8
  %8 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %cur, align 8
  %descriptor5 = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %8, i32 0, i32 0
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %descriptor5, i32 0, i32 1
  %9 = load i64, i64* %asn1_len, align 8
  %10 = load i64*, i64** %olen.addr, align 8
  store i64 %9, i64* %10, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.oid_md_alg_t*, %struct.oid_md_alg_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_md_alg_t, %struct.oid_md_alg_t* %11, i32 1
  store %struct.oid_md_alg_t* %incdec.ptr, %struct.oid_md_alg_t** %cur, align 8
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  store i32 -46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_md_hmac(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %md_hmac) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_hmac.addr = alloca i32*, align 8
  %data = alloca %struct.oid_md_hmac_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %md_hmac, i32** %md_hmac.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_md_hmac_t* @oid_md_hmac_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_md_hmac_t* %call, %struct.oid_md_hmac_t** %data, align 8
  %1 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %data, align 8
  %cmp = icmp eq %struct.oid_md_hmac_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %data, align 8
  %md_hmac1 = getelementptr inbounds %struct.oid_md_hmac_t, %struct.oid_md_hmac_t* %2, i32 0, i32 1
  %3 = load i32, i32* %md_hmac1, align 8
  %4 = load i32*, i32** %md_hmac.addr, align 8
  store i32 %3, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_md_hmac_t* @oid_md_hmac_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_md_hmac_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_md_hmac_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_md_hmac_t* getelementptr inbounds ([6 x %struct.oid_md_hmac_t], [6 x %struct.oid_md_hmac_t]* @oid_md_hmac, i64 0, i64 0), %struct.oid_md_hmac_t** %p, align 8
  %0 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %p, align 8
  %1 = bitcast %struct.oid_md_hmac_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %p, align 8
  %cmp = icmp eq %struct.oid_md_hmac_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_md_hmac_t* null, %struct.oid_md_hmac_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %p, align 8
  store %struct.oid_md_hmac_t* %16, %struct.oid_md_hmac_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_md_hmac_t, %struct.oid_md_hmac_t* %17, i32 1
  store %struct.oid_md_hmac_t* %incdec.ptr, %struct.oid_md_hmac_t** %p, align 8
  %18 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %p, align 8
  %19 = bitcast %struct.oid_md_hmac_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  store %struct.oid_md_hmac_t* null, %struct.oid_md_hmac_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_md_hmac_t*, %struct.oid_md_hmac_t** %retval, align 8
  ret %struct.oid_md_hmac_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_pkcs12_pbe_alg(%struct.mbedtls_asn1_buf* noundef %oid, i32* noundef %md_alg, i32* noundef %cipher_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %cipher_alg.addr = alloca i32*, align 8
  %data = alloca %struct.oid_pkcs12_pbe_alg_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32* %cipher_alg, i32** %cipher_alg.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %call = call %struct.oid_pkcs12_pbe_alg_t* @oid_pkcs12_pbe_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %0) #3
  store %struct.oid_pkcs12_pbe_alg_t* %call, %struct.oid_pkcs12_pbe_alg_t** %data, align 8
  %1 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %data, align 8
  %cmp = icmp eq %struct.oid_pkcs12_pbe_alg_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -46, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %data, align 8
  %md_alg1 = getelementptr inbounds %struct.oid_pkcs12_pbe_alg_t, %struct.oid_pkcs12_pbe_alg_t* %2, i32 0, i32 1
  %3 = load i32, i32* %md_alg1, align 8
  %4 = load i32*, i32** %md_alg.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %data, align 8
  %cipher_alg2 = getelementptr inbounds %struct.oid_pkcs12_pbe_alg_t, %struct.oid_pkcs12_pbe_alg_t* %5, i32 0, i32 2
  %6 = load i32, i32* %cipher_alg2, align 4
  %7 = load i32*, i32** %cipher_alg.addr, align 8
  store i32 %6, i32* %7, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oid_pkcs12_pbe_alg_t* @oid_pkcs12_pbe_alg_from_asn1(%struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca %struct.oid_pkcs12_pbe_alg_t*, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %p = alloca %struct.oid_pkcs12_pbe_alg_t*, align 8
  %cur = alloca %struct.mbedtls_oid_descriptor_t*, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store %struct.oid_pkcs12_pbe_alg_t* getelementptr inbounds ([3 x %struct.oid_pkcs12_pbe_alg_t], [3 x %struct.oid_pkcs12_pbe_alg_t]* @oid_pkcs12_pbe_alg, i64 0, i64 0), %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %0 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %1 = bitcast %struct.oid_pkcs12_pbe_alg_t* %0 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %1, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %2 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %cmp = icmp eq %struct.oid_pkcs12_pbe_alg_t* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_asn1_buf* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.oid_pkcs12_pbe_alg_t* null, %struct.oid_pkcs12_pbe_alg_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %4 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %4, i32 0, i32 0
  %5 = load i8*, i8** %asn1, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn1_len = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %6, i32 0, i32 1
  %7 = load i64, i64* %asn1_len, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %7, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.mbedtls_oid_descriptor_t*, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  %asn14 = getelementptr inbounds %struct.mbedtls_oid_descriptor_t, %struct.mbedtls_oid_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %asn14, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  %13 = load i8*, i8** %p5, align 8
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 1
  %15 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %11, i8* noundef %13, i64 noundef %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  store %struct.oid_pkcs12_pbe_alg_t* %16, %struct.oid_pkcs12_pbe_alg_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.oid_pkcs12_pbe_alg_t, %struct.oid_pkcs12_pbe_alg_t* %17, i32 1
  store %struct.oid_pkcs12_pbe_alg_t* %incdec.ptr, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %18 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %p, align 8
  %19 = bitcast %struct.oid_pkcs12_pbe_alg_t* %18 to %struct.mbedtls_oid_descriptor_t*
  store %struct.mbedtls_oid_descriptor_t* %19, %struct.mbedtls_oid_descriptor_t** %cur, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  store %struct.oid_pkcs12_pbe_alg_t* null, %struct.oid_pkcs12_pbe_alg_t** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %20 = load %struct.oid_pkcs12_pbe_alg_t*, %struct.oid_pkcs12_pbe_alg_t** %retval, align 8
  ret %struct.oid_pkcs12_pbe_alg_t* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_oid_get_numeric_string(i8* noundef %buf, i64 noundef %size, %struct.mbedtls_asn1_buf* noundef %oid) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %value = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.mbedtls_asn1_buf* %oid, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 1
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %5 = load i64, i64* %n, align 8
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 2
  %7 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %div = sdiv i32 %conv, 40
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 2
  %10 = load i8*, i8** %p2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %rem = srem i32 %conv4, 40
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %4, i64 noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %div, i32 noundef %rem) #5
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %12 = load i32, i32* %ret, align 4
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %13 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %13 to i64
  %14 = load i64, i64* %n, align 8
  %cmp8 = icmp uge i64 %conv7, %14
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %do.body
  store i32 -11, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, i32* %ret, align 4
  %conv11 = sext i32 %15 to i64
  %16 = load i64, i64* %n, align 8
  %sub = sub i64 %16, %conv11
  store i64 %sub, i64* %n, align 8
  %17 = load i32, i32* %ret, align 4
  %conv12 = sext i32 %17 to i64
  %18 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %conv12
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %do.end, %entry
  store i32 0, i32* %value, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %len14 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 1
  %21 = load i64, i64* %len14, align 8
  %cmp15 = icmp ult i64 %19, %21
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %value, align 4
  %shl = shl i32 %22, 7
  %shr = lshr i32 %shl, 7
  %23 = load i32, i32* %value, align 4
  %cmp17 = icmp ne i32 %shr, %23
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  store i32 -11, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.body
  %24 = load i32, i32* %value, align 4
  %shl21 = shl i32 %24, 7
  store i32 %shl21, i32* %value, align 4
  %25 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %25, i32 0, i32 2
  %26 = load i8*, i8** %p22, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  %and = and i32 %conv24, 127
  %29 = load i32, i32* %value, align 4
  %add = add i32 %29, %and
  store i32 %add, i32* %value, align 4
  %30 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid.addr, align 8
  %p25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %30, i32 0, i32 2
  %31 = load i8*, i8** %p25, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %32
  %33 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %33 to i32
  %and28 = and i32 %conv27, 128
  %tobool = icmp ne i32 %and28, 0
  br i1 %tobool, label %if.end45, label %if.then29

if.then29:                                        ; preds = %if.end20
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %n, align 8
  %36 = load i32, i32* %value, align 4
  %call30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %36) #5
  store i32 %call30, i32* %ret, align 4
  br label %do.body31

do.body31:                                        ; preds = %if.then29
  %37 = load i32, i32* %ret, align 4
  %cmp32 = icmp slt i32 %37, 0
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %do.body31
  %38 = load i32, i32* %ret, align 4
  %conv35 = sext i32 %38 to i64
  %39 = load i64, i64* %n, align 8
  %cmp36 = icmp uge i64 %conv35, %39
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false34, %do.body31
  store i32 -11, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %lor.lhs.false34
  %40 = load i32, i32* %ret, align 4
  %conv40 = sext i32 %40 to i64
  %41 = load i64, i64* %n, align 8
  %sub41 = sub i64 %41, %conv40
  store i64 %sub41, i64* %n, align 8
  %42 = load i32, i32* %ret, align 4
  %conv42 = sext i32 %42 to i64
  %43 = load i8*, i8** %p, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %43, i64 %conv42
  store i8* %add.ptr43, i8** %p, align 8
  br label %do.end44

do.end44:                                         ; preds = %if.end39
  store i32 0, i32* %value, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %44 = load i64, i64* %i, align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %45 = load i64, i64* %size.addr, align 8
  %46 = load i64, i64* %n, align 8
  %sub46 = sub i64 %45, %46
  %conv47 = trunc i64 %sub46 to i32
  store i32 %conv47, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then38, %if.then19, %if.then10
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }
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
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
