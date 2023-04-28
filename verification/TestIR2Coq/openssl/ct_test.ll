; ModuleID = 'test/ct_test.c'
source_filename = "test/ct_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_test_fixture = type { i8*, i64, %struct.ctlog_store_st*, i8*, i8*, i8*, i32, i32, i8*, i64, %struct.stack_st_SCT*, i8*, i8*, i32 }
%struct.ctlog_store_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.stack_st = type opaque
%struct.sct_st = type opaque
%struct.ct_policy_eval_ctx_st = type opaque
%struct.ctlog_st = type opaque
%struct.x509_st = type opaque
%struct.X509_extension_st = type opaque
%struct.bio_st = type opaque
%struct.bio_method_st = type opaque

@.str = private unnamed_addr constant [7 x i8] c"CT_DIR\00", align 1
@ct_dir = internal unnamed_addr global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CERTS_DIR\00", align 1
@certs_dir = internal unnamed_addr global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"test_no_scts_in_certificate\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"test_one_sct_in_certificate\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"test_multiple_scts_in_certificate\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"test_verify_one_sct\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"test_verify_multiple_scts\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"test_verify_fails_for_future_sct\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"test_decode_tls_sct\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"test_encode_tls_sct\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"test_default_ct_policy_eval_ctx_time_is_now\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"test_ctlog_from_base64\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"leaf.pem\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"subinterCA.pem\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"test/ct_test.c\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"fixture->ctlog_store = CTLOG_STORE_new()\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"CTLOG_STORE_load_default_file(fixture->ctlog_store)\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Failed to setup\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"sct_text_len\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"cert = load_pem_cert(fixture->certs_dir, fixture->certificate_file)\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"issuer = load_pem_cert(fixture->certs_dir, fixture->issuer_file)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"sct_extension\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SCT_get_source(sct_i)\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"SCT_SOURCE_X509V3_EXTENSION\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"o2i_SCT_LIST(&scts, &p, fixture->tls_sct_list_len)\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"fixture->tls_sct_list\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"tls_sct_list\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"text_buffer = BIO_new(BIO_s_mem())\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"X509V3_EXT_print(text_buffer, extension, X509V3_EXT_DEFAULT, 0)\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"BIO_write(text_buffer, \22\\n\22, 1)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"BIO_write(text_buffer, \22\\0\22, 1)\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"actual_output\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"expected_output\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"SCT_LIST_validate(scts, policy_ctx)\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"valid_sct_count\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"fixture->expected_valid_sct_count\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"%d SCTs failed, %d SCTs unverified\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"embeddedSCTs1.pem\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"embeddedSCTs1_issuer.pem\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"embeddedSCTs1.sct\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"embeddedSCTs3.pem\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"embeddedSCTs3_issuer.pem\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"embeddedSCTs3.sct\00", align 1
@__const.test_decode_tls_sct.tls_sct_list = private unnamed_addr constant [123 x i8] c"\00x\00v\00\DF\1C.\C1\15\00\94RG\A9ah2]\DC\\yY\E8\F7\C6\D3\88\FC\00.\0B\BD?t\D7d\00\00\01=\DB'\DF\93\00\00\04\03\00G0E\02 H/gQ\AF5\DB\A6T6\BE\1F\D6d\0F=\BF\9AAB\94\95\92E0(\8F\A3\E5\E2>\06\02!\00\E4\ED\C0\DB:\C5r\B1\E2\F5\E8\ABjh\06S\98}\CFA\02}\FE\FF\A1\05Q\9D\89\ED\BF\08\00", align 16
@.str.51 = private unnamed_addr constant [9 x i8] c"tls1.sct\00", align 1
@__const.test_encode_tls_sct.log_id = private unnamed_addr constant [45 x i8] c"3xwuwRUAlFJHqWFoMl3cXHlZ6PfG04j8AC4LvT9012Q=\00", align 16
@__const.test_encode_tls_sct.signature = private unnamed_addr constant [101 x i8] c"BAMARzBAMiBIL2dRrzXbplQ2vh/WZA89v5pBQpSVkkUwKI+j5eI+BgIhAOTtwNs6xXKx4vXoq2poBlOYfc9BAn3+/6EFUZ2J7b8I\00", align 16
@.str.52 = private unnamed_addr constant [108 x i8] c"sct = SCT_new_from_base64(SCT_VERSION_V1, log_id, CT_LOG_ENTRY_TYPE_X509, timestamp, extensions, signature)\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"abs((int)difftime(time(NULL), default_time))\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"time_tolerance\00", align 1
@__const.test_ctlog_from_base64.notb64 = private unnamed_addr constant [5 x i8] c"\01\02\03\04\00", align 1
@__const.test_ctlog_from_base64.pad = private unnamed_addr constant [5 x i8] c"====\00", align 1
@__const.test_ctlog_from_base64.name = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"!CTLOG_new_from_base64(&ctlogp, notb64, name)\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"!CTLOG_new_from_base64(&ctlogp, pad, name)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %call
  store i8* %spec.store.select, i8** @ct_dir, align 8
  %call1 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #7
  %cmp2 = icmp eq i8* %call1, null
  %spec.store.select5 = select i1 %cmp2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call1
  store i8* %spec.store.select5, i8** @certs_dir, align 8
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_no_scts_in_certificate) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_one_sct_in_certificate) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_multiple_scts_in_certificate) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_verify_one_sct) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_verify_multiple_scts) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_verify_fails_for_future_sct) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_decode_tls_sct) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_encode_tls_sct) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_default_ct_policy_eval_ctx_time_is_now) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_ctlog_from_base64) #7
  ret i32 1
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_no_scts_in_certificate() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 0, i32* %expected_sct_count, align 8, !tbaa !13
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_one_sct_in_certificate() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected_sct_count, align 8, !tbaa !13
  %sct_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 11
  store i8* %0, i8** %sct_dir, align 8, !tbaa !14
  %sct_text_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 12
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), i8** %sct_text_file, align 8, !tbaa !15
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_multiple_scts_in_certificate() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 3, i32* %expected_sct_count, align 8, !tbaa !13
  %sct_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 11
  store i8* %0, i8** %sct_dir, align 8, !tbaa !14
  %sct_text_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 12
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i8** %sct_text_file, align 8, !tbaa !15
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_verify_one_sct() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_valid_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 7
  store i32 1, i32* %expected_valid_sct_count, align 4, !tbaa !16
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected_sct_count, align 8, !tbaa !13
  %test_validity = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 13
  store i32 1, i32* %test_validity, align 8, !tbaa !17
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_verify_multiple_scts() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_valid_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 7
  store i32 3, i32* %expected_valid_sct_count, align 4, !tbaa !16
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 3, i32* %expected_sct_count, align 8, !tbaa !13
  %test_validity = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 13
  store i32 1, i32* %test_validity, align 8, !tbaa !17
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_verify_fails_for_future_sct() #0 {
entry:
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %epoch_time_in_ms = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 1
  store i64 1365094800000, i64* %epoch_time_in_ms, align 8, !tbaa !18
  %0 = load i8*, i8** @certs_dir, align 8, !tbaa !3
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 3
  store i8* %0, i8** %certs_dir, align 8, !tbaa !7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i8** %certificate_file, align 8, !tbaa !11
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 5
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0), i8** %issuer_file, align 8, !tbaa !12
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 6
  store i32 1, i32* %expected_sct_count, align 8, !tbaa !13
  %expected_valid_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 7
  store i32 0, i32* %expected_valid_sct_count, align 4, !tbaa !16
  %test_validity = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 13
  store i32 1, i32* %test_validity, align 8, !tbaa !17
  %call3 = tail call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_decode_tls_sct() #0 {
entry:
  %tls_sct_list = alloca [123 x i8], align 16
  %0 = getelementptr inbounds [123 x i8], [123 x i8]* %tls_sct_list, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 123, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(123) %0, i8* noundef nonnull align 16 dereferenceable(123) getelementptr inbounds ([123 x i8], [123 x i8]* @__const.test_decode_tls_sct.tls_sct_list, i64 0, i64 0), i64 123, i1 false)
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tls_sct_list1 = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 8
  store i8* %0, i8** %tls_sct_list1, align 8, !tbaa !19
  %tls_sct_list_len = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 9
  store i64 122, i64* %tls_sct_list_len, align 8, !tbaa !20
  %1 = load i8*, i8** @ct_dir, align 8, !tbaa !3
  %sct_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 11
  store i8* %1, i8** %sct_dir, align 8, !tbaa !14
  %sct_text_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8** %sct_text_file, align 8, !tbaa !15
  %call4 = call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 123, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_encode_tls_sct() #0 {
entry:
  %log_id = alloca [45 x i8], align 16
  %extensions = alloca [1 x i8], align 1
  %signature = alloca [101 x i8], align 16
  %0 = getelementptr inbounds [45 x i8], [45 x i8]* %log_id, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 45, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(45) %0, i8* noundef nonnull align 16 dereferenceable(45) getelementptr inbounds ([45 x i8], [45 x i8]* @__const.test_encode_tls_sct.log_id, i64 0, i64 0), i64 45, i1 false)
  %1 = getelementptr inbounds [1 x i8], [1 x i8]* %extensions, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #9
  store i8 0, i8* %1, align 1
  %2 = getelementptr inbounds [101 x i8], [101 x i8]* %signature, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 101, i8* nonnull %2) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(101) %2, i8* noundef nonnull align 16 dereferenceable(101) getelementptr inbounds ([101 x i8], [101 x i8]* @__const.test_encode_tls_sct.signature, i64 0, i64 0), i64 101, i1 false)
  %call = tail call fastcc %struct.ct_test_fixture* @set_up(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ct_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %sct_list = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 10
  %3 = bitcast %struct.stack_st_SCT** %sct_list to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %3, align 8, !tbaa !21
  %call4 = call %struct.sct_st* @SCT_new_from_base64(i8 noundef zeroext 0, i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1, i8* noundef nonnull %1, i8* noundef nonnull %2) #7
  %4 = bitcast %struct.sct_st* %call4 to i8*
  %call5 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.52, i64 0, i64 0), i8* noundef %4) #7
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %5 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %sct_list, align 8, !tbaa !21
  %call9 = call fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef %5) #8
  %call11 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef %4) #7
  %6 = load i8*, i8** @ct_dir, align 8, !tbaa !3
  %sct_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 11
  store i8* %6, i8** %sct_dir, align 8, !tbaa !14
  %sct_text_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %call, i64 0, i32 12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8** %sct_text_file, align 8, !tbaa !15
  %call14 = call fastcc i32 @execute_cert_test(%struct.ct_test_fixture* noundef nonnull %call) #8
  call fastcc void @tear_down(%struct.ct_test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call14, %if.end7 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 101, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 45, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_default_ct_policy_eval_ctx_time_is_now() #0 {
entry:
  %call = tail call %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new() #7
  %call1 = tail call i64 @CT_POLICY_EVAL_CTX_get_time(%struct.ct_policy_eval_ctx_st* noundef %call) #7
  %div = udiv i64 %call1, 1000
  %call2 = tail call i64 @time(i64* noundef null) #7
  %call3 = tail call double @difftime(i64 noundef %call2, i64 noundef %div) #10
  %conv = fptosi double %call3 to i32
  %call4 = tail call i32 @abs(i32 noundef %conv) #10
  %conv5 = sext i32 %call4 to i64
  %call6 = tail call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i64 noundef %conv5, i64 noundef 600) #7
  %tobool.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool.not to i32
  tail call void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef %call) #7
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ctlog_from_base64() #0 {
entry:
  %ctlogp = alloca %struct.ctlog_st*, align 8
  %notb64 = alloca [5 x i8], align 1
  %pad = alloca [5 x i8], align 1
  %name = alloca [5 x i8], align 1
  %0 = bitcast %struct.ctlog_st** %ctlogp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.ctlog_st* null, %struct.ctlog_st** %ctlogp, align 8, !tbaa !3
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %notb64, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %1) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %1, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_ctlog_from_base64.notb64, i64 0, i64 0), i64 5, i1 false)
  %2 = getelementptr inbounds [5 x i8], [5 x i8]* %pad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %2) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %2, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_ctlog_from_base64.pad, i64 0, i64 0), i64 5, i1 false)
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %3, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_ctlog_from_base64.name, i64 0, i64 0), i64 5, i1 false)
  %call = call i32 @CTLOG_new_from_base64(%struct.ctlog_st** noundef nonnull %ctlogp, i8* noundef nonnull %1, i8* noundef nonnull %3) #7
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call2 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 noundef %lnot.ext) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = call i32 @CTLOG_new_from_base64(%struct.ctlog_st** noundef nonnull %ctlogp, i8* noundef nonnull %2, i8* noundef nonnull %3) #7
  %tobool7.not = icmp eq i32 %call6, 0
  %lnot.ext9 = zext i1 %tobool7.not to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i64 0, i64 0), i32 noundef %lnot.ext9) #7
  %tobool13.not = icmp ne i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ct_test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 64) #7
  %0 = bitcast i8* %call to %struct.ct_test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !22
  %epoch_time_in_ms = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %epoch_time_in_ms to i64*
  store i64 1580335307000, i64* %1, align 8, !tbaa !18
  %call3 = tail call %struct.ctlog_store_st* @CTLOG_STORE_new() #7
  %ctlog_store = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %ctlog_store to %struct.ctlog_store_st**
  store %struct.ctlog_store_st* %call3, %struct.ctlog_store_st** %2, align 8, !tbaa !23
  %3 = bitcast %struct.ctlog_store_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i8* noundef %3) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %2, align 8, !tbaa !23
  %call7 = tail call i32 @CTLOG_STORE_load_default_file(%struct.ctlog_store_st* noundef %4) #7
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call7, i32 noundef 1) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then12, label %cleanup

end:                                              ; preds = %entry
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %end, %lor.lhs.false, %if.end
  %ctlog_store13 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %ctlog_store13 to %struct.ctlog_store_st**
  %6 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %5, align 8, !tbaa !23
  tail call void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef %6) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %end
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 77) #7
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #7
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end14
  %retval.0 = phi %struct.ct_test_fixture* [ null, %if.end14 ], [ %0, %lor.lhs.false ]
  ret %struct.ct_test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_cert_test(%struct.ct_test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %scts = alloca %struct.stack_st_SCT*, align 8
  %expected_sct_text = alloca [8096 x i8], align 16
  %tls_sct_list = alloca i8*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.stack_st_SCT** %scts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.stack_st_SCT* null, %struct.stack_st_SCT** %scts, align 8, !tbaa !3
  %1 = getelementptr inbounds [8096 x i8], [8096 x i8]* %expected_sct_text, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8096, i8* nonnull %1) #9
  %2 = bitcast i8** %tls_sct_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %tls_sct_list, align 8, !tbaa !3
  %call = tail call %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new() #7
  %sct_text_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 12
  %3 = load i8*, i8** %sct_text_file, align 8, !tbaa !15
  %cmp.not = icmp eq i8* %3, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %sct_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 11
  %4 = load i8*, i8** %sct_dir, align 8, !tbaa !14
  %call2 = call fastcc i32 @read_text_file(i8* noundef %4, i8* noundef nonnull %3, i8* noundef nonnull %1) #8
  %call3 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %idxprom = sext i32 %call2 to i64
  %arrayidx = getelementptr inbounds [8096 x i8], [8096 x i8]* %expected_sct_text, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !24
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %ctlog_store = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 2
  %5 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !23
  call void @CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(%struct.ct_policy_eval_ctx_st* noundef %call, %struct.ctlog_store_st* noundef %5) #7
  %epoch_time_in_ms = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 1
  %6 = load i64, i64* %epoch_time_in_ms, align 8, !tbaa !18
  call void @CT_POLICY_EVAL_CTX_set_time(%struct.ct_policy_eval_ctx_st* noundef %call, i64 noundef %6) #7
  %certificate_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 4
  %7 = load i8*, i8** %certificate_file, align 8, !tbaa !11
  %cmp6.not = icmp eq i8* %7, null
  br i1 %cmp6.not, label %if.end69, label %if.then7

if.then7:                                         ; preds = %if.end5
  %certs_dir = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 3
  %8 = load i8*, i8** %certs_dir, align 8, !tbaa !7
  %call9 = call fastcc %struct.x509_st* @load_pem_cert(i8* noundef %8, i8* noundef nonnull %7) #8
  %9 = bitcast %struct.x509_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i64 0, i64 0), i8* noundef %9) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %if.end13

if.end13:                                         ; preds = %if.then7
  %call14 = call i32 @CT_POLICY_EVAL_CTX_set1_cert(%struct.ct_policy_eval_ctx_st* noundef %call, %struct.x509_st* noundef %call9) #7
  %issuer_file = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 5
  %10 = load i8*, i8** %issuer_file, align 8, !tbaa !12
  %cmp15.not = icmp eq i8* %10, null
  br i1 %cmp15.not, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end13
  %11 = load i8*, i8** %certs_dir, align 8, !tbaa !7
  %call19 = call fastcc %struct.x509_st* @load_pem_cert(i8* noundef %11, i8* noundef nonnull %10) #8
  %12 = bitcast %struct.x509_st* %call19 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i64 0, i64 0), i8* noundef %12) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %if.then16
  %call24 = call i32 @CT_POLICY_EVAL_CTX_set1_issuer(%struct.ct_policy_eval_ctx_st* noundef %call, %struct.x509_st* noundef %call19) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end13
  %issuer.0 = phi %struct.x509_st* [ %call19, %if.end23 ], [ null, %if.end13 ]
  %call26 = call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef %call9, i32 noundef 951, i32 noundef -1) #7
  %call27 = call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef %call9, i32 noundef %call26) #7
  %expected_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 6
  %13 = load i32, i32* %expected_sct_count, align 8, !tbaa !13
  %cmp28 = icmp sgt i32 %13, 0
  %14 = bitcast %struct.X509_extension_st* %call27 to i8*
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %call30 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef %14) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %if.end33

if.end33:                                         ; preds = %if.then29
  %15 = load i8*, i8** %sct_text_file, align 8, !tbaa !15
  %tobool35.not = icmp eq i8* %15, null
  br i1 %tobool35.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33
  %call37 = call fastcc i32 @compare_extension_printout(%struct.X509_extension_st* noundef %call27, i8* noundef nonnull %1) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %end, label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %if.end33
  %call41 = call i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef %call27) #7
  %16 = bitcast %struct.stack_st_SCT** %scts to i8**
  store i8* %call41, i8** %16, align 8, !tbaa !3
  %.cast = bitcast i8* %call41 to %struct.stack_st_SCT*
  %call42186 = call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef %.cast) #8
  %call43187 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call42186) #7
  %cmp44188 = icmp sgt i32 %call43187, 0
  br i1 %cmp44188, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call43 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call42186) #7
  %cmp44 = icmp slt i32 %inc, %call43
  br i1 %cmp44, label %for.body, label %for.end, !llvm.loop !25

for.body:                                         ; preds = %if.end40, %for.cond
  %i.0189 = phi i32 [ %inc, %for.cond ], [ 0, %if.end40 ]
  %call46 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call42186, i32 noundef %i.0189) #7
  %17 = bitcast i8* %call46 to %struct.sct_st*
  %call47 = call i32 @SCT_get_source(%struct.sct_st* noundef %17) #7
  %call48 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call47, i32 noundef 2) #7
  %tobool49.not = icmp eq i32 %call48, 0
  %inc = add nuw nsw i32 %i.0189, 1
  br i1 %tobool49.not, label %end, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end40
  %test_validity = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 13
  %18 = load i32, i32* %test_validity, align 8, !tbaa !17
  %tobool52.not = icmp eq i32 %18, 0
  br i1 %tobool52.not, label %if.end69, label %if.then53

if.then53:                                        ; preds = %for.end
  %call54 = call fastcc i32 @assert_validity(%struct.ct_test_fixture* noundef nonnull %fixture, %struct.stack_st_SCT* noundef %.cast, %struct.ct_policy_eval_ctx_st* noundef %call) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %if.end69

if.else:                                          ; preds = %if.end25
  %call59 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* noundef %14) #7
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %end, label %if.end69

if.end69:                                         ; preds = %if.else, %for.end, %if.then53, %if.end5
  %issuer.2 = phi %struct.x509_st* [ null, %if.end5 ], [ %issuer.0, %if.then53 ], [ %issuer.0, %for.end ], [ %issuer.0, %if.else ]
  %cert.0 = phi %struct.x509_st* [ null, %if.end5 ], [ %call9, %if.then53 ], [ %call9, %for.end ], [ %call9, %if.else ]
  %tls_sct_list70 = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 8
  %19 = load i8*, i8** %tls_sct_list70, align 8, !tbaa !19
  %cmp71.not = icmp eq i8* %19, null
  br i1 %cmp71.not, label %end, label %if.then72

if.then72:                                        ; preds = %if.end69
  %20 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #9
  store i8* %19, i8** %p, align 8, !tbaa !3
  %tls_sct_list_len74 = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 9
  %21 = load i64, i64* %tls_sct_list_len74, align 8, !tbaa !20
  %call75 = call %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef nonnull %scts, i8** noundef nonnull %p, i64 noundef %21) #7
  %22 = bitcast %struct.stack_st_SCT* %call75 to i8*
  %call76 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i8* noundef %22) #7
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup105.thread, label %if.end79

if.end79:                                         ; preds = %if.then72
  %test_validity80 = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 13
  %23 = load i32, i32* %test_validity80, align 8, !tbaa !17
  %tobool81 = icmp ne i32 %23, 0
  %cmp83 = icmp ne %struct.x509_st* %cert.0, null
  %or.cond = select i1 %tobool81, i1 %cmp83, i1 false
  br i1 %or.cond, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end79
  %24 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !3
  %call85 = call fastcc i32 @assert_validity(%struct.ct_test_fixture* noundef nonnull %fixture, %struct.stack_st_SCT* noundef %24, %struct.ct_policy_eval_ctx_st* noundef %call) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup105.thread, label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end79
  %25 = load i8*, i8** %sct_text_file, align 8, !tbaa !15
  %tobool91.not = icmp eq i8* %25, null
  br i1 %tobool91.not, label %if.end97, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.end89
  %26 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !3
  %call94 = call fastcc i32 @compare_sct_list_printout(%struct.stack_st_SCT* noundef %26, i8* noundef nonnull %1) #8
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup105.thread, label %if.end97

if.end97:                                         ; preds = %land.lhs.true92, %if.end89
  %27 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !3
  %call98 = call i32 @i2o_SCT_LIST(%struct.stack_st_SCT* noundef %27, i8** noundef nonnull %tls_sct_list) #7
  %conv = sext i32 %call98 to i64
  %28 = load i8*, i8** %tls_sct_list70, align 8, !tbaa !19
  %29 = load i64, i64* %tls_sct_list_len74, align 8, !tbaa !20
  %30 = load i8*, i8** %tls_sct_list, align 8, !tbaa !3
  %call101 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef %28, i64 noundef %29, i8* noundef %30, i64 noundef %conv) #7
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %cleanup105.thread, label %cleanup105

cleanup105.thread:                                ; preds = %if.then72, %if.then84, %land.lhs.true92, %if.end97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  br label %end

cleanup105:                                       ; preds = %if.end97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  br label %end

end:                                              ; preds = %for.body, %if.else, %if.then53, %land.lhs.true, %if.then29, %if.then16, %if.then7, %if.end69, %cleanup105, %cleanup105.thread, %if.then
  %issuer.3 = phi %struct.x509_st* [ null, %if.then ], [ %issuer.2, %cleanup105.thread ], [ %issuer.2, %cleanup105 ], [ %issuer.2, %if.end69 ], [ %issuer.0, %if.else ], [ %issuer.0, %if.then53 ], [ %issuer.0, %land.lhs.true ], [ %issuer.0, %if.then29 ], [ %call19, %if.then16 ], [ null, %if.then7 ], [ %issuer.0, %for.body ]
  %cert.1 = phi %struct.x509_st* [ null, %if.then ], [ %cert.0, %cleanup105.thread ], [ %cert.0, %cleanup105 ], [ %cert.0, %if.end69 ], [ %call9, %if.else ], [ %call9, %if.then53 ], [ %call9, %land.lhs.true ], [ %call9, %if.then29 ], [ %call9, %if.then16 ], [ %call9, %if.then7 ], [ %call9, %for.body ]
  %success.0 = phi i32 [ 0, %if.then ], [ 0, %cleanup105.thread ], [ 1, %cleanup105 ], [ 1, %if.end69 ], [ 0, %if.else ], [ 0, %if.then53 ], [ 0, %land.lhs.true ], [ 0, %if.then29 ], [ 0, %if.then16 ], [ 0, %if.then7 ], [ 0, %for.body ]
  call void @X509_free(%struct.x509_st* noundef %cert.1) #7
  call void @X509_free(%struct.x509_st* noundef %issuer.3) #7
  %31 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %scts, align 8, !tbaa !3
  call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %31) #7
  call void @SCT_free(%struct.sct_st* noundef null) #7
  call void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef %call) #7
  %32 = load i8*, i8** %tls_sct_list, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 329) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8096, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %success.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.ct_test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ct_test_fixture* %fixture, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ctlog_store = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %ctlog_store, align 8, !tbaa !23
  tail call void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef %0) #7
  %sct_list = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 10
  %1 = load %struct.stack_st_SCT*, %struct.stack_st_SCT** %sct_list, align 8, !tbaa !21
  tail call void @SCT_LIST_free(%struct.stack_st_SCT* noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast %struct.ct_test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 88) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ctlog_store_st* @CTLOG_STORE_new() local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @CTLOG_STORE_load_default_file(%struct.ctlog_store_st* noundef) local_unnamed_addr #2

declare dso_local void @CTLOG_STORE_free(%struct.ctlog_store_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_text_file(i8* noundef %dir, i8* noundef %file, i8* noundef %buffer) unnamed_addr #0 {
entry:
  %call = tail call i8* @test_mk_file_path(i8* noundef %dir, i8* noundef %file) #7
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #7
  %cmp2.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef %buffer, i32 noundef 8095) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %len.0 = phi i32 [ %call4, %if.then3 ], [ -1, %if.then ]
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %len.1 = phi i32 [ %len.0, %if.end ], [ -1, %entry ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 122) #7
  ret i32 %len.1
}

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(%struct.ct_policy_eval_ctx_st* noundef, %struct.ctlog_store_st* noundef) local_unnamed_addr #2

declare dso_local void @CT_POLICY_EVAL_CTX_set_time(%struct.ct_policy_eval_ctx_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @load_pem_cert(i8* noundef %dir, i8* noundef %file) unnamed_addr #0 {
entry:
  %call = tail call i8* @test_mk_file_path(i8* noundef %dir, i8* noundef %file) #7
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #7
  %cmp2.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %cert.0 = phi %struct.x509_st* [ %call4, %if.then3 ], [ null, %if.then ]
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %cert.1 = phi %struct.x509_st* [ %cert.0, %if.end ], [ null, %entry ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 104) #7
  ret %struct.x509_st* %cert.1
}

declare dso_local i32 @CT_POLICY_EVAL_CTX_set1_cert(%struct.ct_policy_eval_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @CT_POLICY_EVAL_CTX_set1_issuer(%struct.ct_policy_eval_ctx_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @compare_extension_printout(%struct.X509_extension_st* noundef %extension, i8* noundef %expected_output) unnamed_addr #0 {
entry:
  %actual_output = alloca i8*, align 8
  %0 = bitcast i8** %actual_output to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %actual_output, align 8, !tbaa !3
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @X509V3_EXT_print(%struct.bio_st* noundef %call1, %struct.X509_extension_st* noundef %extension, i64 noundef 0, i32 noundef 0) #7
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #7
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv8) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 1) #7
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv15) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %if.end19

if.end19:                                         ; preds = %if.end12
  %call20 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %2 = load i8*, i8** %actual_output, align 8, !tbaa !3
  %call21 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* noundef %2, i8* noundef %expected_output) #7
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %end

end:                                              ; preds = %if.end19, %if.end12, %if.end, %entry, %lor.lhs.false
  %result.0 = phi i32 [ 0, %if.end12 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end19 ]
  %call25 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %result.0
}

declare dso_local i8* @X509V3_EXT_d2i(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SCT_get_source(%struct.sct_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @assert_validity(%struct.ct_test_fixture* nocapture noundef readonly %fixture, %struct.stack_st_SCT* noundef %scts, %struct.ct_policy_eval_ctx_st* noundef %policy_ctx) unnamed_addr #0 {
entry:
  %call = tail call i32 @SCT_LIST_validate(%struct.stack_st_SCT* noundef %scts, %struct.ct_policy_eval_ctx_st* noundef %policy_ctx) #7
  %call1 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_SCT_sk_type(%struct.stack_st_SCT* noundef %scts) #8
  %call334 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #7
  %cmp35 = icmp sgt i32 %call334, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %sw.epilog
  %invalid_sct_count.038 = phi i32 [ %invalid_sct_count.1, %sw.epilog ], [ 0, %for.cond.preheader ]
  %i.037 = phi i32 [ %inc10, %sw.epilog ], [ 0, %for.cond.preheader ]
  %valid_sct_count.036 = phi i32 [ %valid_sct_count.1, %sw.epilog ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.037) #7
  %0 = bitcast i8* %call5 to %struct.sct_st*
  %call6 = tail call i32 @SCT_get_validation_status(%struct.sct_st* noundef %0) #7
  switch i32 %call6, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %valid_sct_count.036, 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  %inc8 = add nsw i32 %invalid_sct_count.038, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb7, %sw.bb
  %valid_sct_count.1 = phi i32 [ %valid_sct_count.036, %for.body ], [ %valid_sct_count.036, %sw.bb7 ], [ %inc, %sw.bb ]
  %invalid_sct_count.1 = phi i32 [ %invalid_sct_count.038, %for.body ], [ %inc8, %sw.bb7 ], [ %invalid_sct_count.038, %sw.bb ]
  %inc10 = add nuw nsw i32 %i.037, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #7
  %cmp = icmp slt i32 %inc10, %call3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !27

for.end:                                          ; preds = %sw.epilog, %for.cond.preheader
  %valid_sct_count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %valid_sct_count.1, %sw.epilog ]
  %invalid_sct_count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %invalid_sct_count.1, %sw.epilog ]
  %expected_valid_sct_count = getelementptr inbounds %struct.ct_test_fixture, %struct.ct_test_fixture* %fixture, i64 0, i32 7
  %1 = load i32, i32* %expected_valid_sct_count, align 4, !tbaa !16
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0), i32 noundef %valid_sct_count.0.lcssa, i32 noundef %1) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %for.end
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #7
  %2 = add i32 %invalid_sct_count.0.lcssa, %valid_sct_count.0.lcssa
  %sub16 = sub i32 %call15, %2
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0), i32 noundef %invalid_sct_count.0.lcssa, i32 noundef %sub16) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %entry ], [ 1, %for.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_SCT* @o2i_SCT_LIST(%struct.stack_st_SCT** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @compare_sct_list_printout(%struct.stack_st_SCT* noundef %sct, i8* noundef %expected_output) unnamed_addr #0 {
entry:
  %actual_output = alloca i8*, align 8
  %0 = bitcast i8** %actual_output to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %actual_output, align 8, !tbaa !3
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  tail call void @SCT_LIST_print(%struct.stack_st_SCT* noundef %sct, %struct.bio_st* noundef %call1, i32 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.ctlog_store_st* noundef null) #7
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 1) #7
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %2 = load i8*, i8** %actual_output, align 8, !tbaa !3
  %call9 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8* noundef %2, i8* noundef %expected_output) #7
  %tobool10.not = icmp ne i32 %call9, 0
  %spec.select = zext i1 %tobool10.not to i32
  br label %end

end:                                              ; preds = %if.end7, %if.end, %entry
  %result.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end7 ]
  %call13 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %result.0
}

declare dso_local i32 @i2o_SCT_LIST(%struct.stack_st_SCT* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @SCT_LIST_free(%struct.stack_st_SCT* noundef) local_unnamed_addr #2

declare dso_local void @SCT_free(%struct.sct_st* noundef) local_unnamed_addr #2

declare dso_local void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i8* @test_mk_file_path(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509V3_EXT_print(%struct.bio_st* noundef, %struct.X509_extension_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SCT_LIST_validate(%struct.stack_st_SCT* noundef, %struct.ct_policy_eval_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SCT_get_validation_status(%struct.sct_st* noundef) local_unnamed_addr #2

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @SCT_LIST_print(%struct.stack_st_SCT* noundef, %struct.bio_st* noundef, i32 noundef, i8* noundef, %struct.ctlog_store_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local %struct.sct_st* @SCT_new_from_base64(i8 noundef zeroext, i8* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SCT_sk_type(%struct.stack_st_SCT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SCT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i64 @CT_POLICY_EVAL_CTX_get_time(%struct.ct_policy_eval_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_time_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #1

declare dso_local i32 @CTLOG_new_from_base64(%struct.ctlog_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"ct_test_fixture", !4, i64 0, !9, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !10, i64 48, !10, i64 52, !4, i64 56, !9, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !10, i64 96}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !4, i64 32}
!12 = !{!8, !4, i64 40}
!13 = !{!8, !10, i64 48}
!14 = !{!8, !4, i64 80}
!15 = !{!8, !4, i64 88}
!16 = !{!8, !10, i64 52}
!17 = !{!8, !10, i64 96}
!18 = !{!8, !9, i64 8}
!19 = !{!8, !4, i64 56}
!20 = !{!8, !9, i64 64}
!21 = !{!8, !4, i64 72}
!22 = !{!8, !4, i64 0}
!23 = !{!8, !4, i64 16}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
