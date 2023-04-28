; ModuleID = 'apps/lib/apps.c'
source_filename = "apps/lib/apps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.NAME_EX_TBL = type { i8*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.args_st = type { i32, i32, i8** }
%struct.ssl_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_name_st = type opaque
%struct.pw_cb_data = type { i8*, i8* }
%struct.bio_method_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_crl_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_req_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ui_method_st = type opaque
%struct.ossl_store_ctx_st = type opaque
%struct.ossl_store_info_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_store_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.X509_extension_st = type opaque
%struct.asn1_object_st = type opaque
%struct.bignum_st = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque
%struct.ca_db_st = type { %struct.db_attr_st, %struct.txt_db_st*, i8*, %struct.stat }
%struct.db_attr_st = type { i32 }
%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.evp_pkey_ctx_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.stack_st_X509_POLICY_NODE = type opaque
%struct.X509_POLICY_NODE_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_md_ctx_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.ssl_st = type opaque
%struct.app_http_tls_info_st = type { i8*, i8*, i32, i64, %struct.ssl_ctx_st* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.tms = type { i64, i64, i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.CONF_VALUE = type { i8*, i8*, i8* }
%struct.DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon, %struct.X509_name_st* }
%union.anon = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"argv space\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"apps/lib/apps.c\00", align 1
@nmflag = internal global i64 0, align 8
@nmflag_set = internal unnamed_addr global i1 false, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"subject=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"issuer=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Error getting password for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Trying plain input string (better precede with 'pass:')\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Out of memory getting password for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s: Can't load \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: Error on line %ld of \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"config file \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"config input\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"No configuration used\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Using configuration from %s\0A\00", align 1
@default_config_file = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"Error configuring OpenSSL modules\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"oid_section\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"problem loading oid section %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"problem creating object %s=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Loading %s over HTTPS is unsupported\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Unable to load %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"CSR\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"key parameters\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"Unable to load %s from %s (unexpected parameters type)\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"%s: Could not allocate %zu bytes for %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"error: HTTP retrieval not allowed for %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@set_cert_ex.cert_tbl = internal constant [19 x %struct.NAME_EX_TBL] [%struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i64 0, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i64 147, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i64 1, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i64 2, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i64 4, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i64 8, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i64 32, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i64 64, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i64 16, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i64 128, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i64 256, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i64 512, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 1024, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i64 2048, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i64 0, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i64 65536, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i64 131072, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i64 196608, i64 983040 }, %struct.NAME_EX_TBL zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ca_default\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"no_header\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"no_version\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"no_serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"no_signame\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"no_validity\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"no_subject\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"no_issuer\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"no_pubkey\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"no_extensions\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"no_sigdump\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"no_aux\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"no_attributes\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"ext_default\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"ext_error\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"ext_parse\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"ext_dump\00", align 1
@set_name_ex.ex_tbl = internal constant [29 x %struct.NAME_EX_TBL] [%struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i64 1, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i64 1024, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i64 2, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i64 4, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i64 8, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i64 16, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i64 32, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i64 64, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i64 128, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i64 256, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i64 512, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i64 0, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i64 65536, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0), i64 131072, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i64 196608, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i64 262144, i64 983040 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i64 1048576, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i64 6291456, i64 6291456 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i64 0, i64 6291456 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i64 2097152, i64 6291456 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i64 33554432, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i64 4194304, i64 6291456 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i64 8388608, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i64 16777216, i64 0 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i64 17892119, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i64 8520479, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i64 44302342, i64 4294967295 }, %struct.NAME_EX_TBL { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i64 44302342, i64 4294967295 }, %struct.NAME_EX_TBL zeroinitializer], align 16
@.str.50 = private unnamed_addr constant [9 x i8] c"esc_2253\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"esc_2254\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"esc_ctrl\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"esc_msb\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"use_quote\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"ignore_type\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"show_type\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"dump_all\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"dump_nostr\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"dump_der\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"sep_comma_plus\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"sep_comma_plus_space\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"sep_semi_plus_space\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"sep_multiline\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"dn_rev\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"nofname\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"sname\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"lname\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"space_eq\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"dump_unknown\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"RFC2253\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"oneline\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"rfc_822\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"iso_8601\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"copyall\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"    static unsigned char %s_%d[] = {\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"\0A        0x00\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"\0A        \00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"\0A    };\0A\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"unsigned char %s[%d] = {\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"0x%02X, \00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Error loading file %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"Error loading directory %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Error loading store URI %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.99 = private unnamed_addr constant [31 x i8] c"Unable to load number from %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Error converting number from bin to BIGNUM\0A\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"File name too long\0A\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.104 = private unnamed_addr constant [41 x i8] c"error converting serial to ASN.1 format\0A\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"Unable to rename %s to %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@__func__.load_index = private unnamed_addr constant [11 x i8] c"load_index\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"calling fstat(%s)\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"%s.attr\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"new DB\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"unique_subject\00", align 1
@.str.111 = private unnamed_addr constant [50 x i8] c"Error creating serial number index:(%ld,%ld,%ld)\0A\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"Error creating name index:(%ld,%ld,%ld)\0A\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"%s.attr.%s\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"Unable to open '%s'\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"unique_subject = %s\0A\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.118 = private unnamed_addr constant [158 x i8] c"%s: %s name is expected to be in the format /type0=value0/type1=value1/type2=... where characters may be escaped by \\. This name is not in that format: '%s'\0A\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"%s: Out of memory\0A\00", align 1
@.str.120 = private unnamed_addr constant [33 x i8] c"%s: Error copying %s name input\0A\00", align 1
@.str.121 = private unnamed_addr constant [62 x i8] c"%s: Missing '=' after RDN type string '%s' in %s name string\0A\00", align 1
@.str.122 = private unnamed_addr constant [47 x i8] c"%s: Escape character at end of %s name string\0A\00", align 1
@.str.123 = private unnamed_addr constant [45 x i8] c"%s: Skipping unknown %s name attribute \22%s\22\0A\00", align 1
@.str.124 = private unnamed_addr constant [110 x i8] c"Hint: a '+' in a value string needs be escaped using '\\' else a new member of a multi-valued RDN is expected\0A\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"%s: No value provided for %s name attribute \22%s\22, skipped\0A\00", align 1
@.str.126 = private unnamed_addr constant [45 x i8] c"%s: Error adding %s name attribute \22/%s=%s\22\0A\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"Require explicit Policy: %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"Authority\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"NPN buffer\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"Hostname %s does%s match certificate\0A\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" NOT\00", align 1
@.str.136 = private unnamed_addr constant [35 x i8] c"Email %s does%s match certificate\0A\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"IP %s does%s match certificate\0A\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"subjectKeyIdentifier\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"authorityKeyIdentifier\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"keyid, issuer\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@__func__.app_http_get_asn1 = private unnamed_addr constant [18 x i8] c"app_http_get_asn1\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"missing SSL_CTX\00", align 1
@app_tminterval.tmstart = internal unnamed_addr global i64 0, align 8
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.144 = private unnamed_addr constant [20 x i8] c"HARNESS_OSSL_PREFIX\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.145 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.146 = private unnamed_addr constant [37 x i8] c"%s: Can't open \22%s\22 for writing, %s\0A\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"allocate async fds\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"Parameter %s '%s'\0A\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"Generating %s key\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c" with %d bits\0A\00", align 1
@.str.154 = private unnamed_addr constant [102 x i8] c"Warning: generating random key material may take a long time\0Aif the system has a poor entropy source\0A\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c"%s: Error generating %s key\0A\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1
@.str.157 = private unnamed_addr constant [104 x i8] c"Warning: generating random key parameters may take a long time\0Aif the system has a poor entropy source\0A\00", align 1
@.str.158 = private unnamed_addr constant [41 x i8] c"%s: Generating %s key parameters failed\0A\00", align 1
@app_get_pass.pwdbio = internal unnamed_addr global %struct.bio_st* null, align 8
@.str.159 = private unnamed_addr constant [6 x i8] c"pass:\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"env:\00", align 1
@.str.161 = private unnamed_addr constant [28 x i8] c"No environment variable %s\0A\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"Can't open file %s\0A\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"fd:\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"Can't access file descriptor %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"Can't open BIO for stdin\0A\00", align 1
@.str.168 = private unnamed_addr constant [66 x i8] c"Invalid password argument, missing ':' within the first %d chars\0A\00", align 1
@.str.169 = private unnamed_addr constant [49 x i8] c"Invalid password argument, starting with \22%.*s\22\0A\00", align 1
@.str.170 = private unnamed_addr constant [33 x i8] c"Error reading password from BIO\0A\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"has expired\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"not yet valid\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"is not a CA cert\00", align 1
@.str.174 = private unnamed_addr constant [53 x i8] c"Warning: certificate from '%s' with subject '%s' %s\0A\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"CRLs\00", align 1
@.str.180 = private unnamed_addr constant [22 x i8] c"Out of memory loading\00", align 1
@.str.181 = private unnamed_addr constant [41 x i8] c"Internal error: nothing to load from %s\0A\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"input-type\00", align 1
@.str.184 = private unnamed_addr constant [41 x i8] c"No filename or uri specified for loading\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.186 = private unnamed_addr constant [39 x i8] c"Could not open file or uri for loading\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"Error reading\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"Could not read\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c" any\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c" of %s\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c" from %s\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"%s Policies:\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c" <empty>\0A\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.198 = private unnamed_addr constant [22 x i8] c"parameter error \22%s\22\0A\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"CRL via CDP\00", align 1
@.str.200 = private unnamed_addr constant [56 x i8] c"The server does not support (a suitable version of) TLS\00", align 1
@.str.201 = private unnamed_addr constant [34 x i8] c"The server does not support HTTPS\00", align 1
@.str.202 = private unnamed_addr constant [131 x i8] c"Cannot authenticate server via its TLS certificate, likely due to mismatch with our trusted TLS certs or missing revocation status\00", align 1
@.str.203 = private unnamed_addr constant [122 x i8] c"Server did not accept our TLS certificate, likely due to mismatch with server's trust anchor or missing revocation status\00", align 1
@.str.204 = private unnamed_addr constant [95 x i8] c"TLS handshake failure. Possibly the server requires our TLS certificate but did not receive it\00", align 1
@.str.205 = private unnamed_addr constant [60 x i8] c"assertion failed: mode == 'a' || mode == 'r' || mode == 'w'\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.210 = private unnamed_addr constant [19 x i8] c"Can't open %s, %s\0A\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.212 = private unnamed_addr constant [28 x i8] c"Can't open \22%s\22 for %s, %s\0A\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"appending\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"(doing something)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @chopup_args(%struct.args_st* nocapture noundef %arg, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %argc = getelementptr inbounds %struct.args_st, %struct.args_st* %arg, i64 0, i32 1
  store i32 0, i32* %argc, align 4, !tbaa !4
  %size = getelementptr inbounds %struct.args_st, %struct.args_st* %arg, i64 0, i32 0
  %0 = load i32, i32* %size, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 20, i32* %size, align 8, !tbaa !10
  %call = tail call i8* @app_malloc(i64 noundef 160, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #20
  %argv = getelementptr inbounds %struct.args_st, %struct.args_st* %arg, i64 0, i32 2
  %1 = bitcast i8*** %argv to i8**
  store i8* %call, i8** %1, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %buf, align 1, !tbaa !12
  %tobool.not124128 = icmp eq i8 %2, 0
  br i1 %tobool.not124128, label %for.end, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end
  %call4 = tail call i16** @__ctype_b_loc() #21
  %argv19 = getelementptr inbounds %struct.args_st, %struct.args_st* %arg, i64 0, i32 2
  %3 = bitcast i8*** %argv19 to i8**
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %if.end78
  %4 = phi i8 [ %2, %land.rhs.lr.ph.lr.ph ], [ %.pr, %if.end78 ]
  %p.0130 = phi i8* [ %buf, %land.rhs.lr.ph.lr.ph ], [ %p.5.ph, %if.end78 ]
  %c.0129 = phi i8 [ 0, %land.rhs.lr.ph.lr.ph ], [ %c.1, %if.end78 ]
  %5 = load i16*, i16** %call4, align 8, !tbaa !13
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %6 = phi i8 [ %4, %land.rhs.lr.ph ], [ %10, %while.body ]
  %p.1125 = phi i8* [ %p.0130, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  %7 = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %7
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %9 = and i16 %8, 8192
  %tobool7.not = icmp eq i16 %9, 0
  br i1 %tobool7.not, label %if.end12, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1125, i64 1
  %10 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %for.end, label %land.rhs, !llvm.loop !16

if.end12:                                         ; preds = %land.rhs
  %11 = load i32, i32* %argc, align 4, !tbaa !4
  %12 = load i32, i32* %size, align 8, !tbaa !10
  %cmp15.not = icmp slt i32 %11, %12
  br i1 %cmp15.not, label %if.end29, label %if.then17

if.then17:                                        ; preds = %if.end12
  %add = add nsw i32 %12, 20
  store i32 %add, i32* %size, align 8, !tbaa !10
  %13 = load i8*, i8** %3, align 8, !tbaa !11
  %conv21 = sext i32 %add to i64
  %mul22 = shl nsw i64 %conv21, 3
  %call23 = tail call i8* @CRYPTO_realloc(i8* noundef %13, i64 noundef %mul22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115) #22
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %cleanup83, label %if.end27

if.end27:                                         ; preds = %if.then17
  store i8* %call23, i8** %3, align 8, !tbaa !11
  %.pre = load i8, i8* %p.1125, align 1, !tbaa !12
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end12
  %14 = phi i8 [ %.pre, %if.end27 ], [ %6, %if.end12 ]
  switch i8 %14, label %if.end39 [
    i8 39, label %if.then37
    i8 34, label %if.then37
  ]

if.then37:                                        ; preds = %if.end29, %if.end29
  %incdec.ptr38 = getelementptr inbounds i8, i8* %p.1125, i64 1
  br label %if.end39

if.end39:                                         ; preds = %if.end29, %if.then37
  %c.1 = phi i8 [ %14, %if.then37 ], [ %c.0129, %if.end29 ]
  %p.2 = phi i8* [ %incdec.ptr38, %if.then37 ], [ %p.1125, %if.end29 ]
  %15 = load i8**, i8*** %argv19, align 8, !tbaa !11
  %16 = load i32, i32* %argc, align 4, !tbaa !4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %argc, align 4, !tbaa !4
  %idxprom42 = sext i32 %16 to i64
  %arrayidx43 = getelementptr inbounds i8*, i8** %15, i64 %idxprom42
  store i8* %p.2, i8** %arrayidx43, align 8, !tbaa !13
  switch i8 %14, label %while.cond59.preheader [
    i8 39, label %while.cond46.preheader
    i8 34, label %while.cond46.preheader
  ]

while.cond46.preheader:                           ; preds = %if.end39, %if.end39
  br label %while.cond46

while.cond59.preheader:                           ; preds = %if.end39
  %17 = load i8, i8* %p.2, align 1, !tbaa !12
  %tobool61.not126 = icmp eq i8 %17, 0
  br i1 %tobool61.not126, label %for.end, label %land.rhs62.lr.ph

land.rhs62.lr.ph:                                 ; preds = %while.cond59.preheader
  %18 = load i16*, i16** %call4, align 8, !tbaa !13
  br label %land.rhs62

while.cond46:                                     ; preds = %while.cond46.preheader, %while.cond46
  %p.3 = phi i8* [ %incdec.ptr56, %while.cond46 ], [ %p.2, %while.cond46.preheader ]
  %19 = load i8, i8* %p.3, align 1, !tbaa !12
  %tobool48.not = icmp eq i8 %19, 0
  %cmp52.not = icmp eq i8 %19, %c.1
  %or.cond = select i1 %tobool48.not, i1 true, i1 %cmp52.not
  %incdec.ptr56 = getelementptr inbounds i8, i8* %p.3, i64 1
  br i1 %or.cond, label %if.end78, label %while.cond46, !llvm.loop !18

land.rhs62:                                       ; preds = %land.rhs62.lr.ph, %while.body71
  %20 = phi i8 [ %17, %land.rhs62.lr.ph ], [ %24, %while.body71 ]
  %p.4127 = phi i8* [ %p.2, %land.rhs62.lr.ph ], [ %incdec.ptr72, %while.body71 ]
  %21 = zext i8 %20 to i64
  %arrayidx66 = getelementptr inbounds i16, i16* %18, i64 %21
  %22 = load i16, i16* %arrayidx66, align 2, !tbaa !14
  %23 = and i16 %22, 8192
  %tobool69.not = icmp eq i16 %23, 0
  %incdec.ptr72 = getelementptr inbounds i8, i8* %p.4127, i64 1
  br i1 %tobool69.not, label %while.body71, label %if.end78

while.body71:                                     ; preds = %land.rhs62
  %24 = load i8, i8* %incdec.ptr72, align 1, !tbaa !12
  %tobool61.not = icmp eq i8 %24, 0
  br i1 %tobool61.not, label %for.end, label %land.rhs62, !llvm.loop !19

if.end78:                                         ; preds = %while.cond46, %land.rhs62
  %p.4127.lcssa.sink = phi i8* [ %p.4127, %land.rhs62 ], [ %p.3, %while.cond46 ]
  %p.5.ph = phi i8* [ %incdec.ptr72, %land.rhs62 ], [ %incdec.ptr56, %while.cond46 ]
  store i8 0, i8* %p.4127.lcssa.sink, align 1, !tbaa !12
  %.pr = load i8, i8* %p.5.ph, align 1, !tbaa !12
  %tobool.not124 = icmp eq i8 %.pr, 0
  br i1 %tobool.not124, label %for.end, label %land.rhs.lr.ph

for.end:                                          ; preds = %while.cond59.preheader, %if.end78, %while.body, %while.body71, %if.end
  %argv79 = getelementptr inbounds %struct.args_st, %struct.args_st* %arg, i64 0, i32 2
  %25 = load i8**, i8*** %argv79, align 8, !tbaa !11
  %26 = load i32, i32* %argc, align 4, !tbaa !4
  %idxprom81 = sext i32 %26 to i64
  %arrayidx82 = getelementptr inbounds i8*, i8** %25, i64 %idxprom81
  store i8* null, i8** %arrayidx82, align 8, !tbaa !13
  br label %cleanup83

cleanup83:                                        ; preds = %if.then17, %for.end
  %retval.3 = phi i32 [ 1, %for.end ], [ 0, %if.then17 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @app_malloc(i64 noundef %sz, i8* noundef %what) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %sz, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 623) #22
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @opt_getprog() #22
  tail call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call1, i64 noundef %sz, i8* noundef %what) #20
  unreachable

if.end:                                           ; preds = %entry
  ret i8* %call
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #2

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @app_init(i64 noundef %mesgwin) local_unnamed_addr #4 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ctx_set_verify_locations(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %CAfile, i32 noundef %noCAfile, i8* noundef %CApath, i32 noundef %noCApath, i8* noundef %CAstore, i32 noundef %noCAstore) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %CAfile, null
  %cmp1 = icmp eq i8* %CApath, null
  %or.cond = and i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %CAstore, null
  %or.cond38 = and i1 %or.cond, %cmp3
  br i1 %or.cond38, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %noCAfile, 0
  br i1 %tobool.not, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %call = tail call i32 @SSL_CTX_set_default_verify_file(%struct.ssl_ctx_st* noundef %ctx) #22
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %tobool7.not = icmp eq i32 %noCApath, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %if.end
  %call9 = tail call i32 @SSL_CTX_set_default_verify_dir(%struct.ssl_ctx_st* noundef %ctx) #22
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end
  %tobool13.not = icmp eq i32 %noCAstore, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %if.end12
  %call15 = tail call i32 @SSL_CTX_set_default_verify_store(%struct.ssl_ctx_st* noundef %ctx) #22
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %return, label %if.end18

if.end18:                                         ; preds = %land.lhs.true14, %if.end12
  br label %return

if.end19:                                         ; preds = %entry
  br i1 %cmp, label %if.end25, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end19
  %call22 = tail call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %CAfile) #22
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %if.end25

if.end25:                                         ; preds = %land.lhs.true21, %if.end19
  br i1 %cmp1, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  %call28 = tail call i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %CApath) #22
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %if.end31

if.end31:                                         ; preds = %land.lhs.true27, %if.end25
  br i1 %cmp3, label %if.end37, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end31
  %call34 = tail call i32 @SSL_CTX_load_verify_store(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %CAstore) #22
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %return, label %if.end37

if.end37:                                         ; preds = %land.lhs.true33, %if.end31
  br label %return

return:                                           ; preds = %land.lhs.true33, %land.lhs.true27, %land.lhs.true21, %land.lhs.true14, %land.lhs.true8, %land.lhs.true4, %if.end37, %if.end18
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 1, %if.end37 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true33 ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_set_default_verify_file(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_set_default_verify_dir(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_set_default_verify_store(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_load_verify_dir(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_load_verify_store(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ctx_set_ctlog_list_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %path, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef %ctx) #22
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @SSL_CTX_set_ctlog_list_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef nonnull %path) #22
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_set_ctlog_list_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @set_nameopt(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @set_name_ex(i64* noundef nonnull @nmflag, i8* noundef %arg) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @nmflag_set, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_name_ex(i64* nocapture noundef %flags, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @set_multi_opts(i64* noundef %flags, i8* noundef %arg, %struct.NAME_EX_TBL* noundef getelementptr inbounds ([29 x %struct.NAME_EX_TBL], [29 x %struct.NAME_EX_TBL]* @set_name_ex.ex_tbl, i64 0, i64 0)) #20
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, i64* %flags, align 8, !tbaa !20
  %cmp1.not = icmp ne i64 %0, 0
  %and = and i64 %0, 983040
  %cmp2 = icmp eq i64 %and, 0
  %or.cond = and i1 %cmp1.not, %cmp2
  br i1 %or.cond, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %or = or i64 %0, 131072
  store i64 %or, i64* %flags, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @get_nameopt() local_unnamed_addr #5 {
entry:
  %.b = load i1, i1* @nmflag_set, align 1
  %0 = load i64, i64* @nmflag, align 8
  %cond = select i1 %.b, i64 %0, i64 8520479
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define void @dump_cert_text(%struct.bio_st* noundef %out, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #22
  tail call void @print_name(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.X509_name_st* noundef %call) #20
  %call1 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #22
  tail call void @print_name(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.X509_name_st* noundef %call1) #20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_name(%struct.bio_st* noundef %out, i8* noundef %title, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @get_nameopt() #20
  %cmp = icmp eq %struct.bio_st* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8* %title, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %out, i8* noundef nonnull %title) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %and = and i64 %call, 983040
  %cmp5 = icmp eq i64 %and, 262144
  %spec.select = select i1 %cmp5, i32 4, i32 0
  %cmp8 = icmp eq i64 %call, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  %call10 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %nm, i8* noundef null, i32 noundef 0) #22
  %call11 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %out, i8* noundef %call10) #22
  %call12 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  tail call void @CRYPTO_free(i8* noundef %call10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1300) #22
  br label %cleanup

if.else:                                          ; preds = %if.end4
  br i1 %cmp5, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %call14 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else
  %call16 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef nonnull %out, %struct.X509_name_st* noundef %nm, i32 noundef %spec.select, i64 noundef %call) #22
  %call17 = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end15, %entry
  ret void
}

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #3

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @wrap_password_callback(i8* noundef %buf, i32 noundef %bufsiz, i32 noundef %verify, i8* noundef %userdata) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %userdata to %struct.pw_cb_data*
  %call = tail call i32 @password_callback(i8* noundef %buf, i32 noundef %bufsiz, i32 noundef %verify, %struct.pw_cb_data* noundef %0) #22
  ret i32 %call
}

declare i32 @password_callback(i8* noundef, i32 noundef, i32 noundef, %struct.pw_cb_data* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @get_passwd(i8* noundef %pass, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %result = alloca i8*, align 8
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i8* null, i8** %result, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %desc
  %call = call i32 @app_passwd(i8* noundef %pass, i8* noundef null, i8** noundef nonnull %result, i8** noundef null) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* noundef %spec.store.select) #22
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %entry
  %cmp4 = icmp ne i8* %pass, null
  %2 = load i8*, i8** %result, align 8
  %cmp5 = icmp eq i8* %2, null
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end3
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0)) #22
  %call8 = call i8* @CRYPTO_strdup(i8* noundef nonnull %pass, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 228) #22
  store i8* %call8, i8** %result, align 8, !tbaa !13
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then6
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* noundef %spec.store.select) #22
  %.pre = load i8*, i8** %result, align 8, !tbaa !13
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.then10, %if.end3
  %5 = phi i8* [ %call8, %if.then6 ], [ %.pre, %if.then10 ], [ %2, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define i32 @app_passwd(i8* noundef %arg1, i8* noundef %arg2, i8** noundef writeonly %pass1, i8** noundef writeonly %pass2) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i8* %arg1, null
  %cmp1 = icmp ne i8* %arg2, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %arg1, i8* noundef nonnull %arg2) #24
  %cmp2 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %land.ext = zext i1 %0 to i32
  %call4 = tail call fastcc i8* @app_get_pass(i8* noundef nonnull %arg1, i32 noundef %land.ext) #20
  store i8* %call4, i8** %pass1, align 8, !tbaa !13
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end10

if.else:                                          ; preds = %land.end
  %cmp7.not = icmp eq i8** %pass1, null
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.else
  store i8* null, i8** %pass1, align 8, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8, %if.then
  br i1 %cmp1, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.end10
  %cond = select i1 %0, i32 2, i32 0
  %call13 = tail call fastcc i8* @app_get_pass(i8* noundef nonnull %arg2, i32 noundef %cond) #20
  store i8* %call13, i8** %pass2, align 8, !tbaa !13
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cleanup, label %if.end21

if.else17:                                        ; preds = %if.end10
  %cmp18.not = icmp eq i8** %pass2, null
  br i1 %cmp18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.else17
  store i8* null, i8** %pass2, align 8, !tbaa !13
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then19, %if.then12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %if.then ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @app_get_pass(i8* noundef %arg, i32 noundef %keepbio) unnamed_addr #0 {
entry:
  %tpass = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tpass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #23
  %call = tail call i32 @strncmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i64 0, i64 0), i64 noundef 5) #24
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %arg, i64 5
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 264) #22
  br label %cleanup89

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i64 0, i64 0), i64 noundef 4) #24
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %add.ptr5 = getelementptr inbounds i8, i8* %arg, i64 4
  %call6 = tail call i8* @getenv(i8* noundef nonnull %add.ptr5) #22
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then4
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.161, i64 0, i64 0), i8* noundef nonnull %add.ptr5) #22
  br label %cleanup89

if.end11:                                         ; preds = %if.then4
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %call6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 271) #22
  br label %cleanup89

if.end13:                                         ; preds = %if.end
  %tobool = icmp eq i32 %keepbio, 0
  %2 = load %struct.bio_st*, %struct.bio_st** @app_get_pass.pwdbio, align 8
  %cmp14 = icmp eq %struct.bio_st* %2, null
  %or.cond = select i1 %tobool, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.then15, label %if.end70

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i32 @strncmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i64 0, i64 0), i64 noundef 5) #24
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  %add.ptr19 = getelementptr inbounds i8, i8* %arg, i64 5
  %call20 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %add.ptr19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0)) #22
  store %struct.bio_st* %call20, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  %cmp21 = icmp eq %struct.bio_st* %call20, null
  br i1 %cmp21, label %if.then22, label %if.end70

if.then22:                                        ; preds = %if.then18
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.163, i64 0, i64 0), i8* noundef nonnull %add.ptr19) #22
  br label %cleanup89

if.else:                                          ; preds = %if.then15
  %call26 = tail call i32 @strncmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i64 0, i64 0), i64 noundef 3) #24
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else45

if.then28:                                        ; preds = %if.else
  %add.ptr29 = getelementptr inbounds i8, i8* %arg, i64 3
  %call30 = tail call i32 @atoi(i8* noundef %add.ptr29) #24
  %cmp31 = icmp sgt i32 %call30, -1
  br i1 %cmp31, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.then28
  %call33 = tail call %struct.bio_st* @BIO_new_fd(i32 noundef %call30, i32 noundef 0) #22
  store %struct.bio_st* %call33, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  %tobool37.not = icmp eq %struct.bio_st* %call33, null
  br i1 %tobool37.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end34
  %call42 = tail call %struct.bio_method_st* @BIO_f_buffer() #22
  %call43 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call42) #22
  %4 = load %struct.bio_st*, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  %call44 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call43, %struct.bio_st* noundef %4) #22
  store %struct.bio_st* %call44, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  br label %if.end70

cleanup:                                          ; preds = %if.then28, %if.end34
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call40 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.165, i64 0, i64 0), i8* noundef nonnull %add.ptr29) #22
  br label %cleanup89

if.else45:                                        ; preds = %if.else
  %call46 = tail call i32 @strcmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0)) #24
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.else45
  %call49 = tail call %struct.bio_st* @dup_bio_in(i32 noundef 32769) #20
  store %struct.bio_st* %call49, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  %cmp50 = icmp eq %struct.bio_st* %call49, null
  br i1 %cmp50, label %if.then51, label %if.end70

if.then51:                                        ; preds = %if.then48
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call52 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.167, i64 0, i64 0)) #22
  br label %cleanup89

if.else54:                                        ; preds = %if.else45
  %call55 = tail call i8* @strchr(i8* noundef %arg, i32 noundef 58) #24
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then59, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.else54
  %sub.ptr.lhs.cast = ptrtoint i8* %call55 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arg to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp58 = icmp sgt i64 %sub.ptr.sub, 4
  br i1 %cmp58, label %if.then59, label %if.else61

if.then59:                                        ; preds = %lor.lhs.false57, %if.else54
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call60 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.168, i64 0, i64 0), i32 noundef 5) #22
  br label %cleanup89

if.else61:                                        ; preds = %lor.lhs.false57
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %9 = trunc i64 %sub.ptr.sub to i32
  %conv = add i32 %9, 1
  %call65 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.169, i64 0, i64 0), i32 noundef %conv, i8* noundef %arg) #22
  br label %cleanup89

if.end70:                                         ; preds = %cleanup.thread, %if.then18, %if.then48, %if.end13
  %10 = phi %struct.bio_st* [ %call44, %cleanup.thread ], [ %call20, %if.then18 ], [ %call49, %if.then48 ], [ %2, %if.end13 ]
  %call71 = call i32 @BIO_gets(%struct.bio_st* noundef %10, i8* noundef nonnull %0, i32 noundef 1024) #22
  %cmp72.not = icmp eq i32 %keepbio, 1
  br i1 %cmp72.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end70
  %11 = load %struct.bio_st*, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  call void @BIO_free_all(%struct.bio_st* noundef %11) #22
  store %struct.bio_st* null, %struct.bio_st** @app_get_pass.pwdbio, align 8, !tbaa !13
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70
  %cmp76 = icmp slt i32 %call71, 1
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end75
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call79 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.170, i64 0, i64 0)) #22
  br label %cleanup89

if.end80:                                         ; preds = %if.end75
  %call82 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 10) #24
  %cmp83.not = icmp eq i8* %call82, null
  br i1 %cmp83.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end80
  store i8 0, i8* %call82, align 1, !tbaa !12
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end80
  %call88 = call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 336) #22
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup, %if.then59, %if.else61, %if.end86, %if.then78, %if.then51, %if.then22, %if.end11, %if.then8, %if.then
  %retval.1 = phi i8* [ %call1, %if.then ], [ null, %if.then8 ], [ %call12, %if.end11 ], [ null, %if.then22 ], [ null, %if.then78 ], [ %call88, %if.end86 ], [ null, %cleanup ], [ null, %if.then51 ], [ null, %if.else61 ], [ null, %if.then59 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #23
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef %in, i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %errorline = alloca i64, align 8
  %0 = bitcast i64* %errorline to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 -1, i64* %errorline, align 8, !tbaa !20
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call1 = tail call %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef %call, %struct.conf_method_st* noundef null) #22
  %call2 = call i32 @NCONF_load_bio(%struct.conf_st* noundef %call1, %struct.bio_st* noundef %in, i64* noundef nonnull %errorline) #22
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %errorline, align 8, !tbaa !20
  %cmp3 = icmp slt i64 %1, 1
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call5 = call i8* @opt_getprog() #22
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call5) #22
  br label %if.end9

if.else:                                          ; preds = %if.end
  %3 = load i64, i64* %errorline, align 8, !tbaa !20
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call5, i64 noundef %3) #22
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %cmp10.not = icmp eq i8* %filename, null
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  br i1 %cmp10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %filename) #22
  br label %if.end15

if.else13:                                        ; preds = %if.end9
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #22
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  call void @NCONF_free(%struct.conf_st* noundef %call1) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15
  %retval.0 = phi %struct.conf_st* [ null, %if.end15 ], [ %call1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.conf_st* %retval.0
}

declare %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef, %struct.conf_method_st* noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #3

declare i32 @NCONF_load_bio(%struct.conf_st* noundef, %struct.bio_st* noundef, i64* noundef) local_unnamed_addr #3

declare i8* @opt_getprog() local_unnamed_addr #3

declare void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @app_load_config_verbose(i8* noundef %filename, i32 noundef %verbose) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %filename, align 1, !tbaa !12
  %cmp = icmp eq i8 %0, 0
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #22
  br label %if.end4

if.else:                                          ; preds = %if.then
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %filename) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else, %entry
  %call5 = tail call %struct.conf_st* @app_load_config_internal(i8* noundef %filename, i32 noundef 0) #20
  ret %struct.conf_st* %call5
}

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @app_load_config_internal(i8* noundef %filename, i32 noundef %quiet) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %filename, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %filename, align 1, !tbaa !12
  %cmp1.not = icmp eq i8 %0, 0
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call fastcc %struct.bio_st* @bio_open_default_(i8* noundef %filename, i8 noundef signext 114, i32 noundef 32769, i32 noundef %quiet) #20
  %cmp3 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call6 = tail call %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef nonnull %call, i8* noundef %filename) #20
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #22
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call8 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call9 = tail call %struct.conf_st* @NCONF_new_ex(%struct.ossl_lib_ctx_st* noundef %call8, %struct.conf_method_st* noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %if.then
  %retval.0 = phi %struct.conf_st* [ null, %if.then ], [ %call6, %if.end ], [ %call9, %if.else ]
  ret %struct.conf_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @bio_open_default_(i8* noundef %filename, i8 noundef signext %mode, i32 noundef %format, i32 noundef %quiet) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %filename, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0)) #24
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp2 = icmp eq i8 %mode, 114
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %call4 = tail call %struct.bio_st* @dup_bio_in(i32 noundef %format) #20
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call5 = tail call %struct.bio_st* @dup_bio_out(i32 noundef %format) #20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bio_st* [ %call4, %cond.true ], [ %call5, %cond.false ]
  %tobool.not = icmp eq i32 %quiet, 0
  br i1 %tobool.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %cond.end
  tail call void @ERR_clear_error() #22
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %cmp7.not = icmp eq %struct.bio_st* %cond, null
  br i1 %cmp7.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %cond14 = select i1 %cmp2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.211, i64 0, i64 0)
  %call15 = tail call i32* @__errno_location() #21
  %1 = load i32, i32* %call15, align 4, !tbaa !22
  %call16 = tail call i8* @strerror(i32 noundef %1) #22
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.210, i64 0, i64 0), i8* noundef %cond14, i8* noundef %call16) #22
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %call18 = tail call fastcc i8* @modestr(i8 noundef signext %mode, i32 noundef %format) #20
  %call19 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %filename, i8* noundef %call18) #22
  %tobool20.not = icmp eq i32 %quiet, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.else
  tail call void @ERR_clear_error() #22
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %cmp23.not = icmp eq %struct.bio_st* %call19, null
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end22
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call27 = tail call fastcc i8* @modeverb(i8 noundef signext %mode) #20
  %call28 = tail call i32* @__errno_location() #21
  %3 = load i32, i32* %call28, align 4, !tbaa !22
  %call29 = tail call i8* @strerror(i32 noundef %3) #22
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.212, i64 0, i64 0), i8* noundef nonnull %filename, i8* noundef %call27, i8* noundef %call29) #22
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.end10
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %4) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end, %if.end31, %if.then21, %if.then6
  %retval.0 = phi %struct.bio_st* [ %cond, %if.then6 ], [ null, %if.end31 ], [ %call19, %if.then21 ], [ %cond, %if.end ], [ %call19, %if.end22 ]
  ret %struct.bio_st* %retval.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @app_load_modules(%struct.conf_st* noundef %config) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.conf_st* %config, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @default_config_file, align 8, !tbaa !13
  %call = tail call %struct.conf_st* @app_load_config_internal(i8* noundef %0, i32 noundef 1) #20
  %cmp1 = icmp eq %struct.conf_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %to_free.017 = phi %struct.conf_st* [ %call, %if.end ], [ null, %entry ]
  %config.addr.016 = phi %struct.conf_st* [ %call, %if.end ], [ %config, %entry ]
  %call4 = tail call i32 @CONF_modules_load(%struct.conf_st* noundef nonnull %config.addr.016, i8* noundef null, i64 noundef 0) #22
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %cleanup.sink.split

if.then6:                                         ; preds = %if.end3
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #22
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.then6
  %retval.0.ph = phi i32 [ 0, %if.then6 ], [ 1, %if.end3 ]
  tail call void @NCONF_free(%struct.conf_st* noundef %to_free.017) #22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @CONF_modules_load(%struct.conf_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @add_oid_section(%struct.conf_st* noundef %conf) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0)) #22
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_clear_error() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %conf, i8* noundef nonnull %call) #22
  %cmp2 = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp2, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #20
  %call736 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #22
  %cmp837 = icmp sgt i32 %call736, 0
  br i1 %cmp837, label %for.body, label %cleanup

if.then3:                                         ; preds = %if.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %call) #22
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #22
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %cleanup, !llvm.loop !23

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.038 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.038) #22
  %value = getelementptr inbounds i8, i8* %call10, i64 16
  %1 = bitcast i8* %value to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !24
  %name = getelementptr inbounds i8, i8* %call10, i64 8
  %3 = bitcast i8* %name to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !26
  %call12 = tail call i32 @OBJ_create(i8* noundef %2, i8* noundef %4, i8* noundef %4) #22
  %cmp13 = icmp eq i32 %call12, 0
  %inc = add nuw nsw i32 %i.038, 1
  br i1 %cmp13, label %if.then14, label %for.cond

if.then14:                                        ; preds = %for.body
  %5 = bitcast i8* %value to i8**
  %6 = bitcast i8* %name to i8**
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %8 = load i8*, i8** %6, align 8, !tbaa !26
  %9 = load i8*, i8** %5, align 8, !tbaa !24
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %8, i8* noundef %9) #22
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.then14, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then3 ], [ 0, %if.then14 ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.0
}

declare i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OBJ_create(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.conf_st* @app_load_config_modules(i8* noundef %configfile) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %configfile, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.conf_st* @app_load_config_verbose(i8* noundef nonnull %configfile, i32 noundef 1) #20
  %cmp1 = icmp eq %struct.conf_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %0 = load i8*, i8** @default_config_file, align 8, !tbaa !13
  %cmp3.not = icmp eq i8* %0, %configfile
  br i1 %cmp3.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @app_load_modules(%struct.conf_st* noundef nonnull %call) #20
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %call) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then5, %land.lhs.true, %if.end, %if.then
  %retval.0 = phi %struct.conf_st* [ null, %if.then ], [ %call, %land.lhs.true ], [ null, %if.then5 ], [ %call, %if.end ], [ null, %entry ]
  ret %struct.conf_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @load_cert_pass(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %cert = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %desc
  %cmp1.not = icmp eq i8* %uri, null
  br i1 %cmp1.not, label %if.else13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #24
  %call2 = tail call i32 @strncmp(i8* noundef nonnull %uri, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 noundef %call) #24
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end16.thread, label %land.lhs.true7

if.end16.thread:                                  ; preds = %land.lhs.true
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* noundef %spec.store.select) #22
  br label %if.then18

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #24
  %call9 = tail call i32 @strncmp(i8* noundef nonnull %uri, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef %call8) #24
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %land.lhs.true7
  %call12 = tail call %struct.x509_st* @X509_load_http(i8* noundef nonnull %uri, %struct.bio_st* noundef null, %struct.bio_st* noundef null, i32 noundef 0) #22
  store %struct.x509_st* %call12, %struct.x509_st** %cert, align 8, !tbaa !13
  br label %if.end16

if.else13:                                        ; preds = %entry, %land.lhs.true7
  %call14 = call i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %spec.store.select, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef nonnull %cert, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null) #20
  %.pr.pre = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11
  %2 = phi %struct.x509_st* [ %call12, %if.then11 ], [ %.pr.pre, %if.else13 ]
  %cmp17 = icmp eq %struct.x509_st* %2, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16.thread, %if.end16
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* noundef %spec.store.select) #22
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %4) #22
  %.pre = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %5 = phi %struct.x509_st* [ %.pre, %if.then18 ], [ %2, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.x509_st* %5
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare %struct.x509_st* @X509_load_http(i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %desc, %struct.evp_pkey_st** noundef %ppkey, %struct.evp_pkey_st** noundef %ppubkey, %struct.evp_pkey_st** noundef %pparams, %struct.x509_st** noundef %pcert, %struct.stack_st_X509** noundef %pcerts, %struct.X509_crl_st** noundef %pcrl, %struct.stack_st_X509_CRL** noundef %pcrls) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @load_key_certs_crls_suppress(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %desc, %struct.evp_pkey_st** noundef %ppkey, %struct.evp_pkey_st** noundef %ppubkey, %struct.evp_pkey_st** noundef %pparams, %struct.x509_st** noundef %pcert, %struct.stack_st_X509** noundef %pcerts, %struct.X509_crl_st** noundef %pcrl, %struct.stack_st_X509_CRL** noundef %pcrls, i32 noundef 0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @load_crl(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %crl = alloca %struct.X509_crl_st*, align 8
  %0 = bitcast %struct.X509_crl_st** %crl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %crl, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %desc
  %cmp1.not = icmp eq i8* %uri, null
  br i1 %cmp1.not, label %if.else13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #24
  %call2 = tail call i32 @strncmp(i8* noundef nonnull %uri, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 noundef %call) #24
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end16.thread, label %land.lhs.true7

if.end16.thread:                                  ; preds = %land.lhs.true
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* noundef %spec.store.select) #22
  br label %if.then18

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #24
  %call9 = tail call i32 @strncmp(i8* noundef nonnull %uri, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef %call8) #24
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %land.lhs.true7
  %call12 = tail call %struct.X509_crl_st* @X509_CRL_load_http(i8* noundef nonnull %uri, %struct.bio_st* noundef null, %struct.bio_st* noundef null, i32 noundef 0) #22
  store %struct.X509_crl_st* %call12, %struct.X509_crl_st** %crl, align 8, !tbaa !13
  br label %if.end16

if.else13:                                        ; preds = %entry, %land.lhs.true7
  %call14 = call i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef null, i8* noundef %spec.store.select, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef nonnull %crl, %struct.stack_st_X509_CRL** noundef null) #20
  %.pr.pre = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !13
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11
  %2 = phi %struct.X509_crl_st* [ %call12, %if.then11 ], [ %.pr.pre, %if.else13 ]
  %cmp17 = icmp eq %struct.X509_crl_st* %2, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16.thread, %if.end16
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* noundef %spec.store.select) #22
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %4) #22
  %.pre = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !13
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %5 = phi %struct.X509_crl_st* [ %.pre, %if.then18 ], [ %2, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.X509_crl_st* %5
}

declare %struct.X509_crl_st* @X509_CRL_load_http(i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @load_csr(i8* noundef %file, i32 noundef %format, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %format, 0
  %spec.store.select = select i1 %cmp, i32 32773, i32 %format
  %cmp1 = icmp eq i8* %desc, null
  %spec.store.select21 = select i1 %cmp1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %desc
  %call = tail call %struct.bio_st* @bio_open_default(i8* noundef %file, i8 noundef signext 114, i32 noundef %spec.store.select) #20
  %cmp4 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp4, label %if.then17, label %if.end6

if.end6:                                          ; preds = %entry
  switch i32 %spec.store.select, label %if.else13 [
    i32 4, label %if.then8
    i32 32773, label %if.then11
  ]

if.then8:                                         ; preds = %if.end6
  %call9 = tail call %struct.X509_req_st* @d2i_X509_REQ_bio(%struct.bio_st* noundef nonnull %call, %struct.X509_req_st** noundef null) #22
  br label %end

if.then11:                                        ; preds = %if.end6
  %call12 = tail call %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef nonnull %call, %struct.X509_req_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #22
  br label %end

if.else13:                                        ; preds = %if.end6
  tail call void @print_format_error(i32 noundef %spec.store.select, i64 noundef 2) #22
  br label %if.then17

end:                                              ; preds = %if.then8, %if.then11
  %req.0 = phi %struct.X509_req_st* [ %call9, %if.then8 ], [ %call12, %if.then11 ]
  %cmp16 = icmp eq %struct.X509_req_st* %req.0, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else13, %entry, %end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* noundef %spec.store.select21) #22
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #22
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %end
  %req.035 = phi %struct.X509_req_st* [ null, %if.then17 ], [ %req.0, %end ]
  %call20 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #22
  ret %struct.X509_req_st* %req.035
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @bio_open_default(i8* noundef %filename, i8 noundef signext %mode, i32 noundef %format) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @bio_open_default_(i8* noundef %filename, i8 noundef signext %mode, i32 noundef %format, i32 noundef 0) #20
  ret %struct.bio_st* %call
}

declare %struct.X509_req_st* @d2i_X509_REQ_bio(%struct.bio_st* noundef, %struct.X509_req_st** noundef) local_unnamed_addr #3

declare %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef, %struct.X509_req_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare void @print_format_error(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @cleanse(i8* noundef %str) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %str, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %str) #24
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %str, i64 noundef %call) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @clear_free(i8* noundef %str) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %str, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %str) #24
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %str, i64 noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 538) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @load_key(i8* noundef %uri, i32 noundef %format, i32 noundef %may_stdin, i8* noundef %pass, %struct.engine_st* noundef %e, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %desc
  %cmp1 = icmp eq i32 %format, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  %call = tail call i8* @make_engine_uri(%struct.engine_st* noundef %e, i8* noundef %uri, i8* noundef %spec.store.select) #22
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  %uri.addr.0 = phi i8* [ %call, %if.then2 ], [ %uri, %entry ]
  %allocated_uri.0 = phi i8* [ %call, %if.then2 ], [ null, %entry ]
  %call4 = call i32 @load_key_certs_crls(i8* noundef %uri.addr.0, i32 noundef %format, i32 noundef %may_stdin, i8* noundef %pass, i8* noundef %spec.store.select, %struct.evp_pkey_st** noundef nonnull %pkey, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null) #20
  call void @CRYPTO_free(i8* noundef %allocated_uri.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 556) #22
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.evp_pkey_st* %1
}

declare i8* @make_engine_uri(%struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @load_pubkey(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, %struct.engine_st* noundef %e, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %desc
  %cmp1 = icmp eq i32 %format, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  %call = tail call i8* @make_engine_uri(%struct.engine_st* noundef %e, i8* noundef %uri, i8* noundef %spec.store.select) #22
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  %uri.addr.0 = phi i8* [ %call, %if.then2 ], [ %uri, %entry ]
  %allocated_uri.0 = phi i8* [ %call, %if.then2 ], [ null, %entry ]
  %call4 = call i32 @load_key_certs_crls(i8* noundef %uri.addr.0, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %spec.store.select, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef nonnull %pkey, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null) #20
  call void @CRYPTO_free(i8* noundef %allocated_uri.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 575) #22
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.evp_pkey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @load_keyparams_suppress(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %keytype, i8* noundef %desc, i32 noundef %suppress_decode_errors) local_unnamed_addr #0 {
entry:
  %params = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %params, align 8, !tbaa !13
  %cmp = icmp eq i8* %desc, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %desc
  %call = call fastcc i32 @load_key_certs_crls_suppress(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef null, i8* noundef %spec.store.select, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef nonnull %params, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null, i32 noundef %suppress_decode_errors) #20
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !13
  %cmp1 = icmp ne %struct.evp_pkey_st* %1, null
  %cmp2 = icmp ne i8* %keytype, null
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %land.lhs.true3, label %if.end10

land.lhs.true3:                                   ; preds = %entry
  %call4 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %1, i8* noundef nonnull %keytype) #22
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %land.lhs.true3.if.end10_crit_edge

land.lhs.true3.if.end10_crit_edge:                ; preds = %land.lhs.true3
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !13
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true3
  %tobool6.not = icmp eq i32 %suppress_decode_errors, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0), i8* noundef %spec.store.select, i8* noundef %uri) #22
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %3) #22
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #22
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true3.if.end10_crit_edge, %if.end9, %entry
  %5 = phi %struct.evp_pkey_st* [ %.pre, %land.lhs.true3.if.end10_crit_edge ], [ null, %if.end9 ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.evp_pkey_st* %5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load_key_certs_crls_suppress(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %desc, %struct.evp_pkey_st** noundef %ppkey, %struct.evp_pkey_st** noundef %ppubkey, %struct.evp_pkey_st** noundef %pparams, %struct.x509_st** noundef %pcert, %struct.stack_st_X509** noundef %pcerts, %struct.X509_crl_st** noundef %pcrl, %struct.stack_st_X509_CRL** noundef %pcrls, i32 noundef %suppress_decode_errors) unnamed_addr #0 {
entry:
  %uidata = alloca %struct.pw_cb_data, align 8
  %itp = alloca [2 x %struct.ossl_param_st], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp129 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.pw_cb_data* %uidata to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #23
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call1 = tail call i8* @app_get0_propq() #22
  %cmp.not = icmp eq %struct.evp_pkey_st** %ppkey, null
  br i1 %cmp.not, label %cond.false, label %if.then

cond.false:                                       ; preds = %entry
  %cmp2.not = icmp eq %struct.evp_pkey_st** %ppubkey, null
  br i1 %cmp2.not, label %cond.false4, label %cond.end27.thread

cond.false4:                                      ; preds = %cond.false
  %cmp5.not = icmp eq %struct.evp_pkey_st** %pparams, null
  br i1 %cmp5.not, label %cond.false7, label %cond.end27.thread

cond.false7:                                      ; preds = %cond.false4
  %cmp8.not = icmp eq %struct.x509_st** %pcert, null
  br i1 %cmp8.not, label %cond.false10, label %cond.end27.thread

cond.false10:                                     ; preds = %cond.false7
  %cmp11.not = icmp eq %struct.X509_crl_st** %pcrl, null
  br i1 %cmp11.not, label %cond.false13, label %cond.end27.thread

cond.false13:                                     ; preds = %cond.false10
  %cmp14.not = icmp eq %struct.stack_st_X509** %pcerts, null
  br i1 %cmp14.not, label %cond.false16, label %cond.end27.thread

cond.false16:                                     ; preds = %cond.false13
  %cmp17.not = icmp eq %struct.stack_st_X509_CRL** %pcrls, null
  %cond = select i1 %cmp17.not, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i64 0, i64 0)
  br label %cond.end27.thread

cond.end27.thread:                                ; preds = %cond.false, %cond.false7, %cond.false16, %cond.false13, %cond.false10, %cond.false4
  %cond28.ph = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.178, i64 0, i64 0), %cond.false13 ], [ %cond, %cond.false16 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), %cond.false10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i64 0, i64 0), %cond.false7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), %cond.false4 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), %cond.false ]
  %1 = bitcast [2 x %struct.ossl_param_st]* %itp to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #23
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast [2 x %struct.ossl_param_st]* %itp to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %cond.end27.thread, %if.then
  %cond28539 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0), %if.then ], [ %cond28.ph, %cond.end27.thread ]
  %cnt_expectations.0 = phi i32 [ 1, %if.then ], [ 0, %cond.end27.thread ]
  %expect.0 = phi i32 [ 4, %if.then ], [ -1, %cond.end27.thread ]
  %.pre-phi = bitcast [2 x %struct.ossl_param_st]* %itp to i8*
  %cmp37 = icmp ne %struct.evp_pkey_st** %ppubkey, null
  br i1 %cmp37, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %inc39 = add nuw nsw i32 %cnt_expectations.0, 1
  %spec.select = select i1 %cmp.not, i32 3, i32 0
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.end
  %cnt_expectations.1 = phi i32 [ %inc39, %if.then38 ], [ %cnt_expectations.0, %if.end ]
  %expect.1 = phi i32 [ %spec.select, %if.then38 ], [ %expect.0, %if.end ]
  %cmp48.not = icmp eq %struct.evp_pkey_st** %pparams, null
  br i1 %cmp48.not, label %if.end58, label %if.then49

if.then49:                                        ; preds = %if.end47
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pparams, align 8, !tbaa !13
  %inc50 = add nuw nsw i32 %cnt_expectations.1, 1
  %3 = lshr i32 %expect.1, 30
  %4 = and i32 %3, 2
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.end47
  %cnt_expectations.2 = phi i32 [ %inc50, %if.then49 ], [ %cnt_expectations.1, %if.end47 ]
  %expect.2 = phi i32 [ %4, %if.then49 ], [ %expect.1, %if.end47 ]
  %cmp59 = icmp ne %struct.x509_st** %pcert, null
  br i1 %cmp59, label %if.then60, label %if.end69

if.then60:                                        ; preds = %if.end58
  store %struct.x509_st* null, %struct.x509_st** %pcert, align 8, !tbaa !13
  %inc61 = add nuw nsw i32 %cnt_expectations.2, 1
  %cmp62 = icmp slt i32 %expect.2, 0
  %spec.select532 = select i1 %cmp62, i32 5, i32 0
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %if.end58
  %cnt_expectations.3 = phi i32 [ %inc61, %if.then60 ], [ %cnt_expectations.2, %if.end58 ]
  %expect.3 = phi i32 [ %spec.select532, %if.then60 ], [ %expect.2, %if.end58 ]
  %cmp70 = icmp ne %struct.stack_st_X509** %pcerts, null
  br i1 %cmp70, label %if.then71, label %if.end86

if.then71:                                        ; preds = %if.end69
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %pcerts, align 8, !tbaa !13
  %cmp72 = icmp eq %struct.stack_st_X509* %5, null
  br i1 %cmp72, label %land.lhs.true, label %if.end77

land.lhs.true:                                    ; preds = %if.then71
  %call73 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #22
  %6 = bitcast %struct.stack_st_X509** %pcerts to %struct.stack_st**
  store %struct.stack_st* %call73, %struct.stack_st** %6, align 8, !tbaa !13
  %cmp74 = icmp eq %struct.stack_st* %call73, null
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %land.lhs.true
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call76 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.180, i64 0, i64 0)) #22
  br label %end

if.end77:                                         ; preds = %land.lhs.true, %if.then71
  %inc78 = add nuw nsw i32 %cnt_expectations.3, 1
  %cmp79 = icmp slt i32 %expect.3, 0
  %cmp82 = icmp eq i32 %expect.3, 5
  %8 = or i1 %cmp79, %cmp82
  %cond85 = select i1 %8, i32 5, i32 0
  br label %if.end86

if.end86:                                         ; preds = %if.end77, %if.end69
  %cnt_expectations.4 = phi i32 [ %inc78, %if.end77 ], [ %cnt_expectations.3, %if.end69 ]
  %expect.4 = phi i32 [ %cond85, %if.end77 ], [ %expect.3, %if.end69 ]
  %cmp87.not = icmp eq %struct.X509_crl_st** %pcrl, null
  br i1 %cmp87.not, label %if.end97, label %if.then88

if.then88:                                        ; preds = %if.end86
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %pcrl, align 8, !tbaa !13
  %inc89 = add nuw nsw i32 %cnt_expectations.4, 1
  %cmp90 = icmp slt i32 %expect.4, 0
  %spec.select533 = select i1 %cmp90, i32 6, i32 0
  br label %if.end97

if.end97:                                         ; preds = %if.then88, %if.end86
  %cnt_expectations.5 = phi i32 [ %inc89, %if.then88 ], [ %cnt_expectations.4, %if.end86 ]
  %expect.5 = phi i32 [ %spec.select533, %if.then88 ], [ %expect.4, %if.end86 ]
  %cmp98.not = icmp eq %struct.stack_st_X509_CRL** %pcrls, null
  br i1 %cmp98.not, label %if.end115, label %if.then99

if.then99:                                        ; preds = %if.end97
  %9 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %pcrls, align 8, !tbaa !13
  %cmp100 = icmp eq %struct.stack_st_X509_CRL* %9, null
  br i1 %cmp100, label %land.lhs.true101, label %if.end115.thread

land.lhs.true101:                                 ; preds = %if.then99
  %call102 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #22
  %10 = bitcast %struct.stack_st_X509_CRL** %pcrls to %struct.stack_st**
  store %struct.stack_st* %call102, %struct.stack_st** %10, align 8, !tbaa !13
  %cmp103 = icmp eq %struct.stack_st* %call102, null
  br i1 %cmp103, label %if.then104, label %if.end115.thread

if.then104:                                       ; preds = %land.lhs.true101
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call105 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.180, i64 0, i64 0)) #22
  br label %end

if.end115.thread:                                 ; preds = %if.then99, %land.lhs.true101
  %inc107 = add nuw nsw i32 %cnt_expectations.5, 1
  %cmp108 = icmp slt i32 %expect.5, 0
  %cmp111 = icmp eq i32 %expect.5, 6
  %12 = or i1 %cmp108, %cmp111
  %cond114 = select i1 %12, i32 6, i32 0
  br label %if.end124

if.end115:                                        ; preds = %if.end97
  %cmp116 = icmp eq i32 %cnt_expectations.5, 0
  br i1 %cmp116, label %if.then117, label %if.end124

if.then117:                                       ; preds = %if.end115
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %cmp118.not = icmp eq i8* %uri, null
  %cond122 = select i1 %cmp118.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i64 0, i64 0), i8* %uri
  %call123 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.181, i64 0, i64 0), i8* noundef %cond122) #22
  br label %cleanup368

if.end124:                                        ; preds = %if.end115.thread, %if.end115
  %expect.6551 = phi i32 [ %cond114, %if.end115.thread ], [ %expect.5, %if.end115 ]
  %cnt_expectations.6550 = phi i32 [ %inc107, %if.end115.thread ], [ %cnt_expectations.5, %if.end115 ]
  %password = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %uidata, i64 0, i32 0
  store i8* %pass, i8** %password, align 8, !tbaa !27
  %prompt_info = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %uidata, i64 0, i32 1
  store i8* %uri, i8** %prompt_info, align 8, !tbaa !29
  %call125 = tail call fastcc i8* @format2string(i32 noundef %format) #20
  %cmp126.not = icmp eq i8* %call125, null
  br i1 %cmp126.not, label %if.end130, label %if.then127

if.then127:                                       ; preds = %if.end124
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %itp, i64 0, i64 0
  %14 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #23
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i64 0, i64 0), i8* noundef nonnull %call125, i64 noundef 0) #22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %.pre-phi, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #23
  %arrayidx128 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %itp, i64 0, i64 1
  %15 = bitcast %struct.ossl_param_st* %tmp129 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #23
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp129) #22
  %16 = bitcast %struct.ossl_param_st* %arrayidx128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #23
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end124
  %params.0 = phi %struct.ossl_param_st* [ %arrayidx, %if.then127 ], [ null, %if.end124 ]
  %cmp131 = icmp eq i8* %uri, null
  br i1 %cmp131, label %if.then132, label %if.else

if.then132:                                       ; preds = %if.end130
  %tobool.not = icmp eq i32 %maybe_stdin, 0
  br i1 %tobool.not, label %cleanup, label %if.end135

if.end135:                                        ; preds = %if.then132
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !13
  call void @unbuffer(%struct._IO_FILE* noundef %17) #20
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !13
  %call136 = call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %18, i32 noundef 0) #22
  %cmp137.not = icmp eq %struct.bio_st* %call136, null
  br i1 %cmp137.not, label %if.then147, label %if.then138

if.then138:                                       ; preds = %if.end135
  %call139 = call %struct.ui_method_st* @get_ui_method() #22
  %call140 = call %struct.ossl_store_ctx_st* @OSSL_STORE_attach(%struct.bio_st* noundef nonnull %call136, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1, %struct.ui_method_st* noundef %call139, i8* noundef nonnull %0, %struct.ossl_param_st* noundef %params.0, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #22
  %call141 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call136) #22
  br label %if.end145

cleanup:                                          ; preds = %if.then132
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call134 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.184, i64 0, i64 0)) #22
  br label %end

if.else:                                          ; preds = %if.end130
  %call143 = call %struct.ui_method_st* @get_ui_method() #22
  %call144 = call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef nonnull %uri, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call1, %struct.ui_method_st* noundef %call143, i8* noundef nonnull %0, %struct.ossl_param_st* noundef %params.0, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #22
  br label %if.end145

if.end145:                                        ; preds = %if.then138, %if.else
  %ctx.2 = phi %struct.ossl_store_ctx_st* [ %call144, %if.else ], [ %call140, %if.then138 ]
  %uri.addr.1 = phi i8* [ %uri, %if.else ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i64 0, i64 0), %if.then138 ]
  %cmp146 = icmp eq %struct.ossl_store_ctx_st* %ctx.2, null
  br i1 %cmp146, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end135, %if.end145
  %uri.addr.1591 = phi i8* [ %uri.addr.1, %if.end145 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i64 0, i64 0), %if.end135 ]
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call148 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.186, i64 0, i64 0)) #22
  br label %end

if.end149:                                        ; preds = %if.end145
  %cmp150 = icmp sgt i32 %expect.6551, 0
  br i1 %cmp150, label %land.lhs.true151, label %land.rhs.preheader

land.lhs.true151:                                 ; preds = %if.end149
  %call152 = call i32 @OSSL_STORE_expect(%struct.ossl_store_ctx_st* noundef nonnull %ctx.2, i32 noundef %expect.6551) #22
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end149, %land.lhs.true151
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %cleanup260
  %ncerts.0605 = phi i32 [ %ncerts.2, %cleanup260 ], [ 0, %land.rhs.preheader ]
  %cnt_expectations.7602 = phi i32 [ %cnt_expectations.12, %cleanup260 ], [ %cnt_expectations.6550, %land.rhs.preheader ]
  %ncrls.0601 = phi i32 [ %ncrls.2, %cleanup260 ], [ 0, %land.rhs.preheader ]
  %call157 = call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %ctx.2) #22
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %while.body, label %end.thread

while.body:                                       ; preds = %land.rhs
  %call159 = call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef nonnull %ctx.2) #22
  %cmp160 = icmp eq %struct.ossl_store_info_st* %call159, null
  br i1 %cmp160, label %cleanup260, label %if.end162, !llvm.loop !31

if.end162:                                        ; preds = %while.body
  %call163 = call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  switch i32 %call163, label %sw.epilog.thread [
    i32 4, label %sw.bb
    i32 3, label %sw.bb184
    i32 2, label %sw.bb196
    i32 5, label %sw.bb208
    i32 6, label %sw.bb227
  ]

sw.bb:                                            ; preds = %if.end162
  br i1 %cmp.not, label %if.end170, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %sw.bb
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !13
  %cmp166 = icmp eq %struct.evp_pkey_st* %21, null
  br i1 %cmp166, label %if.then167, label %if.end170

if.then167:                                       ; preds = %land.lhs.true165
  %call168 = call %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PKEY(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.evp_pkey_st* %call168, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !13
  %cmp169 = icmp ne %struct.evp_pkey_st* %call168, null
  %conv = zext i1 %cmp169 to i32
  %sub = sub nuw nsw i32 %cnt_expectations.7602, %conv
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %land.lhs.true165, %sw.bb
  %cnt_expectations.8 = phi i32 [ %sub, %if.then167 ], [ %cnt_expectations.7602, %land.lhs.true165 ], [ %cnt_expectations.7602, %sw.bb ]
  %ok.0 = phi i32 [ %conv, %if.then167 ], [ 1, %land.lhs.true165 ], [ 1, %sw.bb ]
  %tobool171 = icmp ne i32 %ok.0, 0
  %or.cond = and i1 %cmp37, %tobool171
  br i1 %or.cond, label %land.lhs.true175, label %sw.epilog

land.lhs.true175:                                 ; preds = %if.end170
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %cmp176 = icmp eq %struct.evp_pkey_st* %22, null
  br i1 %cmp176, label %if.then178, label %sw.epilog.thread

if.then178:                                       ; preds = %land.lhs.true175
  %call179 = call %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PKEY(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.evp_pkey_st* %call179, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %cmp180 = icmp ne %struct.evp_pkey_st* %call179, null
  %conv181 = zext i1 %cmp180 to i32
  %sub182 = sub nsw i32 %cnt_expectations.8, %conv181
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end162
  br i1 %cmp37, label %land.lhs.true187, label %sw.epilog.thread

land.lhs.true187:                                 ; preds = %sw.bb184
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %cmp188 = icmp eq %struct.evp_pkey_st* %23, null
  br i1 %cmp188, label %if.then190, label %sw.epilog.thread

if.then190:                                       ; preds = %land.lhs.true187
  %call191 = call %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PUBKEY(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.evp_pkey_st* %call191, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %cmp192 = icmp ne %struct.evp_pkey_st* %call191, null
  %conv193 = zext i1 %cmp192 to i32
  %sub194 = sub nuw nsw i32 %cnt_expectations.7602, %conv193
  br label %sw.epilog

sw.bb196:                                         ; preds = %if.end162
  br i1 %cmp48.not, label %sw.epilog.thread, label %land.lhs.true199

land.lhs.true199:                                 ; preds = %sw.bb196
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pparams, align 8, !tbaa !13
  %cmp200 = icmp eq %struct.evp_pkey_st* %24, null
  br i1 %cmp200, label %if.then202, label %sw.epilog.thread

if.then202:                                       ; preds = %land.lhs.true199
  %call203 = call %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PARAMS(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.evp_pkey_st* %call203, %struct.evp_pkey_st** %pparams, align 8, !tbaa !13
  %cmp204 = icmp ne %struct.evp_pkey_st* %call203, null
  %conv205 = zext i1 %cmp204 to i32
  %sub206 = sub nuw nsw i32 %cnt_expectations.7602, %conv205
  br label %sw.epilog

sw.bb208:                                         ; preds = %if.end162
  br i1 %cmp59, label %land.lhs.true211, label %if.else219

land.lhs.true211:                                 ; preds = %sw.bb208
  %25 = load %struct.x509_st*, %struct.x509_st** %pcert, align 8, !tbaa !13
  %cmp212 = icmp eq %struct.x509_st* %25, null
  br i1 %cmp212, label %if.then214, label %if.else219

if.then214:                                       ; preds = %land.lhs.true211
  %call215 = call %struct.x509_st* @OSSL_STORE_INFO_get1_CERT(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.x509_st* %call215, %struct.x509_st** %pcert, align 8, !tbaa !13
  %cmp216 = icmp ne %struct.x509_st* %call215, null
  %conv217 = zext i1 %cmp216 to i32
  %sub218 = sub nuw nsw i32 %cnt_expectations.7602, %conv217
  br label %if.end226

if.else219:                                       ; preds = %land.lhs.true211, %sw.bb208
  br i1 %cmp70, label %if.then222, label %if.end226

if.then222:                                       ; preds = %if.else219
  %26 = load %struct.stack_st_X509*, %struct.stack_st_X509** %pcerts, align 8, !tbaa !13
  %call223 = call %struct.x509_st* @OSSL_STORE_INFO_get1_CERT(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  %call224 = call i32 @X509_add_cert(%struct.stack_st_X509* noundef %26, %struct.x509_st* noundef %call223, i32 noundef 0) #22
  br label %if.end226

if.end226:                                        ; preds = %if.else219, %if.then222, %if.then214
  %cnt_expectations.9 = phi i32 [ %sub218, %if.then214 ], [ %cnt_expectations.7602, %if.then222 ], [ %cnt_expectations.7602, %if.else219 ]
  %ok.1 = phi i32 [ %conv217, %if.then214 ], [ %call224, %if.then222 ], [ 1, %if.else219 ]
  %add = add nsw i32 %ok.1, %ncerts.0605
  br label %sw.epilog

sw.bb227:                                         ; preds = %if.end162
  br i1 %cmp87.not, label %if.else238, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %sw.bb227
  %27 = load %struct.X509_crl_st*, %struct.X509_crl_st** %pcrl, align 8, !tbaa !13
  %cmp231 = icmp eq %struct.X509_crl_st* %27, null
  br i1 %cmp231, label %if.then233, label %if.else238

if.then233:                                       ; preds = %land.lhs.true230
  %call234 = call %struct.X509_crl_st* @OSSL_STORE_INFO_get1_CRL(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  store %struct.X509_crl_st* %call234, %struct.X509_crl_st** %pcrl, align 8, !tbaa !13
  %cmp235 = icmp ne %struct.X509_crl_st* %call234, null
  %conv236 = zext i1 %cmp235 to i32
  %sub237 = sub nuw nsw i32 %cnt_expectations.7602, %conv236
  br label %if.end247

if.else238:                                       ; preds = %land.lhs.true230, %sw.bb227
  br i1 %cmp98.not, label %if.end247, label %if.then241

if.then241:                                       ; preds = %if.else238
  %28 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %pcrls, align 8, !tbaa !13
  %call242 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %28) #20
  %call243 = call %struct.X509_crl_st* @OSSL_STORE_INFO_get1_CRL(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  %29 = bitcast %struct.X509_crl_st* %call243 to i8*
  %call245 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call242, i8* noundef %29) #22
  br label %if.end247

if.end247:                                        ; preds = %if.else238, %if.then241, %if.then233
  %cnt_expectations.10 = phi i32 [ %sub237, %if.then233 ], [ %cnt_expectations.7602, %if.then241 ], [ %cnt_expectations.7602, %if.else238 ]
  %ok.2 = phi i32 [ %conv236, %if.then233 ], [ %call245, %if.then241 ], [ 1, %if.else238 ]
  %add248 = add nsw i32 %ok.2, %ncrls.0601
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end162, %land.lhs.true199, %sw.bb196, %land.lhs.true187, %sw.bb184, %land.lhs.true175
  %cnt_expectations.11.ph = phi i32 [ %cnt_expectations.8, %land.lhs.true175 ], [ %cnt_expectations.7602, %sw.bb184 ], [ %cnt_expectations.7602, %land.lhs.true187 ], [ %cnt_expectations.7602, %sw.bb196 ], [ %cnt_expectations.7602, %land.lhs.true199 ], [ %cnt_expectations.7602, %if.end162 ]
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  br label %cleanup260

sw.epilog:                                        ; preds = %if.then202, %if.then190, %if.end170, %if.then178, %if.end247, %if.end226
  %ncrls.1 = phi i32 [ %add248, %if.end247 ], [ %ncrls.0601, %if.end226 ], [ %ncrls.0601, %if.then202 ], [ %ncrls.0601, %if.then190 ], [ %ncrls.0601, %if.then178 ], [ %ncrls.0601, %if.end170 ]
  %cnt_expectations.11 = phi i32 [ %cnt_expectations.10, %if.end247 ], [ %cnt_expectations.9, %if.end226 ], [ %sub206, %if.then202 ], [ %sub194, %if.then190 ], [ %sub182, %if.then178 ], [ %cnt_expectations.8, %if.end170 ]
  %ncerts.1 = phi i32 [ %ncerts.0605, %if.end247 ], [ %add, %if.end226 ], [ %ncerts.0605, %if.then202 ], [ %ncerts.0605, %if.then190 ], [ %ncerts.0605, %if.then178 ], [ %ncerts.0605, %if.end170 ]
  %ok.3 = phi i32 [ %ok.2, %if.end247 ], [ %ok.1, %if.end226 ], [ %conv205, %if.then202 ], [ %conv193, %if.then190 ], [ %conv181, %if.then178 ], [ %ok.0, %if.end170 ]
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call159) #22
  %tobool249.not = icmp eq i32 %ok.3, 0
  br i1 %tobool249.not, label %cleanup260.thread, label %cleanup260

cleanup260.thread:                                ; preds = %sw.epilog
  %call255 = call i8* @OSSL_STORE_INFO_type_string(i32 noundef %call163) #22
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call258 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.187, i64 0, i64 0)) #22
  br label %end

cleanup260:                                       ; preds = %sw.epilog.thread, %sw.epilog, %while.body
  %ncrls.2 = phi i32 [ %ncrls.0601, %while.body ], [ %ncrls.1, %sw.epilog ], [ %ncrls.0601, %sw.epilog.thread ]
  %cnt_expectations.12 = phi i32 [ %cnt_expectations.7602, %while.body ], [ %cnt_expectations.11, %sw.epilog ], [ %cnt_expectations.11.ph, %sw.epilog.thread ]
  %ncerts.2 = phi i32 [ %ncerts.0605, %while.body ], [ %ncerts.1, %sw.epilog ], [ %ncerts.0605, %sw.epilog.thread ]
  %cmp156 = icmp sgt i32 %cnt_expectations.12, 0
  br i1 %cmp156, label %land.rhs, label %end.thread

end.thread:                                       ; preds = %land.rhs, %cleanup260
  %ncrls.3.ph = phi i32 [ %ncrls.2, %cleanup260 ], [ %ncrls.0601, %land.rhs ]
  %ncerts.3.ph = phi i32 [ %ncerts.2, %cleanup260 ], [ %ncerts.0605, %land.rhs ]
  %call265614 = call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef nonnull %ctx.2) #22
  br label %if.then268

end:                                              ; preds = %cleanup260.thread, %cleanup, %land.lhs.true151, %if.then147, %if.then104, %if.then75
  %ncrls.3 = phi i32 [ 0, %if.then75 ], [ 0, %if.then104 ], [ 0, %cleanup ], [ 0, %if.then147 ], [ 0, %land.lhs.true151 ], [ %ncrls.1, %cleanup260.thread ]
  %failed.2 = phi i8* [ %cond28539, %if.then75 ], [ %cond28539, %if.then104 ], [ %cond28539, %cleanup ], [ %cond28539, %if.then147 ], [ %cond28539, %land.lhs.true151 ], [ %call255, %cleanup260.thread ]
  %ncerts.3 = phi i32 [ 0, %if.then75 ], [ 0, %if.then104 ], [ 0, %cleanup ], [ 0, %if.then147 ], [ 0, %land.lhs.true151 ], [ %ncerts.1, %cleanup260.thread ]
  %ctx.3 = phi %struct.ossl_store_ctx_st* [ null, %if.then75 ], [ null, %if.then104 ], [ null, %cleanup ], [ null, %if.then147 ], [ %ctx.2, %land.lhs.true151 ], [ %ctx.2, %cleanup260.thread ]
  %uri.addr.2 = phi i8* [ %uri, %if.then75 ], [ %uri, %if.then104 ], [ null, %cleanup ], [ %uri.addr.1591, %if.then147 ], [ %uri.addr.1, %land.lhs.true151 ], [ %uri.addr.1, %cleanup260.thread ]
  %call265 = call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %ctx.3) #22
  %cmp266 = icmp eq i8* %failed.2, null
  br i1 %cmp266, label %if.then268, label %if.end331

if.then268:                                       ; preds = %end.thread, %end
  %uri.addr.2619 = phi i8* [ %uri.addr.1, %end.thread ], [ %uri.addr.2, %end ]
  %ncerts.3617 = phi i32 [ %ncerts.3.ph, %end.thread ], [ %ncerts.3, %end ]
  %ncrls.3616 = phi i32 [ %ncrls.3.ph, %end.thread ], [ %ncrls.3, %end ]
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true271

land.lhs.true271:                                 ; preds = %if.then268
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !13
  %cmp272 = icmp eq %struct.evp_pkey_st* %31, null
  br i1 %cmp272, label %if.end318, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true271, %if.then268
  br i1 %cmp37, label %land.lhs.true276, label %if.else280

land.lhs.true276:                                 ; preds = %lor.lhs.false
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppubkey, align 8, !tbaa !13
  %cmp277 = icmp eq %struct.evp_pkey_st* %32, null
  br i1 %cmp277, label %if.end318, label %if.else280

if.else280:                                       ; preds = %land.lhs.true276, %lor.lhs.false
  br i1 %cmp48.not, label %if.else287, label %land.lhs.true283

land.lhs.true283:                                 ; preds = %if.else280
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pparams, align 8, !tbaa !13
  %cmp284 = icmp eq %struct.evp_pkey_st* %33, null
  br i1 %cmp284, label %if.end318, label %if.else287

if.else287:                                       ; preds = %land.lhs.true283, %if.else280
  %or.cond380 = or i1 %cmp59, %cmp70
  %cmp294 = icmp eq i32 %ncerts.3617, 0
  %or.cond381 = select i1 %or.cond380, i1 %cmp294, i1 false
  br i1 %or.cond381, label %if.then296, label %if.else301

if.then296:                                       ; preds = %if.else287
  %cmp297 = icmp eq %struct.x509_st** %pcert, null
  br label %if.end318

if.else301:                                       ; preds = %if.else287
  %cmp302 = icmp ne %struct.X509_crl_st** %pcrl, null
  %cmp305 = icmp ne %struct.stack_st_X509_CRL** %pcrls, null
  %or.cond382 = or i1 %cmp302, %cmp305
  %cmp308 = icmp eq i32 %ncrls.3616, 0
  %or.cond383 = select i1 %or.cond382, i1 %cmp308, i1 false
  br i1 %or.cond383, label %if.then310, label %if.end359.thread

if.then310:                                       ; preds = %if.else301
  %cmp311 = icmp eq %struct.X509_crl_st** %pcrl, null
  br label %if.end318

if.end318:                                        ; preds = %land.lhs.true283, %land.lhs.true271, %land.lhs.true276, %if.then310, %if.then296
  %failed.3 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), %if.then310 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i64 0, i64 0), %if.then296 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0), %land.lhs.true276 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0), %land.lhs.true271 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), %land.lhs.true283 ]
  %any.2.shrunk = phi i1 [ %cmp311, %if.then310 ], [ %cmp297, %if.then296 ], [ false, %land.lhs.true276 ], [ false, %land.lhs.true271 ], [ false, %land.lhs.true283 ]
  %tobool319.not = icmp eq i32 %suppress_decode_errors, 0
  br i1 %tobool319.not, label %if.end325, label %if.end359.thread

if.end325:                                        ; preds = %if.end318
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call324 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i64 0, i64 0)) #22
  br i1 %any.2.shrunk, label %if.then327, label %if.end331

if.then327:                                       ; preds = %if.end325
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call328 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i64 0, i64 0)) #22
  br label %if.end331

if.end331:                                        ; preds = %if.then327, %if.end325, %end
  %uri.addr.2618 = phi i8* [ %uri.addr.2, %end ], [ %uri.addr.2619, %if.end325 ], [ %uri.addr.2619, %if.then327 ]
  %failed.4 = phi i8* [ %failed.2, %end ], [ %failed.3, %if.end325 ], [ %failed.3, %if.then327 ]
  %tobool332 = icmp eq i32 %suppress_decode_errors, 0
  %cmp334 = icmp ne i8* %failed.4, null
  %or.cond384 = select i1 %tobool332, i1 %cmp334, i1 false
  br i1 %or.cond384, label %if.then336, label %if.end359

if.then336:                                       ; preds = %if.end331
  %cmp337.not = icmp eq i8* %desc, null
  br i1 %cmp337.not, label %if.end352.critedge, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %if.then336
  %call340 = call i8* @strstr(i8* noundef nonnull %desc, i8* noundef nonnull %failed.4) #24
  %cmp341.not = icmp eq i8* %call340, null
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  br i1 %cmp341.not, label %if.then349, label %if.then343

if.then343:                                       ; preds = %land.lhs.true339
  %call344 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0), i8* noundef nonnull %desc) #22
  br label %if.end352

if.then349:                                       ; preds = %land.lhs.true339
  %call346 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0), i8* noundef nonnull %failed.4) #22
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call350 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i64 0, i64 0), i8* noundef nonnull %desc) #22
  br label %if.end352

if.end352.critedge:                               ; preds = %if.then336
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call346.c = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i64 0, i64 0), i8* noundef nonnull %failed.4) #22
  br label %if.end352

if.end352:                                        ; preds = %if.end352.critedge, %if.then349, %if.then343
  %cmp353.not = icmp eq i8* %uri.addr.2618, null
  br i1 %cmp353.not, label %if.end357, label %if.then355

if.then355:                                       ; preds = %if.end352
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call356 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i64 0, i64 0), i8* noundef nonnull %uri.addr.2618) #22
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %if.end352
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call358 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %41) #22
  br label %if.end359

if.end359.thread:                                 ; preds = %if.else301, %if.end318
  %failed.4587.ph = phi i8* [ %failed.3, %if.end318 ], [ null, %if.else301 ]
  %cmp362594 = icmp eq i8* %failed.4587.ph, null
  br label %if.then364

if.end359:                                        ; preds = %if.end357, %if.end331
  %tobool360 = icmp ne i32 %suppress_decode_errors, 0
  %cmp362 = icmp eq i8* %failed.4, null
  %or.cond385 = select i1 %tobool360, i1 true, i1 %cmp362
  br i1 %or.cond385, label %if.then364, label %if.end365

if.then364:                                       ; preds = %if.end359.thread, %if.end359
  %cmp362597 = phi i1 [ %cmp362594, %if.end359.thread ], [ %cmp362, %if.end359 ]
  call void @ERR_clear_error() #22
  br label %if.end365

if.end365:                                        ; preds = %if.end359, %if.then364
  %cmp362596 = phi i1 [ false, %if.end359 ], [ %cmp362597, %if.then364 ]
  %conv367 = zext i1 %cmp362596 to i32
  br label %cleanup368

cleanup368:                                       ; preds = %if.end365, %if.then117
  %retval.0 = phi i32 [ %conv367, %if.end365 ], [ 0, %if.then117 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %.pre-phi) #23
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #23
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @load_keyparams(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %keytype, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @load_keyparams_suppress(i8* noundef %uri, i32 noundef %format, i32 noundef %maybe_stdin, i8* noundef %keytype, i8* noundef %desc, i32 noundef 0) #20
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline noreturn nounwind uwtable
define void @app_bail_out(i8* noundef %fmt, ...) local_unnamed_addr #7 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #23
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = call i32 @BIO_vprintf(%struct.bio_st* noundef %1, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #22
  call void @llvm.va_end(i8* nonnull %0)
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %2) #22
  call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

declare i32 @BIO_vprintf(%struct.bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define i8* @next_item(i8* noundef %opt) local_unnamed_addr #10 {
entry:
  %0 = load i8, i8* %opt, align 1, !tbaa !12
  %cmp.not39 = icmp eq i8 %0, 44
  %.pre = tail call i16** @__ctype_b_loc() #21
  br i1 %cmp.not39, label %if.then, label %land.lhs.true.lr.ph

land.lhs.true.lr.ph:                              ; preds = %entry
  %1 = load i16*, i16** %.pre, align 8, !tbaa !13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.lr.ph, %while.body
  %2 = phi i8 [ %0, %land.lhs.true.lr.ph ], [ %5, %while.body ]
  %opt.addr.040 = phi i8* [ %opt, %land.lhs.true.lr.ph ], [ %incdec.ptr, %while.body ]
  %idxprom = sext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %4 = and i16 %3, 8192
  %tobool.not = icmp ne i16 %4, 0
  %cmp5.not = icmp eq i8 %2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, i8* %opt.addr.040, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %cmp.not = icmp eq i8 %5, 44
  br i1 %cmp.not, label %if.then, label %land.lhs.true, !llvm.loop !32

while.end:                                        ; preds = %land.lhs.true
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body, %entry, %while.end
  %opt.addr.038 = phi i8* [ %opt.addr.040, %while.end ], [ %opt, %entry ], [ %incdec.ptr, %while.body ]
  store i8 0, i8* %opt.addr.038, align 1, !tbaa !12
  %6 = load i16*, i16** %.pre, align 8, !tbaa !13
  br label %while.cond11

while.cond11:                                     ; preds = %while.cond11, %if.then
  %opt.addr.0.pn = phi i8* [ %opt.addr.038, %if.then ], [ %opt.addr.1, %while.cond11 ]
  %opt.addr.1 = getelementptr inbounds i8, i8* %opt.addr.0.pn, i64 1
  %7 = load i8, i8* %opt.addr.1, align 1, !tbaa !12
  %idxprom14 = sext i8 %7 to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %6, i64 %idxprom14
  %8 = load i16, i16* %arrayidx15, align 2, !tbaa !14
  %9 = and i16 %8, 8192
  %tobool18.not = icmp eq i16 %9, 0
  br i1 %tobool18.not, label %if.end.loopexit, label %while.cond11, !llvm.loop !33

if.end.loopexit:                                  ; preds = %while.cond11
  %phi.cmp = icmp eq i8 %7, 0
  %phi.sel = select i1 %phi.cmp, i8* null, i8* %opt.addr.1
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %while.end
  %10 = phi i8* [ null, %while.end ], [ %phi.sel, %if.end.loopexit ]
  ret i8* %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @load_cert_certs(i8* noundef %uri, %struct.x509_st** noundef %pcert, %struct.stack_st_X509** noundef %pcerts, i32 noundef %exclude_http, i8* noundef %pass, i8* noundef %desc, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %exclude_http, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strncasecmp(i8* noundef %uri, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef 7) #24
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = tail call i32 @strncasecmp(i8* noundef %uri, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 noundef 8) #24
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i8* noundef %desc) #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call4 = tail call i8* @get_passwd(i8* noundef %pass, i8* noundef %desc) #20
  %call5 = tail call i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef 0, i32 noundef 0, i8* noundef %call4, i8* noundef %desc, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef %pcert, %struct.stack_st_X509** noundef %pcerts, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null) #20
  tail call void @clear_free(i8* noundef %call4) #20
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %cmp8.not = icmp eq %struct.x509_st** %pcert, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  %1 = load %struct.x509_st*, %struct.x509_st** %pcert, align 8, !tbaa !13
  tail call fastcc void @warn_cert(i8* noundef %uri, %struct.x509_st* noundef %1, i32 noundef 0, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #20
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %pcerts, align 8, !tbaa !13
  tail call fastcc void @warn_certs(i8* noundef %uri, %struct.stack_st_X509* noundef %2, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #20
  br label %cleanup

if.else:                                          ; preds = %if.end
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %pcerts, align 8, !tbaa !13
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call11, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %pcerts, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.else ], [ %call5, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @warn_cert(i8* noundef %uri, %struct.x509_st* noundef %cert, i32 noundef %warn_EE, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %cert) #22
  %call1 = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef %cert) #22
  %call2 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %cert) #22
  %call3 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %call2) #22
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp4 = icmp sgt i32 %call3, 0
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i64 0, i64 0)
  tail call fastcc void @warn_cert_msg(i8* noundef %uri, %struct.x509_st* noundef %cert, i8* noundef %cond) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool.not = icmp ne i32 %warn_EE, 0
  %and = and i32 %call, 64
  %cmp5 = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %cmp5, i1 false
  %and7 = and i32 %call, 16
  %cmp8 = icmp eq i32 %and7, 0
  %or.cond20 = select i1 %or.cond, i1 %cmp8, i1 false
  br i1 %or.cond20, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call fastcc void @warn_cert_msg(i8* noundef %uri, %struct.x509_st* noundef %cert, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i64 0, i64 0)) #20
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @warn_certs(i8* noundef %uri, %struct.stack_st_X509* noundef %certs, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #20
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp2 = icmp sgt i32 %call11, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.03 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.03) #22
  %0 = bitcast i8* %call3 to %struct.x509_st*
  tail call fastcc void @warn_cert(i8* noundef %uri, %struct.x509_st* noundef %0, i32 noundef 1, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #20
  %inc = add nuw nsw i32 %i.03, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !34

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @load_certs_multifile(i8* noundef %files, i8* noundef %pass, i8* noundef %desc, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #0 {
entry:
  %certs = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.stack_st_X509** %certs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #22
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %cmp = icmp eq i8* %files, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %oom, label %while.body

while.body:                                       ; preds = %if.end, %cleanup
  %files.addr.036 = phi i8* [ %call5, %cleanup ], [ %files, %if.end ]
  %call5 = call i8* @next_item(i8* noundef nonnull %files.addr.036) #20
  %call6 = call i32 @load_cert_certs(i8* noundef nonnull %files.addr.036, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef nonnull %certs, i32 noundef 0, i8* noundef %pass, i8* noundef %desc, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #20
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %while.body
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call9 = call i32 @X509_add_certs(%struct.stack_st_X509* noundef nonnull %1, %struct.stack_st_X509* noundef %2, i32 noundef 5) #22
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %oom, label %cleanup

cleanup:                                          ; preds = %if.end8
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call13 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #20
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call13, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %cmp4.not = icmp eq i8* %call5, null
  br i1 %cmp4.not, label %cleanup20, label %while.body

oom:                                              ; preds = %if.end8, %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0)) #22
  br label %err

err:                                              ; preds = %while.body, %entry, %oom
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call16 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %5) #20
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call16, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  %call18 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #20
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call18, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %err
  %retval.0 = phi %struct.stack_st_X509* [ null, %err ], [ %1, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.stack_st_X509* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_st* @load_certstore(i8* noundef %input, i8* noundef %pass, i8* noundef %desc, %struct.X509_VERIFY_PARAM_st* noundef %vpm) local_unnamed_addr #0 {
entry:
  %certs = alloca %struct.stack_st_X509*, align 8
  %0 = bitcast %struct.stack_st_X509** %certs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %store.0 = phi %struct.x509_store_st* [ null, %entry ], [ %call2, %cleanup ]
  %input.addr.0 = phi i8* [ %input, %entry ], [ %call, %cleanup ]
  %cmp.not = icmp eq i8* %input.addr.0, null
  br i1 %cmp.not, label %cleanup10, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call i8* @next_item(i8* noundef nonnull %input.addr.0) #20
  %call1 = call i32 @load_cert_certs(i8* noundef nonnull %input.addr.0, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef nonnull %certs, i32 noundef 1, i8* noundef %pass, i8* noundef %desc, %struct.X509_VERIFY_PARAM_st* noundef %vpm) #20
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @X509_STORE_free(%struct.x509_store_st* noundef %store.0) #22
  br label %cleanup10

cleanup:                                          ; preds = %while.body
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call2 = call fastcc %struct.x509_store_st* @sk_X509_to_store(%struct.x509_store_st* noundef %store.0, %struct.stack_st_X509* noundef %1) #20
  %cmp3.not = icmp eq %struct.x509_store_st* %call2, null
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call4 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #20
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  br i1 %cmp3.not, label %cleanup10, label %while.cond, !llvm.loop !35

cleanup10:                                        ; preds = %while.cond, %cleanup, %cleanup.thread
  %retval.2 = phi %struct.x509_store_st* [ null, %cleanup.thread ], [ %store.0, %while.cond ], [ null, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.x509_store_st* %retval.2
}

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_store_st* @sk_X509_to_store(%struct.x509_store_st* noundef %store, %struct.stack_st_X509* noundef %certs) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp, label %if.end, label %for.cond.preheader

if.end:                                           ; preds = %entry
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #22
  %cmp1 = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end
  %store.addr.025 = phi %struct.x509_store_st* [ %call, %if.end ], [ %store, %entry ]
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #20
  %call520 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #22
  %cmp621 = icmp sgt i32 %call520, 0
  br i1 %cmp621, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #22
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %cleanup, !llvm.loop !36

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.022 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.022) #22
  %0 = bitcast i8* %call8 to %struct.x509_st*
  %call9 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef nonnull %store.addr.025, %struct.x509_st* noundef %0) #22
  %tobool.not = icmp eq i32 %call9, 0
  %inc = add nuw nsw i32 %i.022, 1
  br i1 %tobool.not, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef nonnull %store.addr.025) #22
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %if.end, %if.then10
  %retval.0 = phi %struct.x509_store_st* [ null, %if.then10 ], [ null, %if.end ], [ %store.addr.025, %for.cond.preheader ], [ %store.addr.025, %for.cond ]
  ret %struct.x509_store_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @load_certs(i8* noundef %uri, i32 noundef %maybe_stdin, %struct.stack_st_X509** noundef %certs, i8* noundef %pass, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %cmp = icmp eq %struct.stack_st_X509* %0, null
  %call = tail call i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef 0, i32 noundef %maybe_stdin, i8* noundef %pass, i8* noundef %desc, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef nonnull %certs, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef null) #20
  %tobool = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #22
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %certs, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @load_crls(i8* noundef %uri, %struct.stack_st_X509_CRL** noundef %crls, i8* noundef %pass, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !13
  %cmp = icmp eq %struct.stack_st_X509_CRL* %0, null
  %call = tail call i32 @load_key_certs_crls(i8* noundef %uri, i32 noundef 0, i32 noundef 0, i8* noundef %pass, i8* noundef %desc, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.evp_pkey_st** noundef null, %struct.x509_st** noundef null, %struct.stack_st_X509** noundef null, %struct.X509_crl_st** noundef null, %struct.stack_st_X509_CRL** noundef nonnull %crls) #20
  %tobool = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !13
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %1) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #22
  store %struct.stack_st_X509_CRL* null, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @set_cert_ex(i64* nocapture noundef %flags, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @set_multi_opts(i64* noundef %flags, i8* noundef %arg, %struct.NAME_EX_TBL* noundef getelementptr inbounds ([19 x %struct.NAME_EX_TBL], [19 x %struct.NAME_EX_TBL]* @set_cert_ex.cert_tbl, i64 0, i64 0)) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_multi_opts(i64* nocapture noundef %flags, i8* noundef %arg, %struct.NAME_EX_TBL* nocapture noundef readonly %in_tbl) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef nonnull %arg) #22
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #20
  %call223 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #22
  %cmp24 = icmp sgt i32 %call223, 0
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %ret.026 = phi i32 [ %spec.select, %for.body ], [ 1, %if.end ]
  %i.025 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.025) #22
  %name = getelementptr inbounds i8, i8* %call4, i64 8
  %0 = bitcast i8* %name to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !26
  %call5 = tail call fastcc i32 @set_table_opts(i64* noundef %flags, i8* noundef %1, %struct.NAME_EX_TBL* noundef %in_tbl) #20
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 %ret.026
  %inc = add nuw nsw i32 %i.025, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #22
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !37

for.end:                                          ; preds = %for.body, %if.end
  %ret.0.lcssa = phi i32 [ 1, %if.end ], [ %spec.select, %for.body ]
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %call) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call9, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @set_dateopt(i64* nocapture noundef writeonly %dateopt, i8* noundef readonly %arg) local_unnamed_addr #11 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0)) #24
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end4.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcasecmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #24
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end4.sink.split, label %if.end4

if.end4.sink.split:                               ; preds = %if.else, %entry
  %.sink = phi i64 [ 0, %entry ], [ 1, %if.else ]
  store i64 %.sink, i64* %dateopt, align 8, !tbaa !20
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @set_ext_copy(i32* nocapture noundef writeonly %copy_type, i8* noundef readonly %arg) local_unnamed_addr #11 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #24
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcasecmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0)) #24
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %return.sink.split, label %if.else4

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcasecmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0)) #24
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.else4, %if.else, %entry
  %.sink = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else4 ]
  store i32 %.sink, i32* %copy_type, align 4, !tbaa !22
  br label %return

return:                                           ; preds = %return.sink.split, %if.else4
  %retval.0 = phi i32 [ 0, %if.else4 ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @copy_extensions(%struct.x509_st* noundef %x, %struct.X509_req_st* noundef %req, i32 noundef %copy_type) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  %cmp1 = icmp eq %struct.X509_req_st* %req, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup28, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %copy_type, 0
  br i1 %cmp2, label %cleanup28, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef nonnull %req) #22
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %call) #20
  %call652 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #22
  %cmp753 = icmp sgt i32 %call652, 0
  br i1 %cmp753, label %for.body.lr.ph, label %end

for.body.lr.ph:                                   ; preds = %if.end4
  %cmp14 = icmp eq i32 %copy_type, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.054) #22
  %0 = bitcast i8* %call9 to %struct.X509_extension_st*
  %call10 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %0) #22
  %call11 = tail call i32 @X509_get_ext_by_OBJ(%struct.x509_st* noundef %x, %struct.asn1_object_st* noundef %call10, i32 noundef -1) #22
  %cmp12.not = icmp eq i32 %call11, -1
  br i1 %cmp12.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %for.body
  br i1 %cmp14, label %for.inc, label %do.body

do.body:                                          ; preds = %if.then13, %do.body
  %idx.0 = phi i32 [ %call18, %do.body ], [ %call11, %if.then13 ]
  %call17 = tail call %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* noundef %x, i32 noundef %idx.0) #22
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call17) #22
  %call18 = tail call i32 @X509_get_ext_by_OBJ(%struct.x509_st* noundef %x, %struct.asn1_object_st* noundef %call10, i32 noundef -1) #22
  %cmp19.not = icmp eq i32 %call18, -1
  br i1 %cmp19.not, label %if.end20, label %do.body, !llvm.loop !38

if.end20:                                         ; preds = %do.body, %for.body
  %call21 = tail call i32 @X509_add_ext(%struct.x509_st* noundef %x, %struct.X509_extension_st* noundef %0, i32 noundef -1) #22
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %end, label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end20
  %inc = add nuw nsw i32 %i.054, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #22
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %end, !llvm.loop !39

end:                                              ; preds = %for.inc, %if.end20, %if.end4
  %ret.0 = phi i32 [ 1, %if.end4 ], [ 0, %if.end20 ], [ 1, %for.inc ]
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %call) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call26, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #22
  br label %cleanup28

cleanup28:                                        ; preds = %if.end, %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st_X509_EXTENSION* @X509_REQ_get_extensions(%struct.X509_req_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #3

declare i32 @X509_get_ext_by_OBJ(%struct.x509_st* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #3

declare %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_add_ext(%struct.x509_st* noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @X509_NAME_oneline(%struct.X509_name_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @print_bignum_var(%struct.bio_st* noundef %out, %struct.bignum_st* noundef %in, i8* noundef %var, i32 noundef %len, i8* noundef %buffer) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i64 0, i64 0), i8* noundef %var, i32 noundef %len) #22
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %in) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0)) #22
  br label %if.end14

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %in, i8* noundef %buffer) #22
  %cmp32 = icmp sgt i32 %call3, 0
  br i1 %cmp32, label %for.body.lr.ph, label %if.end14

for.body.lr.ph:                                   ; preds = %if.else
  %sub = add nsw i32 %call3, -1
  %0 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %call3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %1, 10
  %cmp4 = icmp eq i32 %rem, 0
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %cond) #22
  %cmp6 = icmp ult i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds i8, i8* %buffer, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %2 to i32
  %. = select i1 %cmp6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0)
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %., i32 noundef %conv) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end14, label %for.body, !llvm.loop !40

if.end14:                                         ; preds = %for.body, %if.else, %if.then
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0)) #22
  ret void
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @print_array(%struct.bio_st* noundef %out, i8* noundef %title, i32 noundef %len, i8* nocapture noundef readonly %d) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i64 0, i64 0), i8* noundef %title, i32 noundef %len) #22
  %cmp25 = icmp sgt i32 %len, 0
  br i1 %cmp25, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %len, -1
  %0 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %1 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %1, 10
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0)) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp3 = icmp ult i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds i8, i8* %d, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %2 to i32
  %. = select i1 %cmp3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0)
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %., i32 noundef %conv) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !41

for.end:                                          ; preds = %if.end, %entry
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0)) #22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_st* @setup_verify(i8* noundef %CAfile, i32 noundef %noCAfile, i8* noundef %CApath, i32 noundef %noCApath, i8* noundef %CAstore, i32 noundef %noCAstore) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #22
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call2 = tail call i8* @app_get0_propq() #22
  %cmp = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i8* %CAfile, null
  %tobool = icmp ne i32 %noCAfile, 0
  %or.cond = and i1 %cmp3, %tobool
  br i1 %or.cond, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #22
  %call6 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef nonnull %call, %struct.x509_lookup_method_st* noundef %call5) #22
  %cmp7 = icmp eq %struct.x509_lookup_st* %call6, null
  br i1 %cmp7, label %end, label %if.end9

if.end9:                                          ; preds = %if.then4
  br i1 %cmp3, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call6, i32 noundef 1, i8* noundef nonnull %CAfile, i64 noundef 1, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #22
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then11
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %CAfile) #22
  br label %end

if.else:                                          ; preds = %if.end9
  %call17 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call6, i32 noundef 1, i8* noundef null, i64 noundef 3, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #22
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11, %if.end
  %cmp20 = icmp eq i8* %CApath, null
  %tobool22 = icmp ne i32 %noCApath, 0
  %or.cond61 = and i1 %cmp20, %tobool22
  br i1 %or.cond61, label %if.end39, label %if.then23

if.then23:                                        ; preds = %if.end19
  %call24 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() #22
  %call25 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef nonnull %call, %struct.x509_lookup_method_st* noundef %call24) #22
  %cmp26 = icmp eq %struct.x509_lookup_st* %call25, null
  br i1 %cmp26, label %end, label %if.end28

if.end28:                                         ; preds = %if.then23
  br i1 %cmp20, label %if.else36, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call25, i32 noundef 2, i8* noundef nonnull %CApath, i64 noundef 1, i8** noundef null) #22
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then30
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call34 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %CApath) #22
  br label %end

if.else36:                                        ; preds = %if.end28
  %call37 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call25, i32 noundef 2, i8* noundef null, i64 noundef 3, i8** noundef null) #22
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then30, %if.end19
  %cmp40 = icmp eq i8* %CAstore, null
  %tobool42 = icmp ne i32 %noCAstore, 0
  %or.cond62 = and i1 %cmp40, %tobool42
  br i1 %or.cond62, label %if.end57, label %if.then43

if.then43:                                        ; preds = %if.end39
  %call44 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_store() #22
  %call45 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef nonnull %call, %struct.x509_lookup_method_st* noundef %call44) #22
  %cmp46 = icmp eq %struct.x509_lookup_st* %call45, null
  br i1 %cmp46, label %end, label %if.end48

if.end48:                                         ; preds = %if.then43
  %call49 = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef nonnull %call45, i32 noundef 3, i8* noundef %CAstore, i64 noundef 0, i8** noundef null, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #22
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end48
  br i1 %cmp40, label %end, label %if.then53

if.then53:                                        ; preds = %if.then51
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call54 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %CAstore) #22
  br label %end

if.end57:                                         ; preds = %if.end48, %if.end39
  tail call void @ERR_clear_error() #22
  br label %cleanup

end:                                              ; preds = %if.then51, %if.then53, %if.then43, %if.then23, %if.then4, %entry, %if.then33, %if.then14
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #22
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call) #22
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end57
  %retval.0 = phi %struct.x509_store_st* [ null, %end ], [ %call, %if.end57 ]
  ret %struct.x509_store_st* %retval.0
}

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #3

declare i8* @app_get0_propq() local_unnamed_addr #3

declare %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #3

declare %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #3

declare i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() local_unnamed_addr #3

declare i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef) local_unnamed_addr #3

declare %struct.x509_lookup_method_st* @X509_LOOKUP_store() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @index_name_cmp(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) local_unnamed_addr #12 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %a, i64 5
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds i8*, i8** %b, i64 5
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !13
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @load_serial(i8* noundef %serialfile, i32 noundef %create, %struct.asn1_string_st** noundef writeonly %retai) local_unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #23
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #22
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %serialfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0)) #22
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then3
  tail call void @perror(i8* noundef %serialfile) #22
  br label %err

if.end5:                                          ; preds = %if.then3
  tail call void @ERR_clear_error() #22
  %call6 = tail call %struct.bignum_st* @BN_new() #22
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call8 = tail call i32 @rand_serial(%struct.bignum_st* noundef nonnull %call6, %struct.asn1_string_st* noundef nonnull %call) #20
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end23

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i64 0, i64 0)) #22
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call13 = call i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef nonnull %call1, %struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %0, i32 noundef 1024) #22
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call16 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.99, i64 0, i64 0), i8* noundef %serialfile) #22
  br label %err

if.end17:                                         ; preds = %if.else
  %call18 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %call, %struct.bignum_st* noundef null) #22
  %cmp19 = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0)) #22
  br label %err

if.end23:                                         ; preds = %if.end17, %lor.lhs.false, %if.then10
  %ret.0 = phi %struct.bignum_st* [ %call6, %if.then10 ], [ %call6, %lor.lhs.false ], [ %call18, %if.end17 ]
  %tobool24 = icmp ne %struct.bignum_st* %ret.0, null
  %tobool25 = icmp ne %struct.asn1_string_st** %retai, null
  %or.cond = and i1 %tobool25, %tobool24
  br i1 %or.cond, label %if.then26, label %err

if.then26:                                        ; preds = %if.end23
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %retai, align 8, !tbaa !13
  br label %err

err:                                              ; preds = %if.end23, %if.then26, %entry, %if.then20, %if.then15, %if.then4
  %in.0 = phi %struct.bio_st* [ null, %entry ], [ %call1, %if.then26 ], [ %call1, %if.end23 ], [ null, %if.then4 ], [ %call1, %if.then20 ], [ %call1, %if.then15 ]
  %ret.1 = phi %struct.bignum_st* [ null, %entry ], [ %ret.0, %if.then26 ], [ %ret.0, %if.end23 ], [ null, %if.then4 ], [ null, %if.then20 ], [ null, %if.then15 ]
  %ai.0 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.then26 ], [ %call, %if.end23 ], [ %call, %if.then4 ], [ %call, %if.then20 ], [ %call, %if.then15 ]
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %4) #22
  %call28 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #22
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ai.0) #22
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #23
  ret %struct.bignum_st* %ret.1
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #3

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @perror(i8* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @rand_serial(%struct.bignum_st* noundef %b, %struct.asn1_string_st* noundef %ai) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %b, null
  br i1 %cmp, label %cond.end, label %if.end

cond.end:                                         ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_new() #22
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %cond25 = phi %struct.bignum_st* [ %call, %cond.end ], [ %b, %entry ]
  %call2 = tail call i32 @BN_rand(%struct.bignum_st* noundef nonnull %cond25, i32 noundef 159, i32 noundef -1, i32 noundef 0) #22
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %error, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq %struct.asn1_string_st* %ai, null
  br i1 %tobool5.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %cond25, %struct.asn1_string_st* noundef nonnull %ai) #22
  %tobool7.not = icmp eq %struct.asn1_string_st* %call6, null
  br i1 %tobool7.not, label %error, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  br label %error

error:                                            ; preds = %land.lhs.true, %if.end, %if.end9
  %ret.0 = phi i32 [ 1, %if.end9 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  %cmp10.not = icmp eq %struct.bignum_st* %cond25, %b
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %error
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %cond25) #22
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then11, %cond.end
  %retval.0 = phi i32 [ 0, %cond.end ], [ %ret.0, %if.then11 ], [ %ret.0, %error ]
  ret i32 %retval.0
}

declare i32 @a2i_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @save_serial(i8* noundef %serialfile, i8* noundef %suffix, %struct.bignum_st* noundef %serial, %struct.asn1_string_st** noundef writeonly %retai) local_unnamed_addr #0 {
entry:
  %buf = alloca [1 x [256 x i8]], align 16
  %0 = getelementptr inbounds [1 x [256 x i8]], [1 x [256 x i8]]* %buf, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #23
  %cmp = icmp eq i8* %suffix, null
  %call = tail call i64 @strlen(i8* noundef %serialfile) #24
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %conv = trunc i64 %call to i32
  %cmp5 = icmp sgt i32 %conv, 255
  br i1 %cmp5, label %if.then7, label %if.then12

if.end.thread:                                    ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef nonnull %suffix) #24
  %add = add i64 %call2, %call
  %1 = trunc i64 %add to i32
  %conv4 = add i32 %1, 1
  %cmp557 = icmp sgt i32 %conv4, 255
  br i1 %cmp557, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end.thread, %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0)) #22
  br label %if.then37

if.then12:                                        ; preds = %if.end
  %call13 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %0, i8* noundef %serialfile, i64 noundef 256) #22
  br label %if.end18

if.else14:                                        ; preds = %if.end.thread
  %call17 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %serialfile, i8* noundef nonnull %suffix) #22
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12
  %call21 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)) #22
  %cmp22 = icmp eq %struct.bio_st* %call21, null
  br i1 %cmp22, label %if.then37, label %if.end25

if.end25:                                         ; preds = %if.end18
  %call26 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %serial, %struct.asn1_string_st* noundef null) #22
  %cmp27 = icmp eq %struct.asn1_string_st* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call30 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i64 0, i64 0)) #22
  br label %if.then37

if.end31:                                         ; preds = %if.end25
  %call32 = call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef nonnull %call21, %struct.asn1_string_st* noundef nonnull %call26) #22
  %call33 = call i32 @BIO_puts(%struct.bio_st* noundef nonnull %call21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  %tobool.not = icmp eq %struct.asn1_string_st** %retai, null
  br i1 %tobool.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %if.end31
  store %struct.asn1_string_st* %call26, %struct.asn1_string_st** %retai, align 8, !tbaa !13
  br label %if.end38

if.then37:                                        ; preds = %if.then7, %if.end18, %if.then29
  %out.0.ph = phi %struct.bio_st* [ %call21, %if.then29 ], [ null, %if.end18 ], [ null, %if.then7 ]
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %4) #22
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end31, %if.then37
  %ai.066 = phi %struct.asn1_string_st* [ null, %if.then37 ], [ null, %if.then34 ], [ %call26, %if.end31 ]
  %ret.064 = phi i32 [ 0, %if.then37 ], [ 1, %if.then34 ], [ 1, %if.end31 ]
  %out.062 = phi %struct.bio_st* [ %out.0.ph, %if.then37 ], [ %call21, %if.then34 ], [ %call21, %if.end31 ]
  call void @BIO_free_all(%struct.bio_st* noundef %out.062) #22
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ai.066) #22
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #23
  ret i32 %ret.064
}

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @rotate_serial(i8* noundef %serialfile, i8* noundef %new_suffix, i8* noundef %old_suffix) local_unnamed_addr #0 {
entry:
  %buf = alloca [2 x [256 x i8]], align 16
  %0 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %buf, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #23
  %call = tail call i64 @strlen(i8* noundef %serialfile) #24
  %call1 = tail call i64 @strlen(i8* noundef %old_suffix) #24
  %add = add i64 %call1, %call
  %conv = trunc i64 %add to i32
  %call3 = tail call i64 @strlen(i8* noundef %new_suffix) #24
  %add4 = add i64 %call3, %call
  %conv5 = trunc i64 %add4 to i32
  %cmp = icmp sgt i32 %conv, %conv5
  %spec.select = select i1 %cmp, i32 %conv, i32 %conv5
  %cmp8 = icmp sgt i32 %spec.select, 254
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0)) #22
  br label %err

if.end12:                                         ; preds = %entry
  %call13 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %serialfile, i8* noundef %new_suffix) #22
  %arraydecay15 = getelementptr inbounds [2 x [256 x i8]], [2 x [256 x i8]]* %buf, i64 0, i64 1, i64 0
  %call16 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay15, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %serialfile, i8* noundef %old_suffix) #22
  %call19 = call i32 @rename(i8* noundef %serialfile, i8* noundef nonnull %arraydecay15) #22
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end12
  %call22 = tail call i32* @__errno_location() #21
  %2 = load i32, i32* %call22, align 4, !tbaa !22
  switch i32 %2, label %if.then29 [
    i32 2, label %if.end33
    i32 20, label %if.end33
  ]

if.then29:                                        ; preds = %land.lhs.true
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef %serialfile, i8* noundef nonnull %arraydecay15) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  br label %err

if.end33:                                         ; preds = %land.lhs.true, %land.lhs.true, %if.end12
  %call36 = call i32 @rename(i8* noundef nonnull %0, i8* noundef %serialfile) #22
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %cleanup

if.then39:                                        ; preds = %if.end33
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %serialfile) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  %call45 = call i32 @rename(i8* noundef nonnull %arraydecay15, i8* noundef %serialfile) #22
  br label %err

err:                                              ; preds = %if.then39, %if.then29, %if.then10
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %5) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end33 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #23
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @rename(i8* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #2

declare i32 @BN_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ca_db_st* @load_index(i8* noundef %dbfile, %struct.db_attr_st* noundef readonly %db_attr) local_unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %dbfp = alloca %struct._IO_FILE*, align 8
  %dbst = alloca %struct.stat, align 8
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #23
  %1 = bitcast %struct._IO_FILE** %dbfp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  %2 = bitcast %struct.stat* %dbst to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #23
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %dbfile, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0)) #22
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef 107, i64 noundef 0, i8* noundef nonnull %1) #22
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %dbfp, align 8, !tbaa !13
  %call2 = call i32 @fileno(%struct._IO_FILE* noundef %3) #22
  %call3 = call i32 @fstat(i32 noundef %call2, %struct.stat* noundef %dbst) #22
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @ERR_new() #22
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1631, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.load_index, i64 0, i64 0)) #22
  %call6 = tail call i32* @__errno_location() #21
  %4 = load i32, i32* %call6, align 4, !tbaa !22
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i64 0, i64 0), i8* noundef %dbfile) #22
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = call %struct.txt_db_st* @TXT_DB_read(%struct.bio_st* noundef nonnull %call, i32 noundef 6) #22
  %cmp9 = icmp eq %struct.txt_db_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0), i8* noundef %dbfile) #22
  %call14 = call %struct.conf_st* @app_load_config_internal(i8* noundef nonnull %0, i32 noundef 1) #20
  %call15 = call i8* @app_malloc(i64 noundef 168, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i64 0, i64 0)) #20
  %5 = bitcast i8* %call15 to %struct.ca_db_st*
  %db = getelementptr inbounds i8, i8* %call15, i64 8
  %6 = bitcast i8* %db to %struct.txt_db_st**
  store %struct.txt_db_st* %call8, %struct.txt_db_st** %6, align 8, !tbaa !42
  %tobool.not = icmp eq %struct.db_attr_st* %db_attr, null
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  %7 = getelementptr %struct.db_attr_st, %struct.db_attr_st* %db_attr, i64 0, i32 0
  %8 = bitcast i8* %call15 to i32*
  %9 = load i32, i32* %7, align 4, !tbaa !22
  store i32 %9, i32* %8, align 8, !tbaa !22
  br label %if.end18

if.else:                                          ; preds = %if.end11
  %unique_subject = bitcast i8* %call15 to i32*
  store i32 1, i32* %unique_subject, align 8, !tbaa !47
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %tobool19.not = icmp eq %struct.conf_st* %call14, null
  br i1 %tobool19.not, label %if.end28, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call14, i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0)) #22
  %tobool22.not = icmp eq i8* %call21, null
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 @parse_yesno(i8* noundef nonnull %call21, i32 noundef 1) #20
  %unique_subject26 = bitcast i8* %call15 to i32*
  store i32 %call24, i32* %unique_subject26, align 8, !tbaa !47
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then23, %if.end18
  %call29 = call i8* @CRYPTO_strdup(i8* noundef %dbfile, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1663) #22
  %dbfname = getelementptr inbounds i8, i8* %call15, i64 16
  %10 = bitcast i8* %dbfname to i8**
  store i8* %call29, i8** %10, align 8, !tbaa !48
  %dbst30 = getelementptr inbounds i8, i8* %call15, i64 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %dbst30, i8* noundef nonnull align 8 dereferenceable(144) %2, i64 144, i1 false), !tbaa.struct !49
  br label %err

err:                                              ; preds = %if.end7, %entry, %if.end28, %if.then5
  %dbattr_conf.0 = phi %struct.conf_st* [ null, %entry ], [ null, %if.then5 ], [ null, %if.end7 ], [ %call14, %if.end28 ]
  %retdb.0 = phi %struct.ca_db_st* [ null, %entry ], [ null, %if.then5 ], [ null, %if.end7 ], [ %5, %if.end28 ]
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %11) #22
  call void @NCONF_free(%struct.conf_st* noundef %dbattr_conf.0) #22
  call void @TXT_DB_free(%struct.txt_db_st* noundef null) #22
  call void @BIO_free_all(%struct.bio_st* noundef %call) #22
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #23
  ret %struct.ca_db_st* %retdb.0
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare i32 @fstat(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #13

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.txt_db_st* @TXT_DB_read(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @parse_yesno(i8* noundef readonly %str, i32 noundef %def) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %str, align 1, !tbaa !12
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %if.end [
    i32 102, label %return
    i32 70, label %return
    i32 110, label %return
    i32 78, label %return
    i32 48, label %return
    i32 116, label %sw.bb1
    i32 84, label %sw.bb1
    i32 121, label %sw.bb1
    i32 89, label %sw.bb1
    i32 49, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then
  br label %return

if.end:                                           ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.end, %sw.bb1
  %retval.0 = phi i32 [ %def, %if.end ], [ 1, %sw.bb1 ], [ 0, %if.then ], [ 0, %if.then ], [ 0, %if.then ], [ 0, %if.then ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare void @TXT_DB_free(%struct.txt_db_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @index_index(%struct.ca_db_st* nocapture noundef readonly %db) local_unnamed_addr #0 {
entry:
  %db1 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !42
  %call = tail call i32 @TXT_DB_create_index(%struct.txt_db_st* noundef %0, i32 noundef 3, i32 (i8**)* noundef null, i64 (i8*)* noundef nonnull @index_serial_LHASH_HASH, i32 (i8*, i8*)* noundef nonnull @index_serial_LHASH_COMP) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %2 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !42
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %2, i64 0, i32 4
  %3 = load i64, i64* %error, align 8, !tbaa !50
  %arg1 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %2, i64 0, i32 5
  %4 = load i64, i64* %arg1, align 8, !tbaa !52
  %arg2 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %2, i64 0, i32 6
  %5 = load i64, i64* %arg2, align 8, !tbaa !53
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.111, i64 0, i64 0), i64 noundef %3, i64 noundef %4, i64 noundef %5) #22
  br label %err

if.end:                                           ; preds = %entry
  %unique_subject = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 0, i32 0
  %6 = load i32, i32* %unique_subject, align 8, !tbaa !47
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !42
  %call8 = tail call i32 @TXT_DB_create_index(%struct.txt_db_st* noundef %7, i32 noundef 5, i32 (i8**)* noundef nonnull @index_name_qual, i64 (i8*)* noundef nonnull @index_name_LHASH_HASH, i32 (i8*, i8*)* noundef nonnull @index_name_LHASH_COMP) #22
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %return

if.then10:                                        ; preds = %land.lhs.true
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %9 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !42
  %error12 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %9, i64 0, i32 4
  %10 = load i64, i64* %error12, align 8, !tbaa !50
  %arg114 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %9, i64 0, i32 5
  %11 = load i64, i64* %arg114, align 8, !tbaa !52
  %arg216 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %9, i64 0, i32 6
  %12 = load i64, i64* %arg216, align 8, !tbaa !53
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.112, i64 0, i64 0), i64 noundef %10, i64 noundef %11, i64 noundef %12) #22
  br label %err

err:                                              ; preds = %if.then10, %if.then
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %13) #22
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @TXT_DB_create_index(%struct.txt_db_st* noundef, i32 noundef, i32 (i8**)* noundef, i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @index_serial_LHASH_HASH(i8* nocapture noundef readonly %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i8**
  %call = tail call fastcc i64 @index_serial_hash(i8** noundef %0) #20
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal i32 @index_serial_LHASH_COMP(i8* nocapture noundef readonly %arg1, i8* nocapture noundef readonly %arg2) #15 {
entry:
  %0 = bitcast i8* %arg1 to i8**
  %1 = bitcast i8* %arg2 to i8**
  %call = tail call fastcc i32 @index_serial_cmp(i8** noundef %0, i8** noundef %1) #20
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @index_name_qual(i8** nocapture noundef readonly %a) #5 {
entry:
  %0 = load i8*, i8** %a, align 8, !tbaa !13
  %1 = load i8, i8* %0, align 1, !tbaa !12
  %cmp = icmp eq i8 %1, 86
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @index_name_LHASH_HASH(i8* nocapture noundef readonly %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i8**
  %call = tail call fastcc i64 @index_name_hash(i8** noundef %0) #20
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @index_name_LHASH_COMP(i8* nocapture noundef readonly %arg1, i8* nocapture noundef readonly %arg2) #12 {
entry:
  %0 = bitcast i8* %arg1 to i8**
  %1 = bitcast i8* %arg2 to i8**
  %call = tail call i32 @index_name_cmp(i8** noundef %0, i8** noundef %1) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @save_index(i8* noundef %dbfile, i8* noundef %suffix, %struct.ca_db_st* nocapture noundef readonly %db) local_unnamed_addr #0 {
entry:
  %buf = alloca [3 x [256 x i8]], align 16
  %0 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %buf, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %0) #23
  %call = tail call i64 @strlen(i8* noundef %dbfile) #24
  %call1 = tail call i64 @strlen(i8* noundef %suffix) #24
  %add = add i64 %call1, %call
  %conv = trunc i64 %add to i32
  %cmp = icmp sgt i32 %conv, 249
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0)) #22
  br label %err

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %buf, i64 0, i64 2, i64 0
  %call5 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0), i8* noundef %dbfile) #22
  %arraydecay7 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %buf, i64 0, i64 1, i64 0
  %call8 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay7, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %suffix) #22
  %call11 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %suffix) #22
  %call14 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)) #22
  %cmp15 = icmp eq %struct.bio_st* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  call void @perror(i8* noundef %dbfile) #22
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i64 0, i64 0), i8* noundef %dbfile) #22
  br label %err

if.end19:                                         ; preds = %if.end
  %db20 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %3 = load %struct.txt_db_st*, %struct.txt_db_st** %db20, align 8, !tbaa !42
  %call21 = call i64 @TXT_DB_write(%struct.bio_st* noundef nonnull %call14, %struct.txt_db_st* noundef %3) #22
  %conv22 = trunc i64 %call21 to i32
  %call23 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call14) #22
  %cmp24 = icmp slt i32 %conv22, 1
  br i1 %cmp24, label %err, label %if.end27

if.end27:                                         ; preds = %if.end19
  %call30 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %arraydecay7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)) #22
  %cmp31 = icmp eq %struct.bio_st* %call30, null
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end27
  call void @perror(i8* noundef nonnull %arraydecay) #22
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call38 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i64 0, i64 0), i8* noundef nonnull %arraydecay) #22
  br label %err

if.end39:                                         ; preds = %if.end27
  %unique_subject = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 0, i32 0
  %5 = load i32, i32* %unique_subject, align 8, !tbaa !47
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call30, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i64 0, i64 0), i8* noundef %cond) #22
  %call41 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call30) #22
  br label %cleanup

err:                                              ; preds = %if.end19, %if.then33, %if.then17, %if.then
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %6) #22
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end39
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end39 ]
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %0) #23
  ret i32 %retval.0
}

declare i64 @TXT_DB_write(%struct.bio_st* noundef, %struct.txt_db_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @rotate_index(i8* noundef %dbfile, i8* noundef %new_suffix, i8* noundef %old_suffix) local_unnamed_addr #0 {
entry:
  %buf = alloca [5 x [256 x i8]], align 16
  %0 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %buf, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1280, i8* nonnull %0) #23
  %call = tail call i64 @strlen(i8* noundef %dbfile) #24
  %call1 = tail call i64 @strlen(i8* noundef %old_suffix) #24
  %add = add i64 %call1, %call
  %conv = trunc i64 %add to i32
  %call3 = tail call i64 @strlen(i8* noundef %new_suffix) #24
  %add4 = add i64 %call3, %call
  %conv5 = trunc i64 %add4 to i32
  %cmp = icmp sgt i32 %conv, %conv5
  %spec.select = select i1 %cmp, i32 %conv, i32 %conv5
  %cmp8 = icmp sgt i32 %spec.select, 249
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0)) #22
  br label %err

if.end12:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %buf, i64 0, i64 4, i64 0
  %call13 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0), i8* noundef %dbfile) #22
  %arraydecay15 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %buf, i64 0, i64 3, i64 0
  %call16 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay15, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %old_suffix) #22
  %arraydecay18 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %buf, i64 0, i64 2, i64 0
  %call19 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay18, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %new_suffix) #22
  %arraydecay21 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %buf, i64 0, i64 1, i64 0
  %call22 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay21, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %old_suffix) #22
  %call25 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), i8* noundef %dbfile, i8* noundef %new_suffix) #22
  %call28 = call i32 @rename(i8* noundef %dbfile, i8* noundef nonnull %arraydecay21) #22
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end12
  %call31 = tail call i32* @__errno_location() #21
  %2 = load i32, i32* %call31, align 4, !tbaa !22
  switch i32 %2, label %if.then38 [
    i32 2, label %if.end42
    i32 20, label %if.end42
  ]

if.then38:                                        ; preds = %land.lhs.true
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call41 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef %dbfile, i8* noundef nonnull %arraydecay21) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  br label %err

if.end42:                                         ; preds = %land.lhs.true, %land.lhs.true, %if.end12
  %call45 = call i32 @rename(i8* noundef nonnull %0, i8* noundef %dbfile) #22
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end42
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call51 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %dbfile) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  %call54 = call i32 @rename(i8* noundef nonnull %arraydecay21, i8* noundef %dbfile) #22
  br label %err

if.end55:                                         ; preds = %if.end42
  %call60 = call i32 @rename(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay15) #22
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end83

land.lhs.true63:                                  ; preds = %if.end55
  %call64 = tail call i32* @__errno_location() #21
  %5 = load i32, i32* %call64, align 4, !tbaa !22
  switch i32 %5, label %if.then71 [
    i32 2, label %if.end83
    i32 20, label %if.end83
  ]

if.then71:                                        ; preds = %land.lhs.true63
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call76 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay15) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  %call79 = call i32 @rename(i8* noundef %dbfile, i8* noundef nonnull %0) #22
  %call82 = call i32 @rename(i8* noundef nonnull %arraydecay21, i8* noundef %dbfile) #22
  br label %err

if.end83:                                         ; preds = %land.lhs.true63, %land.lhs.true63, %if.end55
  %call88 = call i32 @rename(i8* noundef nonnull %arraydecay18, i8* noundef nonnull %arraydecay) #22
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %cleanup

if.then91:                                        ; preds = %if.end83
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call96 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i8* noundef nonnull %arraydecay18, i8* noundef nonnull %arraydecay) #22
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i64 0, i64 0)) #22
  %call101 = call i32 @rename(i8* noundef nonnull %arraydecay15, i8* noundef nonnull %arraydecay) #22
  %call104 = call i32 @rename(i8* noundef %dbfile, i8* noundef nonnull %0) #22
  %call107 = call i32 @rename(i8* noundef nonnull %arraydecay21, i8* noundef %dbfile) #22
  br label %err

err:                                              ; preds = %if.then91, %if.then71, %if.then48, %if.then38, %if.then10
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %8) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end83 ]
  call void @llvm.lifetime.end.p0i8(i64 1280, i8* nonnull %0) #23
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @free_index(%struct.ca_db_st* noundef %db) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ca_db_st* %db, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %db1 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !42
  tail call void @TXT_DB_free(%struct.txt_db_st* noundef %0) #22
  %dbfname = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 2
  %1 = load i8*, i8** %dbfname, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1822) #22
  %2 = bitcast %struct.ca_db_st* %db to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1823) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_name_st* @parse_name(i8* noundef %cp, i32 noundef %chtype, i32 noundef %canmulti, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %incdec.ptr = getelementptr inbounds i8, i8* %cp, i64 1
  %0 = load i8, i8* %cp, align 1, !tbaa !12
  %cmp.not = icmp eq i8 %0, 47
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = tail call i8* @opt_getprog() #22
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([158 x i8], [158 x i8]* @.str.118, i64 0, i64 0), i8* noundef %call, i8* noundef %desc, i8* noundef nonnull %cp) #22
  br label %cleanup106

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.X509_name_st* @X509_NAME_new() #22
  %cmp5 = icmp eq %struct.X509_name_st* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = tail call i8* @opt_getprog() #22
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i64 0, i64 0), i8* noundef %call8) #22
  br label %cleanup106

if.end10:                                         ; preds = %if.end
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %incdec.ptr, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1874) #22
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then14, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end10
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %cmp19.not167 = icmp eq i8 %3, 0
  br i1 %cmp19.not167, label %while.end105, label %while.cond21.preheader.lr.ph

while.cond21.preheader.lr.ph:                     ; preds = %while.cond.preheader
  %tobool.not = icmp ne i32 %canmulti, 0
  br label %while.cond21.preheader

if.then14:                                        ; preds = %if.end10
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call15 = tail call i8* @opt_getprog() #22
  %call16 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.120, i64 0, i64 0), i8* noundef %call15, i8* noundef %desc) #22
  br label %err

while.cond21.preheader:                           ; preds = %while.cond21.preheader.lr.ph, %cleanup
  %5 = phi i8 [ %3, %while.cond21.preheader.lr.ph ], [ %20, %cleanup ]
  %cp.addr.0169 = phi i8* [ %incdec.ptr, %while.cond21.preheader.lr.ph ], [ %spec.select, %cleanup ]
  %nextismulti.0168 = phi i32 [ 0, %while.cond21.preheader.lr.ph ], [ %nextismulti.1, %cleanup ]
  br label %while.cond21

while.cond21:                                     ; preds = %while.cond21.preheader, %while.body28
  %6 = phi i8 [ %.pr, %while.body28 ], [ %5, %while.cond21.preheader ]
  %bp.0 = phi i8* [ %incdec.ptr30, %while.body28 ], [ %call11, %while.cond21.preheader ]
  %cp.addr.1 = phi i8* [ %incdec.ptr29, %while.body28 ], [ %cp.addr.0169, %while.cond21.preheader ]
  switch i8 %6, label %while.body28 [
    i8 0, label %while.end
    i8 61, label %while.end
  ]

while.body28:                                     ; preds = %while.cond21
  %incdec.ptr29 = getelementptr inbounds i8, i8* %cp.addr.1, i64 1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %bp.0, i64 1
  store i8 %6, i8* %bp.0, align 1, !tbaa !12
  %.pr = load i8, i8* %incdec.ptr29, align 1, !tbaa !12
  br label %while.cond21, !llvm.loop !54

while.end:                                        ; preds = %while.cond21, %while.cond21
  %incdec.ptr31 = getelementptr inbounds i8, i8* %bp.0, i64 1
  store i8 0, i8* %bp.0, align 1, !tbaa !12
  %7 = load i8, i8* %cp.addr.1, align 1, !tbaa !12
  %cmp33 = icmp eq i8 %7, 0
  br i1 %cmp33, label %if.then35, label %for.cond

if.then35:                                        ; preds = %while.end
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call36 = tail call i8* @opt_getprog() #22
  %call37 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.121, i64 0, i64 0), i8* noundef %call36, i8* noundef nonnull %call11, i8* noundef %desc) #22
  br label %err

for.cond:                                         ; preds = %while.end, %for.inc
  %bp.1 = phi i8* [ %incdec.ptr66, %for.inc ], [ %incdec.ptr31, %while.end ]
  %cp.addr.1.pn = phi i8* [ %cp.addr.3, %for.inc ], [ %cp.addr.1, %while.end ]
  %cp.addr.2 = getelementptr inbounds i8, i8* %cp.addr.1.pn, i64 1
  %9 = load i8, i8* %cp.addr.2, align 1, !tbaa !12
  switch i8 %9, label %for.body [
    i8 0, label %for.end
    i8 47, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  %cmp49 = icmp eq i8 %9, 43
  %or.cond = select i1 %tobool.not, i1 %cmp49, i1 false
  br i1 %or.cond, label %for.end, label %if.end52

if.end52:                                         ; preds = %for.body
  %cmp54 = icmp eq i8 %9, 92
  br i1 %cmp54, label %land.lhs.true56, label %for.inc

land.lhs.true56:                                  ; preds = %if.end52
  %incdec.ptr57 = getelementptr inbounds i8, i8* %cp.addr.1.pn, i64 2
  %10 = load i8, i8* %incdec.ptr57, align 1, !tbaa !12
  %cmp59 = icmp eq i8 %10, 0
  br i1 %cmp59, label %if.then61, label %for.inc

if.then61:                                        ; preds = %land.lhs.true56
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call62 = tail call i8* @opt_getprog() #22
  %call63 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.122, i64 0, i64 0), i8* noundef %call62, i8* noundef %desc) #22
  br label %err

for.inc:                                          ; preds = %if.end52, %land.lhs.true56
  %12 = phi i8 [ %10, %land.lhs.true56 ], [ %9, %if.end52 ]
  %cp.addr.3 = phi i8* [ %incdec.ptr57, %land.lhs.true56 ], [ %cp.addr.2, %if.end52 ]
  %incdec.ptr66 = getelementptr inbounds i8, i8* %bp.1, i64 1
  store i8 %12, i8* %bp.1, align 1, !tbaa !12
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.body, %for.cond, %for.cond
  %nextismulti.1 = phi i32 [ 0, %for.cond ], [ 0, %for.cond ], [ 1, %for.body ]
  store i8 0, i8* %bp.1, align 1, !tbaa !12
  %13 = load i8, i8* %cp.addr.2, align 1, !tbaa !12
  %cmp69.not = icmp eq i8 %13, 0
  %incdec.ptr72 = getelementptr inbounds i8, i8* %cp.addr.1.pn, i64 2
  %spec.select = select i1 %cmp69.not, i8* %cp.addr.2, i8* %incdec.ptr72
  %call74 = tail call i32 @OBJ_txt2nid(i8* noundef nonnull %call11) #22
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end84

if.then77:                                        ; preds = %for.end
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call78 = tail call i8* @opt_getprog() #22
  %call79 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.123, i64 0, i64 0), i8* noundef %call78, i8* noundef %desc, i8* noundef nonnull %call11) #22
  %tobool80.not = icmp eq i32 %nextismulti.0168, 0
  br i1 %tobool80.not, label %cleanup, label %if.then81, !llvm.loop !56

if.then81:                                        ; preds = %if.then77
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call82 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.124, i64 0, i64 0)) #22
  br label %cleanup, !llvm.loop !56

if.end84:                                         ; preds = %for.end
  %16 = load i8, i8* %incdec.ptr31, align 1, !tbaa !12
  %cmp86 = icmp eq i8 %16, 0
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end84
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call89 = tail call i8* @opt_getprog() #22
  %call90 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.125, i64 0, i64 0), i8* noundef %call89, i8* noundef %desc, i8* noundef nonnull %call11) #22
  br label %cleanup, !llvm.loop !56

if.end91:                                         ; preds = %if.end84
  %call92 = tail call i64 @strlen(i8* noundef nonnull %incdec.ptr31) #24
  %conv93 = trunc i64 %call92 to i32
  %tobool94.not = icmp ne i32 %nextismulti.0168, 0
  %cond = sext i1 %tobool94.not to i32
  %call95 = tail call i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef nonnull %call4, i32 noundef %call74, i32 noundef %chtype, i8* noundef nonnull %incdec.ptr31, i32 noundef %conv93, i32 noundef -1, i32 noundef %cond) #22
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %cleanup

if.then97:                                        ; preds = %if.end91
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %18) #22
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call98 = tail call i8* @opt_getprog() #22
  %call99 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.126, i64 0, i64 0), i8* noundef %call98, i8* noundef %desc, i8* noundef nonnull %call11, i8* noundef nonnull %incdec.ptr31) #22
  br label %err

cleanup:                                          ; preds = %if.end91, %if.then77, %if.then81, %if.then88
  %20 = load i8, i8* %spec.select, align 1, !tbaa !12
  %cmp19.not = icmp eq i8 %20, 0
  br i1 %cmp19.not, label %while.end105, label %while.cond21.preheader

while.end105:                                     ; preds = %cleanup, %while.cond.preheader
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1950) #22
  br label %cleanup106

err:                                              ; preds = %if.then61, %if.then97, %if.then35, %if.then14
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call4) #22
  tail call void @CRYPTO_free(i8* noundef %call11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1955) #22
  br label %cleanup106

cleanup106:                                       ; preds = %err, %while.end105, %if.then7, %if.then
  %retval.0 = phi %struct.X509_name_st* [ null, %if.then ], [ null, %if.then7 ], [ null, %err ], [ %call4, %while.end105 ]
  ret %struct.X509_name_st* %retval.0
}

declare %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #3

declare i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #3

declare i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @bio_to_mem(i8** noundef %out, i32 noundef %maxlen, %struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %tbuf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #23
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #22
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #22
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %if.end19
  %maxlen.addr.0 = phi i32 [ %sub, %if.end19 ], [ %maxlen, %entry ]
  %cmp2 = icmp ne i32 %maxlen.addr.0, -1
  %cmp3 = icmp slt i32 %maxlen.addr.0, 1024
  %or.cond = and i1 %cmp2, %cmp3
  %maxlen.addr.0. = select i1 %or.cond, i32 %maxlen.addr.0, i32 1024
  %call6 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef nonnull %0, i32 noundef %maxlen.addr.0.) #22
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %for.cond
  %cmp11 = icmp eq i32 %call6, 0
  br i1 %cmp11, label %for.end, label %if.end13

if.end13:                                         ; preds = %if.end10
  %call15 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %0, i32 noundef %call6) #22
  %cmp16.not = icmp eq i32 %call15, %call6
  br i1 %cmp16.not, label %if.end19, label %cleanup.sink.split

if.end19:                                         ; preds = %if.end13
  %sub = sub nsw i32 %maxlen.addr.0, %call6
  %cmp20 = icmp eq i32 %sub, 0
  br i1 %cmp20, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end19, %if.end10
  %1 = bitcast i8** %out to i8*
  %call23 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 3, i64 noundef 0, i8* noundef %1) #22
  %conv = trunc i64 %call23 to i32
  call void @BIO_set_flags(%struct.bio_st* noundef nonnull %call1, i32 noundef 512) #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %for.cond, %for.end
  %retval.0.ph = phi i32 [ %conv, %for.end ], [ -1, %for.cond ], [ -1, %if.end13 ]
  %call24 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #23
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2005) #22
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @strchr(i8* noundef nonnull %call, i32 noundef 58) #24
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  store i8 0, i8* %call1, align 1, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  %call5 = tail call i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef nonnull %call, i8* noundef nonnull %incdec.ptr) #22
  br label %err

err:                                              ; preds = %if.end, %if.end4
  %rv.0 = phi i32 [ 0, %if.end ], [ %call5, %if.end4 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2017) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

declare i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @policies_print(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_POLICY_TREE_st* @X509_STORE_CTX_get0_policy_tree(%struct.x509_store_ctx_st* noundef %ctx) #22
  %call1 = tail call i32 @X509_STORE_CTX_get_explicit_policy(%struct.x509_store_ctx_st* noundef %ctx) #22
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %tobool.not = icmp eq i32 %call1, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0)
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.127, i64 0, i64 0), i8* noundef %cond) #22
  %call3 = tail call %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_policies(%struct.X509_POLICY_TREE_st* noundef %call) #22
  tail call fastcc void @nodes_print(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i64 0, i64 0), %struct.stack_st_X509_POLICY_NODE* noundef %call3) #20
  %call4 = tail call %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_user_policies(%struct.X509_POLICY_TREE_st* noundef %call) #22
  tail call fastcc void @nodes_print(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.stack_st_X509_POLICY_NODE* noundef %call4) #20
  ret void
}

declare %struct.X509_POLICY_TREE_st* @X509_STORE_CTX_get0_policy_tree(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare i32 @X509_STORE_CTX_get_explicit_policy(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @nodes_print(i8* noundef %name, %struct.stack_st_X509_POLICY_NODE* noundef %nodes) unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i64 0, i64 0), i8* noundef %name) #22
  %tobool.not = icmp eq %struct.stack_st_X509_POLICY_NODE* %nodes, null
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef nonnull %nodes) #20
  %call313 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #22
  %cmp14 = icmp sgt i32 %call313, 0
  br i1 %cmp14, label %for.body, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %i.015 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.015) #22
  %2 = bitcast i8* %call5 to %struct.X509_POLICY_NODE_st*
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @X509_POLICY_NODE_print(%struct.bio_st* noundef %3, %struct.X509_POLICY_NODE_st* noundef %2, i32 noundef 2) #22
  %inc = add nuw nsw i32 %i.015, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #22
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %if.end, !llvm.loop !57

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i64 0, i64 0)) #22
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then, %if.else
  ret void
}

declare %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_policies(%struct.X509_POLICY_TREE_st* noundef) local_unnamed_addr #3

declare %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_user_policies(%struct.X509_POLICY_TREE_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @next_protos_parse(i64* nocapture noundef writeonly %outlen, i8* noundef %in) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %in) #24
  %0 = add i64 %call, -65535
  %1 = icmp ult i64 %0, -65534
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nuw nsw i64 %call, 1
  %call2 = tail call i8* @app_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i64 0, i64 0)) #20
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %skipped.077 = phi i64 [ 0, %if.end ], [ %skipped.1, %for.inc ]
  %start.076 = phi i64 [ 0, %if.end ], [ %start.1, %for.inc ]
  %i.074 = phi i64 [ 0, %if.end ], [ %inc28.pre-phi, %for.inc ]
  %cmp4 = icmp eq i64 %i.074, %call
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %i.074
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp6 = icmp eq i8 %2, 44
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false5, %for.body
  %cmp9 = icmp eq i64 %i.074, %start.076
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  %inc = add i64 %start.076, 1
  %inc12 = add i64 %skipped.077, 1
  %.pre = add i64 %i.074, 1
  br label %for.inc

if.end13:                                         ; preds = %if.then8
  %sub = sub i64 %i.074, %start.076
  %cmp14 = icmp ugt i64 %sub, 255
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void @CRYPTO_free(i8* noundef %call2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2090) #22
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %conv19 = trunc i64 %sub to i8
  %sub20 = sub i64 %start.076, %skipped.077
  %arrayidx21 = getelementptr inbounds i8, i8* %call2, i64 %sub20
  store i8 %conv19, i8* %arrayidx21, align 1, !tbaa !12
  %add22 = add i64 %i.074, 1
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false5
  %add24 = add i64 %i.074, 1
  %sub25 = sub i64 %add24, %skipped.077
  %arrayidx26 = getelementptr inbounds i8, i8* %call2, i64 %sub25
  store i8 %2, i8* %arrayidx26, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.else, %if.then11
  %inc28.pre-phi = phi i64 [ %add22, %if.end17 ], [ %add24, %if.else ], [ %.pre, %if.then11 ]
  %start.1 = phi i64 [ %add22, %if.end17 ], [ %start.076, %if.else ], [ %inc, %if.then11 ]
  %skipped.1 = phi i64 [ %skipped.077, %if.end17 ], [ %skipped.077, %if.else ], [ %inc12, %if.then11 ]
  %cmp3.not = icmp ugt i64 %inc28.pre-phi, %call
  br i1 %cmp3.not, label %for.end, label %for.body, !llvm.loop !58

for.end:                                          ; preds = %for.inc
  %cmp29.not = icmp ugt i64 %call, %skipped.1
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.end
  tail call void @CRYPTO_free(i8* noundef %call2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2101) #22
  br label %cleanup

if.end32:                                         ; preds = %for.end
  %sub34 = sub i64 %add, %skipped.1
  store i64 %sub34, i64* %outlen, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end32, %if.then31, %if.then16
  %retval.0 = phi i8* [ null, %if.then16 ], [ null, %if.then31 ], [ %call2, %if.end32 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @print_cert_checks(%struct.bio_st* noundef %bio, %struct.x509_st* noundef %x, i8* noundef %checkhost, i8* noundef %checkemail, i8* noundef %checkip) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %if.end18, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %checkhost, null
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = tail call i32 @X509_check_host(%struct.x509_st* noundef nonnull %x, i8* noundef nonnull %checkhost, i64 noundef 0, i32 noundef 0, i8** noundef null) #22
  %cmp2 = icmp eq i32 %call, 1
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0)
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i64 0, i64 0), i8* noundef nonnull %checkhost, i8* noundef %cond) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %tobool5.not = icmp eq i8* %checkemail, null
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @X509_check_email(%struct.x509_st* noundef nonnull %x, i8* noundef nonnull %checkemail, i64 noundef 0, i32 noundef 0) #22
  %tobool8.not = icmp eq i32 %call7, 0
  %cond9 = select i1 %tobool8.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0)
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.136, i64 0, i64 0), i8* noundef nonnull %checkemail, i8* noundef %cond9) #22
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end4
  %tobool12.not = icmp eq i8* %checkip, null
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @X509_check_ip_asc(%struct.x509_st* noundef nonnull %x, i8* noundef nonnull %checkip, i32 noundef 0) #22
  %tobool15.not = icmp eq i32 %call14, 0
  %cond16 = select i1 %tobool15.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0)
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i64 0, i64 0), i8* noundef nonnull %checkip, i8* noundef %cond16) #22
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.then13, %if.end11
  ret void
}

declare i32 @X509_check_host(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef, i8** noundef) local_unnamed_addr #3

declare i32 @X509_check_email(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_check_ip_asc(%struct.x509_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @do_X509_sign(%struct.x509_st* noundef %cert, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts, %struct.v3_ext_ctx* noundef %ext_ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef %cert) #22
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #22
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %call) #20
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #22
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @X509_set_version(%struct.x509_st* noundef %cert, i64 noundef 2) #22
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %if.then
  %call6 = tail call fastcc i32 @adapt_keyid_ext(%struct.x509_st* noundef %cert, %struct.v3_ext_ctx* noundef %ext_ctx, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i32 noundef 1) #20
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @ERR_set_mark() #22
  %call11 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef %cert, %struct.evp_pkey_st* noundef %pkey) #22
  %call12 = tail call i32 @ERR_pop_to_mark() #22
  %tobool13.not = icmp eq i32 %call11, 0
  %lnot.ext = zext i1 %tobool13.not to i32
  %call14 = tail call fastcc i32 @adapt_keyid_ext(%struct.x509_st* noundef %cert, %struct.v3_ext_ctx* noundef %ext_ctx, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i64 0, i64 0), i32 noundef %lnot.ext) #20
  %tobool15 = icmp ne i32 %call14, 0
  %cmp19 = icmp ne %struct.evp_md_ctx_st* %call1, null
  %or.cond = select i1 %tobool15, i1 %cmp19, i1 false
  br i1 %or.cond, label %land.lhs.true, label %end

if.end18:                                         ; preds = %entry
  %cmp19.old.not = icmp eq %struct.evp_md_ctx_st* %call1, null
  br i1 %cmp19.old.not, label %end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9, %if.end18
  %call20 = tail call fastcc i32 @do_sign_init(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) #20
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %end

if.then22:                                        ; preds = %land.lhs.true
  %call23 = tail call i32 @X509_sign_ctx(%struct.x509_st* noundef %cert, %struct.evp_md_ctx_st* noundef nonnull %call1) #22
  %cmp24 = icmp sgt i32 %call23, 0
  %conv = zext i1 %cmp24 to i32
  br label %end

end:                                              ; preds = %if.end18, %land.lhs.true, %if.then22, %if.end9, %if.end, %if.then
  %rv.0 = phi i32 [ %conv, %if.then22 ], [ 0, %land.lhs.true ], [ 0, %if.end9 ], [ 0, %if.end ], [ 0, %if.then ], [ 0, %if.end18 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #22
  ret i32 %rv.0
}

declare %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef) local_unnamed_addr #3

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @X509_set_version(%struct.x509_st* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @adapt_keyid_ext(%struct.x509_st* noundef %cert, %struct.v3_ext_ctx* noundef %ext_ctx, i8* noundef %name, i8* noundef %value, i32 noundef %add_default) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef %cert) #22
  %call1 = tail call %struct.X509_extension_st* @X509V3_EXT_nconf(%struct.conf_st* noundef null, %struct.v3_ext_ctx* noundef %ext_ctx, i8* noundef %name, i8* noundef %value) #22
  %cmp = icmp eq %struct.X509_extension_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef nonnull %call1) #22
  %call3 = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %call, %struct.asn1_object_st* noundef %call2, i32 noundef -1) #22
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %call, i32 noundef %call3) #22
  %call7 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call6) #22
  %call8 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %call7) #22
  %cmp9 = icmp slt i32 %call8, 3
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then5
  %call11 = tail call %struct.X509_extension_st* @X509_delete_ext(%struct.x509_st* noundef %cert, i32 noundef %call3) #22
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call6) #22
  br label %if.end16

if.else:                                          ; preds = %if.end
  %tobool13.not = icmp eq i32 %add_default, 0
  br i1 %tobool13.not, label %if.end16, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %call14 = tail call i32 @X509_add_ext(%struct.x509_st* noundef %cert, %struct.X509_extension_st* noundef nonnull %call1, i32 noundef -1) #22
  %tobool15 = icmp ne i32 %call14, 0
  %phi.cast = zext i1 %tobool15 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.else, %lor.rhs, %if.then5, %if.then10
  %rv.0 = phi i32 [ 1, %if.then10 ], [ 1, %if.then5 ], [ 1, %if.else ], [ %phi.cast, %lor.rhs ]
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef nonnull %call1) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end16
  %retval.0 = phi i32 [ %rv.0, %if.end16 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_sign_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) unnamed_addr #0 {
entry:
  %pkctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %def_md = alloca [80 x i8], align 16
  %0 = bitcast %struct.evp_pkey_ctx_st** %pkctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pkctx, align 8, !tbaa !13
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %def_md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #23
  %cmp = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef %pkey, i8* noundef nonnull %1, i64 noundef 80) #22
  %cmp1 = icmp eq i32 %call, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0)) #24
  %cmp4 = icmp eq i32 %call3, 0
  %spec.select = select i1 %cmp4, i8* null, i8* %md
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %md.addr.0 = phi i8* [ %md, %if.end ], [ %spec.select, %land.lhs.true ]
  %call7 = call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call8 = call i8* @app_get0_propq() #22
  %call9 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_ctx_st** noundef nonnull %pkctx, i8* noundef %md.addr.0, %struct.ossl_lib_ctx_st* noundef %call7, i8* noundef %call8, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef null) #22
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end6
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pkctx, align 8, !tbaa !13
  %call10 = call fastcc i32 @do_pkey_ctx_init(%struct.evp_pkey_ctx_st* noundef %2, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) #20
  %tobool11 = icmp ne i32 %call10, 0
  %phi.cast = zext i1 %tobool11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.rhs, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end6 ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i32 %retval.0
}

declare i32 @X509_sign_ctx(%struct.x509_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @do_X509_REQ_sign(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #22
  %call1 = tail call fastcc i32 @do_sign_init(%struct.evp_md_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) #20
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @X509_REQ_sign_ctx(%struct.X509_req_st* noundef %x, %struct.evp_md_ctx_st* noundef %call) #22
  %cmp3 = icmp sgt i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #22
  ret i32 %rv.0
}

declare i32 @X509_REQ_sign_ctx(%struct.X509_req_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @do_X509_CRL_sign(%struct.X509_crl_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #22
  %call1 = tail call fastcc i32 @do_sign_init(%struct.evp_md_ctx_st* noundef %call, %struct.evp_pkey_st* noundef %pkey, i8* noundef %md, %struct.stack_st_OPENSSL_STRING* noundef %sigopts) #20
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @X509_CRL_sign_ctx(%struct.X509_crl_st* noundef %x, %struct.evp_md_ctx_st* noundef %call) #22
  %cmp3 = icmp sgt i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #22
  ret i32 %rv.0
}

declare i32 @X509_CRL_sign_ctx(%struct.X509_crl_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @do_X509_verify(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_x509_init(%struct.x509_st* noundef %x, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) #20
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_verify(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) #22
  %cmp2 = icmp sgt i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_x509_init(%struct.x509_st* noundef %x, %struct.stack_st_OPENSSL_STRING* noundef %opts) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %opts, null
  br i1 %cmp, label %cleanup10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %opts) #20
  %call118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp219 = icmp sgt i32 %call118, 0
  br i1 %cmp219, label %for.body, label %cleanup10

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup10, !llvm.loop !59

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.020) #22
  %call5 = tail call i32 @x509_ctrl_string(%struct.x509_st* noundef %x, i8* noundef %call4) #22
  %cmp6 = icmp slt i32 %call5, 1
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %for.body
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.198, i64 0, i64 0), i8* noundef %call4) #22
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #22
  br label %cleanup10

cleanup10:                                        ; preds = %for.cond, %for.cond.preheader, %if.then7, %entry
  %retval.2 = phi i32 [ 0, %if.then7 ], [ 1, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.2
}

declare i32 @X509_verify(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @do_X509_REQ_verify(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_x509_req_init(%struct.X509_req_st* noundef %x, %struct.stack_st_OPENSSL_STRING* noundef %vfyopts) #20
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %call2 = tail call i8* @app_get0_propq() #22
  %call3 = tail call i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef %call2) #22
  %cmp4 = icmp sgt i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rv.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_x509_req_init(%struct.X509_req_st* noundef %x, %struct.stack_st_OPENSSL_STRING* noundef %opts) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %opts, null
  br i1 %cmp, label %cleanup10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %opts) #20
  %call118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp219 = icmp sgt i32 %call118, 0
  br i1 %cmp219, label %for.body, label %cleanup10

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup10, !llvm.loop !60

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.020) #22
  %call5 = tail call i32 @x509_req_ctrl_string(%struct.X509_req_st* noundef %x, i8* noundef %call4) #22
  %cmp6 = icmp slt i32 %call5, 1
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %for.body
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.198, i64 0, i64 0), i8* noundef %call4) #22
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #22
  br label %cleanup10

cleanup10:                                        ; preds = %for.cond, %for.cond.preheader, %if.then7, %entry
  %retval.2 = phi i32 [ 0, %if.then7 ], [ 1, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.2
}

declare i32 @X509_REQ_verify_ex(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @store_setup_crl_download(%struct.x509_store_st* noundef %st) local_unnamed_addr #0 {
entry:
  tail call void @X509_STORE_set_lookup_crls(%struct.x509_store_st* noundef %st, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* noundef nonnull @crls_http_cb) #22
  ret void
}

declare void @X509_STORE_set_lookup_crls(%struct.x509_store_st* noundef, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_X509_CRL* @crls_http_cb(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_name_st* nocapture noundef readnone %nm) #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #22
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_CRL*
  %tobool.not = icmp eq %struct.stack_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef %ctx) #22
  %call2 = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %call1, i32 noundef 103, i32* noundef null, i32* noundef null) #22
  %1 = bitcast i8* %call2 to %struct.stack_st_DIST_POINT*
  %call3 = tail call fastcc %struct.X509_crl_st* @load_crl_crldp(%struct.stack_st_DIST_POINT* noundef %1) #20
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %1) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.DIST_POINT_st*)* @DIST_POINT_free to void (i8*)*)) #22
  %tobool6.not = icmp eq %struct.X509_crl_st* %call3, null
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef nonnull %0) #20
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call8) #22
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = bitcast %struct.X509_crl_st* %call3 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef nonnull %2) #22
  %call13 = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %call1, i32 noundef 857, i32* noundef null, i32* noundef null) #22
  %3 = bitcast i8* %call13 to %struct.stack_st_DIST_POINT*
  %call14 = tail call fastcc %struct.X509_crl_st* @load_crl_crldp(%struct.stack_st_DIST_POINT* noundef %3) #20
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %3) #20
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call15, void (i8*)* noundef bitcast (void (%struct.DIST_POINT_st*)* @DIST_POINT_free to void (i8*)*)) #22
  %tobool17.not = icmp eq %struct.X509_crl_st* %call14, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end9
  %4 = bitcast %struct.X509_crl_st* %call14 to i8*
  %call21 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef nonnull %4) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then18, %entry, %if.then7
  %retval.0 = phi %struct.stack_st_X509_CRL* [ null, %if.then7 ], [ null, %entry ], [ %0, %if.then18 ], [ %0, %if.end9 ]
  ret %struct.stack_st_X509_CRL* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @app_http_tls_cb(%struct.bio_st* noundef %hbio, i8* nocapture noundef readonly %arg, i32 noundef %connect, i32 noundef %detail) #0 {
entry:
  %tobool = icmp ne i32 %connect, 0
  %tobool1 = icmp ne i32 %detail, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ssl_ctx2 = getelementptr inbounds i8, i8* %arg, i64 32
  %0 = bitcast i8* %ssl_ctx2 to %struct.ssl_ctx_st**
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %0, align 8, !tbaa !61
  %use_proxy = getelementptr inbounds i8, i8* %arg, i64 16
  %2 = bitcast i8* %use_proxy to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !63
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %server = bitcast i8* %arg to i8**
  %4 = load i8*, i8** %server, align 8, !tbaa !64
  %port = getelementptr inbounds i8, i8* %arg, i64 8
  %5 = bitcast i8* %port to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !65
  %timeout = getelementptr inbounds i8, i8* %arg, i64 24
  %7 = bitcast i8* %timeout to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !66
  %conv = trunc i64 %8 to i32
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = tail call i8* @opt_getprog() #22
  %call5 = tail call i32 @OSSL_HTTP_proxy_connect(%struct.bio_st* noundef %hbio, i8* noundef %4, i8* noundef %6, i8* noundef null, i8* noundef null, i32 noundef %conv, %struct.bio_st* noundef %9, i8* noundef %call) #22
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4, %if.then
  %call7 = tail call %struct.bio_method_st* @BIO_f_ssl() #22
  %call8 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call7) #22
  %cmp = icmp eq %struct.bio_st* %call8, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp11 = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp11, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef nonnull %1) #22
  %cmp15 = icmp eq %struct.ssl_st* %call14, null
  br i1 %cmp15, label %if.then17, label %cleanup

if.then17:                                        ; preds = %lor.lhs.false13, %if.end
  %call18 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call8) #22
  br label %return

cleanup:                                          ; preds = %lor.lhs.false13
  %server20 = bitcast i8* %arg to i8**
  %10 = load i8*, i8** %server20, align 8, !tbaa !64
  %call21 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef nonnull %call14, i32 noundef 55, i64 noundef 0, i8* noundef %10) #22
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %call14) #22
  %11 = bitcast %struct.ssl_st* %call14 to i8*
  %call22 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call8, i32 noundef 109, i64 noundef 1, i8* noundef nonnull %11) #22
  %call23 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call8, %struct.bio_st* noundef %hbio) #22
  br label %return

if.else:                                          ; preds = %entry
  %12 = or i32 %detail, %connect
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %if.then30, label %return

if.then30:                                        ; preds = %if.else
  %call31 = tail call fastcc i8* @tls_error_hint() #20
  %cmp32.not = icmp eq i8* %call31, null
  br i1 %cmp32.not, label %return, label %if.then34

if.then34:                                        ; preds = %if.then30
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i64 0, i64 0), i8* noundef nonnull %call31) #22
  br label %return

return:                                           ; preds = %land.lhs.true4, %lor.lhs.false, %if.then17, %if.else, %if.then34, %if.then30, %cleanup
  %retval.1 = phi %struct.bio_st* [ %call23, %cleanup ], [ %hbio, %if.else ], [ %hbio, %if.then34 ], [ %hbio, %if.then30 ], [ null, %if.then17 ], [ null, %lor.lhs.false ], [ null, %land.lhs.true4 ]
  ret %struct.bio_st* %retval.1
}

declare i32 @OSSL_HTTP_proxy_connect(%struct.bio_st* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_f_ssl() local_unnamed_addr #3

declare %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @tls_error_hint() unnamed_addr #0 {
entry:
  %call = tail call i64 @ERR_peek_error() #22
  %call1 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call) #20
  %cmp.not = icmp eq i32 %call1, 20
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i64 @ERR_peek_last_error() #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i64 [ %call2, %if.then ], [ %call, %entry ]
  %call3 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %err.0) #20
  %cmp4.not = icmp eq i32 %call3, 20
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %err.0) #20
  switch i32 %call7, label %sw.default [
    i32 267, label %cleanup
    i32 252, label %sw.bb8
    i32 134, label %sw.bb9
    i32 1048, label %sw.bb10
    i32 1040, label %sw.bb11
  ]

sw.bb8:                                           ; preds = %if.end6
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6
  br label %cleanup

sw.bb10:                                          ; preds = %if.end6
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  br label %cleanup

sw.default:                                       ; preds = %if.end6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8
  %retval.0 = phi i8* [ null, %sw.default ], [ getelementptr inbounds ([95 x i8], [95 x i8]* @.str.204, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([122 x i8], [122 x i8]* @.str.203, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([131 x i8], [131 x i8]* @.str.202, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.201, i64 0, i64 0), %sw.bb8 ], [ null, %if.end ], [ getelementptr inbounds ([56 x i8], [56 x i8]* @.str.200, i64 0, i64 0), %if.end6 ]
  ret i8* %retval.0
}

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @APP_HTTP_TLS_INFO_free(%struct.app_http_tls_info_st* noundef %info) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.app_http_tls_info_st* %info, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ssl_ctx = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 4
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ssl_ctx, align 8, !tbaa !61
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %0) #22
  %1 = bitcast %struct.app_http_tls_info_st* %info to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2476) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @app_http_get_asn1(i8* noundef %url, i8* noundef %proxy, i8* noundef %no_proxy, %struct.ssl_ctx_st* noundef %ssl_ctx, %struct.stack_st_CONF_VALUE* noundef %headers, i64 noundef %timeout, i8* noundef %expected_content_type, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.app_http_tls_info_st, align 8
  %server = alloca i8*, align 8
  %port = alloca i8*, align 8
  %use_ssl = alloca i32, align 4
  %0 = bitcast %struct.app_http_tls_info_st* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #23
  %1 = bitcast i8** %server to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  %2 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #23
  %3 = bitcast i32* %use_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #23
  %cmp = icmp eq i8* %url, null
  %cmp1 = icmp eq %struct.ASN1_ITEM_st* %it, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #22
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2494, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.app_http_get_asn1, i64 0, i64 0)) #22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @OSSL_HTTP_parse_url(i8* noundef nonnull %url, i32* noundef nonnull %use_ssl, i8** noundef null, i8** noundef nonnull %server, i8** noundef nonnull %port, i32* noundef null, i8** noundef null, i8** noundef null, i8** noundef null) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load i32, i32* %use_ssl, align 4, !tbaa !22
  %tobool4 = icmp ne i32 %4, 0
  %cmp5 = icmp eq %struct.ssl_ctx_st* %ssl_ctx, null
  %or.cond22 = and i1 %cmp5, %tobool4
  br i1 %or.cond22, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @ERR_new() #22
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2502, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.app_http_get_asn1, i64 0, i64 0)) #22
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i64 0, i64 0)) #22
  br label %end

if.end7:                                          ; preds = %if.end3
  %5 = load i8*, i8** %server, align 8, !tbaa !13
  %server8 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 0
  store i8* %5, i8** %server8, align 8, !tbaa !64
  %6 = load i8*, i8** %port, align 8, !tbaa !13
  %port9 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 1
  store i8* %6, i8** %port9, align 8, !tbaa !65
  %cmp10 = icmp ne i8* %proxy, null
  %conv = zext i1 %cmp10 to i32
  %use_proxy = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 2
  store i32 %conv, i32* %use_proxy, align 8, !tbaa !63
  %timeout11 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 3
  store i64 %timeout, i64* %timeout11, align 8, !tbaa !66
  %ssl_ctx12 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 4
  store %struct.ssl_ctx_st* %ssl_ctx, %struct.ssl_ctx_st** %ssl_ctx12, align 8, !tbaa !61
  %conv13 = trunc i64 %timeout to i32
  %call14 = call %struct.bio_st* @OSSL_HTTP_get(i8* noundef nonnull %url, i8* noundef %proxy, i8* noundef %no_proxy, %struct.bio_st* noundef null, %struct.bio_st* noundef null, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef nonnull @app_http_tls_cb, i8* noundef nonnull %0, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %expected_content_type, i32 noundef 1, i64 noundef 102400, i32 noundef %conv13) #22
  %call15 = call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef nonnull %it, %struct.bio_st* noundef %call14, i8* noundef null) #22
  %7 = bitcast i8* %call15 to %struct.ASN1_VALUE_st*
  %call16 = call i32 @BIO_free(%struct.bio_st* noundef %call14) #22
  br label %end

end:                                              ; preds = %if.end7, %if.then6
  %resp.0 = phi %struct.ASN1_VALUE_st* [ null, %if.then6 ], [ %7, %if.end7 ]
  %8 = load i8*, i8** %server, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2520) #22
  %9 = load i8*, i8** %port, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2521) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %end, %if.then
  %retval.0 = phi %struct.ASN1_VALUE_st* [ null, %if.then ], [ %resp.0, %end ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #23
  ret %struct.ASN1_VALUE_st* %retval.0
}

declare i32 @OSSL_HTTP_parse_url(i8* noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #3

declare %struct.bio_st* @OSSL_HTTP_get(i8* noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ASN1_VALUE_st* @app_http_post_asn1(i8* noundef %host, i8* noundef %port, i8* noundef %path, i8* noundef %proxy, i8* noundef %no_proxy, %struct.ssl_ctx_st* noundef %ssl_ctx, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %content_type, %struct.ASN1_VALUE_st* noundef %req, %struct.ASN1_ITEM_st* noundef %req_it, i8* noundef %expected_content_type, i64 noundef %timeout, %struct.ASN1_ITEM_st* noundef %rsp_it) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.app_http_tls_info_st, align 8
  %0 = bitcast %struct.app_http_tls_info_st* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #23
  %call = tail call %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef %req_it, %struct.ASN1_VALUE_st* noundef %req) #22
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 0
  store i8* %host, i8** %server, align 8, !tbaa !64
  %port1 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 1
  store i8* %port, i8** %port1, align 8, !tbaa !65
  %cmp2 = icmp ne i8* %proxy, null
  %conv = zext i1 %cmp2 to i32
  %use_proxy = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 2
  store i32 %conv, i32* %use_proxy, align 8, !tbaa !63
  %timeout3 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 3
  store i64 %timeout, i64* %timeout3, align 8, !tbaa !66
  %ssl_ctx4 = getelementptr inbounds %struct.app_http_tls_info_st, %struct.app_http_tls_info_st* %info, i64 0, i32 4
  store %struct.ssl_ctx_st* %ssl_ctx, %struct.ssl_ctx_st** %ssl_ctx4, align 8, !tbaa !61
  %cmp5 = icmp ne %struct.ssl_ctx_st* %ssl_ctx, null
  %conv6 = zext i1 %cmp5 to i32
  %conv7 = trunc i64 %timeout to i32
  %call8 = call %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef null, i8* noundef %host, i8* noundef %port, i8* noundef %path, i32 noundef %conv6, i8* noundef %proxy, i8* noundef %no_proxy, %struct.bio_st* noundef null, %struct.bio_st* noundef null, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef nonnull @app_http_tls_cb, i8* noundef nonnull %0, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %content_type, %struct.bio_st* noundef nonnull %call, i8* noundef %expected_content_type, i32 noundef 1, i64 noundef 102400, i32 noundef %conv7, i32 noundef 0) #22
  %call9 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #22
  %call10 = call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %rsp_it, %struct.bio_st* noundef %call8, i8* noundef null) #22
  %1 = bitcast i8* %call10 to %struct.ASN1_VALUE_st*
  %call11 = call i32 @BIO_free(%struct.bio_st* noundef %call8) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ASN1_VALUE_st* [ %1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #23
  ret %struct.ASN1_VALUE_st* %retval.0
}

declare %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define double @app_tminterval(i32 noundef %stop, i32 noundef %usertime) local_unnamed_addr #0 {
entry:
  %rus = alloca %struct.tms, align 8
  %0 = bitcast %struct.tms* %rus to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #23
  %call = call i64 @times(%struct.tms* noundef nonnull %rus) #22
  %tobool.not = icmp eq i32 %usertime, 0
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %rus, i64 0, i32 0
  %1 = load i64, i64* %tms_utime, align 8
  %now.0 = select i1 %tobool.not, i64 %call, i64 %1
  %cmp = icmp eq i32 %stop, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  store i64 %now.0, i64* @app_tminterval.tmstart, align 8, !tbaa !20
  br label %if.end4

if.else:                                          ; preds = %entry
  %call2 = call i64 @sysconf(i32 noundef 2) #22
  %2 = load i64, i64* @app_tminterval.tmstart, align 8, !tbaa !20
  %sub = sub nsw i64 %now.0, %2
  %conv = sitofp i64 %sub to double
  %conv3 = sitofp i64 %call2 to double
  %div = fdiv double %conv, %conv3
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %ret.0 = phi double [ 0.000000e+00, %if.then1 ], [ %div, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #23
  ret double %ret.0
}

; Function Attrs: nounwind
declare i64 @times(%struct.tms* noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define i32 @app_access(i8* noundef %name, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @access(i8* noundef %name, i32 noundef %flag) #22
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define i32 @app_isdir(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @opt_isdir(i8* noundef %name) #22
  ret i32 %call
}

declare i32 @opt_isdir(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @fileno_stdin() local_unnamed_addr #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !13
  %call = tail call i32 @fileno(%struct._IO_FILE* noundef %0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @fileno_stdout() local_unnamed_addr #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !13
  %call = tail call i32 @fileno(%struct._IO_FILE* noundef %0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @raw_read_stdin(i8* noundef %buf, i32 noundef %siz) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fileno_stdin() #20
  %conv = sext i32 %siz to i64
  %call1 = tail call i64 @read(i32 noundef %call, i8* noundef %buf, i64 noundef %conv) #22
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @raw_write_stdout(i8* noundef %buf, i32 noundef %siz) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fileno_stdout() #20
  %conv = sext i32 %siz to i64
  %call1 = tail call i64 @write(i32 noundef %call, i8* noundef %buf, i64 noundef %conv) #22
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @dup_bio_in(i32 noundef %format) local_unnamed_addr #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !13
  %call = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call1 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %0, i32 noundef %cond) #22
  ret %struct.bio_st* %call1
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @FMT_istext(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @dup_bio_out(i32 noundef %format) local_unnamed_addr #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !13
  %call = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call1 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %0, i32 noundef %cond) #22
  %call2 = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i64 0, i64 0)) #22
  %cmp.not = icmp eq i8* %call4, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call %struct.bio_method_st* @BIO_f_prefix() #22
  %call6 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #22
  %call7 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call6, %struct.bio_st* noundef %call1) #22
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call7, i32 noundef 79, i64 noundef 0, i8* noundef nonnull %call4) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %b.0 = phi %struct.bio_st* [ %call7, %if.then ], [ %call1, %land.lhs.true ], [ %call1, %entry ]
  ret %struct.bio_st* %b.0
}

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) local_unnamed_addr #13

declare %struct.bio_method_st* @BIO_f_prefix() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @dup_bio_err(i32 noundef %format) local_unnamed_addr #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call1 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %0, i32 noundef %cond) #22
  ret %struct.bio_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define void @unbuffer(%struct._IO_FILE* noundef %fp) local_unnamed_addr #0 {
entry:
  tail call void @setbuf(%struct._IO_FILE* noundef %fp, i8* noundef null) #22
  ret void
}

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @bio_open_owner(i8* noundef %filename, i32 noundef %format, i32 noundef %private) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq i32 %private, 0
  %cmp = icmp eq i8* %filename, null
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %filename, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0)) #24
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %entry
  %call3 = tail call %struct.bio_st* @bio_open_default(i8* noundef %filename, i8 noundef signext 119, i32 noundef %format) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %call4 = tail call i32 @FMT_istext(i32 noundef %format) #22
  %call9 = tail call i32 (i8*, i32, ...) @open(i8* noundef nonnull %filename, i32 noundef 577, i32 noundef 384) #22
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = tail call fastcc i8* @modestr(i8 noundef signext 119, i32 noundef %format) #20
  %call14 = tail call %struct._IO_FILE* @fdopen(i32 noundef %call9, i8* noundef %call13) #22
  %cmp15 = icmp eq %struct._IO_FILE* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %tobool18.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool18.not, i32 1, i32 17
  %call22 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef nonnull %call14, i32 noundef %spec.select) #22
  %cmp23.not = icmp eq %struct.bio_st* %call22, null
  br i1 %cmp23.not, label %err, label %cleanup

err:                                              ; preds = %if.end17, %if.end12, %if.end
  %fp.0 = phi %struct._IO_FILE* [ null, %if.end ], [ null, %if.end12 ], [ %call14, %if.end17 ]
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call26 = tail call i8* @opt_getprog() #22
  %call27 = tail call i32* @__errno_location() #21
  %1 = load i32, i32* %call27, align 4, !tbaa !22
  %call28 = tail call i8* @strerror(i32 noundef %1) #22
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.146, i64 0, i64 0), i8* noundef %call26, i8* noundef nonnull %filename, i8* noundef %call28) #22
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #22
  %cmp30.not = icmp eq %struct._IO_FILE* %fp.0, null
  br i1 %cmp30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %err
  %call32 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0) #22
  br label %cleanup

if.else:                                          ; preds = %err
  %cmp33 = icmp sgt i32 %call9, -1
  br i1 %cmp33, label %if.then34, label %cleanup

if.then34:                                        ; preds = %if.else
  %call35 = tail call i32 @close(i32 noundef %call9) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then34, %if.else, %if.end17, %if.then
  %retval.0 = phi %struct.bio_st* [ %call3, %if.then ], [ %call22, %if.end17 ], [ null, %if.else ], [ null, %if.then34 ], [ null, %if.then31 ]
  ret %struct.bio_st* %retval.0
}

declare i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @modestr(i8 noundef signext %mode, i32 noundef %format) unnamed_addr #0 {
entry:
  switch i8 %mode, label %cond.false [
    i8 97, label %sw.bb
    i8 114, label %sw.bb11
    i8 119, label %sw.bb15
  ]

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2929) #25
  unreachable

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool.not = icmp eq i32 %call, 0
  %cond10 = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0)
  br label %return

sw.bb11:                                          ; preds = %entry
  %call12 = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool13.not = icmp eq i32 %call12, 0
  %cond14 = select i1 %tobool13.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.208, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0)
  br label %return

sw.bb15:                                          ; preds = %entry
  %call16 = tail call i32 @FMT_istext(i32 noundef %format) #22
  %tobool17.not = icmp eq i32 %call16, 0
  %cond18 = select i1 %tobool17.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)
  br label %return

return:                                           ; preds = %sw.bb15, %sw.bb11, %sw.bb
  %retval.0 = phi i8* [ %cond18, %sw.bb15 ], [ %cond14, %sw.bb11 ], [ %cond10, %sw.bb ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) local_unnamed_addr #13

declare i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @bio_open_default_quiet(i8* noundef %filename, i8 noundef signext %mode, i32 noundef %format) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @bio_open_default_(i8* noundef %filename, i8 noundef signext %mode, i32 noundef %format, i32 noundef 1) #20
  ret %struct.bio_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @wait_for_async(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %asyncfds = alloca %struct.fd_set, align 8
  %numfds = alloca i64, align 8
  %0 = bitcast %struct.fd_set* %asyncfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #23
  %1 = bitcast i64* %numfds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  %call = call i32 @SSL_get_all_async_fds(%struct.ssl_st* noundef %s, i32* noundef null, i64* noundef nonnull %numfds) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %numfds, align 8, !tbaa !20
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %mul = shl i64 %2, 2
  %call3 = call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.147, i64 0, i64 0)) #20
  %3 = bitcast i8* %call3 to i32*
  %call4 = call i32 @SSL_get_all_async_fds(%struct.ssl_st* noundef %s, i32* noundef %3, i64* noundef nonnull %numfds) #22
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %do.body

do.body:                                          ; preds = %if.end2
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %asyncfds, i64 0, i32 0, i64 0
  %4 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #23, !srcloc !67
  %5 = load i64, i64* %numfds, align 8, !tbaa !20
  %cmp943.not = icmp eq i64 %5, 0
  br i1 %cmp943.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.body, %for.body
  %width.045 = phi i32 [ %spec.select, %for.body ], [ 0, %do.body ]
  %i.044 = phi i64 [ %inc, %for.body ], [ 0, %do.body ]
  %arrayidx10 = getelementptr inbounds i32, i32* %3, i64 %i.044
  %6 = load i32, i32* %arrayidx10, align 4, !tbaa !22
  %cmp11.not = icmp sgt i32 %width.045, %6
  %add = add nsw i32 %6, 1
  %spec.select = select i1 %cmp11.not, i32 %width.045, i32 %add
  %rem = srem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %div = sdiv i32 %6, 64
  %idxprom = sext i32 %div to i64
  %arrayidx18 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %asyncfds, i64 0, i32 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx18, align 8, !tbaa !20
  %or = or i64 %shl, %7
  store i64 %or, i64* %arrayidx18, align 8, !tbaa !20
  %inc = add nuw i64 %i.044, 1
  %exitcond.not = icmp eq i64 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !68

for.end:                                          ; preds = %for.body, %do.body
  %width.0.lcssa = phi i32 [ 0, %do.body ], [ %spec.select, %for.body ]
  %call19 = call i32 @select(i32 noundef %width.0.lcssa, %struct.fd_set* noundef nonnull %asyncfds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef null) #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end2, %for.end
  %.sink = phi i32 [ 3098, %for.end ], [ 3087, %if.end2 ]
  call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink) #22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #23
  ret void
}

declare i32 @SSL_get_all_async_fds(%struct.ssl_st* noundef, i32* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @corrupt_signature(%struct.asn1_string_st* nocapture noundef readonly %signature) local_unnamed_addr #16 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !69
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %signature, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !71
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %3 = xor i8 %2, 1
  store i8 %3, i8* %arrayidx, align 1, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @set_cert_times(%struct.x509_st* noundef %x, i8* noundef %startdate, i8* noundef %enddate, i32 noundef %days) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %startdate, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %startdate, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i64 0, i64 0)) #24
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = tail call %struct.asn1_string_st* @X509_getm_notBefore(%struct.x509_st* noundef %x) #22
  %call3 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef %call2, i64 noundef 0) #22
  %cmp4 = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp4, label %return, label %if.end10

if.else:                                          ; preds = %lor.lhs.false
  %call6 = tail call %struct.asn1_string_st* @X509_getm_notBefore(%struct.x509_st* noundef %x) #22
  %call7 = tail call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef %call6, i8* noundef nonnull %startdate) #22
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %return, label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %cmp11 = icmp eq i8* %enddate, null
  %call13 = tail call %struct.asn1_string_st* @X509_getm_notAfter(%struct.x509_st* noundef %x) #22
  br i1 %cmp11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %if.end10
  %call14 = tail call %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef %call13, i32 noundef %days, i64 noundef 0, i64* noundef null) #22
  %cmp15 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp15, label %return, label %if.end24

if.else18:                                        ; preds = %if.end10
  %call20 = tail call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef %call13, i8* noundef nonnull %enddate) #22
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %return, label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then12
  br label %return

return:                                           ; preds = %if.else18, %if.then12, %if.else, %if.then, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %if.then12 ], [ 0, %if.else18 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_getm_notBefore(%struct.x509_st* noundef) local_unnamed_addr #3

declare i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef, i32 noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_getm_notAfter(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @set_crl_lastupdate(%struct.X509_crl_st* noundef %crl, i8* noundef %lastupdate) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_TIME_new() #22
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %lastupdate, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef nonnull %call, i64 noundef 0) #22
  %cmp4 = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp4, label %end, label %if.end10

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %lastupdate) #22
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %call11 = tail call i32 @X509_CRL_set1_lastUpdate(%struct.X509_crl_st* noundef %crl, %struct.asn1_string_st* noundef nonnull %call) #22
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %end

end:                                              ; preds = %if.end10, %if.else, %if.then2, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ], [ %spec.select, %if.end10 ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call) #22
  ret i32 %ret.0
}

declare %struct.asn1_string_st* @ASN1_TIME_new() local_unnamed_addr #3

declare i32 @X509_CRL_set1_lastUpdate(%struct.X509_crl_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @set_crl_nextupdate(%struct.X509_crl_st* noundef %crl, i8* noundef %nextupdate, i64 noundef %days, i64 noundef %hours, i64 noundef %secs) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_TIME_new() #22
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %nextupdate, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %conv = trunc i64 %days to i32
  %mul3 = mul i64 %hours, 3600
  %add = add nsw i64 %mul3, %secs
  %call4 = tail call %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef nonnull %call, i32 noundef %conv, i64 noundef %add, i64* noundef null) #22
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %end, label %if.end12

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef nonnull %call, i8* noundef nonnull %nextupdate) #22
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %end, label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %call13 = tail call i32 @X509_CRL_set1_nextUpdate(%struct.X509_crl_st* noundef %crl, %struct.asn1_string_st* noundef nonnull %call) #22
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = zext i1 %tobool14.not to i32
  br label %end

end:                                              ; preds = %if.end12, %if.else, %if.then2, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ], [ %spec.select, %if.end12 ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call) #22
  ret i32 %ret.0
}

declare i32 @X509_CRL_set1_nextUpdate(%struct.X509_crl_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @make_uppercase(i8* nocapture noundef %string) local_unnamed_addr #10 {
entry:
  %0 = load i8, i8* %string, align 1, !tbaa !12
  %cmp.not17 = icmp eq i8 %0, 0
  br i1 %cmp.not17, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #21
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %5, %for.body ]
  %arrayidx19 = phi i8* [ %string, %for.body.lr.ph ], [ %arrayidx, %for.body ]
  %2 = load i32*, i32** %call, align 8, !tbaa !13
  %3 = zext i8 %1 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %2, i64 %3
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !22
  %conv7 = trunc i32 %4 to i8
  store i8 %conv7, i8* %arrayidx19, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8, i8* %string, i64 %indvars.iv.next
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !72

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @opt_printf_stderr(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #23
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = call i32 @BIO_vprintf(%struct.bio_st* noundef %1, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #22
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef %opts, %struct.ossl_param_st* noundef %paramdefs) local_unnamed_addr #0 {
entry:
  %found = alloca i32, align 4
  %tmp = alloca %struct.ossl_param_st, align 8
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %opts) #20
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %conv = sext i32 %call1 to i64
  %0 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #23
  store i32 1, i32* %found, align 4, !tbaa !22
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %opts, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = mul nsw i64 %conv, 40
  %mul = add nsw i64 %1, 40
  %call3 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3240) #22
  %2 = bitcast i8* %call3 to %struct.ossl_param_st*
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp859.not = icmp eq i32 %call1, 0
  br i1 %cmp859.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %umax = call i64 @llvm.umax.i64(i64 %conv, i64 1)
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end24
  %params_n.060 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end24 ]
  %conv11 = trunc i64 %params_n.060 to i32
  %call12 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %conv11) #22
  %call13 = call i8* @CRYPTO_strdup(i8* noundef %call12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3246) #22
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call16 = call i8* @strchr(i8* noundef nonnull %call13, i32 noundef 58) #24
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %err, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false
  store i8 0, i8* %call16, align 1, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %call16, i64 1
  %arrayidx = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %2, i64 %params_n.060
  %call21 = call i64 @strlen(i8* noundef nonnull %incdec.ptr) #24
  %call22 = call i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef nonnull %arrayidx, %struct.ossl_param_st* noundef %paramdefs, i8* noundef nonnull %call13, i8* noundef nonnull %incdec.ptr, i64 noundef %call21, i32* noundef nonnull %found) #22
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  call void @CRYPTO_free(i8* noundef nonnull %call13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3256) #22
  %inc = add nuw i64 %params_n.060, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !73

for.end:                                          ; preds = %if.end24, %for.cond.preheader
  %params_n.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %umax, %if.end24 ]
  %arrayidx25 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %2, i64 %params_n.0.lcssa
  %3 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #23
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp) #22
  %4 = bitcast %struct.ossl_param_st* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #23
  br label %cleanup

err:                                              ; preds = %if.end20, %for.body, %lor.lhs.false
  call void @CRYPTO_free(i8* noundef %call13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3261) #22
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %6 = load i32, i32* %found, align 4, !tbaa !22
  %tobool26.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool26.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i64 0, i64 0)
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.149, i64 0, i64 0), i8* noundef %cond, i8* noundef %call12) #22
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  call void @ERR_print_errors(%struct.bio_st* noundef %7) #22
  call void @app_params_free(%struct.ossl_param_st* noundef nonnull %2) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err, %for.end
  %retval.0 = phi %struct.ossl_param_st* [ null, %err ], [ %2, %for.end ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #23
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @app_params_free(%struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %key10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %0 = load i8*, i8** %key10, align 8, !tbaa !74
  %cmp1.not11 = icmp eq i8* %0, null
  br i1 %cmp1.not11, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 %indvars.iv, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !76
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3275) #22
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 %indvars.iv.next, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !74
  %cmp1.not = icmp eq i8* %2, null
  br i1 %cmp1.not, label %for.end, label %for.body, !llvm.loop !77

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %3 = bitcast %struct.ossl_param_st* %params to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3276) #22
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %alg, i32 noundef %bits, i32 noundef %verbose) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %res, align 8, !tbaa !13
  %tobool = icmp ne i32 %verbose, 0
  %cmp = icmp ne i8* %alg, null
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.152, i64 0, i64 0), i8* noundef nonnull %alg) #22
  %cmp1 = icmp sgt i32 %bits, 0
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i64 0, i64 0), i32 noundef %bits) #22
  br label %if.end5

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0)) #22
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.else, %entry
  %call6 = tail call i32 @RAND_status() #22
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.154, i64 0, i64 0)) #22
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %call11 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef nonnull %res) #22
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %call14 = call i8* @opt_getprog() #22
  %cond = select i1 %cmp, i8* %alg, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0)
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.155, i64 0, i64 0), i8* noundef %call14, i8* noundef %cond) #20
  unreachable

if.end16:                                         ; preds = %if.end10
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %res, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.evp_pkey_st* %4
}

declare i32 @RAND_status() local_unnamed_addr #3

declare i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %alg) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %res, align 8, !tbaa !13
  %call = tail call i32 @RAND_status() #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.157, i64 0, i64 0)) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef nonnull %res) #22
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @opt_getprog() #22
  %cmp5.not = icmp eq i8* %alg, null
  %cond = select i1 %cmp5.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0), i8* %alg
  call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.158, i64 0, i64 0), i8* noundef %call4, i8* noundef %cond) #20
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %res, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret %struct.evp_pkey_st* %2
}

declare i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @opt_legacy_okay() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @opt_provider_option_given() #22
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #22
  %cmp.not = icmp eq %struct.ossl_lib_ctx_st* %call1, null
  br i1 %cmp.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call2 = tail call i8* @app_get0_propq() #22
  %cmp3 = icmp ne i8* %call2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %call4 = tail call %struct.engine_st* @ENGINE_get_first() #22
  %cmp5.not = icmp eq %struct.engine_st* %call4, null
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.end
  %call6 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call4) #22
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %tobool = icmp ne i32 %call, 0
  %or.cond = select i1 %tobool, i1 true, i1 %0
  %not.or.cond = xor i1 %or.cond, true
  %. = zext i1 %not.or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

declare i32 @opt_provider_option_given() local_unnamed_addr #3

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #3

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #12

declare %struct.bio_st* @BIO_new_fd(i32 noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #3

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_get_extension_flags(%struct.x509_st* noundef) local_unnamed_addr #3

declare i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @warn_cert_msg(i8* noundef %uri, %struct.x509_st* noundef %cert, i8* noundef %msg) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %cert) #22
  %call1 = tail call i8* @X509_NAME_oneline(%struct.X509_name_st* noundef %call, i8* noundef null, i32 noundef 0) #22
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.174, i64 0, i64 0), i8* noundef %uri, i8* noundef %call1, i8* noundef %msg) #22
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 652) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @format2string(i32 noundef %format) unnamed_addr #4 {
entry:
  %switch.selectcmp = icmp eq i32 %format, 4
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i64 0, i64 0), i8* null
  %switch.selectcmp2 = icmp eq i32 %format, 32773
  %switch.select3 = select i1 %switch.selectcmp2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i64 0, i64 0), i8* %switch.select
  ret i8* %switch.select3
}

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ossl_store_ctx_st* @OSSL_STORE_attach(%struct.bio_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.ui_method_st* @get_ui_method() local_unnamed_addr #3

declare %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_expect(%struct.ossl_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

declare %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PKEY(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PUBKEY(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PARAMS(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare %struct.x509_st* @OSSL_STORE_INFO_get1_CERT(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare i32 @X509_add_cert(%struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.X509_crl_st* @OSSL_STORE_INFO_get1_CRL(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #3

declare i8* @OSSL_STORE_INFO_type_string(i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #6

declare %struct.stack_st_CONF_VALUE* @X509V3_parse_list(i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @set_table_opts(i64* nocapture noundef %flags, i8* noundef readonly %arg, %struct.NAME_EX_TBL* nocapture noundef readonly %in_tbl) unnamed_addr #17 {
entry:
  %0 = load i8, i8* %arg, align 1, !tbaa !12
  switch i8 %0, label %if.end8 [
    i8 45, label %if.then
    i8 43, label %if.then5
  ]

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %arg, i64 1
  br label %if.end8

if.then5:                                         ; preds = %entry
  %incdec.ptr6 = getelementptr inbounds i8, i8* %arg, i64 1
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then5, %if.then
  %arg.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr6, %if.then5 ], [ %arg, %entry ]
  %tobool13.not = phi i1 [ true, %if.then ], [ false, %if.then5 ], [ false, %entry ]
  %name37 = getelementptr inbounds %struct.NAME_EX_TBL, %struct.NAME_EX_TBL* %in_tbl, i64 0, i32 0
  %1 = load i8*, i8** %name37, align 8, !tbaa !78
  %tobool.not38 = icmp eq i8* %1, null
  br i1 %tobool.not38, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end8, %for.inc
  %2 = phi i8* [ %6, %for.inc ], [ %1, %if.end8 ]
  %ptbl.039 = phi %struct.NAME_EX_TBL* [ %incdec.ptr21, %for.inc ], [ %in_tbl, %if.end8 ]
  %call = tail call i32 @strcasecmp(i8* noundef nonnull %arg.addr.0, i8* noundef nonnull %2) #24
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  %mask = getelementptr inbounds %struct.NAME_EX_TBL, %struct.NAME_EX_TBL* %ptbl.039, i64 0, i32 2
  %3 = load i64, i64* %mask, align 8, !tbaa !80
  %neg = xor i64 %3, -1
  %4 = load i64, i64* %flags, align 8, !tbaa !20
  %and = and i64 %4, %neg
  store i64 %and, i64* %flags, align 8, !tbaa !20
  %flag16 = getelementptr inbounds %struct.NAME_EX_TBL, %struct.NAME_EX_TBL* %ptbl.039, i64 0, i32 1
  %5 = load i64, i64* %flag16, align 8, !tbaa !81
  %neg17 = xor i64 %5, -1
  %and18 = and i64 %and, %neg17
  %or = or i64 %5, %and
  %storemerge = select i1 %tobool13.not, i64 %and18, i64 %or
  store i64 %storemerge, i64* %flags, align 8, !tbaa !20
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr21 = getelementptr inbounds %struct.NAME_EX_TBL, %struct.NAME_EX_TBL* %ptbl.039, i64 1
  %name = getelementptr inbounds %struct.NAME_EX_TBL, %struct.NAME_EX_TBL* %incdec.ptr21, i64 0, i32 0
  %6 = load i8*, i8** %name, align 8, !tbaa !78
  %tobool.not = icmp eq i8* %6, null
  br i1 %tobool.not, label %cleanup, label %for.body, !llvm.loop !82

cleanup:                                          ; preds = %for.inc, %if.end8, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %if.end8 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @index_serial_hash(i8** nocapture noundef readonly %a) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %a, i64 3
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %n.0 = phi i8* [ %0, %entry ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, i8* %n.0, align 1, !tbaa !12
  %cmp = icmp eq i8 %1, 48
  %incdec.ptr = getelementptr inbounds i8, i8* %n.0, i64 1
  br i1 %cmp, label %while.cond, label %while.end, !llvm.loop !83

while.end:                                        ; preds = %while.cond
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef nonnull %n.0) #22
  ret i64 %call
}

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @index_serial_cmp(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %a, i64 3
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %aa.0 = phi i8* [ %0, %entry ], [ %incdec.ptr, %for.cond ]
  %1 = load i8, i8* %aa.0, align 1, !tbaa !12
  %cmp = icmp eq i8 %1, 48
  %incdec.ptr = getelementptr inbounds i8, i8* %aa.0, i64 1
  br i1 %cmp, label %for.cond, label %for.end, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds i8*, i8** %b, i64 3
  %2 = load i8*, i8** %arrayidx2, align 8, !tbaa !13
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3, %for.end
  %bb.0 = phi i8* [ %2, %for.end ], [ %incdec.ptr9, %for.cond3 ]
  %3 = load i8, i8* %bb.0, align 1, !tbaa !12
  %cmp5 = icmp eq i8 %3, 48
  %incdec.ptr9 = getelementptr inbounds i8, i8* %bb.0, i64 1
  br i1 %cmp5, label %for.cond3, label %for.end10, !llvm.loop !85

for.end10:                                        ; preds = %for.cond3
  %call = tail call i32 @strcmp(i8* noundef nonnull %aa.0, i8* noundef nonnull %bb.0) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @index_name_hash(i8** nocapture noundef readonly %a) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i8*, i8** %a, i64 5
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_POLICY_NODE_print(%struct.bio_st* noundef, %struct.X509_POLICY_NODE_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.X509_extension_st* @X509V3_EXT_nconf(%struct.conf_st* noundef, %struct.v3_ext_ctx* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_default_digest_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_pkey_ctx_init(%struct.evp_pkey_ctx_st* noundef %pkctx, %struct.stack_st_OPENSSL_STRING* noundef %opts) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %opts, null
  br i1 %cmp, label %cleanup10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %opts) #20
  %call118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp219 = icmp sgt i32 %call118, 0
  br i1 %cmp219, label %for.body, label %cleanup10

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp2 = icmp slt i32 %inc, %call1
  br i1 %cmp2, label %for.body, label %cleanup10, !llvm.loop !86

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.020) #22
  %call5 = tail call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef %pkctx, i8* noundef %call4) #20
  %cmp6 = icmp slt i32 %call5, 1
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %for.body
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.198, i64 0, i64 0), i8* noundef %call4) #22
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !13
  tail call void @ERR_print_errors(%struct.bio_st* noundef %1) #22
  br label %cleanup10

cleanup10:                                        ; preds = %for.cond, %for.cond.preheader, %if.then7, %entry
  %retval.2 = phi i32 [ 0, %if.then7 ], [ 1, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ]
  ret i32 %retval.2
}

declare i32 @x509_ctrl_string(%struct.x509_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @x509_req_ctrl_string(%struct.X509_req_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #3

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_crl_st* @load_crl_crldp(%struct.stack_st_DIST_POINT* noundef %crldp) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %crldp) #20
  %call118 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp19 = icmp sgt i32 %call118, 0
  br i1 %cmp19, label %for.body, label %cleanup7

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup7, !llvm.loop !87

for.body:                                         ; preds = %entry, %for.cond
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.020) #22
  %0 = bitcast i8* %call3 to %struct.DIST_POINT_st*
  %call4 = tail call fastcc i8* @get_dp_url(%struct.DIST_POINT_st* noundef %0) #20
  %cmp5.not = icmp eq i8* %call4, null
  %inc = add nuw nsw i32 %i.020, 1
  br i1 %cmp5.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body
  %call6 = tail call %struct.X509_crl_st* @load_crl(i8* noundef nonnull %call4, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i64 0, i64 0)) #20
  br label %cleanup7

cleanup7:                                         ; preds = %for.cond, %entry, %cleanup
  %retval.2 = phi %struct.X509_crl_st* [ %call6, %cleanup ], [ null, %entry ], [ null, %for.cond ]
  ret %struct.X509_crl_st* %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @DIST_POINT_free(%struct.DIST_POINT_st* noundef) #3

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @get_dp_url(%struct.DIST_POINT_st* nocapture noundef readonly %dp) unnamed_addr #0 {
entry:
  %gtype = alloca i32, align 4
  %0 = bitcast i32* %gtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #23
  %distpoint = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 0
  %1 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !88
  %tobool.not = icmp eq %struct.DIST_POINT_NAME_st* %1, null
  br i1 %tobool.not, label %cleanup21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !90
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %cleanup21

if.end:                                           ; preds = %lor.lhs.false
  %fullname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %1, i64 0, i32 1, i32 0
  %3 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname, align 8, !tbaa !12
  %call = call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %3) #20
  %call341 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp442 = icmp sgt i32 %call341, 0
  br i1 %cmp442, label %for.body, label %cleanup21

for.body:                                         ; preds = %if.end, %for.inc
  %i.043 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %call6 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.043) #22
  %4 = bitcast i8* %call6 to %struct.GENERAL_NAME_st*
  %call7 = call i8* @GENERAL_NAME_get0_value(%struct.GENERAL_NAME_st* noundef %4, i32* noundef nonnull %gtype) #22
  %5 = bitcast i8* %call7 to %struct.asn1_string_st*
  %6 = load i32, i32* %gtype, align 4, !tbaa !22
  %cmp8 = icmp eq i32 %6, 6
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call9 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %5) #22
  %cmp10 = icmp sgt i32 %call9, 6
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  %call12 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %5) #22
  %cmp13.not = icmp eq i8* %call12, null
  br i1 %cmp13.not, label %for.inc, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then11
  %call15 = call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)) #24
  %call16 = call i32 @strncmp(i8* noundef nonnull %call12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 noundef %call15) #24
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cleanup21, label %for.inc

for.inc:                                          ; preds = %land.lhs.true14, %if.then11, %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.043, 1
  %call3 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #22
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup21, !llvm.loop !92

cleanup21:                                        ; preds = %for.inc, %land.lhs.true14, %if.end, %entry, %lor.lhs.false
  %retval.3 = phi i8* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.inc ], [ %call12, %land.lhs.true14 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #23
  ret i8* %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @GENERAL_NAME_get0_value(%struct.GENERAL_NAME_st* noundef, i32* noundef) local_unnamed_addr #3

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare i64 @ERR_peek_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #4 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #4 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i8* @modeverb(i8 noundef signext %mode) unnamed_addr #4 {
entry:
  %conv = sext i8 %mode to i32
  switch i32 %conv, label %sw.epilog [
    i32 97, label %return
    i32 114, label %sw.bb1
    i32 119, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.epilog, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.216, i64 0, i64 0), %sw.epilog ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.215, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #15 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #22 = { nobuiltin nounwind "no-builtins" }
attributes #23 = { nounwind }
attributes #24 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #25 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"args_st", !6, i64 0, !6, i64 4, !9, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !17}
!24 = !{!25, !9, i64 16}
!25 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!26 = !{!25, !9, i64 8}
!27 = !{!28, !9, i64 0}
!28 = !{!"pw_cb_data", !9, i64 0, !9, i64 8}
!29 = !{!28, !9, i64 8}
!30 = !{i64 0, i64 8, !13, i64 8, i64 4, !22, i64 16, i64 8, !13, i64 24, i64 8, !20, i64 32, i64 8, !20}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = !{!43, !9, i64 8}
!43 = !{!"ca_db_st", !44, i64 0, !9, i64 8, !9, i64 16, !45, i64 24}
!44 = !{!"db_attr_st", !6, i64 0}
!45 = !{!"stat", !21, i64 0, !21, i64 8, !21, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !46, i64 72, !46, i64 88, !46, i64 104, !7, i64 120}
!46 = !{!"timespec", !21, i64 0, !21, i64 8}
!47 = !{!43, !6, i64 0}
!48 = !{!43, !9, i64 16}
!49 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 8, !20, i64 48, i64 8, !20, i64 56, i64 8, !20, i64 64, i64 8, !20, i64 72, i64 8, !20, i64 80, i64 8, !20, i64 88, i64 8, !20, i64 96, i64 8, !20, i64 104, i64 8, !20, i64 112, i64 8, !20, i64 120, i64 24, !12}
!50 = !{!51, !21, i64 32}
!51 = !{!"txt_db_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !9, i64 56}
!52 = !{!51, !21, i64 40}
!53 = !{!51, !21, i64 48}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = !{!62, !9, i64 32}
!62 = !{!"app_http_tls_info_st", !9, i64 0, !9, i64 8, !6, i64 16, !21, i64 24, !9, i64 32}
!63 = !{!62, !6, i64 16}
!64 = !{!62, !9, i64 0}
!65 = !{!62, !9, i64 8}
!66 = !{!62, !21, i64 24}
!67 = !{i64 2150893645}
!68 = distinct !{!68, !17}
!69 = !{!70, !9, i64 8}
!70 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !21, i64 16}
!71 = !{!70, !6, i64 0}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = !{!75, !9, i64 0}
!75 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !21, i64 24, !21, i64 32}
!76 = !{!75, !9, i64 16}
!77 = distinct !{!77, !17}
!78 = !{!79, !9, i64 0}
!79 = !{!"", !9, i64 0, !21, i64 8, !21, i64 16}
!80 = !{!79, !21, i64 16}
!81 = !{!79, !21, i64 8}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = !{!89, !9, i64 0}
!89 = !{!"DIST_POINT_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24}
!90 = !{!91, !6, i64 0}
!91 = !{!"DIST_POINT_NAME_st", !6, i64 0, !7, i64 8, !9, i64 16}
!92 = distinct !{!92, !17}
