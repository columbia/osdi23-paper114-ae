; ModuleID = 'test/x509_internal_test.c'
source_filename = "test/x509_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.IP_TESTDATA = type { i8*, i8*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"test_standard_exts\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test_a2i_ipaddress\00", align 1
@standard_exts = internal unnamed_addr constant [49 x %struct.v3_ext_method*] [%struct.v3_ext_method* @ossl_v3_nscert, %struct.v3_ext_method* getelementptr inbounds ([8 x %struct.v3_ext_method], [8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 312) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 416) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 520) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x %struct.v3_ext_method]* @ossl_v3_ns_ia5_list to i8*), i64 624) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_skey_id, %struct.v3_ext_method* @ossl_v3_key_usage, %struct.v3_ext_method* @ossl_v3_pkey_usage_period, %struct.v3_ext_method* getelementptr inbounds ([3 x %struct.v3_ext_method], [3 x %struct.v3_ext_method]* @ossl_v3_alt, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_alt to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_bcons, %struct.v3_ext_method* @ossl_v3_crl_num, %struct.v3_ext_method* @ossl_v3_cpols, %struct.v3_ext_method* @ossl_v3_akey_id, %struct.v3_ext_method* @ossl_v3_crld, %struct.v3_ext_method* @ossl_v3_ext_ku, %struct.v3_ext_method* @ossl_v3_delta_crl, %struct.v3_ext_method* @ossl_v3_crl_reason, %struct.v3_ext_method* @ossl_v3_crl_invdate, %struct.v3_ext_method* @ossl_v3_sxnet, %struct.v3_ext_method* @ossl_v3_info, %struct.v3_ext_method* @ossl_v3_addr, %struct.v3_ext_method* @ossl_v3_asid, %struct.v3_ext_method* @ossl_v3_ocsp_nonce, %struct.v3_ext_method* @ossl_v3_ocsp_crlid, %struct.v3_ext_method* @ossl_v3_ocsp_accresp, %struct.v3_ext_method* @ossl_v3_ocsp_nocheck, %struct.v3_ext_method* @ossl_v3_ocsp_acutoff, %struct.v3_ext_method* @ossl_v3_ocsp_serviceloc, %struct.v3_ext_method* @ossl_v3_sinfo, %struct.v3_ext_method* @ossl_v3_policy_constraints, %struct.v3_ext_method* @ossl_v3_crl_hold, %struct.v3_ext_method* @ossl_v3_pci, %struct.v3_ext_method* @ossl_v3_name_constraints, %struct.v3_ext_method* @ossl_v3_policy_mappings, %struct.v3_ext_method* @ossl_v3_inhibit_anyp, %struct.v3_ext_method* @ossl_v3_idp, %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_alt to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* @ossl_v3_freshest_crl, %struct.v3_ext_method* getelementptr inbounds ([3 x %struct.v3_ext_method], [3 x %struct.v3_ext_method]* @ossl_v3_ct_scts, i32 0, i32 0), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_ct_scts to i8*), i64 104) to %struct.v3_ext_method*), %struct.v3_ext_method* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.v3_ext_method]* @ossl_v3_ct_scts to i8*), i64 208) to %struct.v3_ext_method*), %struct.v3_ext_method* getelementptr inbounds ([1 x %struct.v3_ext_method], [1 x %struct.v3_ext_method]* @ossl_v3_utf8_list, i32 0, i32 0), %struct.v3_ext_method* @ossl_v3_issuer_sign_tool, %struct.v3_ext_method* @ossl_v3_tls_feature, %struct.v3_ext_method* @ossl_v3_ext_admission], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"test/x509_internal_test.c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Extensions out of order!\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d : %s\00", align 1
@ossl_v3_nscert = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ns_ia5_list = external dso_local constant [8 x %struct.v3_ext_method], align 16
@ossl_v3_skey_id = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_key_usage = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_pkey_usage_period = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_alt = external dso_local constant [3 x %struct.v3_ext_method], align 16
@ossl_v3_bcons = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_crl_num = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_cpols = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_akey_id = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_crld = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ext_ku = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_delta_crl = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_crl_reason = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_crl_invdate = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_sxnet = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_info = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_addr = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_asid = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_nonce = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_crlid = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_accresp = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_nocheck = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_acutoff = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ocsp_serviceloc = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_sinfo = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_policy_constraints = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_crl_hold = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_pci = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_name_constraints = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_policy_mappings = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_inhibit_anyp = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_idp = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_freshest_crl = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ct_scts = external dso_local constant [3 x %struct.v3_ext_method], align 16
@ossl_v3_utf8_list = external dso_local constant [1 x %struct.v3_ext_method], align 16
@ossl_v3_issuer_sign_tool = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_tls_feature = external dso_local constant %struct.v3_ext_method, align 8
@ossl_v3_ext_admission = external dso_local constant %struct.v3_ext_method, align 8
@a2i_ipaddress_tests = internal unnamed_addr constant [17 x %struct.IP_TESTDATA] [%struct.IP_TESTDATA { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 16 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 16 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 16 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* null, i32 0 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 4 }, %struct.IP_TESTDATA { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* null, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"'%s' should not be parsed as IP address\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ASN1_STRING_length(ip)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ASN1_STRING_get0_data(ip)\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"a2i_ipaddress_tests[idx].data\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\7F\00\00\01\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"1.2.3.4\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\01\02\03\04\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"1.2.3.255\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\01\02\03\FF\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"1.2.3 .4\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"1:1:1:1:1:1:1:1\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"2001:db8::ff00:42:8329\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" \01\0D\B8\00\00\00\00\00\00\FF\00\00B\83)\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"1:1:1:1:1:1:1:1.test\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c":::1\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"2001::123g\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"example.test\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"1.2.3.4 \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" 1.2.3.4\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c" 1.2.3.4 \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"1.2.3.4.example.test\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_standard_exts) #2
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_a2i_ipaddress, i32 noundef 17, i32 noundef 1) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_standard_exts() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body.1, %entry
  %tmp.030 = phi %struct.v3_ext_method** [ getelementptr inbounds ([49 x %struct.v3_ext_method*], [49 x %struct.v3_ext_method*]* @standard_exts, i64 0, i64 0), %entry ], [ %incdec.ptr.3, %for.body.1 ]
  %good.029 = phi i32 [ 1, %entry ], [ %spec.select.3, %for.body.1 ]
  %prev.028 = phi i32 [ -1, %entry ], [ %7, %for.body.1 ]
  %i.027 = phi i64 [ 0, %entry ], [ %inc.3, %for.body.1 ]
  %0 = load %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.030, align 8, !tbaa !3
  %ext_nid = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %0, i64 0, i32 0
  %1 = load i32, i32* %ext_nid, align 8, !tbaa !7
  %cmp1 = icmp slt i32 %1, %prev.028
  %spec.select = select i1 %cmp1, i32 0, i32 %good.029
  %exitcond.not = icmp eq i64 %i.027, 48
  br i1 %exitcond.not, label %for.end, label %for.body.1, !llvm.loop !10

for.body.1:                                       ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.030, i64 1
  %2 = load %struct.v3_ext_method*, %struct.v3_ext_method** %incdec.ptr, align 8, !tbaa !3
  %ext_nid.1 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %2, i64 0, i32 0
  %3 = load i32, i32* %ext_nid.1, align 8, !tbaa !7
  %cmp1.1 = icmp slt i32 %3, %1
  %incdec.ptr.1 = getelementptr inbounds %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.030, i64 2
  %4 = load %struct.v3_ext_method*, %struct.v3_ext_method** %incdec.ptr.1, align 8, !tbaa !3
  %ext_nid.2 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %4, i64 0, i32 0
  %5 = load i32, i32* %ext_nid.2, align 8, !tbaa !7
  %cmp1.2 = icmp slt i32 %5, %3
  %incdec.ptr.2 = getelementptr inbounds %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.030, i64 3
  %6 = load %struct.v3_ext_method*, %struct.v3_ext_method** %incdec.ptr.2, align 8, !tbaa !3
  %ext_nid.3 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %6, i64 0, i32 0
  %7 = load i32, i32* %ext_nid.3, align 8, !tbaa !7
  %cmp1.3 = icmp slt i32 %7, %5
  %8 = select i1 %cmp1.3, i1 true, i1 %cmp1.2
  %9 = select i1 %8, i1 true, i1 %cmp1.1
  %spec.select.3 = select i1 %9, i32 0, i32 %spec.select
  %inc.3 = add nuw nsw i64 %i.027, 4
  %incdec.ptr.3 = getelementptr inbounds %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.030, i64 4
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %for.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #2
  br label %for.body6

for.body6:                                        ; preds = %if.then3, %for.body6
  %tmp.132 = phi %struct.v3_ext_method** [ getelementptr inbounds ([49 x %struct.v3_ext_method*], [49 x %struct.v3_ext_method*]* @standard_exts, i64 0, i64 0), %if.then3 ], [ %incdec.ptr11, %for.body6 ]
  %i.131 = phi i64 [ 0, %if.then3 ], [ %inc10, %for.body6 ]
  %10 = load %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.132, align 8, !tbaa !3
  %ext_nid7 = getelementptr inbounds %struct.v3_ext_method, %struct.v3_ext_method* %10, i64 0, i32 0
  %11 = load i32, i32* %ext_nid7, align 8, !tbaa !7
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %11) #2
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %11, i8* noundef %call) #2
  %inc10 = add nuw nsw i64 %i.131, 1
  %incdec.ptr11 = getelementptr inbounds %struct.v3_ext_method*, %struct.v3_ext_method** %tmp.132, i64 1
  %exitcond33.not = icmp eq i64 %inc10, 49
  br i1 %exitcond33.not, label %if.end13, label %for.body6, !llvm.loop !12

if.end13:                                         ; preds = %for.body6, %for.end
  ret i32 %spec.select
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_a2i_ipaddress(i32 noundef %idx) #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %length = getelementptr inbounds [17 x %struct.IP_TESTDATA], [17 x %struct.IP_TESTDATA]* @a2i_ipaddress_tests, i64 0, i64 %idxprom, i32 2
  %0 = load i32, i32* %length, align 8, !tbaa !13
  %ipasc = getelementptr inbounds [17 x %struct.IP_TESTDATA], [17 x %struct.IP_TESTDATA]* @a2i_ipaddress_tests, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %ipasc, align 8, !tbaa !15
  %call = tail call %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef %1) #2
  %2 = lshr i64 73496, %idxprom
  %3 = and i64 %2, 1
  %cmp.not = icmp eq i64 %3, 0
  %4 = bitcast %struct.asn1_string_st* %call to i8*
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #2
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.end22

if.then4:                                         ; preds = %if.then
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* noundef %1) #2
  br label %if.end22

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call10 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %call) #2
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call10, i32 noundef %0) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then20, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %call) #2
  %conv = sext i32 %0 to i64
  %data = getelementptr inbounds [17 x %struct.IP_TESTDATA], [17 x %struct.IP_TESTDATA]* @a2i_ipaddress_tests, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !16
  %call18 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call14, i64 noundef %conv, i8* noundef %5, i64 noundef %conv) #2
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.else
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false13, %if.then20, %if.then, %if.then4
  %good.0 = phi i32 [ 1, %if.then ], [ 0, %if.then4 ], [ 1, %lor.lhs.false13 ], [ 0, %if.then20 ]
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #2
  ret i32 %good.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @a2i_IPADDRESS(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"v3_ext_method", !9, i64 0, !9, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96}
!9 = !{!"int", !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !9, i64 16}
!14 = !{!"", !4, i64 0, !4, i64 8, !9, i64 16}
!15 = !{!14, !4, i64 0}
!16 = !{!14, !4, i64 8}
