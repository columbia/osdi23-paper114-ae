; ModuleID = 'crypto/x509/v3_purp.c'
source_filename = "crypto/x509/v3_purp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509_PURPOSE = type opaque
%struct.x509_purpose_st = type { i32, i32, i32, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)*, i8*, i8*, i8* }
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
%struct.asn1_object_st = type opaque
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
%struct.evp_md_st = type opaque
%struct.BASIC_CONSTRAINTS_st = type { i32, %struct.asn1_string_st* }
%struct.PROXY_CERT_INFO_EXTENSION_st = type { %struct.asn1_string_st*, %struct.PROXY_POLICY_st* }
%struct.PROXY_POLICY_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.X509_extension_st = type { %struct.asn1_object_st*, i32, %struct.asn1_string_st }
%struct.DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_purp.c\00", align 1
@__func__.X509_PURPOSE_set = private unnamed_addr constant [17 x i8] c"X509_PURPOSE_set\00", align 1
@xptable = internal unnamed_addr global %struct.stack_st_X509_PURPOSE* null, align 8
@xstandard = internal global [9 x %struct.x509_purpose_st] [%struct.x509_purpose_st { i32 1, i32 2, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_ssl_client, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 2, i32 3, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_ssl_server, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 3, i32 3, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_ns_ssl_server, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 4, i32 4, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_smime_sign, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 5, i32 4, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_smime_encrypt, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 6, i32 1, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_crl_sign, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 7, i32 0, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @no_check_purpose, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 8, i32 1, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_ocsp_helper, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* null }, %struct.x509_purpose_st { i32 9, i32 8, i32 0, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* @check_purpose_timestamp_sign, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null }], align 16
@__func__.X509_PURPOSE_add = private unnamed_addr constant [17 x i8] c"X509_PURPOSE_add\00", align 1
@X509_supported_extension.supported_nids = internal constant [15 x i32] [i32 71, i32 83, i32 85, i32 87, i32 89, i32 103, i32 126, i32 290, i32 291, i32 369, i32 401, i32 663, i32 666, i32 747, i32 748], align 16
@__func__.ossl_x509v3_cache_extensions = private unnamed_addr constant [29 x i8] c"ossl_x509v3_cache_extensions\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SSL client\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sslclient\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL server\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sslserver\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Netscape SSL server\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"nssslserver\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"S/MIME signing\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"smimesign\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"S/MIME encryption\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"smimeencrypt\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"CRL signing\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"crlsign\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Any Purpose\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"OCSP helper\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ocsphelper\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Time Stamp signing\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"timestampsign\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@__func__.setup_dp = private unnamed_addr constant [9 x i8] c"setup_dp\00", align 1
@switch.table.ossl_x509v3_cache_extensions = private unnamed_addr constant [9 x i32] [i32 262144, i32 65536, i32 65536, i32 524288, i32 65536, i32 65536, i32 65536, i32 65536, i32 131072], align 4

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef %id, i32 noundef %require_ca) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %x) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %id, -1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %id) #7
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call3) #7
  %check_purpose = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %call7, i64 0, i32 3
  %0 = load i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)*, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)** %check_purpose, align 8, !tbaa !4
  %call8 = tail call i32 %0(%struct.x509_purpose_st* noundef %call7, %struct.x509_st* noundef %x, i32 noundef %require_ca) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -1, %entry ], [ 1, %if.end ], [ -1, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %ex_cached = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 23
  %1 = load atomic i32, i32* %ex_cached acquire, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %2 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %2, 128
  %cmp = icmp eq i32 %and, 0
  br label %cleanup372

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 22
  %3 = load i8*, i8** %lock, align 8, !tbaa !20
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %3) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup372, label %if.end3

if.end3:                                          ; preds = %if.end
  %ex_flags4 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %4 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %and5 = and i32 %4, 256
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end3
  %5 = load i8*, i8** %lock, align 8, !tbaa !20
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #8
  %6 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %and11 = and i32 %6, 128
  %cmp12 = icmp eq i32 %and11, 0
  br label %cleanup372

if.end14:                                         ; preds = %if.end3
  %call15 = tail call %struct.evp_md_st* @EVP_sha1() #8
  %arraydecay = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 20, i64 0
  %call16 = tail call i32 @X509_digest(%struct.x509_st* noundef nonnull %x, %struct.evp_md_st* noundef %call15, i8* noundef nonnull %arraydecay, i32* noundef null) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %7 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or = or i32 %7, 1048576
  store i32 %or, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %call21 = tail call i32 @ERR_set_mark() #8
  %call22 = tail call i64 @X509_get_version(%struct.x509_st* noundef nonnull %x) #8
  %cmp23 = icmp eq i64 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  %8 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or27 = or i32 %8, 64
  store i32 %or27, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end20
  %ex_pathlen = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 6
  store i64 -1, i64* %ex_pathlen, align 8, !tbaa !21
  %call29 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 87, i32* noundef nonnull %i, i32* noundef null) #8
  %9 = bitcast i8* %call29 to %struct.BASIC_CONSTRAINTS_st*
  %cmp30.not = icmp eq i8* %call29, null
  br i1 %cmp30.not, label %if.else54, label %if.then32

if.then32:                                        ; preds = %if.end28
  %ca = bitcast i8* %call29 to i32*
  %10 = load i32, i32* %ca, align 8, !tbaa !22
  %tobool33.not = icmp eq i32 %10, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.then32
  %11 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or36 = or i32 %11, 16
  store i32 %or36, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then32
  %pathlen = getelementptr inbounds i8, i8* %call29, i64 8
  %12 = bitcast i8* %pathlen to %struct.asn1_string_st**
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %12, align 8, !tbaa !24
  %cmp38.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %cmp38.not, label %if.end51, label %if.then40

if.then40:                                        ; preds = %if.end37
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 1
  %14 = load i32, i32* %type, align 4, !tbaa !25
  %cmp42 = icmp eq i32 %14, 258
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then40
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 441, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_x509v3_cache_extensions, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 168, i8* noundef null) #8
  %15 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or46 = or i32 %15, 128
  store i32 %or46, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end51

if.else:                                          ; preds = %if.then40
  %call48 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %13) #8
  store i64 %call48, i64* %ex_pathlen, align 8, !tbaa !21
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.else, %if.end37
  call void @BASIC_CONSTRAINTS_free(%struct.BASIC_CONSTRAINTS_st* noundef nonnull %9) #8
  br label %if.end61.sink.split

if.else54:                                        ; preds = %if.end28
  %16 = load i32, i32* %i, align 4, !tbaa !26
  %cmp55.not = icmp eq i32 %16, -1
  br i1 %cmp55.not, label %if.end61, label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %if.else54, %if.end51
  %.sink527 = phi i32 [ 1, %if.end51 ], [ 128, %if.else54 ]
  %17 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or59 = or i32 %17, %.sink527
  store i32 %or59, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.else54
  %call62 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 663, i32* noundef nonnull %i, i32* noundef null) #8
  %18 = bitcast i8* %call62 to %struct.PROXY_CERT_INFO_EXTENSION_st*
  %cmp63.not = icmp eq i8* %call62, null
  br i1 %cmp63.not, label %if.else90, label %if.then65

if.then65:                                        ; preds = %if.end61
  %19 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %and67 = and i32 %19, 16
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %if.then76

lor.lhs.false:                                    ; preds = %if.then65
  %call69 = call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef nonnull %x, i32 noundef 85, i32 noundef -1) #8
  %cmp70 = icmp sgt i32 %call69, -1
  br i1 %cmp70, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false
  %call73 = call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef nonnull %x, i32 noundef 86, i32 noundef -1) #8
  %cmp74 = icmp sgt i32 %call73, -1
  br i1 %cmp74, label %if.then76, label %if.end79

if.then76:                                        ; preds = %lor.lhs.false72, %lor.lhs.false, %if.then65
  %20 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or78 = or i32 %20, 128
  store i32 %or78, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %lor.lhs.false72
  %pcPathLengthConstraint = bitcast i8* %call62 to %struct.asn1_string_st**
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pcPathLengthConstraint, align 8, !tbaa !27
  %cmp80.not = icmp eq %struct.asn1_string_st* %21, null
  br i1 %cmp80.not, label %if.end87, label %if.then82

if.then82:                                        ; preds = %if.end79
  %call84 = call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %21) #8
  br label %if.end87

if.end87:                                         ; preds = %if.end79, %if.then82
  %call84.sink = phi i64 [ %call84, %if.then82 ], [ -1, %if.end79 ]
  %22 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 7
  store i64 %call84.sink, i64* %22, align 8
  call void @PROXY_CERT_INFO_EXTENSION_free(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef nonnull %18) #8
  br label %if.end97.sink.split

if.else90:                                        ; preds = %if.end61
  %23 = load i32, i32* %i, align 4, !tbaa !26
  %cmp91.not = icmp eq i32 %23, -1
  br i1 %cmp91.not, label %if.end97, label %if.end97.sink.split

if.end97.sink.split:                              ; preds = %if.else90, %if.end87
  %.sink529 = phi i32 [ 1024, %if.end87 ], [ 128, %if.else90 ]
  %24 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or95 = or i32 %24, %.sink529
  store i32 %or95, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end97

if.end97:                                         ; preds = %if.end97.sink.split, %if.else90
  %call98 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 83, i32* noundef nonnull %i, i32* noundef null) #8
  %25 = bitcast i8* %call98 to %struct.asn1_string_st*
  %cmp99.not = icmp eq i8* %call98, null
  br i1 %cmp99.not, label %if.else127, label %if.then101

if.then101:                                       ; preds = %if.end97
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  store i32 0, i32* %ex_kusage, align 4, !tbaa !29
  %length = bitcast i8* %call98 to i32*
  %26 = load i32, i32* %length, align 8, !tbaa !30
  %cmp102 = icmp sgt i32 %26, 0
  br i1 %cmp102, label %if.then104, label %if.end117

if.then104:                                       ; preds = %if.then101
  %data = getelementptr inbounds i8, i8* %call98, i64 8
  %27 = bitcast i8* %data to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !31
  %29 = load i8, i8* %28, align 1, !tbaa !32
  %conv105 = zext i8 %29 to i32
  store i32 %conv105, i32* %ex_kusage, align 4, !tbaa !29
  %cmp108.not = icmp eq i32 %26, 1
  br i1 %cmp108.not, label %if.end117, label %if.then110

if.then110:                                       ; preds = %if.then104
  %arrayidx112 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %arrayidx112, align 1, !tbaa !32
  %conv113 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv113, 8
  %or115 = or i32 %shl, %conv105
  store i32 %or115, i32* %ex_kusage, align 4, !tbaa !29
  br label %if.end117

if.end117:                                        ; preds = %if.then104, %if.then110, %if.then101
  %31 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or119 = or i32 %31, 2
  store i32 %or119, i32* %ex_flags4, align 8, !tbaa !10
  call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %25) #8
  %32 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %cmp121 = icmp eq i32 %32, 0
  br i1 %cmp121, label %if.then123, label %if.end134

if.then123:                                       ; preds = %if.end117
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_x509v3_cache_extensions, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 169, i8* noundef null) #8
  br label %if.end134.sink.split

if.else127:                                       ; preds = %if.end97
  %33 = load i32, i32* %i, align 4, !tbaa !26
  %cmp128.not = icmp eq i32 %33, -1
  br i1 %cmp128.not, label %if.end134, label %if.end134.sink.split

if.end134.sink.split:                             ; preds = %if.else127, %if.then123
  %34 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or132 = or i32 %34, 128
  store i32 %or132, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %if.else127, %if.end117
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  store i32 0, i32* %ex_xkusage, align 8, !tbaa !33
  %call135 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 126, i32* noundef nonnull %i, i32* noundef null) #8
  %35 = bitcast i8* %call135 to %struct.stack_st_ASN1_OBJECT*
  %cmp136.not = icmp eq i8* %call135, null
  br i1 %cmp136.not, label %if.else176, label %if.then138

if.then138:                                       ; preds = %if.end134
  %36 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or140 = or i32 %36, 4
  store i32 %or140, i32* %ex_flags4, align 8, !tbaa !10
  %call141 = call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %35) #7
  store i32 0, i32* %i, align 4, !tbaa !26
  %call142522 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call141) #8
  %cmp143523 = icmp sgt i32 %call142522, 0
  br i1 %cmp143523, label %for.body, label %for.end

for.body:                                         ; preds = %if.then138, %for.inc
  %37 = load i32, i32* %i, align 4, !tbaa !26
  %call146 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call141, i32 noundef %37) #8
  %38 = bitcast i8* %call146 to %struct.asn1_object_st*
  %call147 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %38) #8
  switch i32 %call147, label %for.inc [
    i32 129, label %for.inc.sink.split
    i32 130, label %sw.bb150
    i32 132, label %sw.bb153
    i32 131, label %sw.bb156
    i32 137, label %sw.bb159
    i32 139, label %sw.bb159
    i32 180, label %sw.bb162
    i32 133, label %sw.bb165
    i32 297, label %sw.bb168
    i32 910, label %sw.bb171
  ]

sw.bb150:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb153:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb156:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb159:                                         ; preds = %for.body, %for.body
  br label %for.inc.sink.split

sw.bb162:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb165:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb168:                                         ; preds = %for.body
  br label %for.inc.sink.split

sw.bb171:                                         ; preds = %for.body
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %sw.bb171, %sw.bb168, %sw.bb165, %sw.bb162, %sw.bb159, %sw.bb156, %sw.bb153, %sw.bb150
  %.sink532 = phi i32 [ 2, %sw.bb150 ], [ 4, %sw.bb153 ], [ 8, %sw.bb156 ], [ 16, %sw.bb159 ], [ 32, %sw.bb162 ], [ 64, %sw.bb165 ], [ 128, %sw.bb168 ], [ 256, %sw.bb171 ], [ 1, %for.body ]
  %39 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  %or149 = or i32 %39, %.sink532
  store i32 %or149, i32* %ex_xkusage, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  %call142 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call141) #8
  %cmp143 = icmp slt i32 %inc, %call142
  br i1 %cmp143, label %for.body, label %for.end, !llvm.loop !34

for.end:                                          ; preds = %for.inc, %if.then138
  %call174 = call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %35) #7
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call174, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #8
  br label %if.end183

if.else176:                                       ; preds = %if.end134
  %41 = load i32, i32* %i, align 4, !tbaa !26
  %cmp177.not = icmp eq i32 %41, -1
  br i1 %cmp177.not, label %if.end183, label %if.then179

if.then179:                                       ; preds = %if.else176
  %42 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or181 = or i32 %42, 128
  store i32 %or181, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end183

if.end183:                                        ; preds = %if.else176, %if.then179, %for.end
  %call184 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 71, i32* noundef nonnull %i, i32* noundef null) #8
  %43 = bitcast i8* %call184 to %struct.asn1_string_st*
  %cmp185.not = icmp eq i8* %call184, null
  br i1 %cmp185.not, label %if.else200, label %if.then187

if.then187:                                       ; preds = %if.end183
  %length188 = bitcast i8* %call184 to i32*
  %44 = load i32, i32* %length188, align 8, !tbaa !30
  %cmp189 = icmp sgt i32 %44, 0
  br i1 %cmp189, label %if.then191, label %if.end197

if.then191:                                       ; preds = %if.then187
  %data192 = getelementptr inbounds i8, i8* %call184, i64 8
  %45 = bitcast i8* %data192 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !31
  %47 = load i8, i8* %46, align 1, !tbaa !32
  %conv194 = zext i8 %47 to i32
  br label %if.end197

if.end197:                                        ; preds = %if.then187, %if.then191
  %.sink = phi i32 [ %conv194, %if.then191 ], [ 0, %if.then187 ]
  %48 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  store i32 %.sink, i32* %48, align 4
  %49 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or199 = or i32 %49, 8
  store i32 %or199, i32* %ex_flags4, align 8, !tbaa !10
  call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %43) #8
  br label %if.end207

if.else200:                                       ; preds = %if.end183
  %50 = load i32, i32* %i, align 4, !tbaa !26
  %cmp201.not = icmp eq i32 %50, -1
  br i1 %cmp201.not, label %if.end207, label %if.then203

if.then203:                                       ; preds = %if.else200
  %51 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or205 = or i32 %51, 128
  store i32 %or205, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end207

if.end207:                                        ; preds = %if.else200, %if.then203, %if.end197
  %call208 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 82, i32* noundef nonnull %i, i32* noundef null) #8
  %skid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 12
  %52 = bitcast %struct.asn1_string_st** %skid to i8**
  store i8* %call208, i8** %52, align 8, !tbaa !36
  %cmp210 = icmp eq i8* %call208, null
  %53 = load i32, i32* %i, align 4
  %cmp212 = icmp ne i32 %53, -1
  %or.cond = select i1 %cmp210, i1 %cmp212, i1 false
  br i1 %or.cond, label %if.then214, label %if.end217

if.then214:                                       ; preds = %if.end207
  %54 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or216 = or i32 %54, 128
  store i32 %or216, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %if.end207
  %call218 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 90, i32* noundef nonnull %i, i32* noundef null) #8
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 13
  %55 = bitcast %struct.AUTHORITY_KEYID_st** %akid to i8**
  store i8* %call218, i8** %55, align 8, !tbaa !37
  %cmp220 = icmp eq i8* %call218, null
  %56 = load i32, i32* %i, align 4
  %cmp223 = icmp ne i32 %56, -1
  %or.cond379 = select i1 %cmp220, i1 %cmp223, i1 false
  br i1 %or.cond379, label %if.then225, label %if.end228

if.then225:                                       ; preds = %if.end217
  %57 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or227 = or i32 %57, 128
  store i32 %or227, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.end217
  %call229 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %x) #8
  %call230 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %x) #8
  %call231 = call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call229, %struct.X509_name_st* noundef %call230) #8
  %cmp232 = icmp eq i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %if.end250

if.then234:                                       ; preds = %if.end228
  %58 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or236 = or i32 %58, 32
  store i32 %or236, i32* %ex_flags4, align 8, !tbaa !10
  %59 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !37
  %call238 = call i32 @X509_check_akid(%struct.x509_st* noundef nonnull %x, %struct.AUTHORITY_KEYID_st* noundef %59) #7
  %cmp239 = icmp eq i32 %call238, 0
  br i1 %cmp239, label %land.lhs.true241, label %if.end250

land.lhs.true241:                                 ; preds = %if.then234
  %call242 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %x) #8
  %call243 = call fastcc i32 @check_sig_alg_match(%struct.evp_pkey_st* noundef %call242, %struct.x509_st* noundef nonnull %x) #7
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.end250

if.then246:                                       ; preds = %land.lhs.true241
  %60 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or248 = or i32 %60, 8192
  store i32 %or248, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end250

if.end250:                                        ; preds = %if.then234, %land.lhs.true241, %if.then246, %if.end228
  %call251 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 85, i32* noundef nonnull %i, i32* noundef null) #8
  %altname = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 16
  %61 = bitcast %struct.stack_st_GENERAL_NAME** %altname to i8**
  store i8* %call251, i8** %61, align 8, !tbaa !38
  %cmp253 = icmp eq i8* %call251, null
  %62 = load i32, i32* %i, align 4
  %cmp256 = icmp ne i32 %62, -1
  %or.cond380 = select i1 %cmp253, i1 %cmp256, i1 false
  br i1 %or.cond380, label %if.then258, label %if.end261

if.then258:                                       ; preds = %if.end250
  %63 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or260 = or i32 %63, 128
  store i32 %or260, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %if.end250
  %call262 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 666, i32* noundef nonnull %i, i32* noundef null) #8
  %nc = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 17
  %64 = bitcast %struct.NAME_CONSTRAINTS_st** %nc to i8**
  store i8* %call262, i8** %64, align 8, !tbaa !39
  %cmp264 = icmp eq i8* %call262, null
  %65 = load i32, i32* %i, align 4
  %cmp267 = icmp ne i32 %65, -1
  %or.cond381 = select i1 %cmp264, i1 %cmp267, i1 false
  br i1 %or.cond381, label %if.then269, label %if.end272

if.then269:                                       ; preds = %if.end261
  %66 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or271 = or i32 %66, 128
  store i32 %or271, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end261
  %call273 = call fastcc i32 @setup_crldp(%struct.x509_st* noundef nonnull %x) #7
  %cmp274 = icmp eq i32 %call273, 0
  br i1 %cmp274, label %if.then276, label %if.else279

if.then276:                                       ; preds = %if.end272
  %67 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or278 = or i32 %67, 128
  store i32 %or278, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end284

if.else279:                                       ; preds = %if.end272
  %cmp280 = icmp slt i32 %call273, 0
  br i1 %cmp280, label %err, label %if.end284

if.end284:                                        ; preds = %if.else279, %if.then276
  %call285 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 290, i32* noundef nonnull %i, i32* noundef null) #8
  %rfc3779_addr = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 18
  %68 = bitcast %struct.stack_st_IPAddressFamily** %rfc3779_addr to i8**
  store i8* %call285, i8** %68, align 8, !tbaa !40
  %cmp287 = icmp eq i8* %call285, null
  %69 = load i32, i32* %i, align 4
  %cmp290 = icmp ne i32 %69, -1
  %or.cond382 = select i1 %cmp287, i1 %cmp290, i1 false
  br i1 %or.cond382, label %if.then292, label %if.end295

if.then292:                                       ; preds = %if.end284
  %70 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or294 = or i32 %70, 128
  store i32 %or294, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end295

if.end295:                                        ; preds = %if.then292, %if.end284
  %call296 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 291, i32* noundef nonnull %i, i32* noundef null) #8
  %rfc3779_asid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 19
  %71 = bitcast %struct.ASIdentifiers_st** %rfc3779_asid to i8**
  store i8* %call296, i8** %71, align 8, !tbaa !41
  %cmp298 = icmp eq i8* %call296, null
  %72 = load i32, i32* %i, align 4
  %cmp301 = icmp ne i32 %72, -1
  %or.cond383 = select i1 %cmp298, i1 %cmp301, i1 false
  br i1 %or.cond383, label %if.then303, label %if.end306

if.then303:                                       ; preds = %if.end295
  %73 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or305 = or i32 %73, 128
  store i32 %or305, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end306

if.end306:                                        ; preds = %if.then303, %if.end295
  store i32 0, i32* %i, align 4, !tbaa !26
  %call308524 = call i32 @X509_get_ext_count(%struct.x509_st* noundef nonnull %x) #8
  %cmp309525 = icmp sgt i32 %call308524, 0
  br i1 %cmp309525, label %for.body311, label %for.end348

for.body311:                                      ; preds = %if.end306, %for.inc346
  %74 = load i32, i32* %i, align 4, !tbaa !26
  %call312 = call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef %x, i32 noundef %74) #8
  %call313 = call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %call312) #8
  %call314 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call313) #8
  %cmp315 = icmp eq i32 %call314, 857
  br i1 %cmp315, label %if.then317, label %if.end320

if.then317:                                       ; preds = %for.body311
  %75 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or319 = or i32 %75, 4096
  store i32 %or319, i32* %ex_flags4, align 8, !tbaa !10
  br label %if.end320

if.end320:                                        ; preds = %if.then317, %for.body311
  %call321 = call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %call312) #8
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %for.inc346, label %if.end324

if.end324:                                        ; preds = %if.end320
  %call325 = call i32 @X509_supported_extension(%struct.X509_extension_st* noundef %call312) #7
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %cleanup, label %if.end330

if.end330:                                        ; preds = %if.end324
  %switch.tableidx = add i32 %call314, -82
  %76 = icmp ult i32 %switch.tableidx, 9
  br i1 %76, label %switch.hole_check, label %for.inc346

cleanup:                                          ; preds = %if.end324
  %77 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or329 = or i32 %77, 512
  store i32 %or329, i32* %ex_flags4, align 8, !tbaa !10
  br label %for.end348

switch.hole_check:                                ; preds = %if.end330
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 297, %switch.maskindex
  %78 = and i16 %switch.shifted, 1
  %switch.lobit.not = icmp eq i16 %78, 0
  br i1 %switch.lobit.not, label %for.inc346, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %79 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [9 x i32], [9 x i32]* @switch.table.ossl_x509v3_cache_extensions, i64 0, i64 %79
  %switch.load = load i32, i32* %switch.gep, align 4
  %80 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or342 = or i32 %80, %switch.load
  store i32 %or342, i32* %ex_flags4, align 8, !tbaa !10
  br label %for.inc346

for.inc346:                                       ; preds = %switch.hole_check, %if.end330, %switch.lookup, %if.end320
  %81 = load i32, i32* %i, align 4, !tbaa !26
  %inc347 = add nsw i32 %81, 1
  store i32 %inc347, i32* %i, align 4, !tbaa !26
  %call308 = call i32 @X509_get_ext_count(%struct.x509_st* noundef %x) #8
  %cmp309 = icmp slt i32 %inc347, %call308
  br i1 %cmp309, label %for.body311, label %for.end348, !llvm.loop !42

for.end348:                                       ; preds = %for.inc346, %if.end306, %cleanup
  %call349 = call i32 @ossl_x509_init_sig_info(%struct.x509_st* noundef %x) #8
  %82 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or351 = or i32 %82, 256
  store i32 %or351, i32* %ex_flags4, align 8, !tbaa !10
  store atomic i32 1, i32* %ex_cached release, align 8
  %call353 = call i32 @ERR_pop_to_mark() #8
  %83 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %and355 = and i32 %83, 1048704
  %cmp356 = icmp eq i32 %and355, 0
  br i1 %cmp356, label %if.then358, label %if.end361

if.then358:                                       ; preds = %for.end348
  %84 = load i8*, i8** %lock, align 8, !tbaa !20
  %call360 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %84) #8
  br label %cleanup372

if.end361:                                        ; preds = %for.end348
  %and363 = and i32 %83, 128
  %cmp364.not = icmp eq i32 %and363, 0
  br i1 %cmp364.not, label %err, label %if.then366

if.then366:                                       ; preds = %if.end361
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_x509v3_cache_extensions, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 158, i8* noundef null) #8
  br label %err

err:                                              ; preds = %if.end361, %if.then366, %if.else279
  %85 = load i32, i32* %ex_flags4, align 8, !tbaa !10
  %or369 = or i32 %85, 256
  store i32 %or369, i32* %ex_flags4, align 8, !tbaa !10
  %86 = load i8*, i8** %lock, align 8, !tbaa !20
  %call371 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %86) #8
  br label %cleanup372

cleanup372:                                       ; preds = %if.end, %err, %if.then358, %if.then7, %if.then
  %retval.0.shrunk = phi i1 [ %cmp, %if.then ], [ %cmp12, %if.then7 ], [ true, %if.then358 ], [ false, %err ], [ false, %if.end ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PURPOSE_get_by_id(i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.x509_purpose_st, align 8
  %0 = bitcast %struct.x509_purpose_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9
  %1 = add i32 %purpose, -1
  %2 = icmp ult i32 %1, 9
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load %struct.stack_st_X509_PURPOSE*, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  %cmp2 = icmp eq %struct.stack_st_X509_PURPOSE* %3, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %purpose5 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %tmp, i64 0, i32 0
  store i32 %purpose, i32* %purpose5, align 8, !tbaa !44
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef nonnull %3) #7
  %call7 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef nonnull %0) #8
  %add = add i32 %call7, 9
  %cmp8.inv = icmp sgt i32 %call7, -1
  %spec.select = select i1 %cmp8.inv, i32 %add, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ %spec.select, %if.end4 ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %idx, 9
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %idx.ext9 = zext i32 %idx to i64
  %add.ptr = getelementptr inbounds [9 x %struct.x509_purpose_st], [9 x %struct.x509_purpose_st]* @xstandard, i64 0, i64 %idx.ext9
  br label %return

if.end3:                                          ; preds = %if.end
  %0 = load %struct.stack_st_X509_PURPOSE*, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef %0) #7
  %sub = add nsw i32 %idx, -9
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #8
  %1 = bitcast i8* %call5 to %struct.x509_purpose_st*
  br label %return

return:                                           ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi %struct.x509_purpose_st* [ %add.ptr, %if.then2 ], [ %1, %if.end3 ], [ null, %entry ]
  ret %struct.x509_purpose_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PURPOSE_set(i32* nocapture noundef writeonly %p, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %purpose) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PURPOSE_set, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 146, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  store i32 %purpose, i32* %p, align 4, !tbaa !26
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PURPOSE_get_count() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_PURPOSE*, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  %tobool.not = icmp eq %struct.stack_st_X509_PURPOSE* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef nonnull %0) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %add = add i32 %call1, 9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %add, %if.end ], [ 9, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_PURPOSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PURPOSE_get_by_sname(i8* noundef readonly %sname) local_unnamed_addr #0 {
entry:
  %call11 = tail call i32 @X509_PURPOSE_get_count() #7
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.013 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call1 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %i.013) #7
  %sname2 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %call1, i64 0, i32 5
  %0 = load i8*, i8** %sname2, align 8, !tbaa !45
  %call3 = tail call i32 @strcmp(i8* noundef %0, i8* noundef %sname) #10
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %call = tail call i32 @X509_PURPOSE_get_count() #7
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !46

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.inc ], [ %i.013, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_PURPOSE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_PURPOSE_add(i32 noundef %id, i32 noundef %trust, i32 noundef %flags, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* noundef %ck, i8* noundef %name, i8* noundef %sname, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, -4
  %call = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %id) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 168) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PURPOSE_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %0 = bitcast i8* %call1 to %struct.x509_purpose_st*
  %flags4 = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %flags4 to i32*
  store i32 1, i32* %1, align 8, !tbaa !47
  br label %if.end6

if.else:                                          ; preds = %entry
  %call5 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call) #7
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %ptmp.0 = phi %struct.x509_purpose_st* [ %0, %if.end ], [ %call5, %if.else ]
  %flags7 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 2
  %2 = load i32, i32* %flags7, align 8, !tbaa !47
  %and8 = and i32 %2, 2
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  %name10 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 4
  %3 = load i8*, i8** %name10, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 178) #8
  %sname11 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 5
  %4 = load i8*, i8** %sname11, align 8, !tbaa !45
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6
  %call13 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #8
  %name14 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 4
  store i8* %call13, i8** %name14, align 8, !tbaa !48
  %call15 = tail call i8* @CRYPTO_strdup(i8* noundef %sname, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 183) #8
  %sname16 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 5
  store i8* %call15, i8** %sname16, align 8, !tbaa !45
  %5 = load i8*, i8** %name14, align 8, !tbaa !48
  %cmp18 = icmp eq i8* %5, null
  %cmp20 = icmp eq i8* %call15, null
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond, label %err, label %if.end22

if.end22:                                         ; preds = %if.end12
  %6 = load i32, i32* %flags7, align 8, !tbaa !47
  %and24 = and i32 %6, 1
  %or = or i32 %and, %and24
  %or26 = or i32 %or, 2
  store i32 %or26, i32* %flags7, align 8, !tbaa !47
  %purpose = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 0
  store i32 %id, i32* %purpose, align 8, !tbaa !44
  %trust27 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 1
  store i32 %trust, i32* %trust27, align 4, !tbaa !49
  %check_purpose = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 3
  store i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)* %ck, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)** %check_purpose, align 8, !tbaa !4
  %usr_data = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 6
  store i8* %arg, i8** %usr_data, align 8, !tbaa !50
  br i1 %cmp, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end22
  %7 = load %struct.stack_st_X509_PURPOSE*, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  %cmp30 = icmp eq %struct.stack_st_X509_PURPOSE* %7, null
  br i1 %cmp30, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.then29
  %call32 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.x509_purpose_st**, %struct.x509_purpose_st**)* @xp_cmp to i32 (i8*, i8*)*)) #8
  store %struct.stack_st* %call32, %struct.stack_st** bitcast (%struct.stack_st_X509_PURPOSE** @xptable to %struct.stack_st**), align 8, !tbaa !43
  %cmp33 = icmp eq %struct.stack_st* %call32, null
  %8 = bitcast %struct.stack_st* %call32 to %struct.stack_st_X509_PURPOSE*
  br i1 %cmp33, label %if.then44.sink.split, label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.then29
  %9 = phi %struct.stack_st_X509_PURPOSE* [ %8, %land.lhs.true ], [ %7, %if.then29 ]
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef %9) #7
  %10 = bitcast %struct.x509_purpose_st* %ptmp.0 to i8*
  %call38 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call36, i8* noundef %10) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then44.sink.split, label %cleanup

err:                                              ; preds = %if.end12
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PURPOSE_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br i1 %cmp, label %if.then44, label %cleanup

if.then44.sink.split:                             ; preds = %if.end35, %land.lhs.true
  %.sink = phi i32 [ 202, %land.lhs.true ], [ 206, %if.end35 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_PURPOSE_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #8
  br label %if.then44

if.then44:                                        ; preds = %if.then44.sink.split, %err
  %11 = load i8*, i8** %name14, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 213) #8
  %12 = load i8*, i8** %sname16, align 8, !tbaa !45
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 214) #8
  %13 = bitcast %struct.x509_purpose_st* %ptmp.0 to i8*
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 215) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then44, %if.end22, %if.end35, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end35 ], [ 1, %if.end22 ], [ 0, %if.then44 ], [ 0, %err ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @xp_cmp(%struct.x509_purpose_st** nocapture noundef readonly %a, %struct.x509_purpose_st** nocapture noundef readonly %b) #5 {
entry:
  %0 = load %struct.x509_purpose_st*, %struct.x509_purpose_st** %a, align 8, !tbaa !43
  %purpose = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %0, i64 0, i32 0
  %1 = load i32, i32* %purpose, align 8, !tbaa !44
  %2 = load %struct.x509_purpose_st*, %struct.x509_purpose_st** %b, align 8, !tbaa !43
  %purpose1 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %2, i64 0, i32 0
  %3 = load i32, i32* %purpose1, align 8, !tbaa !44
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_PURPOSE_cleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_PURPOSE*, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_PURPOSE_sk_type(%struct.stack_st_X509_PURPOSE* noundef %0) #7
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_purpose_st*)* @xptable_free to void (i8*)*)) #8
  store %struct.stack_st_X509_PURPOSE* null, %struct.stack_st_X509_PURPOSE** @xptable, align 8, !tbaa !43
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @xptable_free(%struct.x509_purpose_st* noundef %p) #0 {
entry:
  %cmp = icmp eq %struct.x509_purpose_st* %p, null
  br i1 %cmp, label %if.end7, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %p, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8, !tbaa !47
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %and3 = and i32 %0, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then1
  %name = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %p, i64 0, i32 4
  %1 = load i8*, i8** %name, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 226) #8
  %sname = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %p, i64 0, i32 5
  %2 = load i8*, i8** %sname, align 8, !tbaa !45
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 227) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then1
  %3 = bitcast %struct.x509_purpose_st* %p to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 229) #8
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.end6, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_PURPOSE_get_id(%struct.x509_purpose_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %purpose = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %xp, i64 0, i32 0
  %0 = load i32, i32* %purpose, align 8, !tbaa !44
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_PURPOSE_get0_name(%struct.x509_purpose_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %xp, i64 0, i32 4
  %0 = load i8*, i8** %name, align 8, !tbaa !48
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_PURPOSE_get0_sname(%struct.x509_purpose_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %sname = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %xp, i64 0, i32 5
  %0 = load i8*, i8** %sname, align 8, !tbaa !45
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_PURPOSE_get_trust(%struct.x509_purpose_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %trust = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %xp, i64 0, i32 1
  %0 = load i32, i32* %trust, align 4, !tbaa !49
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_supported_extension(%struct.X509_extension_st* noundef %ex) local_unnamed_addr #0 {
entry:
  %ex_nid = alloca i32, align 4
  %0 = bitcast i32* %ex_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = tail call %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef %ex) #8
  %call1 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call) #8
  store i32 %call1, i32* %ex_nid, align 4, !tbaa !26
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32* @OBJ_bsearch_nid(i32* noundef nonnull %ex_nid) #7
  %tobool.not = icmp ne i32* %call2, null
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_EXTENSION_get_object(%struct.X509_extension_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @OBJ_bsearch_nid(i32* noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([15 x i32]* @X509_supported_extension.supported_nids to i8*), i32 noundef 15, i32 noundef 4, i32 (i8*, i8*)* noundef nonnull @nid_cmp_BSEARCH_CMP_FN) #8
  %1 = bitcast i8* %call to i32*
  ret i32* %1
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

declare i32 @X509_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i64 @X509_get_version(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @BASIC_CONSTRAINTS_free(%struct.BASIC_CONSTRAINTS_st* noundef) local_unnamed_addr #2

declare i32 @X509_get_ext_by_NID(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @PROXY_CERT_INFO_EXTENSION_free(%struct.PROXY_CERT_INFO_EXTENSION_st* noundef) local_unnamed_addr #2

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #2

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_akid(%struct.x509_st* noundef %issuer, %struct.AUTHORITY_KEYID_st* noundef readonly %akid) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.AUTHORITY_KEYID_st* %akid, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %keyid = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akid, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !51
  %tobool.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %skid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer, i64 0, i32 12
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %skid, align 8, !tbaa !36
  %tobool1.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool1.not, label %if.end7, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %0, %struct.asn1_string_st* noundef nonnull %1) #8
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %serial = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akid, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !53
  %tobool8.not = icmp eq %struct.asn1_string_st* %2, null
  br i1 %tobool8.not, label %if.end15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %call10 = tail call %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef %issuer) #8
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !53
  %call12 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %call10, %struct.asn1_string_st* noundef %3) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %return

if.end15:                                         ; preds = %land.lhs.true9, %if.end7
  %issuer16 = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %akid, i64 0, i32 1
  %4 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer16, align 8, !tbaa !54
  %tobool17.not = icmp eq %struct.stack_st_GENERAL_NAME* %4, null
  br i1 %tobool17.not, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %4) #7
  %call2163 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call20) #8
  %cmp2264 = icmp sgt i32 %call2163, 0
  br i1 %cmp2264, label %for.body, label %cleanup.thread

for.cond:                                         ; preds = %for.body
  %call21 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call20) #8
  %cmp22 = icmp slt i32 %inc, %call21
  br i1 %cmp22, label %for.body, label %cleanup.thread, !llvm.loop !55

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.065 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call24 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call20, i32 noundef %i.065) #8
  %type = bitcast i8* %call24 to i32*
  %5 = load i32, i32* %type, align 8, !tbaa !56
  %cmp25 = icmp eq i32 %5, 4
  %inc = add nuw nsw i32 %i.065, 1
  br i1 %cmp25, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call24, i64 8
  %dirn = bitcast i8* %d to %struct.X509_name_st**
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %dirn, align 8, !tbaa !32
  %cmp28.not = icmp eq %struct.X509_name_st* %6, null
  br i1 %cmp28.not, label %cleanup.thread, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %for.end
  %call30 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %issuer) #8
  %call31 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %6, %struct.X509_name_st* noundef %call30) #8
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %cleanup.thread, label %return

cleanup.thread:                                   ; preds = %for.cond, %for.cond.preheader, %for.end, %land.lhs.true29
  br label %return

return:                                           ; preds = %if.end15, %cleanup.thread, %land.lhs.true29, %land.lhs.true9, %land.lhs.true2, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 30, %land.lhs.true2 ], [ 31, %land.lhs.true9 ], [ 31, %land.lhs.true29 ], [ 0, %cleanup.thread ], [ 0, %if.end15 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_sig_alg_match(%struct.evp_pkey_st* noundef %issuer_key, %struct.x509_st* nocapture noundef readonly %subject) unnamed_addr #0 {
entry:
  %subj_sig_nid = alloca i32, align 4
  %0 = bitcast i32* %subj_sig_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %cmp = icmp eq %struct.evp_pkey_st* %issuer_key, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.x509_st, %struct.x509_st* %subject, i64 0, i32 0, i32 2, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !58
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #8
  %call1 = call i32 @OBJ_find_sigid_algs(i32 noundef %call, i32* noundef null, i32* noundef nonnull %subj_sig_nid) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %subj_sig_nid, align 4, !tbaa !26
  %call5 = call i8* @OBJ_nid2sn(i32 noundef %2) #8
  %call6 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %issuer_key, i8* noundef %call5) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %issuer_key, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #8
  %tobool8 = icmp ne i32 %call7, 0
  %3 = load i32, i32* %subj_sig_nid, align 4
  %cmp9 = icmp eq i32 %3, 912
  %or.cond = select i1 %tobool8, i1 %cmp9, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 77
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 24, %entry ], [ 76, %if.end ], [ 0, %if.end4 ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_crldp(%struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 103, i32* noundef nonnull %i, i32* noundef null) #8
  %crldp = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 15
  %1 = bitcast %struct.stack_st_DIST_POINT** %crldp to i8**
  store i8* %call, i8** %1, align 8, !tbaa !59
  %cmp = icmp eq i8* %call, null
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %2, -1
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %cleanup14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = bitcast i8* %call to %struct.stack_st_DIST_POINT*
  store i32 0, i32* %i, align 4, !tbaa !26
  %call422 = call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %3) #7
  %call523 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call422) #8
  %cmp624 = icmp sgt i32 %call523, 0
  br i1 %cmp624, label %for.body, label %cleanup14

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %4 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !59
  %call8 = call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %4) #7
  %5 = load i32, i32* %i, align 4, !tbaa !26
  %call9 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %5) #8
  %6 = bitcast i8* %call9 to %struct.DIST_POINT_st*
  %call10 = call fastcc i32 @setup_dp(%struct.x509_st* noundef nonnull %x, %struct.DIST_POINT_st* noundef %6) #7
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %cleanup14, label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  %8 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !59
  %call4 = call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %8) #7
  %call5 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #8
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %cleanup14, !llvm.loop !60

cleanup14:                                        ; preds = %for.body, %for.inc, %for.cond.preheader, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ %call10, %for.body ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.2
}

declare i32 @X509_get_ext_count(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_init_sig_info(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_set_proxy_flag(%struct.x509_st* nocapture noundef %x) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 22
  %0 = load i8*, i8** %lock, align 8, !tbaa !20
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %1 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %or = or i32 %1, 1024
  store i32 %or, i32* %ex_flags, align 8, !tbaa !10
  %2 = load i8*, i8** %lock, align 8, !tbaa !20
  %call2 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_set_proxy_pathlen(%struct.x509_st* nocapture noundef writeonly %x, i64 noundef %l) local_unnamed_addr #6 {
entry:
  %ex_pcpathlen = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 7
  store i64 %l, i64* %ex_pcpathlen, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_ca(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %x) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @check_ca(%struct.x509_st* noundef %x) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @check_ca(%struct.x509_st* nocapture noundef readonly %x) unnamed_addr #5 {
entry:
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and1 = and i32 %1, 4
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %and4 = and i32 %0, 1
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %and8 = lshr i32 %0, 4
  %and8.lobit = and i32 %and8, 1
  br label %return

if.else:                                          ; preds = %if.end
  %and11 = and i32 %0, 8256
  %cmp12 = icmp eq i32 %and11, 8256
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %cmp12, i1 true, i1 %cmp.not.not
  %.mux = select i1 %cmp12, i32 3, i32 4
  br i1 %brmerge, label %return, label %if.else19

if.else19:                                        ; preds = %if.else
  %and21 = and i32 %0, 8
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end29, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else19
  %ex_nscert = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %2 = load i32, i32* %ex_nscert, align 4, !tbaa !62
  %and24 = and i32 %2, 7
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end29, label %return

if.end29:                                         ; preds = %land.lhs.true23, %if.else19
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true23, %land.lhs.true, %if.end29, %if.then6
  %retval.0 = phi i32 [ %and8.lobit, %if.then6 ], [ 0, %if.end29 ], [ 0, %land.lhs.true ], [ %.mux, %if.else ], [ 5, %land.lhs.true23 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_issued(%struct.x509_st* noundef %issuer, %struct.x509_st* noundef %subject) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_x509_likely_issued(%struct.x509_st* noundef %issuer, %struct.x509_st* noundef %subject) #7
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_x509_signing_allowed(%struct.x509_st* noundef %issuer, %struct.x509_st* noundef %subject) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_likely_issued(%struct.x509_st* noundef %issuer, %struct.x509_st* noundef %subject) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %issuer) #8
  %call1 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %subject) #8
  %call2 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call, %struct.X509_name_st* noundef %call1) #8
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %issuer) #7
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %subject) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %subject, i64 0, i32 13
  %0 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !37
  %call8 = tail call i32 @X509_check_akid(%struct.x509_st* noundef %issuer, %struct.AUTHORITY_KEYID_st* noundef %0) #7
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %issuer) #8
  %call13 = tail call fastcc i32 @check_sig_alg_match(%struct.evp_pkey_st* noundef %call12, %struct.x509_st* noundef nonnull %subject) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %lor.lhs.false, %entry, %if.end11
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ 29, %entry ], [ 1, %lor.lhs.false ], [ 1, %if.end ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_x509_signing_allowed(%struct.x509_st* nocapture noundef readonly %issuer, %struct.x509_st* nocapture noundef readonly %subject) local_unnamed_addr #5 {
entry:
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %subject, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  %ex_flags6 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer, i64 0, i32 8
  %1 = load i32, i32* %ex_flags6, align 8, !tbaa !10
  %and7 = and i32 %1, 2
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer, i64 0, i32 9
  %2 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and3 = and i32 %2, 128
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %return, label %if.end15

if.else:                                          ; preds = %entry
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else
  %ex_kusage10 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer, i64 0, i32 9
  %3 = load i32, i32* %ex_kusage10, align 4, !tbaa !29
  %and11 = and i32 %3, 4
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %return, label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true9, %if.then, %land.lhs.true
  br label %return

return:                                           ; preds = %land.lhs.true9, %land.lhs.true, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 39, %land.lhs.true ], [ 32, %land.lhs.true9 ]
  ret i32 %retval.0
}

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_serialNumber(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_extension_flags(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_key_usage(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then1
  %retval.0 = phi i32 [ %1, %if.then1 ], [ 0, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_extended_key_usage(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then1

if.then1:                                         ; preds = %if.end
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  %1 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then1
  %retval.0 = phi i32 [ %1, %if.then1 ], [ 0, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %skid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 12
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %skid, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_string_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_get0_authority_key_id(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 13
  %0 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !37
  %cmp1.not = icmp eq %struct.AUTHORITY_KEYID_st* %0, null
  br i1 %cmp1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %keyid = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !51
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi %struct.asn1_string_st* [ null, %entry ], [ %1, %cond.true ], [ null, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_GENERAL_NAME* @X509_get0_authority_issuer(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 13
  %0 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !37
  %cmp1.not = icmp eq %struct.AUTHORITY_KEYID_st* %0, null
  br i1 %cmp1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %issuer = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %issuer, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi %struct.stack_st_GENERAL_NAME* [ null, %entry ], [ %1, %cond.true ], [ null, %if.end ]
  ret %struct.stack_st_GENERAL_NAME* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_get0_authority_serial(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %akid = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 13
  %0 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !37
  %cmp1.not = icmp eq %struct.AUTHORITY_KEYID_st* %0, null
  br i1 %cmp1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %serial = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %0, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !53
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi %struct.asn1_string_st* [ null, %entry ], [ %1, %cond.true ], [ null, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_get_pathlen(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 1
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %ex_pathlen = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 6
  %1 = load i64, i64* %ex_pathlen, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i64 [ %1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_get_proxy_pathlen(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 1024
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %ex_pcpathlen = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 7
  %1 = load i64, i64* %ex_pcpathlen, align 8, !tbaa !61
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i64 [ %1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_ssl_client(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  %1 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  %and1 = and i32 %1, 2
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @check_ssl_ca(%struct.x509_st* noundef nonnull %x) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %0, 2
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end4
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %2 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and9 = and i32 %2, 136
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end4
  %and14 = and i32 %0, 8
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %if.end20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end12
  %ex_nscert = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %3 = load i32, i32* %ex_nscert, align 4, !tbaa !62
  %and17 = and i32 %3, 128
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %return, label %if.end20

if.end20:                                         ; preds = %land.lhs.true16, %if.end12
  br label %return

return:                                           ; preds = %land.lhs.true16, %land.lhs.true8, %land.lhs.true, %if.end20, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 1, %if.end20 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_ssl_server(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  %1 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  %and1 = and i32 %1, 17
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @check_ssl_ca(%struct.x509_st* noundef nonnull %x) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %0, 8
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end4
  %ex_nscert = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %2 = load i32, i32* %ex_nscert, align 4, !tbaa !62
  %and9 = and i32 %2, 64
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end4
  %and14 = and i32 %0, 2
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %if.end20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end12
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %3 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and17 = and i32 %3, 168
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %return, label %if.end20

if.end20:                                         ; preds = %land.lhs.true16, %if.end12
  br label %return

return:                                           ; preds = %land.lhs.true16, %land.lhs.true8, %land.lhs.true, %if.end20, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 1, %if.end20 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_ns_ssl_server(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %call = tail call i32 @check_purpose_ssl_server(%struct.x509_purpose_st* noundef %xp, %struct.x509_st* noundef %x, i32 noundef %require_ca) #7
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %require_ca, 0
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and2 = and i32 %1, 32
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i32 [ %call, %if.end5 ], [ %call, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_smime_sign(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %call = tail call fastcc i32 @purpose_smime(%struct.x509_st* noundef %x, i32 noundef %require_ca) #7
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %require_ca, 0
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and2 = and i32 %1, 192
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i32 [ %call, %if.end5 ], [ %call, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_smime_encrypt(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %call = tail call fastcc i32 @purpose_smime(%struct.x509_st* noundef %x, i32 noundef %require_ca) #7
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %require_ca, 0
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and2 = and i32 %1, 32
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i32 [ %call, %if.end5 ], [ %call, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_crl_sign(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @check_ca(%struct.x509_st* noundef %x) #7
  %cmp.not = icmp eq i32 %call, 2
  %.call = select i1 %cmp.not, i32 0, i32 %call
  br label %return

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and3 = and i32 %1, 2
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end6, %if.then
  %retval.1 = phi i32 [ %.call, %if.then ], [ 1, %if.end6 ], [ 0, %land.lhs.true ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @no_check_purpose(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readnone %x, i32 noundef %require_ca) #3 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @check_purpose_ocsp_helper(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) #5 {
entry:
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @check_ca(%struct.x509_st* noundef %x) #7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_purpose_timestamp_sign(%struct.x509_purpose_st* nocapture noundef readnone %xp, %struct.x509_st* noundef %x, i32 noundef %require_ca) #0 {
entry:
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @check_ca(%struct.x509_st* noundef %x) #7
  br label %cleanup24

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 9
  %1 = load i32, i32* %ex_kusage, align 4, !tbaa !29
  %and2 = and i32 %1, -193
  %tobool3.not = icmp ne i32 %and2, 0
  %and5 = and i32 %1, 192
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = or i1 %tobool3.not, %tobool6.not
  %and10 = and i32 %0, 4
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond35 = select i1 %or.cond, i1 true, i1 %tobool11.not
  br i1 %or.cond35, label %cleanup24, label %lor.lhs.false12

if.end8:                                          ; preds = %if.end
  %and10.old = and i32 %0, 4
  %tobool11.not.old = icmp eq i32 %and10.old, 0
  br i1 %tobool11.not.old, label %cleanup24, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true, %if.end8
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  %2 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  %cmp.not = icmp eq i32 %2, 64
  br i1 %cmp.not, label %if.end14, label %cleanup24

if.end14:                                         ; preds = %lor.lhs.false12
  %call15 = tail call i32 @X509_get_ext_by_NID(%struct.x509_st* noundef nonnull %x, i32 noundef 126, i32 noundef -1) #8
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %call18 = tail call %struct.X509_extension_st* @X509_get_ext(%struct.x509_st* noundef nonnull %x, i32 noundef %call15) #8
  %call19 = tail call i32 @X509_EXTENSION_get_critical(%struct.X509_extension_st* noundef %call18) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup24, label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14
  br label %cleanup24

cleanup24:                                        ; preds = %if.end8, %lor.lhs.false12, %land.lhs.true, %if.then17, %if.end23, %if.then
  %retval.1 = phi i32 [ %call, %if.then ], [ 1, %if.end23 ], [ 0, %if.then17 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false12 ], [ 0, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @check_ssl_ca(%struct.x509_st* nocapture noundef readonly %x) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @check_ca(%struct.x509_st* noundef %x) #7
  switch i32 %call, label %lor.end [
    i32 0, label %cleanup
    i32 5, label %lor.rhs
  ]

lor.rhs:                                          ; preds = %entry
  %ex_nscert = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %0 = load i32, i32* %ex_nscert, align 4, !tbaa !62
  %and = lshr i32 %0, 2
  %and.lobit = and i32 %and, 1
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %1 = phi i32 [ %and.lobit, %lor.rhs ], [ 1, %entry ]
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @purpose_smime(%struct.x509_st* nocapture noundef readonly %x, i32 noundef %require_ca) unnamed_addr #5 {
entry:
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !10
  %and = and i32 %0, 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ex_xkusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 10
  %1 = load i32, i32* %ex_xkusage, align 8, !tbaa !33
  %and1 = and i32 %1, 4
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool.not = icmp eq i32 %require_ca, 0
  br i1 %tobool.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @check_ca(%struct.x509_st* noundef nonnull %x) #7
  switch i32 %call, label %if.then10 [
    i32 0, label %return
    i32 5, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %if.then3
  %ex_nscert = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %2 = load i32, i32* %ex_nscert, align 4, !tbaa !62
  %and8 = and i32 %2, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %return, label %if.then10

if.then10:                                        ; preds = %if.then3, %lor.lhs.false
  br label %return

if.end11:                                         ; preds = %if.end
  %and13 = and i32 %0, 8
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %return, label %if.then15

if.then15:                                        ; preds = %if.end11
  %ex_nscert16 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 11
  %3 = load i32, i32* %ex_nscert16, align 4, !tbaa !62
  %and17 = and i32 %3, 32
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.then15
  %and22 = lshr i32 %3, 6
  %4 = and i32 %and22, 2
  br label %return

return:                                           ; preds = %if.end11, %if.end20, %if.then15, %if.then10, %if.then3, %lor.lhs.false, %land.lhs.true
  %retval.1 = phi i32 [ 0, %land.lhs.true ], [ %call, %if.then10 ], [ %call, %if.then3 ], [ 0, %lor.lhs.false ], [ 1, %if.then15 ], [ %4, %if.end20 ], [ 1, %if.end11 ]
  ret i32 %retval.1
}

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @nid_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #5 {
entry:
  %0 = bitcast i8* %a_ to i32*
  %1 = bitcast i8* %b_ to i32*
  %call = tail call fastcc i32 @nid_cmp(i32* noundef %0, i32* noundef %1) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @nid_cmp(i32* nocapture noundef readonly %a, i32* nocapture noundef readonly %b) unnamed_addr #5 {
entry:
  %0 = load i32, i32* %a, align 4, !tbaa !26
  %1 = load i32, i32* %b, align 4, !tbaa !26
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_dp(%struct.x509_st* noundef %x, %struct.DIST_POINT_st* nocapture noundef %dp) unnamed_addr #0 {
entry:
  %distpoint = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 0
  %0 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !63
  %cmp = icmp eq %struct.DIST_POINT_NAME_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %CRLissuer = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 2
  %1 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer, align 8, !tbaa !65
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %1) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.setup_dp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 143, i8* noundef null) #8
  br label %cleanup52

if.end:                                           ; preds = %land.lhs.true, %entry
  %reasons = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %reasons, align 8, !tbaa !66
  %cmp3.not = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !30
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %if.end9, label %if.then4.if.end20_crit_edge

if.then4.if.end20_crit_edge:                      ; preds = %if.then4
  %dp_reasons21.phi.trans.insert = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 3
  %.pre = load i32, i32* %dp_reasons21.phi.trans.insert, align 8, !tbaa !67
  br label %if.end20

if.end9:                                          ; preds = %if.then4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !31
  %5 = load i8, i8* %4, align 1, !tbaa !32
  %conv = zext i8 %5 to i32
  %dp_reasons = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 3
  store i32 %conv, i32* %dp_reasons, align 8, !tbaa !67
  %cmp12.not = icmp eq i32 %3, 1
  br i1 %cmp12.not, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end9
  %arrayidx17 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %arrayidx17, align 1, !tbaa !32
  %conv18 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %or = or i32 %shl, %conv
  br label %if.end20

if.end20:                                         ; preds = %if.then4.if.end20_crit_edge, %if.then14, %if.end9
  %7 = phi i32 [ %.pre, %if.then4.if.end20_crit_edge ], [ %or, %if.then14 ], [ %conv, %if.end9 ]
  %dp_reasons21 = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 3
  %and = and i32 %7, 32895
  store i32 %and, i32* %dp_reasons21, align 8, !tbaa !67
  br label %if.end23

if.else:                                          ; preds = %if.end
  %dp_reasons22 = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 3
  store i32 32895, i32* %dp_reasons22, align 8, !tbaa !67
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end20
  %8 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !63
  %cmp25 = icmp eq %struct.DIST_POINT_NAME_st* %8, null
  br i1 %cmp25, label %cleanup52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %8, i64 0, i32 0
  %9 = load i32, i32* %type, align 8, !tbaa !68
  %cmp28.not = icmp eq i32 %9, 1
  br i1 %cmp28.not, label %for.cond.preheader, label %cleanup52

for.cond.preheader:                               ; preds = %lor.lhs.false
  %CRLissuer32 = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 2
  %10 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer32, align 8, !tbaa !65
  %call3384 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %10) #7
  %call3485 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3384) #8
  %cmp3586 = icmp sgt i32 %call3485, 0
  br i1 %cmp3586, label %for.body, label %if.then47

for.cond:                                         ; preds = %for.body
  %11 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer32, align 8, !tbaa !65
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %11) #7
  %call34 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call33) #8
  %cmp35 = icmp slt i32 %inc, %call34
  br i1 %cmp35, label %for.body, label %if.then47, !llvm.loop !70

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.087 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %12 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer32, align 8, !tbaa !65
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %12) #7
  %call39 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call38, i32 noundef %i.087) #8
  %type40 = bitcast i8* %call39 to i32*
  %13 = load i32, i32* %type40, align 8, !tbaa !56
  %cmp41 = icmp eq i32 %13, 4
  %inc = add nuw nsw i32 %i.087, 1
  br i1 %cmp41, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call39, i64 8
  %directoryName = bitcast i8* %d to %struct.X509_name_st**
  %14 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !32
  %cmp45 = icmp eq %struct.X509_name_st* %14, null
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.cond, %for.cond.preheader, %for.end
  %call48 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end
  %iname.3 = phi %struct.X509_name_st* [ %call48, %if.then47 ], [ %14, %for.end ]
  %15 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !63
  %call51 = tail call i32 @DIST_POINT_set_dpname(%struct.DIST_POINT_NAME_st* noundef %15, %struct.X509_name_st* noundef %iname.3) #8
  %tobool.not = icmp eq i32 %call51, 0
  %cond = select i1 %tobool.not, i32 -1, i32 1
  br label %cleanup52

cleanup52:                                        ; preds = %if.end23, %lor.lhs.false, %if.end49, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end49 ], [ 1, %lor.lhs.false ], [ 1, %if.end23 ]
  ret i32 %retval.0
}

declare i32 @DIST_POINT_set_dpname(%struct.DIST_POINT_NAME_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 16}
!5 = !{!"x509_purpose_st", !6, i64 0, !6, i64 4, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!11, !6, i64 232}
!11 = !{!"x509_st", !12, i64 0, !15, i64 136, !13, i64 152, !18, i64 176, !7, i64 192, !19, i64 200, !14, i64 216, !14, i64 224, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !7, i64 312, !9, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !9, i64 376}
!12 = !{!"x509_cinf_st", !9, i64 0, !13, i64 8, !15, i64 32, !9, i64 48, !16, i64 56, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !17, i64 112}
!13 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !14, i64 16}
!14 = !{!"long", !7, i64 0}
!15 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
!16 = !{!"X509_val_st", !9, i64 0, !9, i64 8}
!17 = !{!"ASN1_ENCODING_st", !9, i64 0, !14, i64 8, !6, i64 16}
!18 = !{!"x509_sig_info_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!19 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!20 = !{!11, !9, i64 344}
!21 = !{!11, !14, i64 216}
!22 = !{!23, !6, i64 0}
!23 = !{!"BASIC_CONSTRAINTS_st", !6, i64 0, !9, i64 8}
!24 = !{!23, !9, i64 8}
!25 = !{!13, !6, i64 4}
!26 = !{!6, !6, i64 0}
!27 = !{!28, !9, i64 0}
!28 = !{!"PROXY_CERT_INFO_EXTENSION_st", !9, i64 0, !9, i64 8}
!29 = !{!11, !6, i64 236}
!30 = !{!13, !6, i64 0}
!31 = !{!13, !9, i64 8}
!32 = !{!7, !7, i64 0}
!33 = !{!11, !6, i64 240}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!11, !9, i64 248}
!37 = !{!11, !9, i64 256}
!38 = !{!11, !9, i64 280}
!39 = !{!11, !9, i64 288}
!40 = !{!11, !9, i64 296}
!41 = !{!11, !9, i64 304}
!42 = distinct !{!42, !35}
!43 = !{!9, !9, i64 0}
!44 = !{!5, !6, i64 0}
!45 = !{!5, !9, i64 32}
!46 = distinct !{!46, !35}
!47 = !{!5, !6, i64 8}
!48 = !{!5, !9, i64 24}
!49 = !{!5, !6, i64 4}
!50 = !{!5, !9, i64 40}
!51 = !{!52, !9, i64 0}
!52 = !{!"AUTHORITY_KEYID_st", !9, i64 0, !9, i64 8, !9, i64 16}
!53 = !{!52, !9, i64 16}
!54 = !{!52, !9, i64 8}
!55 = distinct !{!55, !35}
!56 = !{!57, !6, i64 0}
!57 = !{!"GENERAL_NAME_st", !6, i64 0, !7, i64 8}
!58 = !{!11, !9, i64 32}
!59 = !{!11, !9, i64 272}
!60 = distinct !{!60, !35}
!61 = !{!11, !14, i64 224}
!62 = !{!11, !6, i64 244}
!63 = !{!64, !9, i64 0}
!64 = !{!"DIST_POINT_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24}
!65 = !{!64, !9, i64 16}
!66 = !{!64, !9, i64 8}
!67 = !{!64, !6, i64 24}
!68 = !{!69, !6, i64 0}
!69 = !{!"DIST_POINT_NAME_st", !6, i64 0, !7, i64 8, !9, i64 16}
!70 = distinct !{!70, !35}
