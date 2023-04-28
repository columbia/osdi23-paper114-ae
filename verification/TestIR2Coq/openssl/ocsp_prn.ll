; ModuleID = 'crypto/ocsp/ocsp_prn.c'
source_filename = "crypto/ocsp/ocsp_prn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OCSP_TBLSTR = type { i64, i8* }
%struct.bio_st = type opaque
%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, %struct.ocsp_signature_st* }
%struct.ocsp_req_info_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_X509_EXTENSION* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_OCSP_ONEREQ = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ocsp_signature_st = type { %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ocsp_response_st = type { %struct.asn1_string_st*, %struct.ocsp_resp_bytes_st* }
%struct.ocsp_resp_bytes_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_responder_id_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.X509_name_st* }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.ocsp_cert_status_st = type { i32, %union.anon.3 }
%union.anon.3 = type { i32* }
%struct.ocsp_revoked_info_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }

@OCSP_response_status_str.rstat_tbl = internal constant [6 x %struct.OCSP_TBLSTR] [%struct.OCSP_TBLSTR { i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [11 x i8] c"successful\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"malformedrequest\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"internalerror\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"trylater\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sigrequired\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unauthorized\00", align 1
@OCSP_cert_status_str.cstat_tbl = internal constant [3 x %struct.OCSP_TBLSTR] [%struct.OCSP_TBLSTR { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"revoked\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@OCSP_crl_reason_str.reason_tbl = internal constant [8 x %struct.OCSP_TBLSTR] [%struct.OCSP_TBLSTR { i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.OCSP_TBLSTR { i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str.9 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"keyCompromise\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"cACompromise\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"affiliationChanged\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"superseded\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"cessationOfOperation\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"certificateHold\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"removeFromCRL\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"OCSP Request Data:\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"    Version: %lu (0x%lx)\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\0A    Requestor Name: \00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\0A    Requestor List:\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Request Single Extensions\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Request Extensions\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"OCSP Response Data:\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"    OCSP Response Status: %s (0x%lx)\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"    Response Type: \00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c" (unknown response type)\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"\0A    Version: %lu (0x%lx)\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"    Responder Id: \00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"\0A    Produced At: \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"\0A    Responses:\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"    Cert Status: %s\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A    Revocation Time: \00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"\0A    Revocation Reason: %s (0x%lx)\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"\0A    This Update: \00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"\0A    Next Update: \00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Response Single Extensions\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Response Extensions\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"(UNKNOWN)\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"%*sCertificate ID:\0A\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"%*sHash Algorithm: \00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"\0A%*sIssuer Name Hash: \00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"\0A%*sIssuer Key Hash: \00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\0A%*sSerial Number: \00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i8* @OCSP_response_status_str(i64 noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @do_table2string(i64 noundef %s, %struct.OCSP_TBLSTR* noundef getelementptr inbounds ([6 x %struct.OCSP_TBLSTR], [6 x %struct.OCSP_TBLSTR]* @OCSP_response_status_str.rstat_tbl, i64 0, i64 0), i64 noundef 6) #4
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i8* @do_table2string(i64 noundef %s, %struct.OCSP_TBLSTR* nocapture noundef readonly %ts, i64 noundef %len) unnamed_addr #0 {
entry:
  %cmp7.not = icmp eq i64 %len, 0
  br i1 %cmp7.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.09 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %ts.addr.08 = phi %struct.OCSP_TBLSTR* [ %incdec.ptr, %for.inc ], [ %ts, %entry ]
  %t = getelementptr inbounds %struct.OCSP_TBLSTR, %struct.OCSP_TBLSTR* %ts.addr.08, i64 0, i32 0
  %0 = load i64, i64* %t, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %0, %s
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %m = getelementptr inbounds %struct.OCSP_TBLSTR, %struct.OCSP_TBLSTR* %ts.addr.08, i64 0, i32 1
  %1 = load i8*, i8** %m, align 8, !tbaa !10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.09, 1
  %incdec.ptr = getelementptr inbounds %struct.OCSP_TBLSTR, %struct.OCSP_TBLSTR* %ts.addr.08, i64 1
  %exitcond.not = icmp eq i64 %inc, %len
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !11

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), %entry ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i8* @OCSP_cert_status_str(i64 noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @do_table2string(i64 noundef %s, %struct.OCSP_TBLSTR* noundef getelementptr inbounds ([3 x %struct.OCSP_TBLSTR], [3 x %struct.OCSP_TBLSTR]* @OCSP_cert_status_str.cstat_tbl, i64 0, i64 0), i64 noundef 3) #4
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i8* @OCSP_crl_reason_str(i64 noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @do_table2string(i64 noundef %s, %struct.OCSP_TBLSTR* noundef getelementptr inbounds ([8 x %struct.OCSP_TBLSTR], [8 x %struct.OCSP_TBLSTR]* @OCSP_crl_reason_str.reason_tbl, i64 0, i64 0), i64 noundef 8) #4
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_print(%struct.bio_st* noundef %bp, %struct.ocsp_request_st* nocapture noundef readonly %o, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %o, i64 0, i32 1
  %0 = load %struct.ocsp_signature_st*, %struct.ocsp_signature_st** %optionalSignature, align 8, !tbaa !13
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 noundef 19) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %o, i64 0, i32 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !16
  %call1 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %1) #5
  %add = add nsw i64 %call1, 1
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 noundef %add, i64 noundef %call1) #5
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %requestorName = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %o, i64 0, i32 0, i32 1
  %2 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %requestorName, align 8, !tbaa !17
  %cmp6.not = icmp eq %struct.GENERAL_NAME_st* %2, null
  br i1 %cmp6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 noundef 21) #5
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then7
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %requestorName, align 8, !tbaa !17
  %call13 = tail call i32 @GENERAL_NAME_print(%struct.bio_st* noundef %bp, %struct.GENERAL_NAME_st* noundef %3) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end5
  %call15 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 noundef 21) #5
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  %requestList = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %o, i64 0, i32 0, i32 2
  %4 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !18
  %call1995 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %4) #4
  %call2096 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1995) #5
  %cmp2197 = icmp sgt i32 %call2096, 0
  br i1 %cmp2197, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %5 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !18
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %5) #4
  %call20 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call19) #5
  %cmp21 = icmp slt i32 %inc, %call20
  br i1 %cmp21, label %for.body, label %for.end, !llvm.loop !19

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.098 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %6 = load %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_OCSP_ONEREQ** %requestList, align 8, !tbaa !18
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef %6) #4
  %call24 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef %i.098) #5
  %reqCert = bitcast i8* %call24 to %struct.ocsp_cert_id_st**
  %7 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %reqCert, align 8, !tbaa !20
  tail call fastcc void @ocsp_certid_print(%struct.bio_st* noundef %bp, %struct.ocsp_cert_id_st* noundef %7, i32 noundef 8) #4
  %singleRequestExtensions = getelementptr inbounds i8, i8* %call24, i64 8
  %8 = bitcast i8* %singleRequestExtensions to %struct.stack_st_X509_EXTENSION**
  %9 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %8, align 8, !tbaa !22
  %call26 = tail call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %9, i64 noundef %flags, i32 noundef 8) #5
  %tobool.not = icmp eq i32 %call26, 0
  %inc = add nuw nsw i32 %i.098, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %o, i64 0, i32 0, i32 3
  %10 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !23
  %call29 = tail call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %10, i64 noundef %flags, i32 noundef 4) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %for.end
  %tobool33.not = icmp eq %struct.ocsp_signature_st* %0, null
  br i1 %tobool33.not, label %cleanup, label %if.then34

if.then34:                                        ; preds = %if.end32
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 0
  %signature = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 1
  %11 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !24
  %call35 = tail call i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef nonnull %signatureAlgorithm, %struct.asn1_string_st* noundef %11) #5
  %certs = getelementptr inbounds %struct.ocsp_signature_st, %struct.ocsp_signature_st* %0, i64 0, i32 2
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !27
  %call3799 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %12) #4
  %call38100 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3799) #5
  %cmp39101 = icmp sgt i32 %call38100, 0
  br i1 %cmp39101, label %for.body40, label %cleanup

for.body40:                                       ; preds = %if.then34, %for.body40
  %i.1102 = phi i32 [ %inc50, %for.body40 ], [ 0, %if.then34 ]
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !27
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %13) #4
  %call43 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call42, i32 noundef %i.1102) #5
  %14 = bitcast i8* %call43 to %struct.x509_st*
  %call44 = tail call i32 @X509_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %14) #5
  %15 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !27
  %call46 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %15) #4
  %call47 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call46, i32 noundef %i.1102) #5
  %16 = bitcast i8* %call47 to %struct.x509_st*
  %call48 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %16) #5
  %inc50 = add nuw nsw i32 %i.1102, 1
  %17 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !27
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %17) #4
  %call38 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call37) #5
  %cmp39 = icmp slt i32 %inc50, %call38
  br i1 %cmp39, label %for.body40, label %cleanup, !llvm.loop !28

cleanup:                                          ; preds = %for.body, %for.body40, %if.then34, %entry, %if.end, %if.then7, %if.end14, %for.end, %if.end32
  %retval.0 = phi i32 [ 1, %if.end32 ], [ 0, %for.end ], [ 0, %if.end14 ], [ 0, %if.then7 ], [ 0, %if.end ], [ 0, %entry ], [ 1, %if.then34 ], [ 1, %for.body40 ], [ 0, %for.body ]
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @GENERAL_NAME_print(%struct.bio_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_ONEREQ_sk_type(%struct.stack_st_OCSP_ONEREQ* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_ONEREQ* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ocsp_certid_print(%struct.bio_st* noundef %bp, %struct.ocsp_cert_id_st* noundef %a, i32 noundef %indent) unnamed_addr #1 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #5
  %add = add nsw i32 %indent, 2
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #5
  %algorithm = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !29
  %call2 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %0) #5
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #5
  %issuerNameHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 1
  %call4 = tail call i32 @i2a_ASN1_STRING(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %issuerNameHash, i32 noundef 0) #5
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #5
  %issuerKeyHash = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 2
  %call6 = tail call i32 @i2a_ASN1_STRING(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %issuerKeyHash, i32 noundef 0) #5
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 noundef %add, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #5
  %serialNumber = getelementptr inbounds %struct.ocsp_cert_id_st, %struct.ocsp_cert_id_st* %a, i64 0, i32 3
  %call8 = tail call i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef nonnull %serialNumber) #5
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #5
  ret void
}

declare i32 @X509V3_extensions_print(%struct.bio_st* noundef, i8* noundef, %struct.stack_st_X509_EXTENSION* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_signature_print(%struct.bio_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_RESPONSE_print(%struct.bio_st* noundef %bp, %struct.ocsp_response_st* noundef %o, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %responseBytes = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %o, i64 0, i32 1
  %0 = load %struct.ocsp_resp_bytes_st*, %struct.ocsp_resp_bytes_st** %responseBytes, align 8, !tbaa !33
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0)) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %responseStatus = getelementptr inbounds %struct.ocsp_response_st, %struct.ocsp_response_st* %o, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %responseStatus, align 8, !tbaa !35
  %call1 = tail call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef %1) #5
  %call2 = tail call i8* @OCSP_response_status_str(i64 noundef %call1) #4
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call2, i64 noundef %call1) #5
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq %struct.ocsp_resp_bytes_st* %0, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %responseType = getelementptr inbounds %struct.ocsp_resp_bytes_st, %struct.ocsp_resp_bytes_st* %0, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %responseType, align 8, !tbaa !36
  %call14 = tail call i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef %bp, %struct.asn1_object_st* noundef %2) #5
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %responseType, align 8, !tbaa !36
  %call19 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #5
  %cmp20.not = icmp eq i32 %call19, 365
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call24 = tail call %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef nonnull %o) #5
  %cmp25 = icmp eq %struct.ocsp_basic_response_st* %call24, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %version = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !38
  %call28 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %4) #5
  %add = add nsw i64 %call28, 1
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i64 noundef %add, i64 noundef %call28) #5
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %err, label %if.end32

if.end32:                                         ; preds = %if.end27
  %call33 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0)) #5
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %err, label %if.end36

if.end36:                                         ; preds = %if.end32
  %type = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 1, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !41
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end36
  %byName = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 1, i32 1, i32 0
  %6 = load %struct.X509_name_st*, %struct.X509_name_st** %byName, align 8, !tbaa !42
  %call37 = tail call i32 @X509_NAME_print_ex(%struct.bio_st* noundef %bp, %struct.X509_name_st* noundef %6, i32 noundef 0, i64 noundef 8520479) #5
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end36
  %value39 = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 1, i32 1
  %byKey = bitcast %union.anon.2* %value39 to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %byKey, align 8, !tbaa !42
  %call40 = tail call i32 @i2a_ASN1_STRING(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %7, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %sw.bb38, %sw.bb
  %call41 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #5
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %err, label %if.end44

if.end44:                                         ; preds = %sw.epilog
  %producedAt = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 2
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %producedAt, align 8, !tbaa !43
  %call45 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %8) #5
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end44
  %call48 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0)) #5
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end47
  %responses = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 3
  %9 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !44
  %call52253 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %9) #4
  %call53254 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call52253) #5
  %cmp54255 = icmp sgt i32 %call53254, 0
  br i1 %cmp54255, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0256 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %10 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !44
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %10) #4
  %call57 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call56, i32 noundef %i.0256) #5
  %tobool58.not = icmp eq i8* %call57, null
  br i1 %tobool58.not, label %for.inc, label %if.end60

if.end60:                                         ; preds = %for.body
  %11 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !44
  %call62 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %11) #4
  %call63 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call62, i32 noundef %i.0256) #5
  %certId = bitcast i8* %call63 to %struct.ocsp_cert_id_st**
  %12 = load %struct.ocsp_cert_id_st*, %struct.ocsp_cert_id_st** %certId, align 8, !tbaa !45
  tail call fastcc void @ocsp_certid_print(%struct.bio_st* noundef %bp, %struct.ocsp_cert_id_st* noundef %12, i32 noundef 4) #4
  %certStatus = getelementptr inbounds i8, i8* %call63, i64 8
  %13 = bitcast i8* %certStatus to %struct.ocsp_cert_status_st**
  %14 = load %struct.ocsp_cert_status_st*, %struct.ocsp_cert_status_st** %13, align 8, !tbaa !47
  %type68 = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %14, i64 0, i32 0
  %15 = load i32, i32* %type68, align 8, !tbaa !48
  %conv = sext i32 %15 to i64
  %call69 = tail call i8* @OCSP_cert_status_str(i64 noundef %conv) #4
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call69) #5
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %err, label %if.end74

if.end74:                                         ; preds = %if.end60
  %16 = load i32, i32* %type68, align 8, !tbaa !48
  %cmp76 = icmp eq i32 %16, 1
  br i1 %cmp76, label %if.then78, label %if.end100

if.then78:                                        ; preds = %if.end74
  %value79 = getelementptr inbounds %struct.ocsp_cert_status_st, %struct.ocsp_cert_status_st* %14, i64 0, i32 1
  %revoked = bitcast %union.anon.3* %value79 to %struct.ocsp_revoked_info_st**
  %17 = load %struct.ocsp_revoked_info_st*, %struct.ocsp_revoked_info_st** %revoked, align 8, !tbaa !42
  %call80 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0)) #5
  %cmp81 = icmp slt i32 %call80, 1
  br i1 %cmp81, label %err, label %if.end84

if.end84:                                         ; preds = %if.then78
  %revocationTime = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %17, i64 0, i32 0
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationTime, align 8, !tbaa !50
  %call85 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %18) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end88

if.end88:                                         ; preds = %if.end84
  %revocationReason = getelementptr inbounds %struct.ocsp_revoked_info_st, %struct.ocsp_revoked_info_st* %17, i64 0, i32 1
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationReason, align 8, !tbaa !52
  %tobool89.not = icmp eq %struct.asn1_string_st* %19, null
  br i1 %tobool89.not, label %if.end100, label %if.then90

if.then90:                                        ; preds = %if.end88
  %call92 = tail call i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef nonnull %19) #5
  %call93 = tail call i8* @OCSP_crl_reason_str(i64 noundef %call92) #4
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call93, i64 noundef %call92) #5
  %cmp95 = icmp slt i32 %call94, 1
  br i1 %cmp95, label %err, label %if.end100

if.end100:                                        ; preds = %if.end88, %if.then90, %if.end74
  %call101 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0)) #5
  %cmp102 = icmp slt i32 %call101, 1
  br i1 %cmp102, label %err, label %if.end105

if.end105:                                        ; preds = %if.end100
  %thisUpdate = getelementptr inbounds i8, i8* %call63, i64 16
  %20 = bitcast i8* %thisUpdate to %struct.asn1_string_st**
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %20, align 8, !tbaa !53
  %call106 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %21) #5
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %if.end109

if.end109:                                        ; preds = %if.end105
  %nextUpdate = getelementptr inbounds i8, i8* %call63, i64 24
  %22 = bitcast i8* %nextUpdate to %struct.asn1_string_st**
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %22, align 8, !tbaa !54
  %tobool110.not = icmp eq %struct.asn1_string_st* %23, null
  br i1 %tobool110.not, label %if.end122, label %if.then111

if.then111:                                       ; preds = %if.end109
  %call112 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0)) #5
  %cmp113 = icmp slt i32 %call112, 1
  br i1 %cmp113, label %err, label %if.end116

if.end116:                                        ; preds = %if.then111
  %24 = load %struct.asn1_string_st*, %struct.asn1_string_st** %22, align 8, !tbaa !54
  %call118 = tail call i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %24) #5
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end122

if.end122:                                        ; preds = %if.end116, %if.end109
  %call123 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #5
  %cmp124 = icmp slt i32 %call123, 1
  br i1 %cmp124, label %err, label %if.end127

if.end127:                                        ; preds = %if.end122
  %singleExtensions = getelementptr inbounds i8, i8* %call63, i64 32
  %25 = bitcast i8* %singleExtensions to %struct.stack_st_X509_EXTENSION**
  %26 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %25, align 8, !tbaa !55
  %call128 = tail call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %26, i64 noundef %flags, i32 noundef 8) #5
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %err, label %if.end131

if.end131:                                        ; preds = %if.end127
  %call132 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef 1) #5
  %cmp133 = icmp slt i32 %call132, 1
  br i1 %cmp133, label %err, label %for.inc

for.inc:                                          ; preds = %if.end131, %for.body
  %inc = add nuw nsw i32 %i.0256, 1
  %27 = load %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_OCSP_SINGLERESP** %responses, align 8, !tbaa !44
  %call52 = tail call fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef %27) #4
  %call53 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call52) #5
  %cmp54 = icmp slt i32 %inc, %call53
  br i1 %cmp54, label %for.body, label %for.end, !llvm.loop !56

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 0, i32 4
  %28 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !57
  %call137 = tail call i32 @X509V3_extensions_print(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), %struct.stack_st_X509_EXTENSION* noundef %28, i64 noundef %flags, i32 noundef 4) #5
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %if.end140

if.end140:                                        ; preds = %for.end
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 1
  %signature = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 2
  %29 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !58
  %call141 = tail call i32 @X509_signature_print(%struct.bio_st* noundef %bp, %struct.X509_algor_st* noundef nonnull %signatureAlgorithm, %struct.asn1_string_st* noundef %29) #5
  %cmp142 = icmp slt i32 %call141, 1
  br i1 %cmp142, label %err, label %for.cond146.preheader

for.cond146.preheader:                            ; preds = %if.end140
  %certs = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %call24, i64 0, i32 3
  %30 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !60
  %call147258 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %30) #4
  %call148259 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call147258) #5
  %cmp149260 = icmp sgt i32 %call148259, 0
  br i1 %cmp149260, label %for.body151, label %err

for.body151:                                      ; preds = %for.cond146.preheader, %for.body151
  %i.1261 = phi i32 [ %inc161, %for.body151 ], [ 0, %for.cond146.preheader ]
  %31 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !60
  %call153 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %31) #4
  %call154 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call153, i32 noundef %i.1261) #5
  %32 = bitcast i8* %call154 to %struct.x509_st*
  %call155 = tail call i32 @X509_print(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %32) #5
  %33 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !60
  %call157 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %33) #4
  %call158 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call157, i32 noundef %i.1261) #5
  %34 = bitcast i8* %call158 to %struct.x509_st*
  %call159 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %bp, %struct.x509_st* noundef %34) #5
  %inc161 = add nuw nsw i32 %i.1261, 1
  %35 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !60
  %call147 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %35) #4
  %call148 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call147) #5
  %cmp149 = icmp slt i32 %inc161, %call148
  br i1 %cmp149, label %for.body151, label %err, !llvm.loop !61

err:                                              ; preds = %if.end131, %if.end127, %if.end122, %if.end116, %if.then111, %if.end105, %if.end100, %if.then90, %if.end84, %if.then78, %if.end60, %for.body151, %for.cond146.preheader, %if.end140, %for.end, %if.end47, %if.end44, %sw.epilog, %if.end32, %if.end27, %if.end23, %if.end13, %if.end9, %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end9 ], [ 0, %if.end13 ], [ 0, %if.end23 ], [ 0, %if.end27 ], [ 0, %if.end32 ], [ 0, %sw.epilog ], [ 0, %if.end47 ], [ 0, %if.end140 ], [ 0, %for.end ], [ 0, %if.end44 ], [ 1, %for.cond146.preheader ], [ 1, %for.body151 ], [ 0, %if.end60 ], [ 0, %if.then78 ], [ 0, %if.end84 ], [ 0, %if.then90 ], [ 0, %if.end100 ], [ 0, %if.end105 ], [ 0, %if.then111 ], [ 0, %if.end116 ], [ 0, %if.end122 ], [ 0, %if.end127 ], [ 0, %if.end131 ]
  %br.0 = phi %struct.ocsp_basic_response_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %if.end23 ], [ %call24, %if.end27 ], [ %call24, %if.end32 ], [ %call24, %sw.epilog ], [ %call24, %if.end47 ], [ %call24, %if.end140 ], [ %call24, %for.end ], [ %call24, %if.end44 ], [ %call24, %for.cond146.preheader ], [ %call24, %for.body151 ], [ %call24, %if.end60 ], [ %call24, %if.then78 ], [ %call24, %if.end84 ], [ %call24, %if.then90 ], [ %call24, %if.end100 ], [ %call24, %if.end105 ], [ %call24, %if.then111 ], [ %call24, %if.end116 ], [ %call24, %if.end122 ], [ %call24, %if.end127 ], [ %call24, %if.end131 ]
  tail call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %br.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %err, %if.then21
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %if.then21 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.ocsp_basic_response_st* @OCSP_response_get1_basic(%struct.ocsp_response_st* noundef) local_unnamed_addr #2

declare i32 @X509_NAME_print_ex(%struct.bio_st* noundef, %struct.X509_name_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_STRING(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_GENERALIZEDTIME_print(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OCSP_SINGLERESP_sk_type(%struct.stack_st_OCSP_SINGLERESP* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OCSP_SINGLERESP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_INTEGER(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !9, i64 8}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !9, i64 32}
!14 = !{!"ocsp_request_st", !15, i64 0, !9, i64 32}
!15 = !{!"ocsp_req_info_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!16 = !{!15, !9, i64 0}
!17 = !{!15, !9, i64 8}
!18 = !{!15, !9, i64 16}
!19 = distinct !{!19, !12}
!20 = !{!21, !9, i64 0}
!21 = !{!"ocsp_one_request_st", !9, i64 0, !9, i64 8}
!22 = !{!21, !9, i64 8}
!23 = !{!15, !9, i64 24}
!24 = !{!25, !9, i64 16}
!25 = !{!"ocsp_signature_st", !26, i64 0, !9, i64 16, !9, i64 24}
!26 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
!27 = !{!25, !9, i64 24}
!28 = distinct !{!28, !12}
!29 = !{!30, !9, i64 0}
!30 = !{!"ocsp_cert_id_st", !26, i64 0, !31, i64 16, !31, i64 40, !31, i64 64}
!31 = !{!"asn1_string_st", !32, i64 0, !32, i64 4, !9, i64 8, !6, i64 16}
!32 = !{!"int", !7, i64 0}
!33 = !{!34, !9, i64 8}
!34 = !{!"ocsp_response_st", !9, i64 0, !9, i64 8}
!35 = !{!34, !9, i64 0}
!36 = !{!37, !9, i64 0}
!37 = !{!"ocsp_resp_bytes_st", !9, i64 0, !9, i64 8}
!38 = !{!39, !9, i64 0}
!39 = !{!"ocsp_response_data_st", !9, i64 0, !40, i64 8, !9, i64 24, !9, i64 32, !9, i64 40}
!40 = !{!"ocsp_responder_id_st", !32, i64 0, !7, i64 8}
!41 = !{!40, !32, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!39, !9, i64 24}
!44 = !{!39, !9, i64 32}
!45 = !{!46, !9, i64 0}
!46 = !{!"ocsp_single_response_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!47 = !{!46, !9, i64 8}
!48 = !{!49, !32, i64 0}
!49 = !{!"ocsp_cert_status_st", !32, i64 0, !7, i64 8}
!50 = !{!51, !9, i64 0}
!51 = !{!"ocsp_revoked_info_st", !9, i64 0, !9, i64 8}
!52 = !{!51, !9, i64 8}
!53 = !{!46, !9, i64 16}
!54 = !{!46, !9, i64 24}
!55 = !{!46, !9, i64 32}
!56 = distinct !{!56, !12}
!57 = !{!39, !9, i64 40}
!58 = !{!59, !9, i64 64}
!59 = !{!"ocsp_basic_response_st", !39, i64 0, !26, i64 48, !9, i64 64, !9, i64 72}
!60 = !{!59, !9, i64 72}
!61 = distinct !{!61, !12}
