; ModuleID = 'test/crltest.c'
source_filename = "test/crltest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_crl_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_store_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_X509 = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test/crltest.c\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"test_root = X509_from_strings(kCRLTestRoot)\00", align 1
@kCRLTestRoot = internal global [22 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i8* null], align 16
@test_root = internal unnamed_addr global %struct.x509_st* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"test_leaf = X509_from_strings(kCRLTestLeaf)\00", align 1
@kCRLTestLeaf = internal global [23 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i8* null], align 16
@test_leaf = internal unnamed_addr global %struct.x509_st* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"test_no_crl\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"test_basic_crl\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"test_bad_issuer_crl\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test_known_critical_crl\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"test_unknown_critical_crl\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"test_reuse_crl\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"-----BEGIN CERTIFICATE-----\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"MIIDbzCCAlegAwIBAgIJAODri7v0dDUFMA0GCSqGSIb3DQEBCwUAME4xCzAJBgNV\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBW\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"aWV3MRIwEAYDVQQKDAlCb3JpbmdTU0wwHhcNMTYwOTI2MTUwNjI2WhcNMjYwOTI0\0A\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"MTUwNjI2WjBOMQswCQYDVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTEWMBQG\0A\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"A1UEBwwNTW91bnRhaW4gVmlldzESMBAGA1UECgwJQm9yaW5nU1NMMIIBIjANBgkq\0A\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo16WiLWZuaymsD8n5SKPmxV1y6jjgr3B\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"S/dUBpbrzd1aeFzNlI8l2jfAnzUyp+I21RQ+nh/MhqjGElkTtK9xMn1Y+S9GMRh+\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"5R/Du0iCb1tCZIPY07Tgrb0KMNWe0v2QKVVruuYSgxIWodBfxlKO64Z8AJ5IbnWp\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"uRqO6rctN9qUoMlTIAB6dL4G0tDJ/PGFWOJYwOMEIX54bly2wgyYJVBKiRRt4f7n\0A\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"8H922qmvPNA9idmX9G1VAtgV6x97XXi7ULORIQvn9lVQF6nTYDBJhyuPB+mLThbL\0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"P2o9orxGx7aCtnnBZUIxUvHNOI0FaSaZH7Fi0xsZ/GkG2HZe7ImPJwIDAQABo1Aw\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"TjAdBgNVHQ4EFgQUWPt3N5cZ/CRvubbrkqfBnAqhq94wHwYDVR0jBBgwFoAUWPt3\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"N5cZ/CRvubbrkqfBnAqhq94wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOC\0A\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"AQEAORu6M0MOwXy+3VEBwNilfTxyqDfruQsc1jA4PT8Oe8zora1WxE1JB4q2FJOz\0A\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"EAuM3H/NXvEnBuN+ITvKZAJUfm4NKX97qmjMJwLKWe1gVv+VQTr63aR7mgWJReQN\0A\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"XdMztlVeZs2dppV6uEg3ia1X0G7LARxGpA9ETbMyCpb39XxlYuTClcbA5ftDN99B\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"3Xg9KNdd++Ew22O3HWRDvdDpTO/JkzQfzi3sYwUtzMEonENhczJhGf7bQMmvL/w5\0A\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"24Wxj4Z7KzzWIHsNqE/RIs6RV3fcW61j/mRgW2XyoWnMVeBzvcJr9NXp4VQYmFPw\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"amd8GKMZQvP0ufGnUn7D7uartA==\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"-----END CERTIFICATE-----\0A\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"MIIDkDCCAnigAwIBAgICEAAwDQYJKoZIhvcNAQELBQAwTjELMAkGA1UEBhMCVVMx\0A\00", align 1
@.str.31 = private unnamed_addr constant [66 x i8] c"EzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDU1vdW50YWluIFZpZXcxEjAQ\0A\00", align 1
@.str.32 = private unnamed_addr constant [66 x i8] c"BgNVBAoMCUJvcmluZ1NTTDAeFw0xNjA5MjYxNTA4MzFaFw0xNzA5MjYxNTA4MzFa\0A\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"MEsxCzAJBgNVBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQKDAlC\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"b3JpbmdTU0wxEzARBgNVBAMMCmJvcmluZy5zc2wwggEiMA0GCSqGSIb3DQEBAQUA\0A\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"A4IBDwAwggEKAoIBAQDc5v1S1M0W+QWM+raWfO0LH8uvqEwuJQgODqMaGnSlWUx9\0A\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"8iQcnWfjyPja3lWg9K62hSOFDuSyEkysKHDxijz5R93CfLcfnVXjWQDJe7EJTTDP\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"ozEvxN6RjAeYv7CF000euYr3QT5iyBjg76+bon1p0jHZBJeNPP1KqGYgyxp+hzpx\0A\00", align 1
@.str.38 = private unnamed_addr constant [66 x i8] c"e0gZmTlGAXd8JQK4v8kpdYwD6PPifFL/jpmQpqOtQmH/6zcLjY4ojmqpEdBqIKIX\0A\00", align 1
@.str.39 = private unnamed_addr constant [66 x i8] c"+saA29hMq0+NK3K+wgg31RU+cVWxu3tLOIiesETkeDgArjWRS1Vkzbi4v9SJxtNu\0A\00", align 1
@.str.40 = private unnamed_addr constant [66 x i8] c"OZuAxWiynRJw3JwH/OFHYZIvQqz68ZBoj96cepjPAgMBAAGjezB5MAkGA1UdEwQC\0A\00", align 1
@.str.41 = private unnamed_addr constant [66 x i8] c"MAAwLAYJYIZIAYb4QgENBB8WHU9wZW5TU0wgR2VuZXJhdGVkIENlcnRpZmljYXRl\0A\00", align 1
@.str.42 = private unnamed_addr constant [66 x i8] c"MB0GA1UdDgQWBBTGn0OVVh/aoYt0bvEKG+PIERqnDzAfBgNVHSMEGDAWgBRY+3c3\0A\00", align 1
@.str.43 = private unnamed_addr constant [66 x i8] c"lxn8JG+5tuuSp8GcCqGr3jANBgkqhkiG9w0BAQsFAAOCAQEAd2nM8gCQN2Dc8QJw\0A\00", align 1
@.str.44 = private unnamed_addr constant [66 x i8] c"XSZXyuI3DBGGCHcay/3iXu0JvTC3EiQo8J6Djv7WLI0N5KH8mkm40u89fJAB2lLZ\0A\00", align 1
@.str.45 = private unnamed_addr constant [66 x i8] c"ShuHVtcC182bOKnePgwp9CNwQ21p0rDEu/P3X46ZvFgdxx82E9xLa0tBB8PiPDWh\0A\00", align 1
@.str.46 = private unnamed_addr constant [66 x i8] c"lV16jbaKTgX5AZqjnsyjR5o9/mbZVupZJXx5Syq+XA8qiJfstSYJs4KyKK9UOjql\0A\00", align 1
@.str.47 = private unnamed_addr constant [66 x i8] c"ICkJVKpi2ahDBqX4MOH4SLfzVk8pqSpviS6yaA1RXqjpkxiN45WWaXDldVHMSkhC\0A\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"5CNXsXi4b1nAntu89crwSLA3rEwzCWeYj+BX7e1T9rr3oJdwOU/2KQtW1js1yQUG\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"tjJMFw==\0A\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"verify(test_leaf, test_root, NULL, X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"X509_V_ERR_UNABLE_TO_GET_CRL\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"roots\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"sk_X509_push(roots, root)\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"X509_STORE_CTX_init(ctx, store, leaf, NULL)\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"(long)X509_VERIFY_PARAM_get_time(param)\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"PARAM_TIME\00", align 1
@kBasicCRL = internal global [12 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@kRevokedCRL = internal global [13 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"basic_crl\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"revoked_crl\00", align 1
@.str.62 = private unnamed_addr constant [85 x i8] c"verify(test_leaf, test_root, make_CRL_stack(basic_crl, NULL), X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"X509_V_OK\00", align 1
@.str.64 = private unnamed_addr constant [92 x i8] c"verify(test_leaf, test_root, make_CRL_stack(basic_crl, revoked_crl), X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"X509_V_ERR_CERT_REVOKED\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"-----BEGIN X509 CRL-----\0A\00", align 1
@.str.67 = private unnamed_addr constant [66 x i8] c"MIIBpzCBkAIBATANBgkqhkiG9w0BAQsFADBOMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.68 = private unnamed_addr constant [66 x i8] c"CAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNTW91bnRhaW4gVmlldzESMBAGA1UECgwJ\0A\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"Qm9yaW5nU1NMFw0xNjA5MjYxNTEwNTVaFw0xNjEwMjYxNTEwNTVaoA4wDDAKBgNV\0A\00", align 1
@.str.70 = private unnamed_addr constant [66 x i8] c"HRQEAwIBATANBgkqhkiG9w0BAQsFAAOCAQEAnrBKKgvd9x9zwK9rtUvVeFeJ7+LN\0A\00", align 1
@.str.71 = private unnamed_addr constant [66 x i8] c"ZEAc+a5oxpPNEsJx6hXoApYEbzXMxuWBQoCs5iEBycSGudct21L+MVf27M38KrWo\0A\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"eOkq0a2siqViQZO2Fb/SUFR0k9zb8xl86Zf65lgPplALun0bV/HT7MJcl04Tc4os\0A\00", align 1
@.str.73 = private unnamed_addr constant [66 x i8] c"dsAReBs5nqTGNEd5AlC1iKHvQZkM//MD51DspKnDpsDiUVi54h9C1SpfZmX8H2Vv\0A\00", align 1
@.str.74 = private unnamed_addr constant [66 x i8] c"diyu0fZ/bPAM3VAGawatf/SyWfBMyKpoPXEG39oAzmjjOj8en82psn7m474IGaho\0A\00", align 1
@.str.75 = private unnamed_addr constant [62 x i8] c"/vBbhl1ms5qQiLYPjm4YELtnXQoFyC72tBjbdFd/ZE9k4CNKDbxFUXFbkw==\0A\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"-----END X509 CRL-----\0A\00", align 1
@.str.77 = private unnamed_addr constant [66 x i8] c"MIIBvjCBpwIBATANBgkqhkiG9w0BAQsFADBOMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.78 = private unnamed_addr constant [66 x i8] c"Qm9yaW5nU1NMFw0xNjA5MjYxNTEyNDRaFw0xNjEwMjYxNTEyNDRaMBUwEwICEAAX\0A\00", align 1
@.str.79 = private unnamed_addr constant [66 x i8] c"DTE2MDkyNjE1MTIyNlqgDjAMMAoGA1UdFAQDAgECMA0GCSqGSIb3DQEBCwUAA4IB\0A\00", align 1
@.str.80 = private unnamed_addr constant [66 x i8] c"AQCUGaM4DcWzlQKrcZvI8TMeR8BpsvQeo5BoI/XZu2a8h//PyRyMwYeaOM+3zl0d\0A\00", align 1
@.str.81 = private unnamed_addr constant [66 x i8] c"sjgCT8b3C1FPgT+P2Lkowv7rJ+FHJRNQkogr+RuqCSPTq65ha4WKlRGWkMFybzVH\0A\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"NloxC+aU3lgp/NlX9yUtfqYmJek1CDrOOGPrAEAwj1l/BUeYKNGqfBWYJQtPJu+5\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"OaSvIYGpETCZJscUWODmLEb/O3DM438vLvxonwGqXqS0KX37+CHpUlyhnSovxXxp\0A\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"Pz4aF+L7OtczxL0GYtD2fR9B7TDMqsNmHXgQrixvvOY7MUdLGbd4RfJL3yA53hyO\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"xzfKY2TzxLiOmctG0hXFkH5J\0A\00", align 1
@kBadIssuerCRL = internal global [13 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@.str.86 = private unnamed_addr constant [15 x i8] c"bad_issuer_crl\00", align 1
@.str.87 = private unnamed_addr constant [90 x i8] c"verify(test_leaf, test_root, make_CRL_stack(bad_issuer_crl, NULL), X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.88 = private unnamed_addr constant [66 x i8] c"MIIBwjCBqwIBATANBgkqhkiG9w0BAQsFADBSMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.89 = private unnamed_addr constant [66 x i8] c"CAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNTW91bnRhaW4gVmlldzEWMBQGA1UECgwN\0A\00", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c"Tm90IEJvcmluZ1NTTBcNMTYwOTI2MTUxMjQ0WhcNMTYxMDI2MTUxMjQ0WjAVMBMC\0A\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"AhAAFw0xNjA5MjYxNTEyMjZaoA4wDDAKBgNVHRQEAwIBAjANBgkqhkiG9w0BAQsF\0A\00", align 1
@.str.92 = private unnamed_addr constant [66 x i8] c"AAOCAQEAlBmjOA3Fs5UCq3GbyPEzHkfAabL0HqOQaCP12btmvIf/z8kcjMGHmjjP\0A\00", align 1
@.str.93 = private unnamed_addr constant [66 x i8] c"t85dHbI4Ak/G9wtRT4E/j9i5KML+6yfhRyUTUJKIK/kbqgkj06uuYWuFipURlpDB\0A\00", align 1
@.str.94 = private unnamed_addr constant [66 x i8] c"cm81RzZaMQvmlN5YKfzZV/clLX6mJiXpNQg6zjhj6wBAMI9ZfwVHmCjRqnwVmCUL\0A\00", align 1
@.str.95 = private unnamed_addr constant [66 x i8] c"TybvuTmkryGBqREwmSbHFFjg5ixG/ztwzON/Ly78aJ8Bql6ktCl9+/gh6VJcoZ0q\0A\00", align 1
@.str.96 = private unnamed_addr constant [66 x i8] c"L8V8aT8+Ghfi+zrXM8S9BmLQ9n0fQe0wzKrDZh14EK4sb7zmOzFHSxm3eEXyS98g\0A\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"Od4cjsc3ymNk88S4jpnLRtIVxZB+SQ==\0A\00", align 1
@kKnownCriticalCRL = internal global [13 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@.str.98 = private unnamed_addr constant [19 x i8] c"known_critical_crl\00", align 1
@.str.99 = private unnamed_addr constant [94 x i8] c"verify(test_leaf, test_root, make_CRL_stack(known_critical_crl, NULL), X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.100 = private unnamed_addr constant [66 x i8] c"MIIBujCBowIBATANBgkqhkiG9w0BAQsFADBOMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.101 = private unnamed_addr constant [66 x i8] c"Qm9yaW5nU1NMFw0xNjA5MjYxNTEwNTVaFw0xNjEwMjYxNTEwNTVaoCEwHzAKBgNV\0A\00", align 1
@.str.102 = private unnamed_addr constant [66 x i8] c"HRQEAwIBATARBgNVHRwBAf8EBzAFoQMBAf8wDQYJKoZIhvcNAQELBQADggEBAA+3\0A\00", align 1
@.str.103 = private unnamed_addr constant [66 x i8] c"i+5e5Ub8sccfgOBs6WVJFI9c8gvJjrJ8/dYfFIAuCyeocs7DFXn1n13CRZ+URR/Q\0A\00", align 1
@.str.104 = private unnamed_addr constant [66 x i8] c"mVWgU28+xeusuSPYFpd9cyYTcVyNUGNTI3lwgcE/yVjPaOmzSZKdPakApRxtpKKQ\0A\00", align 1
@.str.105 = private unnamed_addr constant [66 x i8] c"NN/56aQz3bnT/ZSHQNciRB8U6jiD9V30t0w+FDTpGaG+7bzzUH3UVF9xf9Ctp60A\0A\00", align 1
@.str.106 = private unnamed_addr constant [66 x i8] c"3mfLe0scas7owSt4AEFuj2SPvcE7yvdOXbu+IEv21cEJUVExJAbhvIweHXh6yRW+\0A\00", align 1
@.str.107 = private unnamed_addr constant [66 x i8] c"7VVeiNzdIjkZjyTmAzoXGha4+wbxXyBRbfH+XWcO/H+8nwyG8Gktdu2QB9S9nnIp\0A\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"o/1TpfOMSGhMyMoyPrk=\0A\00", align 1
@unknown_critical_crls = internal unnamed_addr constant [2 x i8**] [i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @kUnknownCriticalCRL, i32 0, i32 0), i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @kUnknownCriticalCRL2, i32 0, i32 0)], align 16
@.str.109 = private unnamed_addr constant [21 x i8] c"unknown_critical_crl\00", align 1
@.str.110 = private unnamed_addr constant [96 x i8] c"verify(test_leaf, test_root, make_CRL_stack(unknown_critical_crl, NULL), X509_V_FLAG_CRL_CHECK)\00", align 1
@.str.111 = private unnamed_addr constant [44 x i8] c"X509_V_ERR_UNHANDLED_CRITICAL_CRL_EXTENSION\00", align 1
@kUnknownCriticalCRL = internal global [13 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@kUnknownCriticalCRL2 = internal global [13 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null], align 16
@.str.112 = private unnamed_addr constant [66 x i8] c"MIIBvDCBpQIBATANBgkqhkiG9w0BAQsFADBOMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.113 = private unnamed_addr constant [66 x i8] c"Qm9yaW5nU1NMFw0xNjA5MjYxNTEwNTVaFw0xNjEwMjYxNTEwNTVaoCMwITAKBgNV\0A\00", align 1
@.str.114 = private unnamed_addr constant [66 x i8] c"HRQEAwIBATATBgwqhkiG9xIEAYS3CQABAf8EADANBgkqhkiG9w0BAQsFAAOCAQEA\0A\00", align 1
@.str.115 = private unnamed_addr constant [66 x i8] c"GvBP0xqL509InMj/3493YVRV+ldTpBv5uTD6jewzf5XdaxEQ/VjTNe5zKnxbpAib\0A\00", align 1
@.str.116 = private unnamed_addr constant [66 x i8] c"Kf7cwX0PMSkZjx7k7kKdDlEucwVvDoqC+O9aJcqVmM6GDyNb9xENxd0XCXja6MZC\0A\00", align 1
@.str.117 = private unnamed_addr constant [66 x i8] c"yVgP4AwLauB2vSiEprYJyI1APph3iAEeDm60lTXX/wBM/tupQDDujKh2GPyvBRfJ\0A\00", align 1
@.str.118 = private unnamed_addr constant [66 x i8] c"+wEDwGg3ICwvu4gO4zeC5qnFR+bpL9t5tOMAQnVZ0NWv+k7mkd2LbHdD44dxrfXC\0A\00", align 1
@.str.119 = private unnamed_addr constant [66 x i8] c"nhtfERx99SDmC/jtUAJrGhtCO8acr7exCeYcduN7KKCm91OeCJKK6OzWst0Og1DB\0A\00", align 1
@.str.120 = private unnamed_addr constant [26 x i8] c"kwzzU2rL3G65CrZ7H0SZsQ==\0A\00", align 1
@.str.121 = private unnamed_addr constant [66 x i8] c"MIIBzzCBuAIBATANBgkqhkiG9w0BAQsFADBOMQswCQYDVQQGEwJVUzETMBEGA1UE\0A\00", align 1
@.str.122 = private unnamed_addr constant [66 x i8] c"Qm9yaW5nU1NMFw0xNjA5MjYxNTEwNTVaFw0xNjEwMjYxNTEwNTVaoDYwNDAKBgNV\0A\00", align 1
@.str.123 = private unnamed_addr constant [66 x i8] c"HRQEAwIBATARBgNVHRwBAf8EBzAFoQMBAf8wEwYMKoZIhvcSBAGEtwkAAQH/BAAw\0A\00", align 1
@.str.124 = private unnamed_addr constant [66 x i8] c"DQYJKoZIhvcNAQELBQADggEBACTcpQC8jXL12JN5YzOcQ64ubQIe0XxRAd30p7qB\0A\00", align 1
@.str.125 = private unnamed_addr constant [66 x i8] c"BTXGpgqBjrjxRfLms7EBYodEXB2oXMsDq3km0vT1MfYdsDD05S+SQ9CDsq/pUfaC\0A\00", align 1
@.str.126 = private unnamed_addr constant [66 x i8] c"E2WNI5p8WircRnroYvbN2vkjlRbMd1+yNITohXYXCJwjEOAWOx3XIM10bwPYBv4R\0A\00", align 1
@.str.127 = private unnamed_addr constant [66 x i8] c"rDobuLHoMgL3yHgMHmAkP7YpkBucNqeBV8cCdeAZLuhXFWi6yfr3r/X18yWbC/r2\0A\00", align 1
@.str.128 = private unnamed_addr constant [66 x i8] c"2xXdkrSqXLFo7ToyP8YKTgiXpya4x6m53biEYwa2ULlas0igL6DK7wjYZX95Uy7H\0A\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"GKljn9weIYiMPV/BzGymwfv2EW0preLwtyJNJPaxbdin6Jc=\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.x509_st* @X509_from_strings(i8** noundef getelementptr inbounds ([22 x i8*], [22 x i8*]* @kCRLTestRoot, i64 0, i64 0)) #4
  store %struct.x509_st* %call, %struct.x509_st** @test_root, align 8, !tbaa !3
  %0 = bitcast %struct.x509_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.x509_st* @X509_from_strings(i8** noundef getelementptr inbounds ([23 x i8*], [23 x i8*]* @kCRLTestLeaf, i64 0, i64 0)) #4
  store %struct.x509_st* %call2, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %1 = bitcast %struct.x509_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_no_crl) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_basic_crl) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_bad_issuer_crl) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_known_critical_crl) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 (i32)* noundef nonnull @test_unknown_critical_crl, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_reuse_crl) #5
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @X509_from_strings(i8** noundef %pem) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = call fastcc %struct.bio_st* @glue2bio(i8** noundef %pem, i8** noundef nonnull %p) #4
  %call1 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %1 = load i8*, i8** %p, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #5
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.x509_st* %call1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_no_crl() #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %1 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call = tail call fastcc i32 @verify(%struct.x509_st* noundef %0, %struct.x509_st* noundef %1, %struct.stack_st_X509_CRL* noundef null) #4
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i32 noundef %call, i32 noundef 3) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_basic_crl() #0 {
entry:
  %call = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef getelementptr inbounds ([12 x i8*], [12 x i8*]* @kBasicCRL, i64 0, i64 0)) #4
  %call1 = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @kRevokedCRL, i64 0, i64 0)) #4
  %0 = bitcast %struct.X509_crl_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.X509_crl_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* noundef %1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %3 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call6 = tail call fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %call, %struct.X509_crl_st* noundef null) #4
  %call7 = tail call fastcc i32 @verify(%struct.x509_st* noundef %2, %struct.x509_st* noundef %3, %struct.stack_st_X509_CRL* noundef %call6) #4
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true5
  %4 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %5 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call10 = tail call fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %call, %struct.X509_crl_st* noundef %call1) #4
  %call11 = tail call fastcc i32 @verify(%struct.x509_st* noundef %4, %struct.x509_st* noundef %5, %struct.stack_st_X509_CRL* noundef %call10) #4
  %call12 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i32 noundef %call11, i32 noundef 23) #5
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %entry
  %6 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %call) #5
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %call1) #5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bad_issuer_crl() #0 {
entry:
  %call = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @kBadIssuerCRL, i64 0, i64 0)) #4
  %0 = bitcast %struct.X509_crl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %2 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call2 = tail call fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %call, %struct.X509_crl_st* noundef null) #4
  %call3 = tail call fastcc i32 @verify(%struct.x509_st* noundef %1, %struct.x509_st* noundef %2, %struct.stack_st_X509_CRL* noundef %call2) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i32 noundef %call3, i32 noundef 3) #5
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %call) #5
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_known_critical_crl() #0 {
entry:
  %call = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @kKnownCriticalCRL, i64 0, i64 0)) #4
  %0 = bitcast %struct.X509_crl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %2 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call2 = tail call fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %call, %struct.X509_crl_st* noundef null) #4
  %call3 = tail call fastcc i32 @verify(%struct.x509_st* noundef %1, %struct.x509_st* noundef %2, %struct.stack_st_X509_CRL* noundef %call2) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call3, i32 noundef 0) #5
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %call) #5
  ret i32 %3
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unknown_critical_crl(i32 noundef %n) #0 {
entry:
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds [2 x i8**], [2 x i8**]* @unknown_critical_crls, i64 0, i64 %idxprom
  %0 = load i8**, i8*** %arrayidx, align 8, !tbaa !3
  %call = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef %0) #4
  %1 = bitcast %struct.X509_crl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %2 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  %3 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  %call2 = tail call fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %call, %struct.X509_crl_st* noundef null) #4
  %call3 = tail call fastcc i32 @verify(%struct.x509_st* noundef %2, %struct.x509_st* noundef %3, %struct.stack_st_X509_CRL* noundef %call2) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.111, i64 0, i64 0), i32 noundef %call3, i32 noundef 36) #5
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %call) #5
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_reuse_crl() #0 {
entry:
  %reused_crl = alloca %struct.X509_crl_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.X509_crl_st** %reused_crl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef getelementptr inbounds ([12 x i8*], [12 x i8*]* @kBasicCRL, i64 0, i64 0)) #4
  store %struct.X509_crl_st* %call, %struct.X509_crl_st** %reused_crl, align 8, !tbaa !3
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call1 = call fastcc %struct.bio_st* @glue2bio(i8** noundef getelementptr inbounds ([13 x i8*], [13 x i8*]* @kRevokedCRL, i64 0, i64 0), i8** noundef nonnull %p) #4
  %call2 = call %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef %call1, %struct.X509_crl_st** noundef nonnull %reused_crl, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  store %struct.X509_crl_st* %call2, %struct.X509_crl_st** %reused_crl, align 8, !tbaa !3
  %2 = load i8*, i8** %p, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 368) #5
  %call3 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  %3 = load %struct.X509_crl_st*, %struct.X509_crl_st** %reused_crl, align 8, !tbaa !3
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.x509_st*, %struct.x509_st** @test_root, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %0) #5
  %1 = load %struct.x509_st*, %struct.x509_st** @test_leaf, align 8, !tbaa !3
  tail call void @X509_free(%struct.x509_st* noundef %1) #5
  ret void
}

declare dso_local void @X509_free(%struct.x509_st* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @glue2bio(i8** noundef %pem, i8** nocapture noundef writeonly %out) unnamed_addr #0 {
entry:
  %s = alloca i64, align 8
  %0 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i64 0, i64* %s, align 8, !tbaa !7
  %call = call i8* @glue_strings(i8** noundef %pem, i64* noundef nonnull %s) #5
  store i8* %call, i8** %out, align 8, !tbaa !3
  %1 = load i64, i64* %s, align 8, !tbaa !7
  %conv = trunc i64 %1 to i32
  %call1 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %call, i32 noundef %conv) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.bio_st* %call1
}

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @glue_strings(i8** noundef, i64* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify(%struct.x509_st* noundef %leaf, %struct.x509_st* noundef %root, %struct.stack_st_X509_CRL* noundef %crls) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #5
  %call1 = tail call %struct.x509_store_st* @X509_STORE_new() #5
  %call2 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #5
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_X509*
  %1 = bitcast %struct.x509_store_ctx_st* %call to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = bitcast %struct.x509_store_st* %call1 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* noundef %2) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = bitcast %struct.X509_VERIFY_PARAM_st* %call2 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* noundef %3) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %4 = bitcast %struct.stack_st* %call3 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i8* noundef %4) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false10
  %call13 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %root) #5
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #4
  %5 = bitcast %struct.x509_st* %root to i8*
  %call16 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call14, i8* noundef %5) #5
  %cmp = icmp ne i32 %call16, 0
  %conv = zext i1 %cmp to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %call20 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef %call, %struct.x509_store_st* noundef %call1, %struct.x509_st* noundef %leaf, %struct.stack_st_X509* noundef null) #5
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv22) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false19
  tail call void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef %call, %struct.stack_st_X509* noundef %0) #5
  tail call void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef %call, %struct.stack_st_X509_CRL* noundef %crls) #5
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef %call2, i64 noundef 1474934400) #5
  %call27 = tail call i64 @X509_VERIFY_PARAM_get_time(%struct.X509_VERIFY_PARAM_st* noundef %call2) #5
  %call28 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), i64 noundef %call27, i64 noundef 1474934400) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef %call2, i32 noundef 16) #5
  %call34 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %call2, i64 noundef 4) #5
  tail call void @X509_STORE_CTX_set0_param(%struct.x509_store_ctx_st* noundef %call, %struct.X509_VERIFY_PARAM_st* noundef %call2) #5
  tail call void @ERR_clear_error() #5
  %call36 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef %call) #5
  %cmp37 = icmp eq i32 %call36, 1
  br i1 %cmp37, label %err, label %cond.false

cond.false:                                       ; preds = %if.end31
  %call39 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %call) #5
  br label %err

err:                                              ; preds = %cond.false, %if.end31, %if.end26, %if.end, %lor.lhs.false19, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10
  %param.0 = phi %struct.X509_VERIFY_PARAM_st* [ %call2, %if.end26 ], [ %call2, %lor.lhs.false19 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false7 ], [ %call2, %lor.lhs.false ], [ %call2, %entry ], [ null, %if.end31 ], [ null, %cond.false ]
  %status.0 = phi i32 [ 1, %if.end26 ], [ 1, %lor.lhs.false19 ], [ 1, %if.end ], [ 1, %lor.lhs.false10 ], [ 1, %lor.lhs.false7 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end31 ], [ %call39, %cond.false ]
  %call40 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call40, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #5
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call42, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #5
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %param.0) #5
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call) #5
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call1) #5
  ret i32 %status.0
}

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #1

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509_CRL* noundef) local_unnamed_addr #1

declare dso_local void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @X509_VERIFY_PARAM_get_time(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_CTX_set0_param(%struct.x509_store_ctx_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_CRL_free(%struct.X509_crl_st* noundef) #1

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_crl_st* @CRL_from_strings(i8** noundef %pem) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = call fastcc %struct.bio_st* @glue2bio(i8** noundef %pem, i8** noundef nonnull %p) #4
  %call1 = tail call %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef %call, %struct.X509_crl_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %1 = load i8*, i8** %p, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 207) #5
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.X509_crl_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509_CRL* @make_CRL_stack(%struct.X509_crl_st* noundef %x1, %struct.X509_crl_st* noundef %x2) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_CRL*
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %0) #4
  %1 = bitcast %struct.X509_crl_st* %x1 to i8*
  %call3 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call1, i8* noundef %1) #5
  %call4 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %x1) #5
  %cmp.not = icmp eq %struct.X509_crl_st* %x2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.X509_crl_st* %x2 to i8*
  %call7 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call1, i8* noundef nonnull %2) #5
  %call8 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef nonnull %x2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.stack_st_X509_CRL* %0
}

declare dso_local %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
