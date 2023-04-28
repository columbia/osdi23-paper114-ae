; ModuleID = 'crypto/x509/v3err.c'
source_filename = "crypto/x509/v3err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@X509V3_str_reasons = internal constant [69 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 285212790, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212791, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212772, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212773, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212821, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212832, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212805, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212841, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212803, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212816, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212809, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212817, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212787, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212774, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212775, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212788, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212823, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212824, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212834, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212835, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212776, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212830, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212780, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212777, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212837, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212838, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212833, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212778, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212779, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212781, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212812, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212813, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212782, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212810, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212806, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212825, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212818, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212836, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212807, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212815, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212798, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212796, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212814, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212793, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212799, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212811, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212826, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212786, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212797, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212820, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212819, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212827, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212828, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212829, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212831, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.57, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212822, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212794, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212795, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212783, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212801, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212802, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212792, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212789, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212839, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 285212804, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"bad ip address\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bad object\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bn dec2bn error\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"bn to asn1 integer error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dirname error\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"distpoint already set\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"duplicate zone id\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"empty key usage\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"error converting zone\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"error creating extension\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"error in extension\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"expected a section name\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extension exists\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"extension name error\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"extension not found\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"extension setting not supported\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"extension value error\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"illegal empty extension\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"incorrect policy syntax tag\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"invalid asnumber\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"invalid asrange\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"invalid boolean string\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"invalid certificate\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"invalid empty name\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"invalid extension string\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"invalid inheritance\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"invalid ipaddress\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"invalid multiple rdns\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"invalid name\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"invalid null argument\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"invalid null value\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"invalid numbers\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"invalid object identifier\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"invalid policy identifier\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"invalid proxy policy setting\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"invalid purpose\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"invalid safi\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"invalid section\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"invalid syntax\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"issuer decode error\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"missing value\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"need organization and numbers\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"negative pathlen\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"no config database\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"no issuer certificate\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"no issuer details\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"no policy identifier\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"no proxy cert policy language defined\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"no public key\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"no subject details\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"operation not defined\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"othername error\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"policy language already defined\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"policy path length\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"policy path length already defined\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"policy when proxy language requires no policy\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"section not found\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"unable to get issuer details\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"unable to get issuer keyid\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"unknown bit string argument\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"unknown extension\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"unknown extension name\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"unsupported option\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"unsupported type\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"user too long\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_X509V3_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 285212790) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([69 x %struct.ERR_string_data_st], [69 x %struct.ERR_string_data_st]* @X509V3_str_reasons, i64 0, i64 0)) #2
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
