; ModuleID = 'crypto/evp/evp_err.c'
source_filename = "crypto/evp/evp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@EVP_str_reasons = internal constant [110 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 50331791, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331824, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331748, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331843, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331803, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331873, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331805, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331845, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331846, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331832, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331770, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331795, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331849, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331821, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331780, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331781, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331786, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331762, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331858, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331749, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331801, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331813, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331822, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331775, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331777, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331867, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331790, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331812, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331823, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331836, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331862, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331830, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331819, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331852, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331851, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331782, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331759, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331833, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331800, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331842, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331811, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331778, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331869, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331866, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331796, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331841, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331834, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331871, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331868, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331870, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331853, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331828, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331861, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331820, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331807, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331792, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331751, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331838, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331826, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331779, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331806, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331787, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331854, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331847, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331844, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331802, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331797, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331825, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331799, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331798, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331850, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331835, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331810, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331829, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331827, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331793, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331794, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331754, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331875, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331857, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331831, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331860, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331863, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331864, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.86, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331859, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331865, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.88, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331808, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331809, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331855, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331817, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331769, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331804, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331755, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331771, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331772, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.97, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331756, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331783, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331773, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331766, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331774, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.103, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331837, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331818, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331757, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331839, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 50331840, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [21 x i8] c"aes key setup failed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"aria key setup failed\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bad algorithm name\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad decrypt\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad key length\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cache constants failed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"camellia key setup failed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot get parameters\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"cannot set parameters\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cipher not gcm mode\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"cipher parameter error\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"command not supported\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"conflicting algorithm name\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"copy error\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ctrl not implemented\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"ctrl operation not implemented\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"data not multiple of block length\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"default query parse error\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"different key types\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"different parameters\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"error loading section\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"expecting an hmac key\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"expecting an rsa key\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"expecting a dh key\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"expecting a dsa key\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"expecting an ecx key\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"expecting an ec key\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"expecting a poly1305 key\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"expecting a siphash key\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"final error\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"generate error\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"get raw key failed\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"illegal scrypt parameters\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"inaccessible domain parameters\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"inaccessible key\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"initialization error\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"input not initialized\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"invalid custom length\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"invalid digest\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"invalid iv length\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"invalid key\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"invalid key length\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"invalid null algorithm\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"invalid operation\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"invalid provider functions\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"invalid salt length\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"invalid secret length\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"invalid seed length\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"keymgmt export failure\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"key setup failed\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"locking not supported\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"memory limit exceeded\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"message digest is null\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"method not supported\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"missing parameters\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"not able to copy ctx\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"not XOF or invalid length\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"no cipher set\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"no default digest\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"no digest set\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"no import function\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"no keymgmt available\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"no keymgmt present\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"no key set\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"no operation set\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"null mac pkey ctx\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"only oneshot supported\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"operation not initialized\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"operation not supported for this keytype\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"output would overflow\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"parameter too large\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"partially overlapping buffers\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"pbkdf2 error\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"pkey application asn1 method already registered\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"private key decode error\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"private key encode error\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"public key not rsa\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"setting xof failed\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"set default property failure\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"too many records\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"unable to enable locking\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"unable to get maximum request size\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"unable to get random strength\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"unable to lock context\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"unable to set callbacks\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"unknown cipher\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"unknown digest\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"unknown key type\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"unknown pbe algorithm\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"unsupported cipher\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"unsupported keylength\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"unsupported key derivation function\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"unsupported key size\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"unsupported key type\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"unsupported number of rounds\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"unsupported prf\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"unsupported private key algorithm\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"unsupported salt type\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"update error\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"wrap mode not allowed\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"wrong final block length\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"xts data unit is too large\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"xts duplicated keys\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_EVP_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 50331791) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([110 x %struct.ERR_string_data_st], [110 x %struct.ERR_string_data_st]* @EVP_str_reasons, i64 0, i64 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
