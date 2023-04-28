; ModuleID = 'crypto/x509/t_x509.c'
source_filename = "crypto/x509/t_x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.stack_st = type opaque
%struct.evp_md_st = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_store_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.ssl_dane_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/x509/t_x509.c\00", align 1
@__func__.X509_print_ex_fp = private unnamed_addr constant [17 x i8] c"X509_print_ex_fp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Certificate:\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"    Data:\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%8sVersion: %ld (0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%8sVersion: Unknown (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"        Serial Number:\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" %s%lu (%s0x%lx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" (Negative)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\0A%12s%s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"        Issuer:%c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"        Validity\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"            Not Before: \00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"\0A            Not After : \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"        Subject:%c\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"        Subject Public Key Info:\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%12sPublic Key Algorithm: \00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"%12sUnable to load Public Key\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"%8sIssuer Unique ID: \00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"%8sSubject Unique ID: \00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"X509v3 extensions\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"        Subject OCSP hash: \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"\0A        Public key OCSP hash: \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"%*sSignature Algorithm: \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"\0A%*sSignature Value:\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%*sTrusted Uses:\0A%*s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%*sNo Trusted Uses.\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"%*sRejected Uses:\0A%*s\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"%*sNo Rejected Uses.\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"%*sAlias: %.*s\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"%*sKey Id: \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s%02X\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"    (no certificate)\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"    certificate\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"        self-issued\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"        not yet valid\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"        no more valid\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"%s at depth = %d error = %d (%s)\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"CRL path validation\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"Certificate verification\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Expected hostname(s) = \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Expected email address = %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Expected IP address = %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Failure for:\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"Non-trusted certs:\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Certs in trust store:\0A\00", align 1
@__func__.X509_STORE_CTX_print_verify_cb = private unnamed_addr constant [31 x i8] c"X509_STORE_CTX_print_verify_cb\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"    (no certificates)\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"    (no trusted store)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_print_fp(%struct._IO_FILE* noundef %fp, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_print_ex_fp(%struct._IO_FILE* noundef %fp, %struct.x509_st* noundef %x, i64 noundef 0, i64 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_print_ex_fp(%struct._IO_FILE* noundef %fp, %struct.x509_st* noundef %x, i64 noundef %nmflag, i64 noundef %cflag) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_print_ex_fp, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #6
  %call3 = tail call i32 @X509_print_ex(%struct.bio_st* noundef nonnull %call1, %struct.x509_st* noundef %x, i64 noundef %nmflag, i64 noundef %cflag) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_print_ex(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x, i64 noundef %nmflags, i64 noundef %cflag) local_unnamed_addr #0 {
entry:
  %xpoid = alloca %struct.asn1_object_st*, align 8
  %iuid = alloca %struct.asn1_string_st*, align 8
  %suid = alloca %struct.asn1_string_st*, align 8
  %sig_alg = alloca %struct.X509_algor_st*, align 8
  %sig = alloca %struct.asn1_string_st*, align 8
  %and = and i64 %nmflags, 983040
  %cmp = icmp eq i64 %and, 262144
  %spec.select = select i1 %cmp, i32 10, i32 32
  %spec.select389 = select i1 %cmp, i32 12, i32 0
  %cmp1 = icmp eq i64 %nmflags, 0
  %nmindent.1 = select i1 %cmp1, i32 16, i32 %spec.select389
  %printok.0 = zext i1 %cmp1 to i32
  %and4 = and i64 %cflag, 1
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.end13

if.then5:                                         ; preds = %entry
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 13) #6
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.then5
  %call9 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef 10) #6
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8, %entry
  %and14 = and i64 %cflag, 2
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i64 @X509_get_version(%struct.x509_st* noundef %x) #6
  %0 = icmp ult i64 %call17, 3
  br i1 %0, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  %add = add nuw nsw i64 %call17, 1
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 noundef %add, i64 noundef %call17) #6
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %if.end30

if.else:                                          ; preds = %if.then16
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 noundef %call17) #6
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %err, label %if.end30

if.end30:                                         ; preds = %if.then20, %if.else, %if.end13
  %and31 = and i64 %cflag, 4
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end79

if.then33:                                        ; preds = %if.end30
  %call34 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %x) #6
  %call35 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 noundef 22) #6
  %cmp36 = icmp slt i32 %call35, 1
  br i1 %cmp36, label %err, label %if.end38

if.end38:                                         ; preds = %if.then33
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call34, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !4
  %cmp39 = icmp slt i32 %1, 9
  br i1 %cmp39, label %if.end45, label %if.else56

if.end45:                                         ; preds = %if.end38
  %call41 = tail call i32 @ERR_set_mark() #6
  %call42 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %call34) #6
  %call43 = tail call i32 @ERR_pop_to_mark() #6
  %cmp46.not = icmp eq i64 %call42, -1
  br i1 %cmp46.not, label %if.else56, label %if.then47

if.then47:                                        ; preds = %if.end45
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call34, i64 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !11
  %cmp48 = icmp eq i32 %2, 258
  %sub = sub i64 0, %call42
  %neg.0 = select i1 %cmp48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %ul.0 = select i1 %cmp48, i64 %sub, i64 %call42
  %call52 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %neg.0, i64 noundef %ul.0, i8* noundef %neg.0, i64 noundef %ul.0) #6
  %cmp53 = icmp slt i32 %call52, 1
  br i1 %cmp53, label %err, label %if.end79

if.else56:                                        ; preds = %if.end38, %if.end45
  %type57 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call34, i64 0, i32 1
  %3 = load i32, i32* %type57, align 4, !tbaa !11
  %cmp58 = icmp eq i32 %3, 258
  %cond = select i1 %cmp58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cond) #6
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else56
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call34, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %4 = load i32, i32* %length, align 8, !tbaa !4
  %5 = sext i32 %4 to i64
  %cmp64 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp64, label %for.body, label %if.end79

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %data, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %7 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = zext i32 %4 to i64
  %cmp67 = icmp eq i64 %indvars.iv.next, %8
  %cond69 = select i1 %cmp67, i32 10, i32 58
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv, i32 noundef %cond69) #6
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %err, label %for.cond, !llvm.loop !14

if.end79:                                         ; preds = %for.cond, %if.then47, %if.end30
  %and80 = and i64 %cflag, 8
  %tobool81.not = icmp eq i64 %and80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end97

if.then82:                                        ; preds = %if.end79
  %call83 = tail call %struct.X509_algor_st* @X509_get0_tbs_sigalg(%struct.x509_st* noundef %x) #6
  %call84 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6
  %cmp85 = icmp slt i32 %call84, 1
  br i1 %cmp85, label %err, label %if.end88

if.end88:                                         ; preds = %if.then82
  %call89 = tail call i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef %call83, %struct.asn1_string_st* noundef null) #5
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %err, label %if.end97

if.end97:                                         ; preds = %if.end88, %if.end79
  %and98 = and i64 %cflag, 16
  %tobool99.not = icmp eq i64 %and98, 0
  br i1 %tobool99.not, label %if.then100, label %if.end118

if.then100:                                       ; preds = %if.end97
  %call102 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 noundef %spec.select) #6
  %cmp103 = icmp slt i32 %call102, 1
  br i1 %cmp103, label %err, label %if.end106

if.end106:                                        ; preds = %if.then100
  %call107 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #6
  %call108 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %call107, i32 noundef %nmindent.1, i64 noundef %nmflags) #6
  %cmp109 = icmp slt i32 %call108, %printok.0
  br i1 %cmp109, label %err, label %if.end112

if.end112:                                        ; preds = %if.end106
  %call113 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %err, label %if.end118

if.end118:                                        ; preds = %if.end112, %if.end97
  %and119 = and i64 %cflag, 32
  %tobool120.not = icmp eq i64 %and119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end154

if.then121:                                       ; preds = %if.end118
  %call122 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef 17) #6
  %cmp123 = icmp slt i32 %call122, 1
  br i1 %cmp123, label %err, label %if.end126

if.end126:                                        ; preds = %if.then121
  %call127 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 noundef 24) #6
  %cmp128 = icmp slt i32 %call127, 1
  br i1 %cmp128, label %err, label %if.end131

if.end131:                                        ; preds = %if.end126
  %call132 = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef %x) #6
  %call133 = tail call i32 @ossl_asn1_time_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %call132, i64 noundef 0) #6
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %err, label %if.end137

if.end137:                                        ; preds = %if.end131
  %call138 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 noundef 25) #6
  %cmp139 = icmp slt i32 %call138, 1
  br i1 %cmp139, label %err, label %if.end142

if.end142:                                        ; preds = %if.end137
  %call143 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %x) #6
  %call144 = tail call i32 @ossl_asn1_time_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %call143, i64 noundef 0) #6
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %err, label %if.end148

if.end148:                                        ; preds = %if.end142
  %call149 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp150 = icmp slt i32 %call149, 1
  br i1 %cmp150, label %err, label %if.end154

if.end154:                                        ; preds = %if.end148, %if.end118
  %and155 = and i64 %cflag, 64
  %tobool156.not = icmp eq i64 %and155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end175

if.then157:                                       ; preds = %if.end154
  %call159 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef %spec.select) #6
  %cmp160 = icmp slt i32 %call159, 1
  br i1 %cmp160, label %err, label %if.end163

if.end163:                                        ; preds = %if.then157
  %call164 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #6
  %call165 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %call164, i32 noundef %nmindent.1, i64 noundef %nmflags) #6
  %cmp166 = icmp slt i32 %call165, %printok.0
  br i1 %cmp166, label %err, label %if.end169

if.end169:                                        ; preds = %if.end163
  %call170 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp171 = icmp slt i32 %call170, 1
  br i1 %cmp171, label %err, label %if.end175

if.end175:                                        ; preds = %if.end169, %if.end154
  %and176 = and i64 %cflag, 128
  %tobool177.not = icmp eq i64 %and176, 0
  br i1 %tobool177.not, label %if.then178, label %if.end213

if.then178:                                       ; preds = %if.end175
  %call179 = tail call %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef %x) #6
  %9 = bitcast %struct.asn1_object_st** %xpoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7
  %call180 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef nonnull %xpoid, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef null, %struct.X509_pubkey_st* noundef %call179) #6
  %call181 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef 33) #6
  %cmp182 = icmp slt i32 %call181, 1
  br i1 %cmp182, label %cleanup209.thread, label %if.end185

if.end185:                                        ; preds = %if.then178
  %call186 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp187 = icmp slt i32 %call186, 1
  br i1 %cmp187, label %cleanup209.thread, label %if.end190

if.end190:                                        ; preds = %if.end185
  %10 = load %struct.asn1_object_st*, %struct.asn1_object_st** %xpoid, align 8, !tbaa !16
  %call191 = call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %10) #6
  %cmp192 = icmp slt i32 %call191, 1
  br i1 %cmp192, label %cleanup209.thread, label %if.end195

if.end195:                                        ; preds = %if.end190
  %call196 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp197 = icmp slt i32 %call196, 1
  br i1 %cmp197, label %cleanup209.thread, label %if.end200

if.end200:                                        ; preds = %if.end195
  %call201 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x) #6
  %cmp202 = icmp eq %struct.evp_pkey_st* %call201, null
  br i1 %cmp202, label %if.then204, label %if.else206

if.then204:                                       ; preds = %if.end200
  %call205 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  call void @ERR_print_errors(%struct.bio_st* noundef %bp) #6
  br label %cleanup209

if.else206:                                       ; preds = %if.end200
  %call207 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef nonnull %call201, i32 noundef 16, %struct.asn1_pctx_st* noundef null) #6
  br label %cleanup209

cleanup209.thread:                                ; preds = %if.then178, %if.end185, %if.end190, %if.end195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7
  br label %err

cleanup209:                                       ; preds = %if.then204, %if.else206
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7
  br label %if.end213

if.end213:                                        ; preds = %cleanup209, %if.end175
  %and214 = and i64 %cflag, 4096
  %tobool215.not = icmp eq i64 %and214, 0
  br i1 %tobool215.not, label %if.then216, label %if.end247

if.then216:                                       ; preds = %if.end213
  %11 = bitcast %struct.asn1_string_st** %iuid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7
  %12 = bitcast %struct.asn1_string_st** %suid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7
  call void @X509_get0_uids(%struct.x509_st* noundef %x, %struct.asn1_string_st** noundef nonnull %iuid, %struct.asn1_string_st** noundef nonnull %suid) #6
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iuid, align 8, !tbaa !16
  %cmp217.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %cmp217.not, label %if.end229, label %if.then219

if.then219:                                       ; preds = %if.then216
  %call220 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp221 = icmp slt i32 %call220, 1
  br i1 %cmp221, label %cleanup243.thread, label %if.end224

if.end224:                                        ; preds = %if.then219
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iuid, align 8, !tbaa !16
  %call225 = call i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %14, i32 noundef 12) #5
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %cleanup243.thread, label %if.end229

if.end229:                                        ; preds = %if.end224, %if.then216
  %15 = load %struct.asn1_string_st*, %struct.asn1_string_st** %suid, align 8, !tbaa !16
  %cmp230.not = icmp eq %struct.asn1_string_st* %15, null
  br i1 %cmp230.not, label %cleanup243, label %if.then232

if.then232:                                       ; preds = %if.end229
  %call233 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp234 = icmp slt i32 %call233, 1
  br i1 %cmp234, label %cleanup243.thread, label %if.end237

if.end237:                                        ; preds = %if.then232
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %suid, align 8, !tbaa !16
  %call238 = call i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %16, i32 noundef 12) #5
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %cleanup243.thread, label %cleanup243

cleanup243.thread:                                ; preds = %if.then219, %if.end224, %if.then232, %if.end237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7
  br label %err

cleanup243:                                       ; preds = %if.end229, %if.end237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7
  br label %if.end247

if.end247:                                        ; preds = %cleanup243, %if.end213
  %and248 = and i64 %cflag, 256
  %tobool249.not = icmp eq i64 %and248, 0
  br i1 %tobool249.not, label %land.lhs.true250, label %if.end255

land.lhs.true250:                                 ; preds = %if.end247
  %call251 = call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef %x) #6
  %call252 = call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %call251, i64 noundef %cflag, i32 noundef 8) #6
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %err, label %if.end255

if.end255:                                        ; preds = %land.lhs.true250, %if.end247
  %and256 = and i64 %cflag, 512
  %tobool257.not = icmp eq i64 %and256, 0
  br i1 %tobool257.not, label %if.then258, label %if.end268

if.then258:                                       ; preds = %if.end255
  %17 = bitcast %struct.X509_algor_st** %sig_alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7
  %18 = bitcast %struct.asn1_string_st** %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7
  call void @X509_get0_signature(%struct.asn1_string_st** noundef nonnull %sig, %struct.X509_algor_st** noundef nonnull %sig_alg, %struct.x509_st* noundef %x) #6
  %19 = load %struct.X509_algor_st*, %struct.X509_algor_st** %sig_alg, align 8, !tbaa !16
  %20 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sig, align 8, !tbaa !16
  %call259 = call i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef %19, %struct.asn1_string_st* noundef %20) #5
  %cmp260 = icmp slt i32 %call259, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7
  br i1 %cmp260, label %err, label %if.end268

if.end268:                                        ; preds = %if.then258, %if.end255
  %and269 = and i64 %cflag, 1024
  %tobool270.not = icmp eq i64 %and269, 0
  br i1 %tobool270.not, label %if.then271, label %err

if.then271:                                       ; preds = %if.end268
  %call272 = call i32 @X509_aux_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x, i32 noundef 0) #5
  br label %err

err:                                              ; preds = %for.body, %if.then47, %if.end88, %if.then82, %if.else56, %if.then33, %cleanup243.thread, %cleanup209.thread, %if.then258, %if.end268, %if.then271, %land.lhs.true250, %if.end169, %if.end163, %if.then157, %if.end148, %if.end142, %if.end137, %if.end131, %if.end126, %if.then121, %if.end112, %if.end106, %if.then100, %if.else, %if.then20, %if.end8, %if.then5
  %ret.0 = phi i32 [ 0, %if.then258 ], [ 0, %land.lhs.true250 ], [ 0, %if.then157 ], [ 0, %if.end163 ], [ 0, %if.end169 ], [ 0, %if.then121 ], [ 0, %if.end126 ], [ 0, %if.end131 ], [ 0, %if.end137 ], [ 0, %if.end142 ], [ 0, %if.end148 ], [ 0, %if.then100 ], [ 0, %if.end106 ], [ 0, %if.end112 ], [ 0, %if.then20 ], [ 0, %if.else ], [ 0, %if.then5 ], [ 0, %if.end8 ], [ 1, %if.then271 ], [ 1, %if.end268 ], [ 0, %cleanup209.thread ], [ 0, %cleanup243.thread ], [ 0, %if.then33 ], [ 0, %if.else56 ], [ 0, %if.then82 ], [ 0, %if.end88 ], [ 0, %if.then47 ], [ 0, %for.body ]
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 220) #6
  ret i32 %ret.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_print_ex(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x, i64 noundef 0, i64 noundef 0) #5
  ret i32 %call
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @X509_get_version(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_get0_tbs_sigalg(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef %sigalg, %struct.asn1_string_st* noundef %sig) local_unnamed_addr #0 {
entry:
  %pkey_nid = alloca i32, align 4
  %dig_nid = alloca i32, align 4
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i32 noundef 4, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %sigalg, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !17
  %call1 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %0) #6
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup37, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq %struct.asn1_string_st* %sig, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 noundef 4, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup37, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !17
  %call10 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #6
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end27, label %if.then12

if.then12:                                        ; preds = %if.end8
  %2 = bitcast i32* %pkey_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %3 = bitcast i32* %dig_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %call13 = call i32 @OBJ_find_sigid_algs(i32 noundef %call10, i32* noundef nonnull %dig_nid, i32* noundef nonnull %pkey_nid) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup.thread, label %if.then15

if.then15:                                        ; preds = %if.then12
  %4 = load i32, i32* %pkey_nid, align 4, !tbaa !19
  %call16 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef null, i32 noundef %4) #6
  %tobool17.not = icmp eq %struct.evp_pkey_asn1_method_st* %call16, null
  br i1 %tobool17.not, label %cleanup.thread, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then15
  %sig_print = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call16, i64 0, i32 21
  %5 = load i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)** %sig_print, align 8, !tbaa !20
  %tobool19.not = icmp eq i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)* %5, null
  br i1 %tobool19.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then15, %land.lhs.true18, %if.then12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  br label %if.end27

cleanup:                                          ; preds = %land.lhs.true18
  %call22 = call i32 %5(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef nonnull %sigalg, %struct.asn1_string_st* noundef %sig, i32 noundef 8, %struct.asn1_pctx_st* noundef null) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  br label %cleanup37

if.end27:                                         ; preds = %cleanup.thread, %if.end8
  %call28 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp29.not = icmp ne i32 %call28, 1
  %brmerge = or i1 %tobool.not, %cmp29.not
  %not.cmp29.not = xor i1 %cmp29.not, true
  %.mux = zext i1 %not.cmp29.not to i32
  br i1 %brmerge, label %cleanup37, label %if.then33

if.then33:                                        ; preds = %if.end27
  %call35 = call i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %sig, i32 noundef 8) #5
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup, %if.end27, %land.lhs.true, %if.end, %entry, %if.then33
  %retval.1 = phi i32 [ %call35, %if.then33 ], [ %call22, %cleanup ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ %.mux, %if.end27 ]
  ret i32 %retval.1
}

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ossl_asn1_time_print_ex(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare void @X509_get0_uids(%struct.x509_st* noundef, %struct.asn1_string_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_signature_dump(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef readonly %sig, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !12
  %2 = zext i32 %0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end9, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end9 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %3, 18
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %cmp2.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %call5 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef %indent) #6
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %4 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp10 = icmp eq i64 %indvars.iv.next, %2
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #6
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %cleanup, label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %call17 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %cmp18.not = icmp eq i32 %call17, 1
  %. = zext i1 %cmp18.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end, %land.lhs.true, %for.end
  %retval.0 = phi i32 [ %., %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

declare i32 @X509V3_extensions_print(%struct.bio_st* noundef, i8* noundef, %struct.stack_st_X509_EXTENSION* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_get0_signature(%struct.asn1_string_st** noundef, %struct.X509_algor_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_aux_print(%struct.bio_st* noundef %out, %struct.x509_st* noundef %x, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %oidstr = alloca [80 x i8], align 16
  %keyidlen = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %oidstr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  %1 = bitcast i32* %keyidlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %call = tail call i32 @X509_trusted(%struct.x509_st* noundef %x) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_ASN1_OBJECT* @X509_get0_trust_objects(%struct.x509_st* noundef %x) #6
  %call2 = tail call %struct.stack_st_ASN1_OBJECT* @X509_get0_reject_objects(%struct.x509_st* noundef %x) #6
  %tobool.not = icmp eq %struct.stack_st_ASN1_OBJECT* %call1, null
  br i1 %tobool.not, label %if.else18, label %if.then3

if.then3:                                         ; preds = %if.end
  %add = add nsw i32 %indent, 2
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %call5 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %call1) #5
  store i32 0, i32* %i, align 4, !tbaa !19
  %call6111 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %cmp7112 = icmp sgt i32 %call6111, 0
  br i1 %cmp7112, label %if.end11, label %for.end

if.then9.critedge:                                ; preds = %if.end11
  %call10 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then9.critedge
  %3 = phi i32 [ %inc, %if.then9.critedge ], [ 0, %if.then3 ]
  %call13 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %3) #6
  %4 = bitcast i8* %call13 to %struct.asn1_object_st*
  %call14 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %4, i32 noundef 0) #6
  %call16 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %0) #6
  %inc = add nuw nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  %call6 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %if.then9.critedge, label %for.end, !llvm.loop !23

for.end:                                          ; preds = %if.end11, %if.then3
  %call17 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %for.end
  %tobool21.not = icmp eq %struct.stack_st_ASN1_OBJECT* %call2, null
  br i1 %tobool21.not, label %if.else45, label %if.then22

if.then22:                                        ; preds = %if.end20
  %add23 = add nsw i32 %indent, 2
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef %add23, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  %call26 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %call2) #5
  store i32 0, i32* %i, align 4, !tbaa !19
  %call27114 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #6
  %cmp28115 = icmp sgt i32 %call27114, 0
  br i1 %cmp28115, label %if.end34, label %for.end43

if.then31.critedge:                               ; preds = %if.end34
  %call32 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then22, %if.then31.critedge
  %5 = phi i32 [ %inc42, %if.then31.critedge ], [ 0, %if.then22 ]
  %call37 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call26, i32 noundef %5) #6
  %6 = bitcast i8* %call37 to %struct.asn1_object_st*
  %call38 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 80, %struct.asn1_object_st* noundef %6, i32 noundef 0) #6
  %call40 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef nonnull %0) #6
  %inc42 = add nuw nsw i32 %5, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !19
  %call27 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #6
  %cmp28 = icmp slt i32 %inc42, %call27
  br i1 %cmp28, label %if.then31.critedge, label %for.end43, !llvm.loop !24

for.end43:                                        ; preds = %if.end34, %if.then22
  %call44 = call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %if.end47

if.else45:                                        ; preds = %if.end20
  %call46 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %for.end43
  %call48 = call i8* @X509_alias_get0(%struct.x509_st* noundef %x, i32* noundef nonnull %i) #6
  %tobool49.not = icmp eq i8* %call48, null
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end47
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %call51 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 noundef %7, i8* noundef nonnull %call48) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  %call53 = call i8* @X509_keyid_get0(%struct.x509_st* noundef %x, i32* noundef nonnull %keyidlen) #6
  %tobool54.not = icmp eq i8* %call53, null
  br i1 %tobool54.not, label %cleanup, label %if.then55

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #6
  store i32 0, i32* %i, align 4, !tbaa !19
  %8 = load i32, i32* %keyidlen, align 4, !tbaa !19
  %cmp58117 = icmp sgt i32 %8, 0
  br i1 %cmp58117, label %for.body59, label %for.end64

for.body59:                                       ; preds = %if.then55, %for.body59
  %storemerge118 = phi i32 [ %inc63, %for.body59 ], [ 0, %if.then55 ]
  %tobool60.not = icmp eq i32 %storemerge118, 0
  %cond = select i1 %tobool60.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)
  %idxprom = sext i32 %storemerge118 to i64
  %arrayidx = getelementptr inbounds i8, i8* %call53, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %9 to i32
  %call61 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* noundef %cond, i32 noundef %conv) #6
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %inc63 = add nsw i32 %10, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !19
  %11 = load i32, i32* %keyidlen, align 4, !tbaa !19
  %cmp58 = icmp slt i32 %inc63, %11
  br i1 %cmp58, label %for.body59, label %for.end64, !llvm.loop !25

for.end64:                                        ; preds = %for.body59, %if.then55
  %call65 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %for.end64, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 1
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_ocspid_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %dertmp = alloca i8*, align 8
  %SHA1md = alloca [20 x i8], align 16
  %0 = bitcast i8** %dertmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #7
  %cmp = icmp eq %struct.x509_st* %x, null
  %cmp1 = icmp eq %struct.bio_st* %bp, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0)) #6
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %x) #6
  %call6 = tail call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %call5, i8** noundef null) #6
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %conv105 = zext i32 %call6 to i64
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef %conv105, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #6
  store i8* %call10, i8** %dertmp, align 8, !tbaa !16
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %call5, i8** noundef nonnull %dertmp) #6
  %libctx = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 25
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %propq = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 26
  %3 = load i8*, i8** %propq, align 8, !tbaa !33
  %call16 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #6
  %cmp17 = icmp eq %struct.evp_md_st* %call16, null
  br i1 %cmp17, label %err, label %if.end20

if.end20:                                         ; preds = %if.end14
  %call22 = call i32 @EVP_Digest(i8* noundef nonnull %call10, i64 noundef %conv105, i8* noundef nonnull %1, i32* noundef null, %struct.evp_md_st* noundef nonnull %call16, %struct.engine_st* noundef null) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end20
  %4 = load i8, i8* %1, align 16, !tbaa !13
  %conv27 = zext i8 %4 to i32
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27) #6
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %err, label %for.cond

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 1
  %5 = load i8, i8* %arrayidx.1, align 1, !tbaa !13
  %conv27.1 = zext i8 %5 to i32
  %call28.1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.1) #6
  %cmp29.1 = icmp slt i32 %call28.1, 1
  br i1 %cmp29.1, label %err, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 2
  %6 = load i8, i8* %arrayidx.2, align 2, !tbaa !13
  %conv27.2 = zext i8 %6 to i32
  %call28.2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.2) #6
  %cmp29.2 = icmp slt i32 %call28.2, 1
  br i1 %cmp29.2, label %err, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 3
  %7 = load i8, i8* %arrayidx.3, align 1, !tbaa !13
  %conv27.3 = zext i8 %7 to i32
  %call28.3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.3) #6
  %cmp29.3 = icmp slt i32 %call28.3, 1
  br i1 %cmp29.3, label %err, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 4
  %8 = load i8, i8* %arrayidx.4, align 4, !tbaa !13
  %conv27.4 = zext i8 %8 to i32
  %call28.4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.4) #6
  %cmp29.4 = icmp slt i32 %call28.4, 1
  br i1 %cmp29.4, label %err, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 5
  %9 = load i8, i8* %arrayidx.5, align 1, !tbaa !13
  %conv27.5 = zext i8 %9 to i32
  %call28.5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.5) #6
  %cmp29.5 = icmp slt i32 %call28.5, 1
  br i1 %cmp29.5, label %err, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 6
  %10 = load i8, i8* %arrayidx.6, align 2, !tbaa !13
  %conv27.6 = zext i8 %10 to i32
  %call28.6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.6) #6
  %cmp29.6 = icmp slt i32 %call28.6, 1
  br i1 %cmp29.6, label %err, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 7
  %11 = load i8, i8* %arrayidx.7, align 1, !tbaa !13
  %conv27.7 = zext i8 %11 to i32
  %call28.7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.7) #6
  %cmp29.7 = icmp slt i32 %call28.7, 1
  br i1 %cmp29.7, label %err, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 8
  %12 = load i8, i8* %arrayidx.8, align 8, !tbaa !13
  %conv27.8 = zext i8 %12 to i32
  %call28.8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.8) #6
  %cmp29.8 = icmp slt i32 %call28.8, 1
  br i1 %cmp29.8, label %err, label %for.cond.8

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 9
  %13 = load i8, i8* %arrayidx.9, align 1, !tbaa !13
  %conv27.9 = zext i8 %13 to i32
  %call28.9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.9) #6
  %cmp29.9 = icmp slt i32 %call28.9, 1
  br i1 %cmp29.9, label %err, label %for.cond.9

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 10
  %14 = load i8, i8* %arrayidx.10, align 2, !tbaa !13
  %conv27.10 = zext i8 %14 to i32
  %call28.10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.10) #6
  %cmp29.10 = icmp slt i32 %call28.10, 1
  br i1 %cmp29.10, label %err, label %for.cond.10

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 11
  %15 = load i8, i8* %arrayidx.11, align 1, !tbaa !13
  %conv27.11 = zext i8 %15 to i32
  %call28.11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.11) #6
  %cmp29.11 = icmp slt i32 %call28.11, 1
  br i1 %cmp29.11, label %err, label %for.cond.11

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 12
  %16 = load i8, i8* %arrayidx.12, align 4, !tbaa !13
  %conv27.12 = zext i8 %16 to i32
  %call28.12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.12) #6
  %cmp29.12 = icmp slt i32 %call28.12, 1
  br i1 %cmp29.12, label %err, label %for.cond.12

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 13
  %17 = load i8, i8* %arrayidx.13, align 1, !tbaa !13
  %conv27.13 = zext i8 %17 to i32
  %call28.13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.13) #6
  %cmp29.13 = icmp slt i32 %call28.13, 1
  br i1 %cmp29.13, label %err, label %for.cond.13

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 14
  %18 = load i8, i8* %arrayidx.14, align 2, !tbaa !13
  %conv27.14 = zext i8 %18 to i32
  %call28.14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.14) #6
  %cmp29.14 = icmp slt i32 %call28.14, 1
  br i1 %cmp29.14, label %err, label %for.cond.14

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 15
  %19 = load i8, i8* %arrayidx.15, align 1, !tbaa !13
  %conv27.15 = zext i8 %19 to i32
  %call28.15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.15) #6
  %cmp29.15 = icmp slt i32 %call28.15, 1
  br i1 %cmp29.15, label %err, label %for.cond.15

for.cond.15:                                      ; preds = %for.cond.14
  %arrayidx.16 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 16
  %20 = load i8, i8* %arrayidx.16, align 16, !tbaa !13
  %conv27.16 = zext i8 %20 to i32
  %call28.16 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.16) #6
  %cmp29.16 = icmp slt i32 %call28.16, 1
  br i1 %cmp29.16, label %err, label %for.cond.16

for.cond.16:                                      ; preds = %for.cond.15
  %arrayidx.17 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 17
  %21 = load i8, i8* %arrayidx.17, align 1, !tbaa !13
  %conv27.17 = zext i8 %21 to i32
  %call28.17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.17) #6
  %cmp29.17 = icmp slt i32 %call28.17, 1
  br i1 %cmp29.17, label %err, label %for.cond.17

for.cond.17:                                      ; preds = %for.cond.16
  %arrayidx.18 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 18
  %22 = load i8, i8* %arrayidx.18, align 2, !tbaa !13
  %conv27.18 = zext i8 %22 to i32
  %call28.18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.18) #6
  %cmp29.18 = icmp slt i32 %call28.18, 1
  br i1 %cmp29.18, label %err, label %for.cond.18

for.cond.18:                                      ; preds = %for.cond.17
  %arrayidx.19 = getelementptr inbounds [20 x i8], [20 x i8]* %SHA1md, i64 0, i64 19
  %23 = load i8, i8* %arrayidx.19, align 1, !tbaa !13
  %conv27.19 = zext i8 %23 to i32
  %call28.19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv27.19) #6
  %cmp29.19 = icmp slt i32 %call28.19, 1
  br i1 %cmp29.19, label %err, label %for.cond.19

for.cond.19:                                      ; preds = %for.cond.18
  call void @CRYPTO_free(i8* noundef nonnull %call10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 259) #6
  %call33 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0)) #6
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %err, label %if.end37

if.end37:                                         ; preds = %for.cond.19
  %call38 = call %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef nonnull %x) #6
  %cmp39 = icmp eq %struct.asn1_string_st* %call38, null
  br i1 %cmp39, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %call43 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %call38) #6
  %call44 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %call38) #6
  %conv45 = sext i32 %call44 to i64
  %call47 = call i32 @EVP_Digest(i8* noundef %call43, i64 noundef %conv45, i8* noundef nonnull %1, i32* noundef null, %struct.evp_md_st* noundef nonnull %call16, %struct.engine_st* noundef null) #6
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %for.body54.preheader

for.body54.preheader:                             ; preds = %if.end42
  %24 = load i8, i8* %1, align 16, !tbaa !13
  %conv57 = zext i8 %24 to i32
  %call58 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57) #6
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %err, label %for.cond51

for.cond51:                                       ; preds = %for.body54.preheader
  %25 = load i8, i8* %arrayidx.1, align 1, !tbaa !13
  %conv57.1 = zext i8 %25 to i32
  %call58.1 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.1) #6
  %cmp59.1 = icmp slt i32 %call58.1, 1
  br i1 %cmp59.1, label %err, label %for.cond51.1

for.cond51.1:                                     ; preds = %for.cond51
  %26 = load i8, i8* %arrayidx.2, align 2, !tbaa !13
  %conv57.2 = zext i8 %26 to i32
  %call58.2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.2) #6
  %cmp59.2 = icmp slt i32 %call58.2, 1
  br i1 %cmp59.2, label %err, label %for.cond51.2

for.cond51.2:                                     ; preds = %for.cond51.1
  %27 = load i8, i8* %arrayidx.3, align 1, !tbaa !13
  %conv57.3 = zext i8 %27 to i32
  %call58.3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.3) #6
  %cmp59.3 = icmp slt i32 %call58.3, 1
  br i1 %cmp59.3, label %err, label %for.cond51.3

for.cond51.3:                                     ; preds = %for.cond51.2
  %28 = load i8, i8* %arrayidx.4, align 4, !tbaa !13
  %conv57.4 = zext i8 %28 to i32
  %call58.4 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.4) #6
  %cmp59.4 = icmp slt i32 %call58.4, 1
  br i1 %cmp59.4, label %err, label %for.cond51.4

for.cond51.4:                                     ; preds = %for.cond51.3
  %29 = load i8, i8* %arrayidx.5, align 1, !tbaa !13
  %conv57.5 = zext i8 %29 to i32
  %call58.5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.5) #6
  %cmp59.5 = icmp slt i32 %call58.5, 1
  br i1 %cmp59.5, label %err, label %for.cond51.5

for.cond51.5:                                     ; preds = %for.cond51.4
  %30 = load i8, i8* %arrayidx.6, align 2, !tbaa !13
  %conv57.6 = zext i8 %30 to i32
  %call58.6 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.6) #6
  %cmp59.6 = icmp slt i32 %call58.6, 1
  br i1 %cmp59.6, label %err, label %for.cond51.6

for.cond51.6:                                     ; preds = %for.cond51.5
  %31 = load i8, i8* %arrayidx.7, align 1, !tbaa !13
  %conv57.7 = zext i8 %31 to i32
  %call58.7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.7) #6
  %cmp59.7 = icmp slt i32 %call58.7, 1
  br i1 %cmp59.7, label %err, label %for.cond51.7

for.cond51.7:                                     ; preds = %for.cond51.6
  %32 = load i8, i8* %arrayidx.8, align 8, !tbaa !13
  %conv57.8 = zext i8 %32 to i32
  %call58.8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.8) #6
  %cmp59.8 = icmp slt i32 %call58.8, 1
  br i1 %cmp59.8, label %err, label %for.cond51.8

for.cond51.8:                                     ; preds = %for.cond51.7
  %33 = load i8, i8* %arrayidx.9, align 1, !tbaa !13
  %conv57.9 = zext i8 %33 to i32
  %call58.9 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.9) #6
  %cmp59.9 = icmp slt i32 %call58.9, 1
  br i1 %cmp59.9, label %err, label %for.cond51.9

for.cond51.9:                                     ; preds = %for.cond51.8
  %34 = load i8, i8* %arrayidx.10, align 2, !tbaa !13
  %conv57.10 = zext i8 %34 to i32
  %call58.10 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.10) #6
  %cmp59.10 = icmp slt i32 %call58.10, 1
  br i1 %cmp59.10, label %err, label %for.cond51.10

for.cond51.10:                                    ; preds = %for.cond51.9
  %35 = load i8, i8* %arrayidx.11, align 1, !tbaa !13
  %conv57.11 = zext i8 %35 to i32
  %call58.11 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.11) #6
  %cmp59.11 = icmp slt i32 %call58.11, 1
  br i1 %cmp59.11, label %err, label %for.cond51.11

for.cond51.11:                                    ; preds = %for.cond51.10
  %36 = load i8, i8* %arrayidx.12, align 4, !tbaa !13
  %conv57.12 = zext i8 %36 to i32
  %call58.12 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.12) #6
  %cmp59.12 = icmp slt i32 %call58.12, 1
  br i1 %cmp59.12, label %err, label %for.cond51.12

for.cond51.12:                                    ; preds = %for.cond51.11
  %37 = load i8, i8* %arrayidx.13, align 1, !tbaa !13
  %conv57.13 = zext i8 %37 to i32
  %call58.13 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.13) #6
  %cmp59.13 = icmp slt i32 %call58.13, 1
  br i1 %cmp59.13, label %err, label %for.cond51.13

for.cond51.13:                                    ; preds = %for.cond51.12
  %38 = load i8, i8* %arrayidx.14, align 2, !tbaa !13
  %conv57.14 = zext i8 %38 to i32
  %call58.14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.14) #6
  %cmp59.14 = icmp slt i32 %call58.14, 1
  br i1 %cmp59.14, label %err, label %for.cond51.14

for.cond51.14:                                    ; preds = %for.cond51.13
  %39 = load i8, i8* %arrayidx.15, align 1, !tbaa !13
  %conv57.15 = zext i8 %39 to i32
  %call58.15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.15) #6
  %cmp59.15 = icmp slt i32 %call58.15, 1
  br i1 %cmp59.15, label %err, label %for.cond51.15

for.cond51.15:                                    ; preds = %for.cond51.14
  %40 = load i8, i8* %arrayidx.16, align 16, !tbaa !13
  %conv57.16 = zext i8 %40 to i32
  %call58.16 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.16) #6
  %cmp59.16 = icmp slt i32 %call58.16, 1
  br i1 %cmp59.16, label %err, label %for.cond51.16

for.cond51.16:                                    ; preds = %for.cond51.15
  %41 = load i8, i8* %arrayidx.17, align 1, !tbaa !13
  %conv57.17 = zext i8 %41 to i32
  %call58.17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.17) #6
  %cmp59.17 = icmp slt i32 %call58.17, 1
  br i1 %cmp59.17, label %err, label %for.cond51.17

for.cond51.17:                                    ; preds = %for.cond51.16
  %42 = load i8, i8* %arrayidx.18, align 2, !tbaa !13
  %conv57.18 = zext i8 %42 to i32
  %call58.18 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.18) #6
  %cmp59.18 = icmp slt i32 %call58.18, 1
  br i1 %cmp59.18, label %err, label %for.cond51.18

for.cond51.18:                                    ; preds = %for.cond51.17
  %43 = load i8, i8* %arrayidx.19, align 1, !tbaa !13
  %conv57.19 = zext i8 %43 to i32
  %call58.19 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57.19) #6
  %cmp59.19 = icmp slt i32 %call58.19, 1
  br i1 %cmp59.19, label %err, label %for.cond51.19

for.cond51.19:                                    ; preds = %for.cond51.18
  %call66 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call16) #6
  br label %cleanup

err:                                              ; preds = %for.body.preheader, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %for.cond.7, %for.cond.8, %for.cond.9, %for.cond.10, %for.cond.11, %for.cond.12, %for.cond.13, %for.cond.14, %for.cond.15, %for.cond.16, %for.cond.17, %for.cond.18, %for.body54.preheader, %for.cond51, %for.cond51.1, %for.cond51.2, %for.cond51.3, %for.cond51.4, %for.cond51.5, %for.cond51.6, %for.cond51.7, %for.cond51.8, %for.cond51.9, %for.cond51.10, %for.cond51.11, %for.cond51.12, %for.cond51.13, %for.cond51.14, %for.cond51.15, %for.cond51.16, %for.cond51.17, %for.cond51.18, %if.end42, %if.end37, %for.cond.19, %if.end20, %if.end14, %if.end9, %if.end4, %if.end
  %der.0 = phi i8* [ null, %if.end ], [ null, %if.end4 ], [ null, %if.end9 ], [ %call10, %if.end14 ], [ null, %for.cond.19 ], [ null, %if.end37 ], [ null, %if.end42 ], [ %call10, %if.end20 ], [ null, %for.cond51.18 ], [ null, %for.cond51.17 ], [ null, %for.cond51.16 ], [ null, %for.cond51.15 ], [ null, %for.cond51.14 ], [ null, %for.cond51.13 ], [ null, %for.cond51.12 ], [ null, %for.cond51.11 ], [ null, %for.cond51.10 ], [ null, %for.cond51.9 ], [ null, %for.cond51.8 ], [ null, %for.cond51.7 ], [ null, %for.cond51.6 ], [ null, %for.cond51.5 ], [ null, %for.cond51.4 ], [ null, %for.cond51.3 ], [ null, %for.cond51.2 ], [ null, %for.cond51.1 ], [ null, %for.cond51 ], [ null, %for.body54.preheader ], [ %call10, %for.cond.18 ], [ %call10, %for.cond.17 ], [ %call10, %for.cond.16 ], [ %call10, %for.cond.15 ], [ %call10, %for.cond.14 ], [ %call10, %for.cond.13 ], [ %call10, %for.cond.12 ], [ %call10, %for.cond.11 ], [ %call10, %for.cond.10 ], [ %call10, %for.cond.9 ], [ %call10, %for.cond.8 ], [ %call10, %for.cond.7 ], [ %call10, %for.cond.6 ], [ %call10, %for.cond.5 ], [ %call10, %for.cond.4 ], [ %call10, %for.cond.3 ], [ %call10, %for.cond.2 ], [ %call10, %for.cond.1 ], [ %call10, %for.cond ], [ %call10, %for.body.preheader ]
  %md.0 = phi %struct.evp_md_st* [ null, %if.end ], [ null, %if.end4 ], [ null, %if.end9 ], [ null, %if.end14 ], [ %call16, %for.cond.19 ], [ %call16, %if.end37 ], [ %call16, %if.end42 ], [ %call16, %if.end20 ], [ %call16, %for.cond51.18 ], [ %call16, %for.cond51.17 ], [ %call16, %for.cond51.16 ], [ %call16, %for.cond51.15 ], [ %call16, %for.cond51.14 ], [ %call16, %for.cond51.13 ], [ %call16, %for.cond51.12 ], [ %call16, %for.cond51.11 ], [ %call16, %for.cond51.10 ], [ %call16, %for.cond51.9 ], [ %call16, %for.cond51.8 ], [ %call16, %for.cond51.7 ], [ %call16, %for.cond51.6 ], [ %call16, %for.cond51.5 ], [ %call16, %for.cond51.4 ], [ %call16, %for.cond51.3 ], [ %call16, %for.cond51.2 ], [ %call16, %for.cond51.1 ], [ %call16, %for.cond51 ], [ %call16, %for.body54.preheader ], [ %call16, %for.cond.18 ], [ %call16, %for.cond.17 ], [ %call16, %for.cond.16 ], [ %call16, %for.cond.15 ], [ %call16, %for.cond.14 ], [ %call16, %for.cond.13 ], [ %call16, %for.cond.12 ], [ %call16, %for.cond.11 ], [ %call16, %for.cond.10 ], [ %call16, %for.cond.9 ], [ %call16, %for.cond.8 ], [ %call16, %for.cond.7 ], [ %call16, %for.cond.6 ], [ %call16, %for.cond.5 ], [ %call16, %for.cond.4 ], [ %call16, %for.cond.3 ], [ %call16, %for.cond.2 ], [ %call16, %for.cond.1 ], [ %call16, %for.cond ], [ %call16, %for.body.preheader ]
  call void @CRYPTO_free(i8* noundef %der.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 285) #6
  call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %for.cond51.19
  %retval.0 = phi i32 [ 0, %err ], [ 1, %for.cond51.19 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_pubkey_bitstr(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_trusted(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_ASN1_OBJECT* @X509_get0_trust_objects(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_ASN1_OBJECT* @X509_get0_reject_objects(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @X509_alias_get0(%struct.x509_st* noundef, i32* noundef) local_unnamed_addr #2

declare i8* @X509_keyid_get0(%struct.x509_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef %bio, %struct.x509_st* noundef %cert, i64 noundef %neg_cflags) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %cert, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #6
  %cmp1 = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0)) #6
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @X509_print_ex(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %cert, i64 noundef 131871, i64 noundef -65) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call i32 @X509_check_issued(%struct.x509_st* noundef nonnull %cert, %struct.x509_st* noundef nonnull %cert) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #6
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %cleanup, label %if.end25

if.else:                                          ; preds = %if.end7
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #6
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else
  %call21 = tail call i32 @X509_print_ex(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %cert, i64 noundef 131871, i64 noundef -17) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false20, %if.then11
  %call26 = tail call i32 @X509_print_ex(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %cert, i64 noundef 131871, i64 noundef -37) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef nonnull %cert) #6
  %call31 = tail call i32 @X509_cmp_current_time(%struct.asn1_string_st* noundef %call30) #6
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end29
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0)) #6
  %cmp36 = icmp slt i32 %call35, 1
  br i1 %cmp36, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end29
  %call41 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef nonnull %cert) #6
  %call42 = tail call i32 @X509_cmp_current_time(%struct.asn1_string_st* noundef %call41) #6
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end40
  %call46 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0)) #6
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %cleanup, label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end40
  %neg = and i64 %neg_cflags, -8193
  %and = xor i64 %neg, -8193
  %call52 = tail call i32 @X509_print_ex(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %cert, i64 noundef 131871, i64 noundef %and) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then34, %if.end25, %if.else, %lor.lhs.false20, %if.then11, %if.end, %lor.lhs.false, %if.end51, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call52, %if.end51 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.then11 ], [ 0, %lor.lhs.false20 ], [ 0, %if.else ], [ 0, %if.end25 ], [ 0, %if.then34 ], [ 0, %if.then45 ]
  ret i32 %retval.0
}

declare i32 @X509_check_issued(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_cmp_current_time(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_print_verify_cb(i32 noundef returned %ok, %struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ok, 0
  %cmp1 = icmp ne %struct.x509_store_ctx_st* %ctx, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end64

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %call2 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #6
  %call4 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_get0_parent_ctx(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %cmp5.not = icmp eq %struct.x509_store_ctx_st* %call4, null
  %cond = select i1 %cmp5.not, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0)
  %call6 = tail call i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %conv = sext i32 %call to i64
  %call7 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv) #6
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0), i8* noundef %cond, i32 noundef %call6, i32 noundef %call, i8* noundef %call7) #6
  %call9 = tail call %struct.x509_store_st* @X509_STORE_CTX_get0_store(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %call10 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef %call9) #6
  switch i32 %call, label %sw.epilog [
    i32 62, label %sw.bb
    i32 63, label %sw.bb20
    i32 64, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.then
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0)) #6
  %call12118 = tail call i8* @X509_VERIFY_PARAM_get0_host(%struct.X509_VERIFY_PARAM_st* noundef %call10, i32 noundef 0) #6
  %cmp13.not119 = icmp eq i8* %call12118, null
  br i1 %cmp13.not119, label %while.end, label %while.body

while.body:                                       ; preds = %sw.bb, %while.body
  %call12121 = phi i8* [ %call12, %while.body ], [ %call12118, %sw.bb ]
  %idx.0120 = phi i32 [ %inc, %while.body ], [ 0, %sw.bb ]
  %inc = add nuw nsw i32 %idx.0120, 1
  %cmp15 = icmp eq i32 %idx.0120, 0
  %cond17 = select i1 %cmp15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* noundef %cond17, i8* noundef nonnull %call12121) #6
  %call12 = tail call i8* @X509_VERIFY_PARAM_get0_host(%struct.X509_VERIFY_PARAM_st* noundef %call10, i32 noundef %inc) #6
  %cmp13.not = icmp eq i8* %call12, null
  br i1 %cmp13.not, label %while.end, label %while.body, !llvm.loop !34

while.end:                                        ; preds = %while.body, %sw.bb
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then
  %call21 = tail call i8* @X509_VERIFY_PARAM_get0_email(%struct.X509_VERIFY_PARAM_st* noundef %call10) #6
  %cmp22.not = icmp eq i8* %call21, null
  br i1 %cmp22.not, label %sw.epilog.thread, label %if.then24

if.then24:                                        ; preds = %sw.bb20
  %call25 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %call21) #6
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %if.then
  %call27 = tail call i8* @X509_VERIFY_PARAM_get1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef %call10) #6
  %cmp28.not = icmp eq i8* %call27, null
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %sw.bb26
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %call27) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %sw.bb26
  tail call void @CRYPTO_free(i8* noundef %call27, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 501) #6
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb20, %if.then24, %if.end32
  %call33115 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0)) #6
  %call34116 = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %call35117 = tail call i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef %call3, %struct.x509_st* noundef %call34116, i64 noundef 256) #5
  br label %if.end62

sw.epilog:                                        ; preds = %if.then, %while.end
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0)) #6
  %call34 = tail call %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %call35 = tail call i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef %call3, %struct.x509_st* noundef %call34, i64 noundef 256) #5
  switch i32 %call, label %if.end62 [
    i32 70, label %if.then55
    i32 33, label %if.then55
    i32 27, label %if.then55
    i32 20, label %if.then55
    i32 19, label %if.then55
    i32 18, label %if.then55
    i32 2, label %if.then55
  ]

if.then55:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %call56 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0)) #6
  %call57 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get0_untrusted(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  %call58 = tail call fastcc i32 @print_certs(%struct.bio_st* noundef %call3, %struct.stack_st_X509* noundef %call57) #5
  %call59 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0)) #6
  %call60 = tail call %struct.x509_store_st* @X509_STORE_CTX_get0_store(%struct.x509_store_ctx_st* noundef nonnull %ctx) #6
  tail call fastcc void @print_store_certs(%struct.bio_st* noundef %call3, %struct.x509_store_st* noundef %call60) #5
  br label %if.end62

if.end62:                                         ; preds = %sw.epilog.thread, %sw.epilog, %if.then55
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.X509_STORE_CTX_print_verify_cb, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 139, i8* noundef null) #6
  tail call void @ERR_add_error_mem_bio(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.bio_st* noundef %call3) #6
  %call63 = tail call i32 @BIO_free(%struct.bio_st* noundef %call3) #6
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %entry
  ret i32 %ok
}

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_get0_parent_ctx(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare %struct.x509_store_st* @X509_STORE_CTX_get0_store(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare i8* @X509_VERIFY_PARAM_get0_host(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @X509_VERIFY_PARAM_get0_email(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare i8* @X509_VERIFY_PARAM_get1_ip_asc(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_certs(%struct.bio_st* noundef %bio, %struct.stack_st_X509* noundef %certs) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %certs, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %certs) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call635 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp736 = icmp sgt i32 %call635, 0
  br i1 %cmp736, label %for.body, label %cleanup23

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0)) #6
  %0 = xor i32 %call3, -1
  %call3.lobit.not = lshr i32 %0, 31
  br label %cleanup23

for.body:                                         ; preds = %for.cond.preheader, %for.inc.critedge
  %i.037 = phi i32 [ %inc, %for.inc.critedge ], [ 0, %for.cond.preheader ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.037) #6
  %1 = bitcast i8* %call10 to %struct.x509_st*
  %cmp11.not = icmp eq i8* %call10, null
  br i1 %cmp11.not, label %for.inc.critedge, label %if.then13

if.then13:                                        ; preds = %for.body
  %call14 = tail call i32 @ossl_x509_print_ex_brief(%struct.bio_st* noundef %bio, %struct.x509_st* noundef nonnull %1, i64 noundef 0) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup23, label %if.end16

if.end16:                                         ; preds = %if.then13
  %call17 = tail call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef nonnull %1) #6
  %call18 = tail call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bio, i8* noundef null, %struct.stack_st_X509_EXTENSION* noundef %call17, i64 noundef 8192, i32 noundef 8) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup23, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %for.body, %if.end16
  %inc = add nuw nsw i32 %i.037, 1
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %cleanup23, !llvm.loop !35

cleanup23:                                        ; preds = %if.end16, %if.then13, %for.inc.critedge, %for.cond.preheader, %if.then
  %retval.2 = phi i32 [ %call3.lobit.not, %if.then ], [ 1, %for.cond.preheader ], [ 0, %if.end16 ], [ 0, %if.then13 ], [ 1, %for.inc.critedge ]
  ret i32 %retval.2
}

declare %struct.stack_st_X509* @X509_STORE_CTX_get0_untrusted(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_store_certs(%struct.bio_st* noundef %bio, %struct.x509_store_st* noundef %store) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef nonnull %store) #6
  %call1 = tail call fastcc i32 @print_certs(%struct.bio_st* noundef %bio, %struct.stack_st_X509* noundef %call) #5
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #6
  br label %return

if.else:                                          ; preds = %entry
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @ERR_add_error_mem_bio(i8* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!5, !9, i64 8}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !9, i64 160}
!21 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !10, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!27, !9, i64 368}
!27 = !{!"x509_st", !28, i64 0, !18, i64 136, !5, i64 152, !31, i64 176, !7, i64 192, !32, i64 200, !10, i64 216, !10, i64 224, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !7, i64 312, !9, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !9, i64 376}
!28 = !{!"x509_cinf_st", !9, i64 0, !5, i64 8, !18, i64 32, !9, i64 48, !29, i64 56, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !30, i64 112}
!29 = !{!"X509_val_st", !9, i64 0, !9, i64 8}
!30 = !{!"ASN1_ENCODING_st", !9, i64 0, !10, i64 8, !6, i64 16}
!31 = !{!"x509_sig_info_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!32 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!33 = !{!27, !9, i64 376}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
