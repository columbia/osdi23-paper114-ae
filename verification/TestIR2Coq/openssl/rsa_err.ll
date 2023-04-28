; ModuleID = 'crypto/rsa/rsa_err.c'
source_filename = "crypto/rsa/rsa_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@RSA_str_reasons = internal constant [83 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 33554532, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554533, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554534, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554535, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554536, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554538, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554539, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554540, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554541, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554542, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554564, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554543, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554554, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554590, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554577, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554544, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554556, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554557, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554555, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554565, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554576, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554589, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554575, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554569, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554603, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554605, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554592, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554613, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554563, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554588, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554606, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554599, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554593, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554570, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554573, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554581, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554578, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554607, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554582, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554608, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554571, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554574, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554558, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554597, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554566, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554584, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554611, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554537, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554600, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554601, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554602, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554572, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554545, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554604, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554559, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554553, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554580, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554546, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554609, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554591, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554596, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554610, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554561, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554612, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554562, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554568, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554567, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554547, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554548, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554549, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554598, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554583, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554550, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554594, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554595, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554585, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554586, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554587, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554579, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 33554551, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [19 x i8] c"algorithm mismatch\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bad e value\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bad fixed header decrypt\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad pad byte count\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad signature\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"block type is not 01\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"block type is not 02\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"data greater than mod len\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"data too large\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"data too large for key size\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"data too large for modulus\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"data too small\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"data too small for key size\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"digest does not match\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"digest not allowed\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"digest too big for rsa key\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"dmp1 not congruent to d\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"dmq1 not congruent to d\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"d e not congruent to 1\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"first octet invalid\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"illegal or unsupported padding mode\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"invalid digest\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"invalid digest length\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"invalid keypair\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"invalid key length\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"invalid message length\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"invalid mgf1 md\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"invalid modulus\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"invalid multi prime key\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"invalid oaep parameters\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"invalid padding\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"invalid padding mode\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"invalid pss parameters\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"invalid pss saltlen\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"invalid request\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"invalid salt length\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"invalid strength\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"invalid trailer\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"invalid x931 digest\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"iqmp not inverse of q\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"key prime num invalid\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"key size too small\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"last octet invalid\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"mgf1 digest not allowed\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"missing private key\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"modulus too large\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"mp coefficient not inverse of r\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"mp exponent not congruent to d\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"mp r not prime\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"no public exponent\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"null before block missing\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"n does not equal product of primes\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"n does not equal p q\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"oaep decoding error\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"operation not supported for this keytype\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"padding check failed\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"pairwise test failure\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"pkcs decoding error\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"pss saltlen too small\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"pub exponent out of range\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"p not prime\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"q not prime\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"randomness source strength insufficient\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"rsa operations not supported\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"salt length check failed\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"salt length recovery failed\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"sslv3 rollback attack\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"the asn1 object identifier is not known for this md\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"unknown algorithm type\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"unknown digest\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"unknown mask digest\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"unknown padding type\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"unsupported encryption type\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"unsupported label source\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"unsupported mask algorithm\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"unsupported mask parameter\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"unsupported signature type\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"value missing\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"wrong signature length\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_RSA_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 33554532) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([83 x %struct.ERR_string_data_st], [83 x %struct.ERR_string_data_st]* @RSA_str_reasons, i64 0, i64 0)) #2
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
