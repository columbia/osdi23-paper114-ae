; ModuleID = 'test/helpers/ssl_test_ctx.c'
source_filename = "test/helpers/ssl_test_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_enum = type { i8*, i32 }
%struct.ssl_test_ctx_option = type { i8*, i32 (%struct.SSL_TEST_CTX*, i8*)* }
%struct.SSL_TEST_CTX = type { i32, i32, i32, i32, i32, %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, i32, i8*, i8*, %struct.ossl_lib_ctx_st* }
%struct.SSL_TEST_EXTRA_CONF = type { %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF }
%struct.SSL_TEST_CLIENT_CONF = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.SSL_TEST_SERVER_CONF = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.stack_st_X509_NAME = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_test_client_option = type { i8*, i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* }
%struct.ssl_test_server_option = type { i8*, i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* }
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque

@ssl_test_results = internal constant [5 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 3 }, %struct.test_enum { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 4 }], align 16
@ssl_alerts = internal constant [7 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 48 }, %struct.test_enum { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 40 }, %struct.test_enum { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 112 }, %struct.test_enum { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 100 }, %struct.test_enum { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 42 }, %struct.test_enum { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 120 }, %struct.test_enum { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 116 }], align 16
@ssl_protocols = internal constant [7 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 772 }, %struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 771 }, %struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 770 }, %struct.test_enum { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 769 }, %struct.test_enum { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 768 }, %struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 65279 }, %struct.test_enum { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 65277 }], align 16
@ssl_verify_callbacks = internal constant [4 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 3 }], align 16
@ssl_servername = internal constant [4 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 3 }], align 16
@ssl_servername_callbacks = internal constant [6 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i32 3 }, %struct.test_enum { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i32 4 }, %struct.test_enum { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 5 }], align 16
@ssl_session_ticket = internal constant [3 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 2 }], align 16
@ssl_session_id = internal constant [3 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 2 }], align 16
@ssl_test_methods = internal constant [2 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 1 }], align 16
@ssl_handshake_modes = internal constant [7 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 3 }, %struct.test_enum { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 4 }, %struct.test_enum { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 5 }, %struct.test_enum { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i32 6 }], align 16
@ssl_ct_validation_modes = internal constant [3 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 2 }], align 16
@ssl_certstatus = internal constant [3 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 2 }], align 16
@ssl_max_fragment_len_mode = internal constant [5 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.test_enum { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 2 }, %struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 3 }, %struct.test_enum { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 4 }], align 16
@.str = private unnamed_addr constant [28 x i8] c"test/helpers/ssl_test_ctx.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"sk_conf = NCONF_get_section(conf, test_section)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ctx = SSL_TEST_CTX_new(libctx)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resume-client\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resume-server\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"resume-server2\00", align 1
@ssl_test_ctx_options = internal unnamed_addr constant [30 x %struct.ssl_test_ctx_option] [%struct.ssl_test_ctx_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_result }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_client_alert }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_server_alert }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_protocol }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_servername }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.92, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_session_ticket }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_compression_expected }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_session_id }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_method }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_expected_npn_protocol }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_expected_alpn_protocol }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_handshake_mode }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_key_update_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_resumption_expected }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_app_data_size }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_max_fragment_size }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_tmp_key_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_server_cert_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.105, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_server_sign_hash }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_server_sign_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_server_ca_names }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.108, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_client_cert_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_client_sign_hash }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.110, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_client_sign_type }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_expected_client_ca_names }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_use_sctp }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.113, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_enable_client_sctp_label_bug }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_enable_server_sctp_label_bug }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_expected_cipher }, %struct.ssl_test_ctx_option { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i32 0, i32 0), i32 (%struct.SSL_TEST_CTX*, i8*)* @parse_test_expected_session_ticket_app_data }], align 16
@.str.9 = private unnamed_addr constant [27 x i8] c"Bad value %s for option %s\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Unknown test option: %s\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"InvalidValue\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ServerFail\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ClientFail\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"InternalError\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"FirstHandshakeFailed\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"UnknownCA\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"HandshakeFailure\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"UnrecognizedName\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"NoRenegotiation\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"BadCertificate\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"NoApplicationProtocol\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"CertificateRequired\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"AcceptAll\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"RetryOnce\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"RejectAll\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"server1\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"IgnoreMismatch\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"RejectMismatch\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ClientHelloIgnoreMismatch\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"ClientHelloRejectMismatch\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"ClientHelloNoV12\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Ignore\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"DTLS\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"RenegotiateServer\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"RenegotiateClient\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"KeyUpdateServer\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"KeyUpdateClient\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"PostHandshakeAuth\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Permissive\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Strict\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"GoodResponse\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"BadResponse\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"512\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"sk_conf = NCONF_get_section(conf, client_section)\00", align 1
@ssl_test_client_options = internal unnamed_addr constant [11 x %struct.ssl_test_client_option] [%struct.ssl_test_client_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_verify_callback }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_servername }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_npn_protocols }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_alpn_protocols }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_ct_validation }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_reneg_ciphers }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_srp_user }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_srp_password }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_max_fragment_len_mode }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_enable_pha }, %struct.ssl_test_client_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0), i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)* @parse_client_no_extms_on_reneg }], align 16
@.str.63 = private unnamed_addr constant [15 x i8] c"VerifyCallback\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"NPNProtocols\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"ALPNProtocols\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"CTValidation\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"RenegotiateCiphers\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"SRPUser\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"SRPPassword\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"MaxFragmentLenExt\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"EnablePHA\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"RenegotiateNoExtms\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"ctx->npn_protocols\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"ctx->alpn_protocols\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"ctx->reneg_ciphers\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"ctx->srp_user\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"ctx->srp_password\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"parse_boolean given: '%s'\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"sk_conf = NCONF_get_section(conf, server_section)\00", align 1
@ssl_test_server_options = internal unnamed_addr constant [9 x %struct.ssl_test_server_option] [%struct.ssl_test_server_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_servername_callback }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_npn_protocols }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_alpn_protocols }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_broken_session_ticket }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_certstatus }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_srp_user }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_srp_password }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_force_pha }, %struct.ssl_test_server_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i32 0, i32 0), i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)* @parse_server_session_ticket_app_data }], align 16
@.str.81 = private unnamed_addr constant [19 x i8] c"ServerNameCallback\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"BrokenSessionTicket\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"CertStatus\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"ForcePHA\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"SessionTicketAppData\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"ctx->session_ticket_app_data\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"ExpectedResult\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"ExpectedClientAlert\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"ExpectedServerAlert\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"ExpectedProtocol\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"ExpectedServerName\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"SessionTicketExpected\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"CompressionExpected\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"SessionIdExpected\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"ExpectedNPNProtocol\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"ExpectedALPNProtocol\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"HandshakeMode\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"KeyUpdateType\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"ResumptionExpected\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"ApplicationData\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"MaxFragmentSize\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"ExpectedTmpKeyType\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"ExpectedServerCertType\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"ExpectedServerSignHash\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"ExpectedServerSignType\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"ExpectedServerCANames\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"ExpectedClientCertType\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"ExpectedClientSignHash\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"ExpectedClientSignType\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"ExpectedClientCANames\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"UseSCTP\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"EnableClientSCTPLabelBug\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"EnableServerSCTPLabelBug\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"ExpectedCipher\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"ExpectedSessionTicketAppData\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"ctx->expected_npn_protocol\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"ctx->expected_alpn_protocol\00", align 1
@ssl_key_update_types = internal constant [2 x %struct.test_enum] [%struct.test_enum { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i32 0, i32 0), i32 1 }, %struct.test_enum { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i32 0, i32 0), i32 0 }], align 16
@.str.119 = private unnamed_addr constant [19 x i8] c"KeyUpdateRequested\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"KeyUpdateNotRequested\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"ctx->expected_cipher\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"ctx->expected_session_ticket_app_data\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_test_result_name(i32 noundef %result) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([5 x %struct.test_enum], [5 x %struct.test_enum]* @ssl_test_results, i64 0, i64 0), i64 noundef 5, i32 noundef %result) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @enum_name(%struct.test_enum* nocapture noundef readonly %enums, i64 noundef %num_enums, i32 noundef %value) unnamed_addr #0 {
entry:
  %cmp10.not = icmp eq i64 %num_enums, 0
  br i1 %cmp10.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.011 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %value1 = getelementptr inbounds %struct.test_enum, %struct.test_enum* %enums, i64 %i.011, i32 1
  %0 = load i32, i32* %value1, align 8, !tbaa !3
  %cmp2 = icmp eq i32 %0, %value
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.test_enum, %struct.test_enum* %enums, i64 %i.011, i32 0
  %1 = load i8*, i8** %name, align 8, !tbaa !9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.011, 1
  %exitcond.not = icmp eq i64 %inc, %num_enums
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !10

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %entry ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_alert_name(i32 noundef %alert) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_alerts, i64 0, i64 0), i64 noundef 7, i32 noundef %alert) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_protocol_name(i32 noundef %protocol) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_protocols, i64 0, i64 0), i64 noundef 7, i32 noundef %protocol) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_verify_callback_name(i32 noundef %callback) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([4 x %struct.test_enum], [4 x %struct.test_enum]* @ssl_verify_callbacks, i64 0, i64 0), i64 noundef 4, i32 noundef %callback) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_servername_name(i32 noundef %server) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([4 x %struct.test_enum], [4 x %struct.test_enum]* @ssl_servername, i64 0, i64 0), i64 noundef 4, i32 noundef %server) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_servername_callback_name(i32 noundef %callback) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([6 x %struct.test_enum], [6 x %struct.test_enum]* @ssl_servername_callbacks, i64 0, i64 0), i64 noundef 6, i32 noundef %callback) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_session_ticket_name(i32 noundef %server) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_session_ticket, i64 0, i64 0), i64 noundef 3, i32 noundef %server) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_session_id_name(i32 noundef %server) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_session_id, i64 0, i64 0), i64 noundef 3, i32 noundef %server) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_test_method_name(i32 noundef %method) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([2 x %struct.test_enum], [2 x %struct.test_enum]* @ssl_test_methods, i64 0, i64 0), i64 noundef 2, i32 noundef %method) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_handshake_mode_name(i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_handshake_modes, i64 0, i64 0), i64 noundef 7, i32 noundef %mode) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_ct_validation_name(i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_ct_validation_modes, i64 0, i64 0), i64 noundef 3, i32 noundef %mode) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_certstatus_name(i32 noundef %cert_status) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_certstatus, i64 0, i64 0), i64 noundef 3, i32 noundef %cert_status) #9
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @ssl_max_fragment_len_name(i32 noundef %MFL_mode) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @enum_name(%struct.test_enum* noundef getelementptr inbounds ([5 x %struct.test_enum], [5 x %struct.test_enum]* @ssl_max_fragment_len_mode, i64 0, i64 0), i64 noundef 5, i32 noundef %MFL_mode) #9
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SSL_TEST_CTX* @SSL_TEST_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 568, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 730) #10
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds i8, i8* %call, i64 560
  %0 = bitcast i8* %libctx1 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %0, align 8, !tbaa !12
  %app_data_size = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %app_data_size to i32*
  store i32 256, i32* %1, align 8, !tbaa !17
  %max_fragment_size = getelementptr inbounds i8, i8* %call, i64 12
  %2 = bitcast i8* %max_fragment_size to i32*
  store i32 512, i32* %2, align 4, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i8* %call to %struct.SSL_TEST_CTX*
  ret %struct.SSL_TEST_CTX* %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %ctx) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.SSL_TEST_CTX* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @ssl_test_ctx_free_extra_data(%struct.SSL_TEST_CTX* noundef nonnull %ctx) #9
  %expected_npn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 14
  %0 = load i8*, i8** %expected_npn_protocol, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 768) #10
  %expected_alpn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 15
  %1 = load i8*, i8** %expected_alpn_protocol, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 769) #10
  %expected_session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 31
  %2 = load i8*, i8** %expected_session_ticket_app_data, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 770) #10
  %expected_server_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 21
  %3 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %expected_server_ca_names, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %3) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #10
  %expected_client_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 25
  %4 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %expected_client_ca_names, align 8, !tbaa !23
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %4) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #10
  %expected_cipher = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 30
  %5 = load i8*, i8** %expected_cipher, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 773) #10
  %6 = bitcast %struct.SSL_TEST_CTX* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 774) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_test_ctx_free_extra_data(%struct.SSL_TEST_CTX* nocapture noundef readonly %ctx) unnamed_addr #1 {
entry:
  %extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 5
  tail call fastcc void @ssl_test_extra_conf_free_data(%struct.SSL_TEST_EXTRA_CONF* noundef nonnull %extra) #9
  %resume_extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 6
  tail call fastcc void @ssl_test_extra_conf_free_data(%struct.SSL_TEST_EXTRA_CONF* noundef nonnull %resume_extra) #9
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SSL_TEST_CTX* @SSL_TEST_CTX_create(%struct.conf_st* noundef %conf, i8* noundef %test_section, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %test_section) #10
  %0 = bitcast %struct.stack_st_CONF_VALUE* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.SSL_TEST_CTX* @SSL_TEST_CTX_new(%struct.ossl_lib_ctx_st* noundef %libctx) #9
  %1 = bitcast %struct.SSL_TEST_CTX* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 852, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #9
  %call6159 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #10
  %cmp160 = icmp sgt i32 %call6159, 0
  br i1 %cmp160, label %for.body.lr.ph, label %cleanup104

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %server266 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 6, i32 2
  %server54 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 6, i32 1
  %client42 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 6, i32 0
  %server2 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 5, i32 2
  %server = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 5, i32 1
  %client = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %call2, i64 0, i32 5, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc101
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc102, %for.inc101 ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.0161) #10
  %name = getelementptr inbounds i8, i8* %call8, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %call9 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #11
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %value = getelementptr inbounds i8, i8* %call8, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !27
  %call12 = tail call fastcc i32 @parse_client_options(%struct.SSL_TEST_CLIENT_CONF* noundef nonnull %client, %struct.conf_st* noundef %conf, i8* noundef %5) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %for.inc101

if.else:                                          ; preds = %for.body
  %call17 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #11
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.else
  %value21 = getelementptr inbounds i8, i8* %call8, i64 16
  %6 = bitcast i8* %value21 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !27
  %call22 = tail call fastcc i32 @parse_server_options(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server, %struct.conf_st* noundef %conf, i8* noundef %7) #9
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %for.inc101

if.else26:                                        ; preds = %if.else
  %call28 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #11
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.else26
  %value32 = getelementptr inbounds i8, i8* %call8, i64 16
  %8 = bitcast i8* %value32 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !27
  %call33 = tail call fastcc i32 @parse_server_options(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server2, %struct.conf_st* noundef %conf, i8* noundef %9) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %for.inc101

if.else37:                                        ; preds = %if.else26
  %call39 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #11
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.else48

if.then41:                                        ; preds = %if.else37
  %value43 = getelementptr inbounds i8, i8* %call8, i64 16
  %10 = bitcast i8* %value43 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !27
  %call44 = tail call fastcc i32 @parse_client_options(%struct.SSL_TEST_CLIENT_CONF* noundef nonnull %client42, %struct.conf_st* noundef %conf, i8* noundef %11) #9
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %for.inc101

if.else48:                                        ; preds = %if.else37
  %call50 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #11
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.else60

if.then52:                                        ; preds = %if.else48
  %value55 = getelementptr inbounds i8, i8* %call8, i64 16
  %12 = bitcast i8* %value55 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !27
  %call56 = tail call fastcc i32 @parse_server_options(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server54, %struct.conf_st* noundef %conf, i8* noundef %13) #9
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %for.inc101

if.else60:                                        ; preds = %if.else48
  %call62 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #11
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %for.body75

if.then64:                                        ; preds = %if.else60
  %value67 = getelementptr inbounds i8, i8* %call8, i64 16
  %14 = bitcast i8* %value67 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !27
  %call68 = tail call fastcc i32 @parse_server_options(%struct.SSL_TEST_SERVER_CONF* noundef nonnull %server266, %struct.conf_st* noundef %conf, i8* noundef %15) #9
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %for.inc101

for.body75:                                       ; preds = %if.else60, %for.inc
  %j.0157 = phi i64 [ %inc, %for.inc ], [ 0, %if.else60 ]
  %name77 = getelementptr inbounds [30 x %struct.ssl_test_ctx_option], [30 x %struct.ssl_test_ctx_option]* @ssl_test_ctx_options, i64 0, i64 %j.0157, i32 0
  %16 = load i8*, i8** %name77, align 16, !tbaa !28
  %call78 = tail call i32 @strcmp(i8* noundef %3, i8* noundef %16) #11
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then80, label %for.inc

if.then80:                                        ; preds = %for.body75
  %parse = getelementptr inbounds [30 x %struct.ssl_test_ctx_option], [30 x %struct.ssl_test_ctx_option]* @ssl_test_ctx_options, i64 0, i64 %j.0157, i32 1
  %17 = load i32 (%struct.SSL_TEST_CTX*, i8*)*, i32 (%struct.SSL_TEST_CTX*, i8*)** %parse, align 8, !tbaa !30
  %value82 = getelementptr inbounds i8, i8* %call8, i64 16
  %18 = bitcast i8* %value82 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !27
  %call83 = tail call i32 %17(%struct.SSL_TEST_CTX* noundef %call2, i8* noundef %19) #10
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %for.inc101

if.then85:                                        ; preds = %if.then80
  %20 = bitcast i8* %name to i8**
  %21 = bitcast i8* %value82 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !27
  %23 = load i8*, i8** %20, align 8, !tbaa !25
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 886, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef %22, i8* noundef %23) #10
  br label %err

for.inc:                                          ; preds = %for.body75
  %inc = add nuw nsw i64 %j.0157, 1
  %exitcond.not = icmp eq i64 %inc, 30
  br i1 %exitcond.not, label %if.then91, label %for.body75, !llvm.loop !31

if.then91:                                        ; preds = %for.inc
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 894, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #10
  br label %err

for.inc101:                                       ; preds = %if.then80, %if.then19, %if.then41, %if.then64, %if.then52, %if.then30, %if.then11
  %inc102 = add nuw nsw i32 %i.0161, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #10
  %cmp = icmp slt i32 %inc102, %call6
  br i1 %cmp, label %for.body, label %cleanup104, !llvm.loop !32

err:                                              ; preds = %if.then64, %if.then52, %if.then41, %if.then30, %if.then19, %if.then11, %if.then85, %if.then91, %entry, %lor.lhs.false
  %ctx.0 = phi %struct.SSL_TEST_CTX* [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.then91 ], [ %call2, %if.then85 ], [ %call2, %if.then11 ], [ %call2, %if.then19 ], [ %call2, %if.then30 ], [ %call2, %if.then41 ], [ %call2, %if.then52 ], [ %call2, %if.then64 ]
  tail call void @SSL_TEST_CTX_free(%struct.SSL_TEST_CTX* noundef %ctx.0) #9
  br label %cleanup104

cleanup104:                                       ; preds = %for.inc101, %for.cond.preheader, %err
  %ctx.1 = phi %struct.SSL_TEST_CTX* [ null, %err ], [ %call2, %for.cond.preheader ], [ %call2, %for.inc101 ]
  ret %struct.SSL_TEST_CTX* %ctx.1
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_client_options(%struct.SSL_TEST_CLIENT_CONF* noundef %client, %struct.conf_st* noundef %conf, i8* noundef %client_section) unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %client_section) #10
  %0 = bitcast %struct.stack_st_CONF_VALUE* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.62, i64 0, i64 0), i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #9
  %call352 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp53 = icmp sgt i32 %call352, 0
  br i1 %cmp53, label %for.body, label %cleanup29

for.cond:                                         ; preds = %if.then12
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp = icmp slt i32 %inc27, %call3
  br i1 %cmp, label %for.body, label %cleanup29, !llvm.loop !33

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.054 = phi i32 [ %inc27, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.054) #10
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !25
  %call10 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0)) #11
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body
  %j.051.lcssa = phi i64 [ 0, %for.body ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ]
  %parse = getelementptr inbounds [11 x %struct.ssl_test_client_option], [11 x %struct.ssl_test_client_option]* @ssl_test_client_options, i64 0, i64 %j.051.lcssa, i32 1
  %3 = load i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)*, i32 (%struct.SSL_TEST_CLIENT_CONF*, i8*)** %parse, align 8, !tbaa !30
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !27
  %call14 = tail call i32 %3(%struct.SSL_TEST_CLIENT_CONF* noundef %client, i8* noundef %5) #10
  %tobool15.not = icmp eq i32 %call14, 0
  %inc27 = add nuw nsw i32 %i.054, 1
  br i1 %tobool15.not, label %if.then16, label %for.cond

if.then16:                                        ; preds = %if.then12
  %6 = bitcast i8* %name to i8**
  %7 = bitcast i8* %value to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !27
  %9 = load i8*, i8** %6, align 8, !tbaa !25
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 794, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i8* noundef %9) #10
  br label %cleanup29

for.inc:                                          ; preds = %for.body
  %call10.1 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0)) #11
  %cmp11.1 = icmp eq i32 %call10.1, 0
  br i1 %cmp11.1, label %if.then12, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call10.2 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0)) #11
  %cmp11.2 = icmp eq i32 %call10.2, 0
  br i1 %cmp11.2, label %if.then12, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call10.3 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0)) #11
  %cmp11.3 = icmp eq i32 %call10.3, 0
  br i1 %cmp11.3, label %if.then12, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call10.4 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #11
  %cmp11.4 = icmp eq i32 %call10.4, 0
  br i1 %cmp11.4, label %if.then12, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call10.5 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0)) #11
  %cmp11.5 = icmp eq i32 %call10.5, 0
  br i1 %cmp11.5, label %if.then12, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call10.6 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #11
  %cmp11.6 = icmp eq i32 %call10.6, 0
  br i1 %cmp11.6, label %if.then12, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call10.7 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0)) #11
  %cmp11.7 = icmp eq i32 %call10.7, 0
  br i1 %cmp11.7, label %if.then12, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call10.8 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0)) #11
  %cmp11.8 = icmp eq i32 %call10.8, 0
  br i1 %cmp11.8, label %if.then12, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %call10.9 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #11
  %cmp11.9 = icmp eq i32 %call10.9, 0
  br i1 %cmp11.9, label %if.then12, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %call10.10 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #11
  %cmp11.10 = icmp eq i32 %call10.10, 0
  br i1 %cmp11.10, label %if.then12, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %2) #10
  br label %cleanup29

cleanup29:                                        ; preds = %for.cond, %for.cond.preheader, %if.then16, %for.inc.10, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.inc.10 ], [ 0, %if.then16 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_server_options(%struct.SSL_TEST_SERVER_CONF* noundef %server, %struct.conf_st* noundef %conf, i8* noundef %server_section) unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef %server_section) #10
  %0 = bitcast %struct.stack_st_CONF_VALUE* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 817, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.80, i64 0, i64 0), i8* noundef %0) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #9
  %call352 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp53 = icmp sgt i32 %call352, 0
  br i1 %cmp53, label %for.body, label %cleanup29

for.cond:                                         ; preds = %if.then12
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #10
  %cmp = icmp slt i32 %inc27, %call3
  br i1 %cmp, label %for.body, label %cleanup29, !llvm.loop !34

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.054 = phi i32 [ %inc27, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.054) #10
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %1 = bitcast i8* %name to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !25
  %call10 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i64 0, i64 0)) #11
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body
  %j.051.lcssa = phi i64 [ 0, %for.body ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ]
  %parse = getelementptr inbounds [9 x %struct.ssl_test_server_option], [9 x %struct.ssl_test_server_option]* @ssl_test_server_options, i64 0, i64 %j.051.lcssa, i32 1
  %3 = load i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)*, i32 (%struct.SSL_TEST_SERVER_CONF*, i8*)** %parse, align 8, !tbaa !30
  %value = getelementptr inbounds i8, i8* %call5, i64 16
  %4 = bitcast i8* %value to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !27
  %call14 = tail call i32 %3(%struct.SSL_TEST_SERVER_CONF* noundef %server, i8* noundef %5) #10
  %tobool15.not = icmp eq i32 %call14, 0
  %inc27 = add nuw nsw i32 %i.054, 1
  br i1 %tobool15.not, label %if.then16, label %for.cond

if.then16:                                        ; preds = %if.then12
  %6 = bitcast i8* %name to i8**
  %7 = bitcast i8* %value to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !27
  %9 = load i8*, i8** %6, align 8, !tbaa !25
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 827, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i8* noundef %9) #10
  br label %cleanup29

for.inc:                                          ; preds = %for.body
  %call10.1 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0)) #11
  %cmp11.1 = icmp eq i32 %call10.1, 0
  br i1 %cmp11.1, label %if.then12, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call10.2 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0)) #11
  %cmp11.2 = icmp eq i32 %call10.2, 0
  br i1 %cmp11.2, label %if.then12, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call10.3 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0)) #11
  %cmp11.3 = icmp eq i32 %call10.3, 0
  br i1 %cmp11.3, label %if.then12, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call10.4 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0)) #11
  %cmp11.4 = icmp eq i32 %call10.4, 0
  br i1 %cmp11.4, label %if.then12, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call10.5 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #11
  %cmp11.5 = icmp eq i32 %call10.5, 0
  br i1 %cmp11.5, label %if.then12, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call10.6 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0)) #11
  %cmp11.6 = icmp eq i32 %call10.6, 0
  br i1 %cmp11.6, label %if.then12, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call10.7 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0)) #11
  %cmp11.7 = icmp eq i32 %call10.7, 0
  br i1 %cmp11.7, label %if.then12, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call10.8 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i64 0, i64 0)) #11
  %cmp11.8 = icmp eq i32 %call10.8, 0
  br i1 %cmp11.8, label %if.then12, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 835, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %2) #10
  br label %cleanup29

cleanup29:                                        ; preds = %for.cond, %for.cond.preheader, %if.then16, %for.inc.8, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.inc.8 ], [ 0, %if.then16 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.2
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_test_extra_conf_free_data(%struct.SSL_TEST_EXTRA_CONF* nocapture noundef readonly %conf) unnamed_addr #1 {
entry:
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 0, i32 3
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 740) #10
  %npn_protocols1 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 1, i32 1
  %1 = load i8*, i8** %npn_protocols1, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 741) #10
  %npn_protocols2 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 2, i32 1
  %2 = load i8*, i8** %npn_protocols2, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 742) #10
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 0, i32 4
  %3 = load i8*, i8** %alpn_protocols, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 743) #10
  %alpn_protocols5 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 1, i32 2
  %4 = load i8*, i8** %alpn_protocols5, align 8, !tbaa !39
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 744) #10
  %alpn_protocols7 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 2, i32 2
  %5 = load i8*, i8** %alpn_protocols7, align 8, !tbaa !40
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 745) #10
  %reneg_ciphers = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 0, i32 6
  %6 = load i8*, i8** %reneg_ciphers, align 8, !tbaa !41
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 746) #10
  %srp_user = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 1, i32 5
  %7 = load i8*, i8** %srp_user, align 8, !tbaa !42
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 747) #10
  %srp_password = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 1, i32 6
  %8 = load i8*, i8** %srp_password, align 8, !tbaa !43
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 748) #10
  %srp_user12 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 2, i32 5
  %9 = load i8*, i8** %srp_user12, align 8, !tbaa !44
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 749) #10
  %srp_password14 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 2, i32 6
  %10 = load i8*, i8** %srp_password14, align 8, !tbaa !45
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 750) #10
  %srp_user16 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 0, i32 7
  %11 = load i8*, i8** %srp_user16, align 8, !tbaa !46
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 751) #10
  %srp_password18 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 0, i32 8
  %12 = load i8*, i8** %srp_password18, align 8, !tbaa !47
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 752) #10
  %session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 1, i32 8
  %13 = load i8*, i8** %session_ticket_app_data, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 753) #10
  %session_ticket_app_data21 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %conf, i64 0, i32 2, i32 8
  %14 = load i8*, i8** %session_ticket_app_data21, align 8, !tbaa !49
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 754) #10
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_client_verify_callback(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %client_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([4 x %struct.test_enum], [4 x %struct.test_enum]* @ssl_verify_callbacks, i64 0, i64 0), i64 noundef 4, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %verify_callback = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %client_conf, i64 0, i32 0
  store i32 %1, i32* %verify_callback, align 8, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_servername(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %client_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([4 x %struct.test_enum], [4 x %struct.test_enum]* @ssl_servername, i64 0, i64 0), i64 noundef 4, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %servername = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %client_conf, i64 0, i32 1
  store i32 %1, i32* %servername, align 4, !tbaa !52
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_npn_protocols(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 3
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !53
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 355) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 355) #10
  store i8* %call, i8** %npn_protocols, align 8, !tbaa !53
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_alpn_protocols(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 4
  %0 = load i8*, i8** %alpn_protocols, align 8, !tbaa !54
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 358) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 358) #10
  store i8* %call, i8** %alpn_protocols, align 8, !tbaa !54
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_ct_validation(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %client_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_ct_validation_modes, i64 0, i64 0), i64 noundef 3, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %ct_validation = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %client_conf, i64 0, i32 5
  store i32 %1, i32* %ct_validation, align 8, !tbaa !55
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_reneg_ciphers(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %reneg_ciphers = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 6
  %0 = load i8*, i8** %reneg_ciphers, align 8, !tbaa !56
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 403) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 403) #10
  store i8* %call, i8** %reneg_ciphers, align 8, !tbaa !56
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_srp_user(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %srp_user = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %srp_user, align 8, !tbaa !57
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 363) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 363) #10
  store i8* %call, i8** %srp_user, align 8, !tbaa !57
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_srp_password(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %srp_password = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 8
  %0 = load i8*, i8** %srp_password, align 8, !tbaa !58
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 365) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 365) #10
  store i8* %call, i8** %srp_password, align 8, !tbaa !58
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_max_fragment_len_mode(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %client_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([5 x %struct.test_enum], [5 x %struct.test_enum]* @ssl_max_fragment_len_mode, i64 0, i64 0), i64 noundef 5, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %max_fragment_len_mode = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %client_conf, i64 0, i32 2
  store i32 %1, i32* %max_fragment_len_mode, align 8, !tbaa !59
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_enable_pha(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %enable_pha = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 9
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %enable_pha) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_client_no_extms_on_reneg(%struct.SSL_TEST_CLIENT_CONF* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %no_extms_on_reneg = getelementptr inbounds %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_CLIENT_CONF* %ctx, i64 0, i32 10
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %no_extms_on_reneg) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @parse_enum(%struct.test_enum* nocapture noundef readonly %enums, i64 noundef %num_enums, i32* nocapture noundef writeonly %value, i8* noundef readonly %name) unnamed_addr #6 {
entry:
  %cmp11.not = icmp eq i64 %num_enums, 0
  br i1 %cmp11.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.012 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %name1 = getelementptr inbounds %struct.test_enum, %struct.test_enum* %enums, i64 %i.012, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !9
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %name) #11
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %value4 = getelementptr inbounds %struct.test_enum, %struct.test_enum* %enums, i64 %i.012, i32 1
  %1 = load i32, i32* %value4, align 8, !tbaa !3
  store i32 %1, i32* %value, align 4, !tbaa !50
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.012, 1
  %exitcond.not = icmp eq i64 %inc, %num_enums
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !60

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_boolean(i8* noundef %value, i32* nocapture noundef writeonly %result) unnamed_addr #1 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %value, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %result, align 4, !tbaa !50
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcasecmp(i8* noundef %value, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #11
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  store i32 0, i32* %result, align 4, !tbaa !50
  br label %return

if.end4:                                          ; preds = %if.else
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i64 0, i64 0), i8* noundef %value) #10
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then3 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_servername_callback(%struct.SSL_TEST_SERVER_CONF* nocapture noundef writeonly %server_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([6 x %struct.test_enum], [6 x %struct.test_enum]* @ssl_servername_callbacks, i64 0, i64 0), i64 noundef 6, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %servername_callback = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %server_conf, i64 0, i32 0
  store i32 %1, i32* %servername_callback, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_npn_protocols(%struct.SSL_TEST_SERVER_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 1
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !62
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 356) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 356) #10
  store i8* %call, i8** %npn_protocols, align 8, !tbaa !62
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_alpn_protocols(%struct.SSL_TEST_SERVER_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 2
  %0 = load i8*, i8** %alpn_protocols, align 8, !tbaa !63
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 359) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 359) #10
  store i8* %call, i8** %alpn_protocols, align 8, !tbaa !63
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_broken_session_ticket(%struct.SSL_TEST_SERVER_CONF* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %broken_session_ticket = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 3
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %broken_session_ticket) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_certstatus(%struct.SSL_TEST_SERVER_CONF* nocapture noundef writeonly %server_conf, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_certstatus, i64 0, i64 0), i64 noundef 3, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %cert_status = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %server_conf, i64 0, i32 4
  store i32 %1, i32* %cert_status, align 4, !tbaa !64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_srp_user(%struct.SSL_TEST_SERVER_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %srp_user = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 5
  %0 = load i8*, i8** %srp_user, align 8, !tbaa !65
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 364) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 364) #10
  store i8* %call, i8** %srp_user, align 8, !tbaa !65
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_srp_password(%struct.SSL_TEST_SERVER_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %srp_password = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 6
  %0 = load i8*, i8** %srp_password, align 8, !tbaa !66
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #10
  store i8* %call, i8** %srp_password, align 8, !tbaa !66
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_force_pha(%struct.SSL_TEST_SERVER_CONF* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %force_pha = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 7
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %force_pha) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_server_session_ticket_app_data(%struct.SSL_TEST_SERVER_CONF* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF* %ctx, i64 0, i32 8
  %0 = load i8*, i8** %session_ticket_app_data, align 8, !tbaa !67
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #10
  store i8* %call, i8** %session_ticket_app_data, align 8, !tbaa !67
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_expected_result(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([5 x %struct.test_enum], [5 x %struct.test_enum]* @ssl_test_results, i64 0, i64 0), i64 noundef 5, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %expected_result = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 7
  store i32 %1, i32* %expected_result, align 8, !tbaa !68
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_client_alert(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %expected_client_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 8
  %call = tail call fastcc i32 @parse_alert(i32* noundef nonnull %expected_client_alert, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_server_alert(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %expected_server_alert = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 9
  %call = tail call fastcc i32 @parse_alert(i32* noundef nonnull %expected_server_alert, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_protocol(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %expected_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 10
  %call = tail call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_protocols, i64 0, i64 0), i64 noundef 7, i32* noundef nonnull %expected_protocol, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_expected_servername(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([4 x %struct.test_enum], [4 x %struct.test_enum]* @ssl_servername, i64 0, i64 0), i64 noundef 4, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %expected_servername = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 11
  store i32 %1, i32* %expected_servername, align 8, !tbaa !69
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_session_ticket(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_session_ticket, i64 0, i64 0), i64 noundef 3, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %session_ticket_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 12
  store i32 %1, i32* %session_ticket_expected, align 4, !tbaa !70
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_compression_expected(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %compression_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 13
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %compression_expected) #9
  ret i32 %call
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_session_id(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([3 x %struct.test_enum], [3 x %struct.test_enum]* @ssl_session_id, i64 0, i64 0), i64 noundef 3, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %session_id_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 29
  store i32 %1, i32* %session_id_expected, align 4, !tbaa !71
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_test_method(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([2 x %struct.test_enum], [2 x %struct.test_enum]* @ssl_test_methods, i64 0, i64 0), i64 noundef 2, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %method = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 0
  store i32 %1, i32* %method, align 8, !tbaa !72
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_expected_npn_protocol(%struct.SSL_TEST_CTX* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %expected_npn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 14
  %0 = load i8*, i8** %expected_npn_protocol, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #10
  store i8* %call, i8** %expected_npn_protocol, align 8, !tbaa !19
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_expected_alpn_protocol(%struct.SSL_TEST_CTX* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %expected_alpn_protocol = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 15
  %0 = load i8*, i8** %expected_alpn_protocol, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 360) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 360) #10
  store i8* %call, i8** %expected_alpn_protocol, align 8, !tbaa !20
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.118, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_handshake_mode(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_handshake_modes, i64 0, i64 0), i64 noundef 7, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 1
  store i32 %1, i32* %handshake_mode, align 4, !tbaa !73
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @parse_key_update_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #6 {
entry:
  %ret_value = alloca i32, align 4
  %0 = bitcast i32* %ret_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %call = call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([2 x %struct.test_enum], [2 x %struct.test_enum]* @ssl_key_update_types, i64 0, i64 0), i64 noundef 2, i32* noundef nonnull %ret_value, i8* noundef %value) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret_value, align 4, !tbaa !50
  %key_update_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 4
  store i32 %1, i32* %key_update_type, align 8, !tbaa !74
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_resumption_expected(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %resumption_expected = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 16
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %resumption_expected) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @parse_test_app_data_size(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef nonnull %value) #7 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #11
  %app_data_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 2
  store i32 %call, i32* %app_data_size, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal i32 @parse_test_max_fragment_size(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef nonnull %value) #7 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #11
  %max_fragment_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 3
  store i32 %call, i32* %max_fragment_size, align 4, !tbaa !18
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_tmp_key_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_tmp_key_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 17
  %call = tail call fastcc i32 @parse_expected_key_type(i32* noundef nonnull %expected_tmp_key_type, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_server_cert_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_server_cert_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 18
  %call = tail call fastcc i32 @parse_expected_key_type(i32* noundef nonnull %expected_server_cert_type, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_server_sign_hash(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_server_sign_hash = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 19
  %call = tail call fastcc i32 @parse_expected_sign_hash(i32* noundef nonnull %expected_server_sign_hash, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_server_sign_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_server_sign_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 20
  %call = tail call fastcc i32 @parse_expected_key_type(i32* noundef nonnull %expected_server_sign_type, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_server_ca_names(%struct.SSL_TEST_CTX* nocapture noundef %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_server_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 21
  %libctx = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 32
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call fastcc i32 @parse_expected_ca_names(%struct.stack_st_X509_NAME** noundef nonnull %expected_server_ca_names, i8* noundef %value, %struct.ossl_lib_ctx_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_client_cert_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_client_cert_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 22
  %call = tail call fastcc i32 @parse_expected_key_type(i32* noundef nonnull %expected_client_cert_type, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_client_sign_hash(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_client_sign_hash = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 23
  %call = tail call fastcc i32 @parse_expected_sign_hash(i32* noundef nonnull %expected_client_sign_hash, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_client_sign_type(%struct.SSL_TEST_CTX* nocapture noundef writeonly %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_client_sign_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 24
  %call = tail call fastcc i32 @parse_expected_key_type(i32* noundef nonnull %expected_client_sign_type, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_expected_client_ca_names(%struct.SSL_TEST_CTX* nocapture noundef %test_ctx, i8* noundef %value) #1 {
entry:
  %expected_client_ca_names = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 25
  %libctx = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 32
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %call = tail call fastcc i32 @parse_expected_ca_names(%struct.stack_st_X509_NAME** noundef nonnull %expected_client_ca_names, i8* noundef %value, %struct.ossl_lib_ctx_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_use_sctp(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %use_sctp = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 26
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %use_sctp) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_enable_client_sctp_label_bug(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %enable_client_sctp_label_bug = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 27
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %enable_client_sctp_label_bug) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_enable_server_sctp_label_bug(%struct.SSL_TEST_CTX* nocapture noundef writeonly %ctx, i8* noundef %value) #1 {
entry:
  %enable_server_sctp_label_bug = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 28
  %call = tail call fastcc i32 @parse_boolean(i8* noundef %value, i32* noundef nonnull %enable_server_sctp_label_bug) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_expected_cipher(%struct.SSL_TEST_CTX* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %expected_cipher = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 30
  %0 = load i8*, i8** %expected_cipher, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 638) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 638) #10
  store i8* %call, i8** %expected_cipher, align 8, !tbaa !24
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 638, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_test_expected_session_ticket_app_data(%struct.SSL_TEST_CTX* nocapture noundef %ctx, i8* noundef %value) #1 {
entry:
  %expected_session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %ctx, i64 0, i32 31
  %0 = load i8*, i8** %expected_session_ticket_app_data, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 369) #10
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 369) #10
  store i8* %call, i8** %expected_session_ticket_app_data, align 8, !tbaa !21
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i64 0, i64 0), i8* noundef %call) #10
  ret i32 %call3
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @parse_alert(i32* nocapture noundef writeonly %alert, i8* noundef %value) unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @parse_enum(%struct.test_enum* noundef getelementptr inbounds ([7 x %struct.test_enum], [7 x %struct.test_enum]* @ssl_alerts, i64 0, i64 0), i64 noundef 7, i32* noundef %alert, i8* noundef %value) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_expected_key_type(i32* nocapture noundef writeonly %ptype, i8* noundef %value) unnamed_addr #1 {
entry:
  %nid = alloca i32, align 4
  %0 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef null, i8* noundef nonnull %value, i32 noundef -1) #10
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %nid, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef nonnull %call) #10
  %.pr = load i32, i32* %nid, align 4, !tbaa !50
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @OBJ_sn2nid(i8* noundef nonnull %value) #10
  store i32 %call4, i32* %nid, align 4, !tbaa !50
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %.pr24 = phi i32 [ %call4, %if.else ], [ %.pr, %if.then2 ]
  %cmp6 = icmp eq i32 %.pr24, 0
  br i1 %cmp6, label %if.end9, label %if.end16

if.end9:                                          ; preds = %if.end5
  %call8 = call i32 @OBJ_ln2nid(i8* noundef nonnull %value) #10
  store i32 %call8, i32* %nid, align 4, !tbaa !50
  %cmp10 = icmp eq i32 %call8, 0
  br i1 %cmp10, label %if.end13, label %if.end16

if.end13:                                         ; preds = %if.end9
  %call12 = call i32 @EC_curve_nist2nid(i8* noundef nonnull %value) #10
  %cmp14 = icmp eq i32 %call12, 0
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end5, %if.end9, %if.end13
  %1 = phi i32 [ %call12, %if.end13 ], [ %call8, %if.end9 ], [ %.pr24, %if.end5 ]
  store i32 %1, i32* %ptype, align 4, !tbaa !50
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %entry ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

declare dso_local %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EC_curve_nist2nid(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_expected_sign_hash(i32* nocapture noundef writeonly %ptype, i8* noundef %value) unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @OBJ_sn2nid(i8* noundef nonnull %value) #10
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end4, label %if.end7

if.end4:                                          ; preds = %if.end
  %call3 = tail call i32 @OBJ_ln2nid(i8* noundef nonnull %value) #10
  %cmp5 = icmp eq i32 %call3, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end, %if.end4
  %nid.015 = phi i32 [ %call3, %if.end4 ], [ %call, %if.end ]
  store i32 %nid.015, i32* %ptype, align 4, !tbaa !50
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %entry ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_expected_ca_names(%struct.stack_st_X509_NAME** nocapture noundef %pnames, i8* noundef %value, %struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %value, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0)) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #10
  %0 = bitcast %struct.stack_st_X509_NAME** %pnames to %struct.stack_st**
  store %struct.stack_st* %call2, %struct.stack_st** %0, align 8, !tbaa !75
  %1 = bitcast %struct.stack_st* %call2 to %struct.stack_st_X509_NAME*
  br label %if.end4

if.else:                                          ; preds = %if.end
  %call3 = tail call %struct.stack_st_X509_NAME* @SSL_load_client_CA_file_ex(i8* noundef nonnull %value, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef null) #10
  store %struct.stack_st_X509_NAME* %call3, %struct.stack_st_X509_NAME** %pnames, align 8, !tbaa !75
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %2 = phi %struct.stack_st_X509_NAME* [ %call3, %if.else ], [ %1, %if.then1 ]
  %cmp5 = icmp ne %struct.stack_st_X509_NAME* %2, null
  %conv = zext i1 %cmp5 to i32
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %conv, %if.end4 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local %struct.stack_st_X509_NAME* @SSL_load_client_CA_file_ex(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 8}
!4 = !{!"", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !5, i64 560}
!13 = !{!"", !6, i64 0, !6, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !14, i64 24, !14, i64 224, !6, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !6, i64 440, !6, i64 444, !8, i64 448, !5, i64 456, !5, i64 464, !8, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !5, i64 496, !8, i64 504, !8, i64 508, !8, i64 512, !5, i64 520, !8, i64 528, !8, i64 532, !8, i64 536, !6, i64 540, !5, i64 544, !5, i64 552, !5, i64 560}
!14 = !{!"", !15, i64 0, !16, i64 72, !16, i64 136}
!15 = !{!"", !6, i64 0, !6, i64 4, !8, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !8, i64 64, !8, i64 68}
!16 = !{!"", !6, i64 0, !5, i64 8, !5, i64 16, !8, i64 24, !6, i64 28, !5, i64 32, !5, i64 40, !8, i64 48, !5, i64 56}
!17 = !{!13, !8, i64 8}
!18 = !{!13, !8, i64 12}
!19 = !{!13, !5, i64 456}
!20 = !{!13, !5, i64 464}
!21 = !{!13, !5, i64 552}
!22 = !{!13, !5, i64 496}
!23 = !{!13, !5, i64 520}
!24 = !{!13, !5, i64 544}
!25 = !{!26, !5, i64 8}
!26 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!27 = !{!26, !5, i64 16}
!28 = !{!29, !5, i64 0}
!29 = !{!"", !5, i64 0, !5, i64 8}
!30 = !{!29, !5, i64 8}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = !{!14, !5, i64 16}
!36 = !{!14, !5, i64 80}
!37 = !{!14, !5, i64 144}
!38 = !{!14, !5, i64 24}
!39 = !{!14, !5, i64 88}
!40 = !{!14, !5, i64 152}
!41 = !{!14, !5, i64 40}
!42 = !{!14, !5, i64 104}
!43 = !{!14, !5, i64 112}
!44 = !{!14, !5, i64 168}
!45 = !{!14, !5, i64 176}
!46 = !{!14, !5, i64 48}
!47 = !{!14, !5, i64 56}
!48 = !{!14, !5, i64 128}
!49 = !{!14, !5, i64 192}
!50 = !{!8, !8, i64 0}
!51 = !{!15, !6, i64 0}
!52 = !{!15, !6, i64 4}
!53 = !{!15, !5, i64 16}
!54 = !{!15, !5, i64 24}
!55 = !{!15, !6, i64 32}
!56 = !{!15, !5, i64 40}
!57 = !{!15, !5, i64 48}
!58 = !{!15, !5, i64 56}
!59 = !{!15, !8, i64 8}
!60 = distinct !{!60, !11}
!61 = !{!16, !6, i64 0}
!62 = !{!16, !5, i64 8}
!63 = !{!16, !5, i64 16}
!64 = !{!16, !6, i64 28}
!65 = !{!16, !5, i64 32}
!66 = !{!16, !5, i64 40}
!67 = !{!16, !5, i64 56}
!68 = !{!13, !6, i64 424}
!69 = !{!13, !6, i64 440}
!70 = !{!13, !6, i64 444}
!71 = !{!13, !6, i64 540}
!72 = !{!13, !6, i64 0}
!73 = !{!13, !6, i64 4}
!74 = !{!13, !8, i64 16}
!75 = !{!5, !5, i64 0}
