; ModuleID = 'crypto/x509/x509_txt.c'
source_filename = "crypto/x509/x509_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unspecified certificate verification error\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to get issuer certificate\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to get certificate CRL\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"unable to decrypt certificate's signature\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to decrypt CRL's signature\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"unable to decode issuer public key\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"certificate signature failure\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CRL signature failure\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"certificate is not yet valid\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"certificate has expired\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"CRL is not yet valid\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"CRL has expired\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"format error in certificate's notBefore field\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"format error in certificate's notAfter field\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"format error in CRL's lastUpdate field\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"format error in CRL's nextUpdate field\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"self-signed certificate\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"self-signed certificate in certificate chain\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"unable to get local issuer certificate\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"unable to verify the first certificate\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"certificate chain too long\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"certificate revoked\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"issuer certificate doesn't have a public key\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"path length constraint exceeded\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"unsupported certificate purpose\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"certificate not trusted\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"certificate rejected\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"subject issuer mismatch\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"authority and subject key identifier mismatch\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"authority and issuer serial number mismatch\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"key usage does not include certificate signing\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"unable to get CRL issuer certificate\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"unhandled critical extension\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"key usage does not include CRL signing\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"unhandled critical CRL extension\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"invalid non-CA certificate (has CA markings)\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"proxy path length constraint exceeded\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"key usage does not include digital signature\00", align 1
@.str.40 = private unnamed_addr constant [64 x i8] c"proxy certificates not allowed, please set the appropriate flag\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"invalid or inconsistent certificate extension\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"invalid or inconsistent certificate policy extension\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"no explicit policy\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"different CRL scope\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"unsupported extension feature\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"RFC 3779 resource not subset of parent's resources\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"permitted subtree violation\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"excluded subtree violation\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"name constraints minimum and maximum not supported\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"application verification failure\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"unsupported name constraint type\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"unsupported or invalid name constraint syntax\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"unsupported or invalid name syntax\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"CRL path validation error\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"path loop\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"Suite B: certificate version invalid\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"Suite B: invalid public key algorithm\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"Suite B: invalid ECC curve\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"Suite B: invalid signature algorithm\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"Suite B: curve not allowed for this LOS\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Suite B: cannot sign P-384 with P-256\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"hostname mismatch\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"email address mismatch\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"IP address mismatch\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"no matching DANE TLSA records\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"EE certificate key too weak\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"CA certificate key too weak\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"CA signature digest algorithm too weak\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"invalid certificate verification context\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"issuer certificate lookup error\00", align 1
@.str.71 = private unnamed_addr constant [59 x i8] c"Certificate Transparency required, but no valid SCTs found\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"proxy subject name violation\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"OCSP verification needed\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"OCSP verification failed\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"OCSP unknown cert\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"Cannot find certificate signature algorithm\00", align 1
@.str.77 = private unnamed_addr constant [69 x i8] c"subject signature algorithm and issuer public key algorithm mismatch\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"cert info siganature and signature algorithm mismatch\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"invalid CA certificate\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"Path length invalid for non-CA cert\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"Path length given without key usage keyCertSign\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"Key usage keyCertSign invalid for non-CA cert\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Issuer name empty\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"Subject name empty\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"Missing Authority Key Identifier\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Missing Subject Key Identifier\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"Empty Subject Alternative Name extension\00", align 1
@.str.88 = private unnamed_addr constant [49 x i8] c"Basic Constraints of CA cert not marked critical\00", align 1
@.str.89 = private unnamed_addr constant [58 x i8] c"Subject empty and Subject Alt Name extension not critical\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"Authority Key Identifier marked critical\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"Subject Key Identifier marked critical\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"CA cert does not include key usage extension\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"Using cert extension requires at least X509v3\00", align 1
@.str.94 = private unnamed_addr constant [51 x i8] c"Certificate public key has explicit ECC parameters\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"unknown certificate verification error\00", align 1
@reltable.X509_verify_cert_error_string = private unnamed_addr constant [95 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([43 x i8]* @.str.1 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.2 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([30 x i8]* @.str.3 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([42 x i8]* @.str.4 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([34 x i8]* @.str.5 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.6 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([30 x i8]* @.str.7 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([22 x i8]* @.str.8 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.9 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.10 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([21 x i8]* @.str.11 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([16 x i8]* @.str.12 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.13 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.14 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.15 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.16 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([14 x i8]* @.str.17 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.18 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.19 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.20 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.21 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([27 x i8]* @.str.22 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.23 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.24 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.25 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.26 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.27 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([21 x i8]* @.str.28 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([24 x i8]* @.str.29 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.30 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([44 x i8]* @.str.31 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([47 x i8]* @.str.32 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([37 x i8]* @.str.33 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.34 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.35 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.36 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.37 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([38 x i8]* @.str.38 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.39 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([64 x i8]* @.str.40 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.41 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([53 x i8]* @.str.42 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.43 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.44 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([30 x i8]* @.str.45 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([51 x i8]* @.str.46 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.47 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([27 x i8]* @.str.48 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([51 x i8]* @.str.49 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.50 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.51 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.52 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([35 x i8]* @.str.53 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([26 x i8]* @.str.54 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.55 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([37 x i8]* @.str.56 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([38 x i8]* @.str.57 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([27 x i8]* @.str.58 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([37 x i8]* @.str.59 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([40 x i8]* @.str.60 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([38 x i8]* @.str.61 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.62 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([23 x i8]* @.str.63 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([20 x i8]* @.str.64 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([30 x i8]* @.str.65 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.66 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([28 x i8]* @.str.67 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.68 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([41 x i8]* @.str.69 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([32 x i8]* @.str.70 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([59 x i8]* @.str.71 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([29 x i8]* @.str.72 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([25 x i8]* @.str.73 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([25 x i8]* @.str.74 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.75 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([44 x i8]* @.str.76 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([69 x i8]* @.str.77 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([54 x i8]* @.str.78 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([23 x i8]* @.str.79 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([36 x i8]* @.str.80 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([48 x i8]* @.str.81 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.82 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([18 x i8]* @.str.83 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([19 x i8]* @.str.84 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([33 x i8]* @.str.85 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([31 x i8]* @.str.86 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([41 x i8]* @.str.87 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([58 x i8]* @.str.89 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([49 x i8]* @.str.88 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([41 x i8]* @.str.90 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([39 x i8]* @.str.91 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([45 x i8]* @.str.92 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([46 x i8]* @.str.93 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([51 x i8]* @.str.94 to i64), i64 ptrtoint ([95 x i32]* @reltable.X509_verify_cert_error_string to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @X509_verify_cert_error_string(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %n to i32
  %0 = icmp ult i32 %conv, 95
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %sext = shl i64 %n, 32
  %1 = ashr exact i64 %sext, 32
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([95 x i32]* @reltable.X509_verify_cert_error_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.95, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
