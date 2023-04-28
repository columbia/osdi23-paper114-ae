; ModuleID = 'crypto/ec/ec_err.c'
source_filename = "crypto/ec/ec_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@EC_str_reasons = internal constant [75 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 134217843, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217884, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217828, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217893, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217874, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217888, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217898, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217887, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217870, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217846, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217847, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217894, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217871, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217875, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217848, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217849, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217829, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217896, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217897, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217899, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217838, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217837, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217869, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217879, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217866, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217830, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217831, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217832, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217901, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217850, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217844, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217845, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217902, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217889, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217900, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217861, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217860, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217851, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217903, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217865, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217876, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217868, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217864, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217881, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217890, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217895, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217852, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217853, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217885, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217863, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217854, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217839, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217867, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217882, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217880, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217862, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217877, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217883, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217834, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217891, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217835, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217886, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217878, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217836, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217841, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217856, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217892, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217857, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217842, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217859, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217873, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 134217858, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"asn1 error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad signature\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bignum out of range\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cannot invert\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"coordinates out of range\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"curve does not support ecdh\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"curve does not support ecdsa\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"curve does not support signing\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"decode error\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"discriminant is zero\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ec group new by name failure\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"failed making public key\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"field too large\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"gf2m not supported\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"group2pkparameters failure\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"i2d ecpkparameters failure\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incompatible objects\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"invalid a\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"invalid b\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"invalid cofactor\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"invalid compressed point\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"invalid compression bit\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"invalid curve\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"invalid digest\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"invalid digest type\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"invalid encoding\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"invalid field\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"invalid form\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"invalid generator\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"invalid group order\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"invalid key\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"invalid named group conversion\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"invalid output length\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"invalid p\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"invalid peer key\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"invalid pentanomial basis\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"invalid private key\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"invalid seed\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"invalid trinomial basis\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"kdf parameter error\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"keys not set\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"ladder post failure\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"ladder pre failure\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"ladder step failure\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"missing OID\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"missing parameters\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"missing private key\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"need new setup values\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"not a NIST prime\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"not initialized\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"no parameters set\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"no private value\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"operation not supported\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"passed null parameter\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"peer key error\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"point arithmetic failure\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"point at infinity\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"point coordinates blind failure\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"point is not on curve\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"random number generation failed\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"shared info error\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"slot full\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"undefined generator\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"undefined order\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"unknown cofactor\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"unknown group\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"unknown order\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"unsupported field\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"wrong curve parameters\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"wrong order\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_EC_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 134217843) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([75 x %struct.ERR_string_data_st], [75 x %struct.ERR_string_data_st]* @EC_str_reasons, i64 0, i64 0)) #2
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
