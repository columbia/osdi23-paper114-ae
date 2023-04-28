; ModuleID = 'crypto/cms/cms_err.c'
source_filename = "crypto/cms/cms_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@CMS_str_reasons = internal constant [95 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 385876067, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876068, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876069, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876070, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876071, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876072, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876073, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876074, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876075, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876076, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876077, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876078, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876079, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876080, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876081, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876082, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876083, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876084, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876085, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876086, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876087, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876088, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876089, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876090, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876091, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876092, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876093, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876094, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876095, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876097, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876098, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876099, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.85, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 385876127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [17 x i8] c"add signer error\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"attribute error\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"certificate already present\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"certificate has no keyid\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"certificate verify error\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"cipher aead set tag error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cipher get tag\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"cipher initialisation error\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"cipher parameter initialisation error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"cms datafinal error\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cms lib\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"contentidentifier mismatch\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"content not found\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"content type mismatch\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"content type not compressed data\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"content type not enveloped data\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"content type not signed data\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"content verify error\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ctrl error\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"ctrl failure\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"decrypt error\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"error getting public key\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"error reading messagedigest attribute\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"error setting key\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"error setting recipientinfo\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"ess signing certid mismatch error\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"invalid encrypted key length\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"invalid key encryption parameter\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"invalid key length\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"invalid oaep parameters\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"kdf parameter error\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"md bio init error\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"messagedigest attribute wrong length\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"messagedigest wrong length\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"msgsigdigest error\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"msgsigdigest verification failure\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"msgsigdigest wrong length\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"need one signer\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"not a signed receipt\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"not encrypted data\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"not kek\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"not key agreement\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"not key transport\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"not pwri\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"not supported for this key type\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"no cipher\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"no content\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"no content type\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"no default digest\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"no digest set\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"no key\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"no key or cert\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"no matching digest\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"no matching recipient\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"no matching signature\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"no msgsigdigest\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"no password\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"no private key\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"no public key\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"no receipt request\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"no signers\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"peer key error\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"private key does not match certificate\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"receipt decode error\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"recipient error\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"shared info error\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"signer certificate not found\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"signfinal error\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"smime text error\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"store init error\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"type not compressed data\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"type not data\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"type not digested data\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"type not encrypted data\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"type not enveloped data\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"unable to finalize context\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"unknown cipher\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"unknown digest algorithm\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"unknown id\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"unsupported compression algorithm\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"unsupported content type\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"unsupported encryption type\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"unsupported kek algorithm\00", align 1
@.str.85 = private unnamed_addr constant [37 x i8] c"unsupported key encryption algorithm\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"unsupported label source\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"unsupported recipientinfo type\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"unsupported recipient type\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"unsupported type\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"unwrap error\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"unwrap failure\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"verification failure\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"wrap error\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_CMS_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 385876067) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([95 x %struct.ERR_string_data_st], [95 x %struct.ERR_string_data_st]* @CMS_str_reasons, i64 0, i64 0)) #2
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
