; ModuleID = 'test/v3nametest.c'
source_filename = "test/v3nametest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_name_fn = type { i32 (%struct.x509_st*, i8*)*, i8*, i32, i32 }
%struct.x509_st = type opaque
%struct.gennamedata = type { [22 x i8], i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.X509_name_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"call_run_cert\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_GENERAL_NAME_cmp\00", align 1
@name_fns = internal constant [10 x %struct.set_name_fn] [%struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_cn1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 0 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_cn2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 0 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_cn3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 0 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_cn_and_email, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 0 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_email1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_email2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_email3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_email_and_cn, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 1 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_altname_dns, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 0 }, %struct.set_name_fn { i32 (%struct.x509_st*, i8*)* @set_altname_email, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 1 }], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"test/v3nametest.c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@names = internal unnamed_addr constant [52 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"crt = make_cert()\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"pfn->fn(crt, *pname)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"set CN\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"set emailAddress\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"set dnsName\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"set rfc822Name\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"dummy value\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dummy@example.com\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"www.example.org\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"a.\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c".b\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"b.\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"*@\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"@*\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"a@\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"@a\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"b@\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"-example.com\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"example-.com\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"*.com\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"*com\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"*.*.com\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"com*\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"*example.com\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"*@example.com\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"test@*.example.com\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"test.www.example.com\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"*.example.com\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"*.www.example.com\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"test.*.example.com\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"www.*.com\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c".www.example.com\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"*www.example.com\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"example.net\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"xn--rger-koa.example.com\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"*.xn--rger-koa.example.com\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"www.xn--rger-koa.example.com\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"*.good--example.com\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"www.good--example.com\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"*.xn--bar.com\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"xn--foo.xn--bar.com\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"a.example.com\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"b.example.com\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"postmaster@example.com\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"Postmaster@example.com\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"postmaster@EXAMPLE.COM\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"crt = X509_new()\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"X509_set_version(crt, X509_VERSION_3)\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"ret = X509_check_host(crt, name, namelen, 0, NULL)\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"check_message(fn, \22host\22, nameincert, match, *pname)\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.69 = private unnamed_addr constant [78 x i8] c"ret = X509_check_host(crt, name, namelen, X509_CHECK_FLAG_NO_WILDCARDS, NULL)\00", align 1
@.str.70 = private unnamed_addr constant [66 x i8] c"check_message(fn, \22host-no-wildcards\22, nameincert, match, *pname)\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"host-no-wildcards\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"check_message(fn, \22email\22, nameincert, match, *pname)\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"%s: %s: [%s] %s [%s]\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"does not match\00", align 1
@exceptions = internal unnamed_addr constant [35 x i8*] [i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.110, i32 0, i32 0), i8* null], align 16
@.str.77 = private unnamed_addr constant [54 x i8] c"set CN: host: [*.example.com] matches [a.example.com]\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"set CN: host: [*.example.com] matches [b.example.com]\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"set CN: host: [*.example.com] matches [www.example.com]\00", align 1
@.str.80 = private unnamed_addr constant [65 x i8] c"set CN: host: [*.example.com] matches [xn--rger-koa.example.com]\00", align 1
@.str.81 = private unnamed_addr constant [65 x i8] c"set CN: host: [*.www.example.com] matches [test.www.example.com]\00", align 1
@.str.82 = private unnamed_addr constant [61 x i8] c"set CN: host: [*.www.example.com] matches [.www.example.com]\00", align 1
@.str.83 = private unnamed_addr constant [59 x i8] c"set CN: host: [*www.example.com] matches [www.example.com]\00", align 1
@.str.84 = private unnamed_addr constant [64 x i8] c"set CN: host: [test.www.example.com] matches [.www.example.com]\00", align 1
@.str.85 = private unnamed_addr constant [82 x i8] c"set CN: host: [*.xn--rger-koa.example.com] matches [www.xn--rger-koa.example.com]\00", align 1
@.str.86 = private unnamed_addr constant [60 x i8] c"set CN: host: [*.xn--bar.com] matches [xn--foo.xn--bar.com]\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"set CN: host: [*.good--example.com] matches [www.good--example.com]\00", align 1
@.str.88 = private unnamed_addr constant [74 x i8] c"set CN: host-no-wildcards: [*.www.example.com] matches [.www.example.com]\00", align 1
@.str.89 = private unnamed_addr constant [77 x i8] c"set CN: host-no-wildcards: [test.www.example.com] matches [.www.example.com]\00", align 1
@.str.90 = private unnamed_addr constant [90 x i8] c"set emailAddress: email: [postmaster@example.com] does not match [Postmaster@example.com]\00", align 1
@.str.91 = private unnamed_addr constant [90 x i8] c"set emailAddress: email: [postmaster@EXAMPLE.COM] does not match [Postmaster@example.com]\00", align 1
@.str.92 = private unnamed_addr constant [90 x i8] c"set emailAddress: email: [Postmaster@example.com] does not match [postmaster@example.com]\00", align 1
@.str.93 = private unnamed_addr constant [90 x i8] c"set emailAddress: email: [Postmaster@example.com] does not match [postmaster@EXAMPLE.COM]\00", align 1
@.str.94 = private unnamed_addr constant [61 x i8] c"set dnsName: host: [*.example.com] matches [www.example.com]\00", align 1
@.str.95 = private unnamed_addr constant [59 x i8] c"set dnsName: host: [*.example.com] matches [a.example.com]\00", align 1
@.str.96 = private unnamed_addr constant [59 x i8] c"set dnsName: host: [*.example.com] matches [b.example.com]\00", align 1
@.str.97 = private unnamed_addr constant [70 x i8] c"set dnsName: host: [*.example.com] matches [xn--rger-koa.example.com]\00", align 1
@.str.98 = private unnamed_addr constant [70 x i8] c"set dnsName: host: [*.www.example.com] matches [test.www.example.com]\00", align 1
@.str.99 = private unnamed_addr constant [79 x i8] c"set dnsName: host-no-wildcards: [*.www.example.com] matches [.www.example.com]\00", align 1
@.str.100 = private unnamed_addr constant [82 x i8] c"set dnsName: host-no-wildcards: [test.www.example.com] matches [.www.example.com]\00", align 1
@.str.101 = private unnamed_addr constant [66 x i8] c"set dnsName: host: [*.www.example.com] matches [.www.example.com]\00", align 1
@.str.102 = private unnamed_addr constant [64 x i8] c"set dnsName: host: [*www.example.com] matches [www.example.com]\00", align 1
@.str.103 = private unnamed_addr constant [69 x i8] c"set dnsName: host: [test.www.example.com] matches [.www.example.com]\00", align 1
@.str.104 = private unnamed_addr constant [87 x i8] c"set dnsName: host: [*.xn--rger-koa.example.com] matches [www.xn--rger-koa.example.com]\00", align 1
@.str.105 = private unnamed_addr constant [65 x i8] c"set dnsName: host: [*.xn--bar.com] matches [xn--foo.xn--bar.com]\00", align 1
@.str.106 = private unnamed_addr constant [73 x i8] c"set dnsName: host: [*.good--example.com] matches [www.good--example.com]\00", align 1
@.str.107 = private unnamed_addr constant [88 x i8] c"set rfc822Name: email: [postmaster@example.com] does not match [Postmaster@example.com]\00", align 1
@.str.108 = private unnamed_addr constant [88 x i8] c"set rfc822Name: email: [Postmaster@example.com] does not match [postmaster@example.com]\00", align 1
@.str.109 = private unnamed_addr constant [88 x i8] c"set rfc822Name: email: [Postmaster@example.com] does not match [postmaster@EXAMPLE.COM]\00", align 1
@.str.110 = private unnamed_addr constant [88 x i8] c"set rfc822Name: email: [postmaster@EXAMPLE.COM] does not match [Postmaster@example.com]\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"namesa\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"namesb\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"namesa[i]\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"namesb[i]\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"GENERAL_NAME_cmp(namesa[i], namesb[j])\00", align 1
@gennames = internal global <{ %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ [11 x i8], [11 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata }> <{ %struct.gennamedata { [22 x i8] c"\A0\13\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\020\00\00", i64 21 }, %struct.gennamedata { [22 x i8] c"\A0\13\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\02`\00\00", i64 21 }, %struct.gennamedata { [22 x i8] c"\A0\14\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\03\0C\01a", i64 22 }, %struct.gennamedata { [22 x i8] c"\A0\14\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\02\A0\03\0C\01a", i64 22 }, %struct.gennamedata { [22 x i8] c"\A0\14\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\03\0C\01b", i64 22 }, %struct.gennamedata { [22 x i8] c"\A0\14\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\03\01\01\FF", i64 22 }, %struct.gennamedata { [22 x i8] c"\A0\14\06\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\A0\03\01\01\00", i64 22 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -127, i8 1, i8 97, [19 x i8] zeroinitializer }>, i64 3 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -127, i8 1, i8 98, [19 x i8] zeroinitializer }>, i64 3 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -126, i8 1, i8 97, [19 x i8] zeroinitializer }>, i64 3 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -126, i8 1, i8 98, [19 x i8] zeroinitializer }>, i64 3 }, %struct.gennamedata { [22 x i8] c"\A4\0E0\0C1\0A0\08\06\03U\04\03\0C\01a\00\00\00\00\00\00", i64 16 }, %struct.gennamedata { [22 x i8] c"\A4\0E0\0C1\0A0\08\06\03U\04\03\0C\01b\00\00\00\00\00\00", i64 16 }, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 } { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }> <{ i8 -91, i8 5, i8 -95, i8 3, i8 12, i8 1, i8 97, [15 x i8] zeroinitializer }>, i64 7 }, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 } { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }> <{ i8 -91, i8 5, i8 -95, i8 3, i8 12, i8 1, i8 98, [15 x i8] zeroinitializer }>, i64 7 }, { <{ [11 x i8], [11 x i8] }>, i64 } { <{ [11 x i8], [11 x i8] }> <{ [11 x i8] c"\A5\09\A0\02\0C\00\A1\03\0C\01a", [11 x i8] zeroinitializer }>, i64 11 }, { <{ [12 x i8], [10 x i8] }>, i64 } { <{ [12 x i8], [10 x i8] }> <{ [12 x i8] c"\A5\0A\A0\03\0C\01a\A1\03\0C\01a", [10 x i8] zeroinitializer }>, i64 12 }, { <{ [12 x i8], [10 x i8] }>, i64 } { <{ [12 x i8], [10 x i8] }> <{ [12 x i8] c"\A5\0A\A0\03\0C\01b\A1\03\0C\01a", [10 x i8] zeroinitializer }>, i64 12 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -122, i8 1, i8 97, [19 x i8] zeroinitializer }>, i64 3 }, { <{ i8, i8, i8, [19 x i8] }>, i64 } { <{ i8, i8, i8, [19 x i8] }> <{ i8 -122, i8 1, i8 98, [19 x i8] zeroinitializer }>, i64 3 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 } { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 -121, i8 4, i8 17, i8 17, i8 17, i8 17, [16 x i8] zeroinitializer }>, i64 6 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 } { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 -121, i8 4, i8 34, i8 34, i8 34, i8 34, [16 x i8] zeroinitializer }>, i64 6 }, %struct.gennamedata { [22 x i8] c"\87\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\00\00\00\00", i64 18 }, %struct.gennamedata { [22 x i8] c"\87\10\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\00\00\00\00", i64 18 }, %struct.gennamedata { [22 x i8] c"\88\0D*\86H\86\F7\12\04\01\84\B7\09\02\01\00\00\00\00\00\00\00", i64 15 }, %struct.gennamedata { [22 x i8] c"\88\0D*\86H\86\F7\12\04\01\84\B7\09\02\02\00\00\00\00\00\00\00", i64 15 } }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @call_run_cert, i32 noundef 10, i32 noundef 1) #9
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_GENERAL_NAME_cmp) #9
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @call_run_cert(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [10 x %struct.set_name_fn], [10 x %struct.set_name_fn]* @name_fns, i64 0, i64 %idxprom
  %name = getelementptr inbounds [10 x %struct.set_name_fn], [10 x %struct.set_name_fn]* @name_fns, i64 0, i64 %idxprom, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !3
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #9
  %fn = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %arrayidx, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %pname.023 = phi i8** [ getelementptr inbounds ([52 x i8*], [52 x i8*]* @names, i64 0, i64 0), %entry ], [ %incdec.ptr, %if.end ]
  %failed.022 = phi i32 [ 0, %entry ], [ %failed.1, %if.end ]
  %call = tail call fastcc %struct.x509_st* @make_cert() #10
  %1 = bitcast %struct.x509_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32 (%struct.x509_st*, i8*)*, i32 (%struct.x509_st*, i8*)** %fn, align 8, !tbaa !9
  %3 = load i8*, i8** %pname.023, align 8, !tbaa !10
  %call2 = tail call i32 %2(%struct.x509_st* noundef %call, i8* noundef %3) #9
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %pname.023, align 8, !tbaa !10
  %call7 = tail call fastcc i32 @run_cert(%struct.x509_st* noundef %call, i8* noundef %4, %struct.set_name_fn* noundef nonnull %arrayidx) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  %failed.1 = phi i32 [ %failed.022, %lor.lhs.false6 ], [ 1, %if.then ]
  tail call void @X509_free(%struct.x509_st* noundef %call) #9
  %incdec.ptr = getelementptr inbounds i8*, i8** %pname.023, i64 1
  %5 = load i8*, i8** %incdec.ptr, align 8, !tbaa !10
  %cmp.not = icmp eq i8* %5, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %if.end
  %cmp9 = icmp eq i32 %failed.1, 0
  %conv10 = zext i1 %cmp9 to i32
  ret i32 %conv10
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_GENERAL_NAME_cmp() #0 {
entry:
  %derp = alloca i8*, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 208, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 656) #9
  %0 = bitcast i8* %call to %struct.GENERAL_NAME_st**
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 208, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 658) #9
  %1 = bitcast i8* %call1 to %struct.GENERAL_NAME_st**
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 661, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i8* noundef %call) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 661, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i8* noundef %call1) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %2 = bitcast i8** %derp to i8*
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0118 = phi i64 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  %arraydecay = getelementptr inbounds [26 x %struct.gennamedata], [26 x %struct.gennamedata]* bitcast (<{ %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ [11 x i8], [11 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata }>* @gennames to [26 x %struct.gennamedata]*), i64 0, i64 %i.0118, i32 0, i64 0
  store i8* %arraydecay, i8** %derp, align 8, !tbaa !10
  %derlen = getelementptr inbounds [26 x %struct.gennamedata], [26 x %struct.gennamedata]* bitcast (<{ %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, i8, [15 x i8] }>, i64 }, { <{ [11 x i8], [11 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ [12 x i8], [10 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, [19 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, { <{ i8, i8, i8, i8, i8, i8, [16 x i8] }>, i64 }, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata, %struct.gennamedata }>* @gennames to [26 x %struct.gennamedata]*), i64 0, i64 %i.0118, i32 1
  %3 = load i64, i64* %derlen, align 8, !tbaa !13
  %call6 = call %struct.GENERAL_NAME_st* @d2i_GENERAL_NAME(%struct.GENERAL_NAME_st** noundef null, i8** noundef nonnull %derp, i64 noundef %3) #9
  %arrayidx7 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %0, i64 %i.0118
  store %struct.GENERAL_NAME_st* %call6, %struct.GENERAL_NAME_st** %arrayidx7, align 8, !tbaa !10
  store i8* %arraydecay, i8** %derp, align 8, !tbaa !10
  %4 = load i64, i64* %derlen, align 8, !tbaa !13
  %call13 = call %struct.GENERAL_NAME_st* @d2i_GENERAL_NAME(%struct.GENERAL_NAME_st** noundef null, i8** noundef nonnull %derp, i64 noundef %4) #9
  %arrayidx14 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %1, i64 %i.0118
  store %struct.GENERAL_NAME_st* %call13, %struct.GENERAL_NAME_st** %arrayidx14, align 8, !tbaa !10
  %5 = bitcast %struct.GENERAL_NAME_st** %arrayidx7 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !10
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0), i8* noundef %6) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup.thread, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %for.body
  %7 = bitcast %struct.GENERAL_NAME_st** %arrayidx14 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !10
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i8* noundef %8) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body, %lor.lhs.false18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  br label %end

for.inc:                                          ; preds = %lor.lhs.false18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  %inc = add nuw nsw i64 %i.0118, 1
  %exitcond.not = icmp eq i64 %inc, 26
  br i1 %exitcond.not, label %for.cond27.preheader, label %for.body, !llvm.loop !16

for.cond27.preheader:                             ; preds = %for.inc, %for.inc50
  %i.1121 = phi i64 [ %inc51, %for.inc50 ], [ 0, %for.inc ]
  %arrayidx39 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %0, i64 %i.1121
  %arrayidx33 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %1, i64 %i.1121
  br label %for.body29

for.body29:                                       ; preds = %for.cond27.preheader, %for.inc47
  %j.0119 = phi i64 [ 0, %for.cond27.preheader ], [ %inc48, %for.inc47 ]
  %cmp30 = icmp eq i64 %i.1121, %j.0119
  %9 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %arrayidx39, align 8, !tbaa !10
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body29
  %10 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %arrayidx33, align 8, !tbaa !10
  %call34 = call i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef %9, %struct.GENERAL_NAME_st* noundef %10) #9
  %call35 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 682, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i32 noundef %call34, i32 noundef 0) #9
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %for.inc47

if.else:                                          ; preds = %for.body29
  %arrayidx40 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %1, i64 %j.0119
  %11 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %arrayidx40, align 8, !tbaa !10
  %call41 = call i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef %9, %struct.GENERAL_NAME_st* noundef %11) #9
  %call42 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i32 noundef %call41, i32 noundef 0) #9
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %for.inc47

for.inc47:                                        ; preds = %if.then31, %if.else
  %inc48 = add nuw nsw i64 %j.0119, 1
  %exitcond126.not = icmp eq i64 %inc48, 26
  br i1 %exitcond126.not, label %for.inc50, label %for.body29, !llvm.loop !17

for.inc50:                                        ; preds = %for.inc47
  %inc51 = add nuw nsw i64 %i.1121, 1
  %exitcond127.not = icmp eq i64 %inc51, 26
  br i1 %exitcond127.not, label %end, label %for.cond27.preheader, !llvm.loop !18

end:                                              ; preds = %for.inc50, %if.else, %if.then31, %cleanup.thread, %entry, %lor.lhs.false
  %testresult.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %cleanup.thread ], [ 0, %if.then31 ], [ 0, %if.else ], [ 1, %for.inc50 ]
  %cmp56.not = icmp eq i8* %call, null
  %cmp60.not = icmp eq i8* %call1, null
  br label %for.body55

for.body55:                                       ; preds = %end, %for.inc64
  %i.2122 = phi i64 [ 0, %end ], [ %inc65, %for.inc64 ]
  br i1 %cmp56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %for.body55
  %arrayidx58 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %0, i64 %i.2122
  %12 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %arrayidx58, align 8, !tbaa !10
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %12) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.body55
  br i1 %cmp60.not, label %for.inc64, label %if.then61

if.then61:                                        ; preds = %if.end59
  %arrayidx62 = getelementptr inbounds %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %1, i64 %i.2122
  %13 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %arrayidx62, align 8, !tbaa !10
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %13) #9
  br label %for.inc64

for.inc64:                                        ; preds = %if.end59, %if.then61
  %inc65 = add nuw nsw i64 %i.2122, 1
  %exitcond128.not = icmp eq i64 %inc65, 26
  br i1 %exitcond128.not, label %for.end66, label %for.body55, !llvm.loop !19

for.end66:                                        ; preds = %for.inc64
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 699) #9
  call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 700) #9
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @make_cert() unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @X509_new() #9
  %0 = bitcast %struct.x509_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* noundef %0) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @X509_set_version(%struct.x509_st* noundef %call, i64 noundef 2) #9
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @X509_free(%struct.x509_st* noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then5
  %retval.0 = phi %struct.x509_st* [ null, %if.then5 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.x509_st* %retval.0
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_cert(%struct.x509_st* noundef %crt, i8* noundef %nameincert, %struct.set_name_fn* nocapture noundef readonly %fn) unnamed_addr #0 {
entry:
  %host = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %fn, i64 0, i32 2
  %email = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %fn, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %entry, %if.end89
  %0 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %entry ], [ %9, %if.end89 ]
  %pname.0164 = phi i8** [ getelementptr inbounds ([52 x i8*], [52 x i8*]* @names, i64 0, i64 0), %entry ], [ %incdec.ptr, %if.end89 ]
  %failed.0163 = phi i32 [ 0, %entry ], [ %spec.select160, %if.end89 ]
  %call = tail call i32 @strcasecmp(i8* noundef %nameincert, i8* noundef nonnull %0) #12
  %cmp1 = icmp eq i32 %call, 0
  %call2 = tail call i64 @strlen(i8* noundef nonnull %0) #12
  %add = add i64 %call2, 1
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 292) #9
  %1 = load i8*, i8** %pname.0164, align 8, !tbaa !10
  %call5 = tail call i8* @memcpy(i8* noundef %call3, i8* noundef %1, i64 noundef %add) #9
  %call6 = tail call i32 @X509_check_host(%struct.x509_st* noundef %crt, i8* noundef %call3, i64 noundef %call2, i32 noundef 0, i8** noundef null) #9
  %call7 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end26, label %if.else

if.else:                                          ; preds = %for.body
  %2 = load i32, i32* %host, align 8, !tbaa !20
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %if.else20, label %if.then9

if.then9:                                         ; preds = %if.else
  %cmp10 = icmp ne i32 %call6, 1
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp1
  %spec.select = select i1 %or.cond, i32 -1, i32 1
  %cmp14 = icmp eq i32 %call6, 0
  %or.cond99 = select i1 %cmp14, i1 %cmp1, i1 false
  %spec.select161 = select i1 %or.cond99, i32 0, i32 %spec.select
  br label %if.end26

if.else20:                                        ; preds = %if.else
  %cmp21 = icmp eq i32 %call6, 1
  %spec.select152 = select i1 %cmp21, i32 1, i32 -1
  br label %if.end26

if.end26:                                         ; preds = %if.then9, %if.else20, %for.body
  %failed.1 = phi i32 [ 1, %for.body ], [ %failed.0163, %if.else20 ], [ %failed.0163, %if.then9 ]
  %match.1 = phi i32 [ -1, %for.body ], [ %spec.select152, %if.else20 ], [ %spec.select161, %if.then9 ]
  %3 = load i8*, i8** %pname.0164, align 8, !tbaa !10
  %call27 = tail call fastcc i32 @check_message(%struct.set_name_fn* noundef %fn, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8* noundef %nameincert, i32 noundef %match.1, i8* noundef %3) #10
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.67, i64 0, i64 0), i32 noundef %conv29) #9
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select153 = select i1 %tobool31.not, i32 1, i32 %failed.1
  %call34 = tail call i32 @X509_check_host(%struct.x509_st* noundef %crt, i8* noundef %call3, i64 noundef %call2, i32 noundef 2, i8** noundef null) #9
  %call35 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), i32 noundef %call34, i32 noundef 0) #9
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end60, label %if.else38

if.else38:                                        ; preds = %if.end26
  %4 = load i32, i32* %host, align 8, !tbaa !20
  %tobool40.not = icmp eq i32 %4, 0
  br i1 %tobool40.not, label %if.else54, label %if.then41

if.then41:                                        ; preds = %if.else38
  %cmp42 = icmp ne i32 %call34, 1
  %or.cond100 = select i1 %cmp42, i1 true, i1 %cmp1
  %spec.select154 = select i1 %or.cond100, i32 -1, i32 1
  %cmp48 = icmp eq i32 %call34, 0
  %or.cond101 = select i1 %cmp48, i1 %cmp1, i1 false
  %spec.select162 = select i1 %or.cond101, i32 0, i32 %spec.select154
  br label %if.end60

if.else54:                                        ; preds = %if.else38
  %cmp55 = icmp eq i32 %call34, 1
  %spec.select155 = select i1 %cmp55, i32 1, i32 -1
  br label %if.end60

if.end60:                                         ; preds = %if.then41, %if.else54, %if.end26
  %failed.3 = phi i32 [ 1, %if.end26 ], [ %spec.select153, %if.else54 ], [ %spec.select153, %if.then41 ]
  %match.3 = phi i32 [ -1, %if.end26 ], [ %spec.select155, %if.else54 ], [ %spec.select162, %if.then41 ]
  %5 = load i8*, i8** %pname.0164, align 8, !tbaa !10
  %call61 = tail call fastcc i32 @check_message(%struct.set_name_fn* noundef %fn, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0), i8* noundef %nameincert, i32 noundef %match.3, i8* noundef %5) #10
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv63) #9
  %tobool65.not = icmp eq i32 %call64, 0
  %call68 = tail call i32 @X509_check_email(%struct.x509_st* noundef %crt, i8* noundef %call3, i64 noundef %call2, i32 noundef 0) #9
  %6 = load i32, i32* %email, align 4, !tbaa !21
  %tobool69.not = icmp eq i32 %6, 0
  %tobool86.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.else85, label %if.then70

if.then70:                                        ; preds = %if.end60
  %or.cond102 = select i1 %tobool86.not, i1 true, i1 %cmp1
  %spec.select157 = select i1 %or.cond102, i32 -1, i32 1
  %or.cond103 = select i1 %tobool86.not, i1 %cmp1, i1 false
  br i1 %or.cond103, label %land.lhs.true79, label %if.end89

land.lhs.true79:                                  ; preds = %if.then70
  %call80 = tail call i8* @strchr(i8* noundef %nameincert, i32 noundef 64) #12
  %cmp81.not = icmp eq i8* %call80, null
  %spec.select158 = select i1 %cmp81.not, i32 %spec.select157, i32 0
  br label %if.end89

if.else85:                                        ; preds = %if.end60
  %spec.select159 = select i1 %tobool86.not, i32 -1, i32 1
  br label %if.end89

if.end89:                                         ; preds = %if.else85, %land.lhs.true79, %if.then70
  %match.5 = phi i32 [ %spec.select157, %if.then70 ], [ %spec.select158, %land.lhs.true79 ], [ %spec.select159, %if.else85 ]
  %7 = load i8*, i8** %pname.0164, align 8, !tbaa !10
  %call90 = tail call fastcc i32 @check_message(%struct.set_name_fn* noundef nonnull %fn, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i8* noundef %nameincert, i32 noundef %match.5, i8* noundef %7) #10
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv92) #9
  %tobool94.not = icmp eq i32 %call93, 0
  %8 = select i1 %tobool94.not, i1 true, i1 %tobool65.not
  %spec.select160 = select i1 %8, i32 1, i32 %failed.3
  tail call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 338) #9
  %incdec.ptr = getelementptr inbounds i8*, i8** %pname.0164, i64 1
  %9 = load i8*, i8** %incdec.ptr, align 8, !tbaa !10
  %cmp.not = icmp eq i8* %9, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %if.end89
  %cmp97 = icmp eq i32 %spec.select160, 0
  %conv98 = zext i1 %cmp97 to i32
  ret i32 %conv98
}

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cn1(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 13, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cn2(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 13, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cn3(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 13, i8* noundef %name, i32 noundef 13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cn_and_email(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 13, i8* noundef %name, i32 noundef 48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_email1(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 48, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_email2(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 noundef 48, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_email3(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 48, i8* noundef %name, i32 noundef 48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_email_and_cn(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_cn(%struct.x509_st* noundef %crt, i32 noundef 48, i8* noundef %name, i32 noundef 13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_altname_dns(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_altname(%struct.x509_st* noundef %crt, i32 noundef 2, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_altname_email(%struct.x509_st* noundef %crt, i8* noundef %name) #0 {
entry:
  %call = tail call i32 (%struct.x509_st*, ...) @set_altname(%struct.x509_st* noundef %crt, i32 noundef 1, i8* noundef %name, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_cn(%struct.x509_st* noundef %crt, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #11
  call void @llvm.va_start(i8* nonnull %0)
  %call = call %struct.X509_name_st* @X509_NAME_new() #9
  %cmp = icmp eq %struct.X509_name_st* %call, null
  br i1 %cmp, label %cleanup28, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %vaarg.end16
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %reg_save_area = load i8*, i8** %1, align 16
  %2 = zext i32 %gp_offset to i64
  %3 = getelementptr i8, i8* %reg_save_area, i64 %2
  %4 = add nuw nsw i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset8 = phi i32 [ %4, %vaarg.in_reg ], [ %gp_offset, %vaarg.in_mem ]
  %vaarg.addr.in = phi i8* [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*
  %5 = load i32, i32* %vaarg.addr, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %while.end, label %if.end5

if.end5:                                          ; preds = %vaarg.end
  %fits_in_gp9 = icmp ult i32 %gp_offset8, 41
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12

vaarg.in_reg10:                                   ; preds = %if.end5
  %reg_save_area11 = load i8*, i8** %1, align 16
  %6 = zext i32 %gp_offset8 to i64
  %7 = getelementptr i8, i8* %reg_save_area11, i64 %6
  %8 = add nuw nsw i32 %gp_offset8, 8
  store i32 %8, i32* %gp_offset_p, align 16
  br label %vaarg.end16

vaarg.in_mem12:                                   ; preds = %if.end5
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i64 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end16

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17.in = phi i8* [ %7, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %vaarg.addr17 = bitcast i8* %vaarg.addr17.in to i8**
  %9 = load i8*, i8** %vaarg.addr17, align 8
  %call18 = call i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef nonnull %call, i32 noundef %5, i32 noundef 4097, i8* noundef %9, i32 noundef -1, i32 noundef -1, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %cleanup28, label %while.cond

while.end:                                        ; preds = %vaarg.end
  %call22 = call i32 @X509_set_subject_name(%struct.x509_st* noundef %crt, %struct.X509_name_st* noundef nonnull %call) #9
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %cleanup28

cleanup28:                                        ; preds = %vaarg.end16, %entry, %while.end
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %while.end ], [ 0, %vaarg.end16 ]
  call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #9
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #11
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #1

declare dso_local i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_set_subject_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_altname(%struct.x509_st* noundef %crt, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #11
  call void @llvm.va_start(i8* nonnull %0)
  %call = call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_GENERAL_NAME*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %cleanup39, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %reg_save_area = load i8*, i8** %2, align 16
  %3 = zext i32 %gp_offset to i64
  %4 = getelementptr i8, i8* %reg_save_area, i64 %3
  %5 = add nuw nsw i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset8 = phi i32 [ %5, %vaarg.in_reg ], [ %gp_offset, %vaarg.in_mem ]
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*
  %6 = load i32, i32* %vaarg.addr, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %while.end, label %if.end5

if.end5:                                          ; preds = %vaarg.end
  %fits_in_gp9 = icmp ult i32 %gp_offset8, 41
  br i1 %fits_in_gp9, label %vaarg.in_reg10, label %vaarg.in_mem12

vaarg.in_reg10:                                   ; preds = %if.end5
  %reg_save_area11 = load i8*, i8** %2, align 16
  %7 = zext i32 %gp_offset8 to i64
  %8 = getelementptr i8, i8* %reg_save_area11, i64 %7
  %9 = add nuw nsw i32 %gp_offset8, 8
  store i32 %9, i32* %gp_offset_p, align 16
  br label %vaarg.end16

vaarg.in_mem12:                                   ; preds = %if.end5
  %overflow_arg_area14 = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next15 = getelementptr i8, i8* %overflow_arg_area14, i64 8
  store i8* %overflow_arg_area.next15, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end16

vaarg.end16:                                      ; preds = %vaarg.in_mem12, %vaarg.in_reg10
  %vaarg.addr17.in = phi i8* [ %8, %vaarg.in_reg10 ], [ %overflow_arg_area14, %vaarg.in_mem12 ]
  %vaarg.addr17 = bitcast i8* %vaarg.addr17.in to i8**
  %10 = load i8*, i8** %vaarg.addr17, align 8
  %call18 = call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #9
  %cmp19 = icmp eq %struct.GENERAL_NAME_st* %call18, null
  br i1 %cmp19, label %cleanup39, label %if.end21

if.end21:                                         ; preds = %vaarg.end16
  %call22 = call %struct.asn1_string_st* @ASN1_IA5STRING_new() #9
  %cmp23 = icmp eq %struct.asn1_string_st* %call22, null
  br i1 %cmp23, label %cleanup39, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call22, i8* noundef %10, i32 noundef -1) #9
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %cleanup39, label %if.end28

if.end28:                                         ; preds = %if.end25
  %.off = add i32 %6, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %cleanup, label %sw.default

sw.default:                                       ; preds = %if.end28
  call void @abort() #13
  unreachable

cleanup:                                          ; preds = %if.end28
  %11 = bitcast %struct.asn1_string_st* %call22 to i8*
  call void @GENERAL_NAME_set0_value(%struct.GENERAL_NAME_st* noundef nonnull %call18, i32 noundef %6, i8* noundef nonnull %11) #9
  %call29 = call fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %1) #10
  %12 = bitcast %struct.GENERAL_NAME_st* %call18 to i8*
  %call31 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call29, i8* noundef nonnull %12) #9
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %13 = bitcast %struct.stack_st* %call to i8*
  %call33 = call i32 @X509_add1_ext_i2d(%struct.x509_st* noundef %crt, i32 noundef 85, i8* noundef nonnull %13, i32 noundef 0, i64 noundef 0) #9
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %cleanup39

cleanup39:                                        ; preds = %if.end25, %if.end21, %vaarg.end16, %entry, %while.end
  %gen.2 = phi %struct.GENERAL_NAME_st* [ null, %entry ], [ null, %while.end ], [ null, %vaarg.end16 ], [ %call18, %if.end21 ], [ %call18, %if.end25 ]
  %ia5.2 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %while.end ], [ null, %vaarg.end16 ], [ null, %if.end21 ], [ %call22, %if.end25 ]
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %while.end ], [ 0, %vaarg.end16 ], [ 0, %if.end21 ], [ 0, %if.end25 ]
  call void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %ia5.2) #9
  call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %gen.2) #9
  call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef %1) #9
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #11
  ret i32 %ret.0
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ASN1_IA5STRING_new() local_unnamed_addr #1

declare dso_local i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @GENERAL_NAME_set0_value(%struct.GENERAL_NAME_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #4

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_add1_ext_i2d(%struct.x509_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

declare dso_local void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @X509_new() local_unnamed_addr #1

declare dso_local i32 @X509_set_version(%struct.x509_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_check_host(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_message(%struct.set_name_fn* nocapture noundef readonly %fn, i8* noundef %op, i8* noundef %nameincert, i32 noundef %match, i8* noundef %name) unnamed_addr #0 {
entry:
  %msg = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #11
  %cmp = icmp slt i32 %match, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %fn, i64 0, i32 1
  %1 = load i8*, i8** %name1, align 8, !tbaa !3
  %tobool.not = icmp eq i32 %match, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0)
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 1024, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i64 0, i64 0), i8* noundef %1, i8* noundef %op, i8* noundef %nameincert, i8* noundef %cond, i8* noundef %name) #9
  %call3 = call fastcc i32 @is_exception(i8* noundef nonnull %0) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 1, %entry ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare dso_local i32 @X509_check_email(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @is_exception(i8* noundef readonly %msg) unnamed_addr #8 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %0 = load i8*, i8** %incdec.ptr, align 8, !tbaa !10
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %for.body, !llvm.loop !23

for.body:                                         ; preds = %entry, %for.cond
  %1 = phi i8* [ getelementptr inbounds ([54 x i8], [54 x i8]* @.str.77, i64 0, i64 0), %entry ], [ %0, %for.cond ]
  %p.04 = phi i8** [ getelementptr inbounds ([35 x i8*], [35 x i8*]* @exceptions, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.cond ]
  %call = tail call i32 @strcmp(i8* noundef %msg, i8* noundef nonnull %1) #12
  %cmp = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr inbounds i8*, i8** %p.04, i64 1
  br i1 %cmp, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local %struct.GENERAL_NAME_st* @d2i_GENERAL_NAME(%struct.GENERAL_NAME_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 8}
!4 = !{!"set_name_fn", !5, i64 0, !5, i64 8, !8, i64 16, !8, i64 20}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !15, i64 24}
!14 = !{!"gennamedata", !6, i64 0, !15, i64 24}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!4, !8, i64 16}
!21 = !{!4, !8, i64 20}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
