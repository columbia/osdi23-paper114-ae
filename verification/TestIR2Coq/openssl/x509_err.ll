; ModuleID = 'crypto/x509/x509_err.c'
source_filename = "crypto/x509/x509_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }

@X509_str_reasons = internal constant [44 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 92274798, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274821, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274788, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274806, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274802, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274827, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274789, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274815, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274819, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274829, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274830, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274816, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274826, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274801, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274831, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274807, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274811, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274817, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274803, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274804, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274791, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274812, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274822, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274820, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274823, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274824, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274793, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274825, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274818, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274813, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274814, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274794, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274795, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274796, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274805, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274797, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274809, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274799, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 92274810, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"akid mismatch\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bad selector\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bad x509 filetype\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"base64 decode error\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cant check dh key\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"certificate verification failed\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cert already in hash table\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"crl already delta\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"crl verify failure\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"error getting md by nid\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"error using siginf set\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"idp mismatch\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"invalid attributes\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"invalid directory\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"invalid distpoint\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"invalid field name\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"invalid trust\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"issuer mismatch\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"key type mismatch\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"key values mismatch\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"loading cert dir\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"loading defaults\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"method not supported\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"name too long\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"newer crl not newer\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"no certificate found\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"no certificate or crl found\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"no cert set for us to verify\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"no crl found\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"no crl number\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"public key decode error\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"public key encode error\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"should retry\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"unable to find parameters in chain\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"unable to get certs public key\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"unknown key type\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"unknown nid\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"unknown purpose id\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"unknown sigid algs\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"unknown trust id\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"wrong lookup type\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_err_load_X509_strings() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ERR_reason_error_string(i64 noundef 92274798) #2
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ERR_load_strings_const(%struct.ERR_string_data_st* noundef getelementptr inbounds ([44 x %struct.ERR_string_data_st], [44 x %struct.ERR_string_data_st]* @X509_str_reasons, i64 0, i64 0)) #2
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
