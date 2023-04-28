; ModuleID = 'crypto/ocsp/ocsp_asn.c'
source_filename = "crypto/ocsp/ocsp_asn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ocsp_signature_st = type { %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.ocsp_one_request_st = type { %struct.ocsp_cert_id_st*, %struct.stack_st_X509_EXTENSION* }
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ocsp_req_info_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.stack_st_OCSP_ONEREQ*, %struct.stack_st_X509_EXTENSION* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_OCSP_ONEREQ = type opaque
%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, %struct.ocsp_signature_st* }
%struct.ocsp_resp_bytes_st = type { %struct.asn1_object_st*, %struct.asn1_string_st* }
%struct.ocsp_response_st = type { %struct.asn1_string_st*, %struct.ocsp_resp_bytes_st* }
%struct.ocsp_responder_id_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.X509_name_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.ocsp_revoked_info_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ocsp_cert_status_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.ocsp_single_response_st = type { %struct.ocsp_cert_id_st*, %struct.ocsp_cert_status_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_crl_id_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.ocsp_service_locator_st = type { %struct.X509_name_st*, %struct.stack_st_ACCESS_DESCRIPTION* }
%struct.stack_st_ACCESS_DESCRIPTION = type opaque

@OCSP_SIGNATURE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_SIGNATURE_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"OCSP_SIGNATURE\00", align 1
@OCSP_CERTID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_CERTID_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"OCSP_CERTID\00", align 1
@OCSP_ONEREQ_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_ONEREQ_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"OCSP_ONEREQ\00", align 1
@OCSP_REQINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_REQINFO_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"OCSP_REQINFO\00", align 1
@OCSP_REQUEST_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_REQUEST_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"OCSP_REQUEST\00", align 1
@OCSP_RESPBYTES_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_RESPBYTES_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"OCSP_RESPBYTES\00", align 1
@OCSP_RESPONSE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_RESPONSE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"OCSP_RESPONSE\00", align 1
@OCSP_RESPID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_RESPID_ch_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"OCSP_RESPID\00", align 1
@OCSP_REVOKEDINFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_REVOKEDINFO_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"OCSP_REVOKEDINFO\00", align 1
@OCSP_CERTSTATUS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_CERTSTATUS_ch_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"OCSP_CERTSTATUS\00", align 1
@OCSP_SINGLERESP_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_SINGLERESP_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"OCSP_SINGLERESP\00", align 1
@OCSP_RESPDATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([5 x %struct.ASN1_TEMPLATE_st], [5 x %struct.ASN1_TEMPLATE_st]* bitcast ([5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_RESPDATA_seq_tt to [5 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 5, i8* null, i64 48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"OCSP_RESPDATA\00", align 1
@OCSP_BASICRESP_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_BASICRESP_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"OCSP_BASICRESP\00", align 1
@OCSP_CRLID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_CRLID_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"OCSP_CRLID\00", align 1
@OCSP_SERVICELOC_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @OCSP_SERVICELOC_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"OCSP_SERVICELOC\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"signatureAlgorithm\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@OCSP_SIGNATURE_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }], align 16
@.str.19 = private unnamed_addr constant [14 x i8] c"hashAlgorithm\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"issuerNameHash\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"issuerKeyHash\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@OCSP_CERTID_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str.24 = private unnamed_addr constant [8 x i8] c"reqCert\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"singleRequestExtensions\00", align 1
@OCSP_ONEREQ_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_CERTID_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"requestorName\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"requestList\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"requestExtensions\00", align 1
@OCSP_REQINFO_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @GENERAL_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_ONEREQ_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 2, i64 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"tbsRequest\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"optionalSignature\00", align 1
@OCSP_REQUEST_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_REQINFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_SIGNATURE_it }], align 16
@.str.35 = private unnamed_addr constant [13 x i8] c"responseType\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@OCSP_RESPBYTES_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.38 = private unnamed_addr constant [15 x i8] c"responseStatus\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"responseBytes\00", align 1
@OCSP_RESPONSE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ENUMERATED_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_RESPBYTES_it }], align 16
@.str.41 = private unnamed_addr constant [13 x i8] c"value.byName\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"value.byKey\00", align 1
@OCSP_RESPID_ch_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 1, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 144, i64 2, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16
@.str.44 = private unnamed_addr constant [15 x i8] c"revocationTime\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"revocationReason\00", align 1
@OCSP_REVOKEDINFO_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ENUMERATED_it }], align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"value.good\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"value.revoked\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"value.unknown\00", align 1
@OCSP_CERTSTATUS_ch_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 1, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_REVOKEDINFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 2, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }], align 16
@.str.51 = private unnamed_addr constant [7 x i8] c"certId\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"certStatus\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"thisUpdate\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"nextUpdate\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"singleExtensions\00", align 1
@OCSP_SINGLERESP_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_CERTID_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_CERTSTATUS_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.57 = private unnamed_addr constant [12 x i8] c"responderId\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"producedAt\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"responses\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"responseExtensions\00", align 1
@OCSP_RESPDATA_seq_tt = internal constant [5 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_RESPID_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4, i64 0, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_SINGLERESP_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 1, i64 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_EXTENSION_it }], align 16
@.str.62 = private unnamed_addr constant [16 x i8] c"tbsResponseData\00", align 1
@OCSP_BASICRESP_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @OCSP_RESPDATA_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 149, i64 0, i64 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }], align 16
@.str.64 = private unnamed_addr constant [7 x i8] c"crlUrl\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"crlNum\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"crlTime\00", align 1
@OCSP_CRLID_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_IA5STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 1, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 2, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_GENERALIZEDTIME_it }], align 16
@.str.68 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"locator\00", align 1
@OCSP_SERVICELOC_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 5, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ACCESS_DESCRIPTION_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_SIGNATURE_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_SIGNATURE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_signature_st* @d2i_OCSP_SIGNATURE(%struct.ocsp_signature_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_signature_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SIGNATURE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_signature_st*
  ret %struct.ocsp_signature_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_SIGNATURE(%struct.ocsp_signature_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_signature_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SIGNATURE_it.local_it) #3
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_signature_st* @OCSP_SIGNATURE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_SIGNATURE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_signature_st*
  ret %struct.ocsp_signature_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OCSP_SIGNATURE_free(%struct.ocsp_signature_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_signature_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SIGNATURE_it.local_it) #3
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_CERTID_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_CERTID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_id_st* @d2i_OCSP_CERTID(%struct.ocsp_cert_id_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_id_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_cert_id_st*
  ret %struct.ocsp_cert_id_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_CERTID(%struct.ocsp_cert_id_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_id_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_id_st* @OCSP_CERTID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_cert_id_st*
  ret %struct.ocsp_cert_id_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_id_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTID_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_ONEREQ_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_ONEREQ_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_one_request_st* @d2i_OCSP_ONEREQ(%struct.ocsp_one_request_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_one_request_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_ONEREQ_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_one_request_st*
  ret %struct.ocsp_one_request_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_ONEREQ(%struct.ocsp_one_request_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_one_request_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_ONEREQ_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_one_request_st* @OCSP_ONEREQ_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_ONEREQ_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_one_request_st*
  ret %struct.ocsp_one_request_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_ONEREQ_free(%struct.ocsp_one_request_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_one_request_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_ONEREQ_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_REQINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_REQINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_req_info_st* @d2i_OCSP_REQINFO(%struct.ocsp_req_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_req_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_req_info_st*
  ret %struct.ocsp_req_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_REQINFO(%struct.ocsp_req_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_req_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQINFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_req_info_st* @OCSP_REQINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_req_info_st*
  ret %struct.ocsp_req_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_REQINFO_free(%struct.ocsp_req_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_req_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQINFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_REQUEST_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_request_st* @d2i_OCSP_REQUEST(%struct.ocsp_request_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_request_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQUEST_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_request_st*
  ret %struct.ocsp_request_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_REQUEST(%struct.ocsp_request_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_request_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQUEST_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_request_st* @OCSP_REQUEST_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQUEST_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_request_st*
  ret %struct.ocsp_request_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_REQUEST_free(%struct.ocsp_request_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_request_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REQUEST_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_RESPBYTES_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_RESPBYTES_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_resp_bytes_st* @d2i_OCSP_RESPBYTES(%struct.ocsp_resp_bytes_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_resp_bytes_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPBYTES_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_resp_bytes_st*
  ret %struct.ocsp_resp_bytes_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_RESPBYTES(%struct.ocsp_resp_bytes_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_resp_bytes_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPBYTES_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_resp_bytes_st* @OCSP_RESPBYTES_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPBYTES_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_resp_bytes_st*
  ret %struct.ocsp_resp_bytes_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_RESPBYTES_free(%struct.ocsp_resp_bytes_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_resp_bytes_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPBYTES_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_st* @d2i_OCSP_RESPONSE(%struct.ocsp_response_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPONSE_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_response_st*
  ret %struct.ocsp_response_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_RESPONSE(%struct.ocsp_response_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPONSE_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_st* @OCSP_RESPONSE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPONSE_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_response_st*
  ret %struct.ocsp_response_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_RESPONSE_free(%struct.ocsp_response_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPONSE_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_RESPID_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_RESPID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_responder_id_st* @d2i_OCSP_RESPID(%struct.ocsp_responder_id_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_responder_id_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_responder_id_st*
  ret %struct.ocsp_responder_id_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_RESPID(%struct.ocsp_responder_id_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_responder_id_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_responder_id_st* @OCSP_RESPID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_responder_id_st*
  ret %struct.ocsp_responder_id_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_RESPID_free(%struct.ocsp_responder_id_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_responder_id_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPID_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_REVOKEDINFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_REVOKEDINFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_revoked_info_st* @d2i_OCSP_REVOKEDINFO(%struct.ocsp_revoked_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_revoked_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REVOKEDINFO_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_revoked_info_st*
  ret %struct.ocsp_revoked_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_REVOKEDINFO(%struct.ocsp_revoked_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_revoked_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REVOKEDINFO_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_revoked_info_st* @OCSP_REVOKEDINFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_REVOKEDINFO_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_revoked_info_st*
  ret %struct.ocsp_revoked_info_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_REVOKEDINFO_free(%struct.ocsp_revoked_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_revoked_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_REVOKEDINFO_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_CERTSTATUS_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_CERTSTATUS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_status_st* @d2i_OCSP_CERTSTATUS(%struct.ocsp_cert_status_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_status_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTSTATUS_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_cert_status_st*
  ret %struct.ocsp_cert_status_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_CERTSTATUS(%struct.ocsp_cert_status_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_status_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTSTATUS_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_cert_status_st* @OCSP_CERTSTATUS_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTSTATUS_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_cert_status_st*
  ret %struct.ocsp_cert_status_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_CERTSTATUS_free(%struct.ocsp_cert_status_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_cert_status_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CERTSTATUS_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_SINGLERESP_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_SINGLERESP_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_single_response_st* @d2i_OCSP_SINGLERESP(%struct.ocsp_single_response_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_single_response_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SINGLERESP_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_single_response_st*
  ret %struct.ocsp_single_response_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_SINGLERESP(%struct.ocsp_single_response_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_single_response_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SINGLERESP_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_single_response_st* @OCSP_SINGLERESP_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_SINGLERESP_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_single_response_st*
  ret %struct.ocsp_single_response_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_SINGLERESP_free(%struct.ocsp_single_response_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_single_response_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SINGLERESP_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_RESPDATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_data_st* @d2i_OCSP_RESPDATA(%struct.ocsp_response_data_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_data_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPDATA_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_response_data_st*
  ret %struct.ocsp_response_data_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_RESPDATA(%struct.ocsp_response_data_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_data_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPDATA_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_data_st* @OCSP_RESPDATA_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPDATA_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_response_data_st*
  ret %struct.ocsp_response_data_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_RESPDATA_free(%struct.ocsp_response_data_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_response_data_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_RESPDATA_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_BASICRESP_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_basic_response_st* @d2i_OCSP_BASICRESP(%struct.ocsp_basic_response_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_basic_response_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_BASICRESP_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_basic_response_st*
  ret %struct.ocsp_basic_response_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_BASICRESP(%struct.ocsp_basic_response_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_basic_response_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_BASICRESP_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_basic_response_st* @OCSP_BASICRESP_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_BASICRESP_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_basic_response_st*
  ret %struct.ocsp_basic_response_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_basic_response_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_BASICRESP_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_CRLID_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_CRLID_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_crl_id_st* @d2i_OCSP_CRLID(%struct.ocsp_crl_id_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_crl_id_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CRLID_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_crl_id_st*
  ret %struct.ocsp_crl_id_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_CRLID(%struct.ocsp_crl_id_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_crl_id_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CRLID_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_crl_id_st* @OCSP_CRLID_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_CRLID_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_crl_id_st*
  ret %struct.ocsp_crl_id_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_CRLID_free(%struct.ocsp_crl_id_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_crl_id_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_CRLID_it.local_it) #3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @OCSP_SERVICELOC_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @OCSP_SERVICELOC_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_service_locator_st* @d2i_OCSP_SERVICELOC(%struct.ocsp_service_locator_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_service_locator_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SERVICELOC_it.local_it) #3
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_service_locator_st*
  ret %struct.ocsp_service_locator_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_OCSP_SERVICELOC(%struct.ocsp_service_locator_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_service_locator_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SERVICELOC_it.local_it) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_service_locator_st* @OCSP_SERVICELOC_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @OCSP_SERVICELOC_it.local_it) #3
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ocsp_service_locator_st*
  ret %struct.ocsp_service_locator_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @OCSP_SERVICELOC_free(%struct.ocsp_service_locator_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ocsp_service_locator_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @OCSP_SERVICELOC_it.local_it) #3
  ret void
}

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

declare %struct.ASN1_ITEM_st* @X509_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_EXTENSION_it() #2

declare %struct.ASN1_ITEM_st* @GENERAL_NAME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_ENUMERATED_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_GENERALIZEDTIME_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_IA5STRING_it() #2

declare %struct.ASN1_ITEM_st* @ACCESS_DESCRIPTION_it() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
