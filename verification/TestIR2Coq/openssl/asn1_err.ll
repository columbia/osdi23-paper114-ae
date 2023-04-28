; ModuleID = 'crypto/asn1/asn1_err.c'
source_filename = "crypto/asn1/asn1_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@ASN1_str_reasons = internal constant [116 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 109052075, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052004, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052006, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052009, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052010, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052011, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052012, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052013, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052014, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052078, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052016, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052077, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052076, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052018, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052019, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052020, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052023, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052025, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052026, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052027, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052079, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052080, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052028, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052081, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052082, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052083, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052084, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052085, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052029, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052086, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052087, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052030, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052074, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052031, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052088, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052089, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052032, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052033, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052034, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052090, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052091, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052035, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052037, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052038, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052092, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052041, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052042, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052093, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052043, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052044, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052045, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052094, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052046, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052047, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052048, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052095, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052049, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052051, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052052, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052053, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052096, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052054, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052055, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052056, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052058, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052097, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052059, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052060, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052099, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052063, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052064, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052065, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052066, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052067, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.105, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052098, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052068, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.108, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052071, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109052072, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"adding object\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"asn1 parse error\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"asn1 sig parse error\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"aux error\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad object header\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bad template\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bmpstring is wrong length\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bn lib\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"boolean is wrong length\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cipher has no object identifier\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"context not initialised\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"data is wrong\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"depth exceeded\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"digest and key type not supported\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"encode error\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"error getting time\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"error loading section\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"error setting cipher params\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"expecting an integer\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"expecting an object\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"explicit length mismatch\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"explicit tag not constructed\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"field missing\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"first num too large\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"header too long\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"illegal bitstring format\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"illegal boolean\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"illegal characters\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"illegal format\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"illegal hex\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"illegal implicit tag\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"illegal integer\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"illegal negative value\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"illegal nested tagging\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"illegal null\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"illegal null value\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"illegal object\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"illegal optional any\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"illegal options on item template\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"illegal padding\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"illegal tagged any\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"illegal time value\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"illegal zero content\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"integer not ascii format\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"integer too large for long\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"invalid bit string bits left\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"invalid bmpstring length\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"invalid digit\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"invalid mime type\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"invalid modifier\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"invalid object encoding\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"invalid scrypt parameters\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"invalid separator\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"invalid string table value\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"invalid universalstring length\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"invalid utf8string\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"length too long\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"list error\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"mime no content type\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"mime parse error\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"mime sig parse error\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"missing eoc\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"missing second number\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"missing value\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"mstring not universal\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"mstring wrong tag\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"nested asn1 string\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"nested too deep\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"non hex characters\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"not ascii format\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"not enough data\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"no content type\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"no matching choice type\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"no multipart body failure\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"no multipart boundary\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"no sig content type\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"null is wrong length\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"object not ascii format\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"odd number of chars\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"second number too large\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"sequence length mismatch\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"sequence not constructed\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"sequence or set needs config\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"short line\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"sig invalid mime type\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"streaming not supported\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"string too short\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"the asn1 object identifier is not known for this md\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"time not ascii format\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"too long\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"too small\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"type not constructed\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"type not primitive\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"unexpected eoc\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"universalstring is wrong length\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"unknown digest\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"unknown format\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"unknown message digest algorithm\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"unknown object type\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"unknown public key type\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"unknown signature algorithm\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"unknown tag\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"unsupported any defined by type\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"unsupported cipher\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"unsupported public key type\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"unsupported type\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"wrong integer type\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"wrong public key type\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"wrong tag\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_ASN1_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 109052075) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([116 x %struct.ERR_string_data_st], [116 x %struct.ERR_string_data_st]* @ASN1_str_reasons, i64 0, i64 0)) #2
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
