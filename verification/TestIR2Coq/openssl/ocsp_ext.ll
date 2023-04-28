; ModuleID = 'crypto/ocsp/ocsp_ext.c'
source_filename = "crypto/ocsp/ocsp_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.X509_extension_st = type opaque
%struct.ocsp_one_request_st = type { %struct.ocsp_cert_id_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_cert_id_st = type { %struct.X509_algor_st, %struct.asn1_string_st, %struct.asn1_string_st, %struct.asn1_string_st }
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, %struct.asn1_string_st*, %struct.stack_st_X509* }
%struct.ocsp_response_data_st = type { %struct.asn1_string_st*, %struct.ocsp_responder_id_st, %struct.asn1_string_st*, %struct.stack_st_OCSP_SINGLERESP*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_responder_id_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.X509_name_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_OCSP_SINGLERESP = type opaque
%struct.ocsp_single_response_st = type { %struct.ocsp_cert_id_st*, %struct.ocsp_cert_status_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.ocsp_cert_status_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.ocsp_crl_id_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.ocsp_service_locator_st = type { %struct.X509_name_st*, %struct.stack_st_ACCESS_DESCRIPTION* }
%struct.stack_st_ACCESS_DESCRIPTION = type opaque
%struct.ACCESS_DESCRIPTION_st = type { %struct.asn1_object_st*, %struct.GENERAL_NAME_st* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/ocsp/ocsp_ext.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_get_ext_count(%struct.ocsp_request_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_get_ext_by_NID(%struct.ocsp_request_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_get_ext_by_OBJ(%struct.ocsp_request_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_get_ext_by_critical(%struct.ocsp_request_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

declare i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_REQUEST_get_ext(%struct.ocsp_request_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_REQUEST_delete_ext(%struct.ocsp_request_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

declare %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @OCSP_REQUEST_get1_ext_d2i(%struct.ocsp_request_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %requestExtensions, align 8, !tbaa !4
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

declare i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_add1_ext_i2d(%struct.ocsp_request_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %requestExtensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #5
  ret i32 %call
}

declare i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_REQUEST_add_ext(%struct.ocsp_request_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %x, i64 0, i32 0, i32 3
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %requestExtensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_get_ext_count(%struct.ocsp_one_request_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_get_ext_by_NID(%struct.ocsp_one_request_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_get_ext_by_OBJ(%struct.ocsp_one_request_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_get_ext_by_critical(%struct.ocsp_one_request_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_ONEREQ_get_ext(%struct.ocsp_one_request_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_ONEREQ_delete_ext(%struct.ocsp_one_request_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @OCSP_ONEREQ_get1_ext_d2i(%struct.ocsp_one_request_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleRequestExtensions, align 8, !tbaa !10
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_add1_ext_i2d(%struct.ocsp_one_request_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %singleRequestExtensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_ONEREQ_add_ext(%struct.ocsp_one_request_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleRequestExtensions = getelementptr inbounds %struct.ocsp_one_request_st, %struct.ocsp_one_request_st* %x, i64 0, i32 1
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %singleRequestExtensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_get_ext_count(%struct.ocsp_basic_response_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_get_ext_by_NID(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_get_ext_by_OBJ(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_get_ext_by_critical(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_BASICRESP_get_ext(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_BASICRESP_delete_ext(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @OCSP_BASICRESP_get1_ext_d2i(%struct.ocsp_basic_response_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %responseExtensions, align 8, !tbaa !12
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_add1_ext_i2d(%struct.ocsp_basic_response_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %responseExtensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_BASICRESP_add_ext(%struct.ocsp_basic_response_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %x, i64 0, i32 0, i32 4
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %responseExtensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_get_ext_count(%struct.ocsp_single_response_st* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call i32 @X509v3_get_ext_count(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_get_ext_by_NID(%struct.ocsp_single_response_st* nocapture noundef readonly %x, i32 noundef %nid, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call i32 @X509v3_get_ext_by_NID(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_get_ext_by_OBJ(%struct.ocsp_single_response_st* nocapture noundef readonly %x, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call i32 @X509v3_get_ext_by_OBJ(%struct.stack_st_X509_EXTENSION* noundef %0, %struct.asn1_object_st* noundef %obj, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_get_ext_by_critical(%struct.ocsp_single_response_st* nocapture noundef readonly %x, i32 noundef %crit, i32 noundef %lastpos) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call i32 @X509v3_get_ext_by_critical(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %crit, i32 noundef %lastpos) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_SINGLERESP_get_ext(%struct.ocsp_single_response_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call %struct.X509_extension_st* @X509v3_get_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_SINGLERESP_delete_ext(%struct.ocsp_single_response_st* nocapture noundef readonly %x, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call %struct.X509_extension_st* @X509v3_delete_ext(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %loc) #5
  ret %struct.X509_extension_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @OCSP_SINGLERESP_get1_ext_d2i(%struct.ocsp_single_response_st* nocapture noundef readonly %x, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %singleExtensions, align 8, !tbaa !18
  %call = tail call i8* @X509V3_get_d2i(%struct.stack_st_X509_EXTENSION* noundef %0, i32 noundef %nid, i32* noundef %crit, i32* noundef %idx) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_add1_ext_i2d(%struct.ocsp_single_response_st* noundef %x, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %call = tail call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef nonnull %singleExtensions, i32 noundef %nid, i8* noundef %value, i32 noundef %crit, i64 noundef %flags) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_SINGLERESP_add_ext(%struct.ocsp_single_response_st* noundef %x, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) local_unnamed_addr #0 {
entry:
  %singleExtensions = getelementptr inbounds %struct.ocsp_single_response_st, %struct.ocsp_single_response_st* %x, i64 0, i32 4
  %call = tail call %struct.stack_st_X509_EXTENSION* @X509v3_add_ext(%struct.stack_st_X509_EXTENSION** noundef nonnull %singleExtensions, %struct.X509_extension_st* noundef %ex, i32 noundef %loc) #5
  %cmp = icmp ne %struct.stack_st_X509_EXTENSION* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_request_add1_nonce(%struct.ocsp_request_st* noundef %req, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %requestExtensions = getelementptr inbounds %struct.ocsp_request_st, %struct.ocsp_request_st* %req, i64 0, i32 0, i32 3
  %call = tail call fastcc i32 @ocsp_add1_nonce(%struct.stack_st_X509_EXTENSION** noundef nonnull %requestExtensions, i8* noundef %val, i32 noundef %len) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ocsp_add1_nonce(%struct.stack_st_X509_EXTENSION** noundef %exts, i8* noundef %val, i32 noundef %len) unnamed_addr #0 {
entry:
  %tmpval = alloca i8*, align 8
  %os = alloca %struct.asn1_string_st, align 8
  %0 = bitcast i8** %tmpval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.asn1_string_st* %os to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7
  %cmp = icmp slt i32 %len, 1
  %spec.store.select = select i1 %cmp, i32 16, i32 %len
  %call = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %spec.store.select, i32 noundef 4) #5
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os, i64 0, i32 0
  store i32 %call, i32* %length, align 8, !tbaa !20
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %conv35 = zext i32 %call to i64
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef %conv35, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 262) #5
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os, i64 0, i32 2
  store i8* %call6, i8** %data, align 8, !tbaa !23
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %err, label %if.end11

if.end11:                                         ; preds = %if.end4
  store i8* %call6, i8** %tmpval, align 8, !tbaa !24
  call void @ASN1_put_object(i8** noundef nonnull %tmpval, i32 noundef 0, i32 noundef %spec.store.select, i32 noundef 4, i32 noundef 0) #5
  %tobool.not = icmp eq i8* %val, null
  %2 = load i8*, i8** %tmpval, align 8, !tbaa !24
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %conv1436 = zext i32 %spec.store.select to i64
  %call15 = call i8* @memcpy(i8* noundef %2, i8* noundef nonnull %val, i64 noundef %conv1436) #5
  br label %if.end21

if.else:                                          ; preds = %if.end11
  %call16 = call i32 @RAND_bytes(i8* noundef %2, i32 noundef %spec.store.select) #5
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %err, label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13
  %call22 = call i32 @X509V3_add1_i2d(%struct.stack_st_X509_EXTENSION** noundef %exts, i32 noundef 366, i8* noundef nonnull %1, i32 noundef 0, i64 noundef 2) #5
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  %.pre = load i8*, i8** %data, align 8, !tbaa !23
  br label %err

err:                                              ; preds = %if.end21, %if.else, %if.end4
  %3 = phi i8* [ null, %if.end4 ], [ %call6, %if.else ], [ %.pre, %if.end21 ]
  %ret.0 = phi i32 [ 0, %if.end4 ], [ 0, %if.else ], [ %spec.select, %if.end21 ]
  call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 276) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_basic_add1_nonce(%struct.ocsp_basic_response_st* noundef %resp, i8* noundef %val, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %responseExtensions = getelementptr inbounds %struct.ocsp_basic_response_st, %struct.ocsp_basic_response_st* %resp, i64 0, i32 0, i32 4
  %call = tail call fastcc i32 @ocsp_add1_nonce(%struct.stack_st_X509_EXTENSION** noundef nonnull %responseExtensions, i8* noundef %val, i32 noundef %len) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_check_nonce(%struct.ocsp_request_st* nocapture noundef readonly %req, %struct.ocsp_basic_response_st* nocapture noundef readonly %bs) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OCSP_REQUEST_get_ext_by_NID(%struct.ocsp_request_st* noundef %req, i32 noundef 366, i32 noundef -1) #6
  %call1 = tail call i32 @OCSP_BASICRESP_get_ext_by_NID(%struct.ocsp_basic_response_st* noundef %bs, i32 noundef 366, i32 noundef -1) #6
  %cmp = icmp slt i32 %call, 0
  %cmp2 = icmp slt i32 %call1, 0
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp sgt i32 %call, -1
  %or.cond23 = select i1 %cmp3, i1 %cmp2, i1 false
  br i1 %or.cond23, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp10 = icmp sgt i32 %call1, -1
  %or.cond24 = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %or.cond24, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = tail call %struct.X509_extension_st* @OCSP_REQUEST_get_ext(%struct.ocsp_request_st* noundef %req, i32 noundef %call) #6
  %call14 = tail call %struct.X509_extension_st* @OCSP_BASICRESP_get_ext(%struct.ocsp_basic_response_st* noundef %bs, i32 noundef %call1) #6
  %call15 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call13) #5
  %call16 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call14) #5
  %call17 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call15, %struct.asn1_string_st* noundef %call16) #5
  %tobool.not = icmp eq i32 %call17, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7, %if.end, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ -1, %if.end ], [ 3, %if.end7 ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @OCSP_copy_nonce(%struct.ocsp_basic_response_st* noundef %resp, %struct.ocsp_request_st* nocapture noundef readonly %req) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OCSP_REQUEST_get_ext_by_NID(%struct.ocsp_request_st* noundef %req, i32 noundef 366, i32 noundef -1) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_extension_st* @OCSP_REQUEST_get_ext(%struct.ocsp_request_st* noundef %req, i32 noundef %call) #6
  %call2 = tail call i32 @OCSP_BASICRESP_add_ext(%struct.ocsp_basic_response_st* noundef %resp, %struct.X509_extension_st* noundef %call1, i32 noundef -1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_crlID_new(i8* noundef %url, i64* noundef readonly %n, i8* noundef %tim) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ocsp_crl_id_st* @OCSP_CRLID_new() #5
  %cmp = icmp eq %struct.ocsp_crl_id_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8* %url, null
  br i1 %tobool.not, label %if.end11, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.asn1_string_st* @ASN1_IA5STRING_new() #5
  %crlUrl = getelementptr inbounds %struct.ocsp_crl_id_st, %struct.ocsp_crl_id_st* %call, i64 0, i32 0
  store %struct.asn1_string_st* %call2, %struct.asn1_string_st** %crlUrl, align 8, !tbaa !25
  %cmp3 = icmp eq %struct.asn1_string_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.then1
  %call7 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call2, i8* noundef nonnull %url, i32 noundef -1) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end5, %if.end
  %tobool12.not = icmp eq i64* %n, null
  br i1 %tobool12.not, label %if.end23, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #5
  %crlNum = getelementptr inbounds %struct.ocsp_crl_id_st, %struct.ocsp_crl_id_st* %call, i64 0, i32 1
  store %struct.asn1_string_st* %call14, %struct.asn1_string_st** %crlNum, align 8, !tbaa !27
  %cmp15 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.then13
  %0 = load i64, i64* %n, align 8, !tbaa !28
  %call19 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call14, i64 noundef %0) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end17, %if.end11
  %tobool24.not = icmp eq i8* %tim, null
  br i1 %tobool24.not, label %if.end35, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #5
  %crlTime = getelementptr inbounds %struct.ocsp_crl_id_st, %struct.ocsp_crl_id_st* %call, i64 0, i32 2
  store %struct.asn1_string_st* %call26, %struct.asn1_string_st** %crlTime, align 8, !tbaa !29
  %cmp27 = icmp eq %struct.asn1_string_st* %call26, null
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %if.then25
  %call31 = tail call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef nonnull %call26, i8* noundef nonnull %tim) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end29, %if.end23
  %1 = bitcast %struct.ocsp_crl_id_st* %call to i8*
  %call36 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef 367, i32 noundef 0, i8* noundef nonnull %1) #5
  br label %err

err:                                              ; preds = %if.end29, %if.then25, %if.end17, %if.then13, %if.end5, %if.then1, %entry, %if.end35
  %x.0 = phi %struct.X509_extension_st* [ null, %entry ], [ null, %if.then1 ], [ null, %if.then13 ], [ null, %if.then25 ], [ %call36, %if.end35 ], [ null, %if.end29 ], [ null, %if.end17 ], [ null, %if.end5 ]
  tail call void @OCSP_CRLID_free(%struct.ocsp_crl_id_st* noundef %call) #5
  ret %struct.X509_extension_st* %x.0
}

declare %struct.ocsp_crl_id_st* @OCSP_CRLID_new() local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_IA5STRING_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @OCSP_CRLID_free(%struct.ocsp_crl_id_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_accept_responses_new(i8** noundef readonly %oids) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_ASN1_OBJECT*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not23 = icmp eq i8** %oids, null
  br i1 %tobool.not23, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %1 = load i8*, i8** %oids, align 8, !tbaa !24
  %tobool1.not25 = icmp eq i8* %1, null
  br i1 %tobool1.not25, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs.preheader, %if.end10
  %2 = phi i8* [ %4, %if.end10 ], [ %1, %land.rhs.preheader ]
  %oids.addr.02426 = phi i8** [ %incdec.ptr, %if.end10 ], [ %oids, %land.rhs.preheader ]
  %call2 = tail call i32 @OBJ_txt2nid(i8* noundef nonnull %2) #5
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call4 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call2) #5
  %tobool5.not = icmp eq %struct.asn1_object_st* %call4, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %0) #6
  %3 = bitcast %struct.asn1_object_st* %call4 to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef nonnull %3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true, %while.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %oids.addr.02426, i64 1
  %4 = load i8*, i8** %incdec.ptr, align 8, !tbaa !24
  %tobool1.not = icmp eq i8* %4, null
  br i1 %tobool1.not, label %while.end, label %while.body, !llvm.loop !30

while.end:                                        ; preds = %if.end10, %land.rhs.preheader, %while.cond.preheader
  %5 = bitcast %struct.stack_st* %call to i8*
  %call11 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef 368, i32 noundef 0, i8* noundef nonnull %5) #5
  br label %err

err:                                              ; preds = %entry, %while.end
  %x.0 = phi %struct.X509_extension_st* [ null, %entry ], [ %call11, %while.end ]
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call12, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #5
  ret %struct.X509_extension_st* %x.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_archive_cutoff_new(i8* noundef %tim) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef nonnull %call, i8* noundef %tim) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call4 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef 370, i32 noundef 0, i8* noundef nonnull %0) #5
  br label %err

err:                                              ; preds = %if.end, %entry, %if.end3
  %x.0 = phi %struct.X509_extension_st* [ null, %entry ], [ %call4, %if.end3 ], [ null, %if.end ]
  tail call void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef %call) #5
  ret %struct.X509_extension_st* %x.0
}

declare void @ASN1_GENERALIZEDTIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_extension_st* @OCSP_url_svcloc_new(%struct.X509_name_st* noundef %issuer, i8** noundef readonly %urls) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ocsp_service_locator_st* @OCSP_SERVICELOC_new() #5
  %cmp = icmp eq %struct.ocsp_service_locator_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %issuer1 = getelementptr inbounds %struct.ocsp_service_locator_st, %struct.ocsp_service_locator_st* %call, i64 0, i32 0
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer1, align 8, !tbaa !32
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %0) #5
  %call2 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %issuer) #5
  store %struct.X509_name_st* %call2, %struct.X509_name_st** %issuer1, align 8, !tbaa !32
  %cmp4 = icmp eq %struct.X509_name_st* %call2, null
  br i1 %cmp4, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %cond = icmp eq i8** %urls, null
  br i1 %cond, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %1 = load i8*, i8** %urls, align 8, !tbaa !24
  %tobool7.not = icmp eq i8* %1, null
  br i1 %tobool7.not, label %land.rhs.lr.ph, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %locator = getelementptr inbounds %struct.ocsp_service_locator_st, %struct.ocsp_service_locator_st* %call, i64 0, i32 1
  %2 = bitcast %struct.stack_st_ACCESS_DESCRIPTION** %locator to %struct.stack_st**
  store %struct.stack_st* %call9, %struct.stack_st** %2, align 8, !tbaa !34
  %cmp10 = icmp eq %struct.stack_st* %call9, null
  br i1 %cmp10, label %err, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.lhs.true, %land.lhs.true8
  %locator33 = getelementptr inbounds %struct.ocsp_service_locator_st, %struct.ocsp_service_locator_st* %call, i64 0, i32 1
  %3 = load i8*, i8** %urls, align 8, !tbaa !24
  %tobool14.not63 = icmp eq i8* %3, null
  br i1 %tobool14.not63, label %while.end, label %while.body

land.rhs:                                         ; preds = %if.end30
  %4 = load i8*, i8** %incdec.ptr, align 8, !tbaa !24
  %tobool14.not = icmp eq i8* %4, null
  br i1 %tobool14.not, label %while.end, label %while.body, !llvm.loop !35

while.body:                                       ; preds = %land.rhs.lr.ph, %land.rhs
  %urls.addr.06264 = phi i8** [ %incdec.ptr, %land.rhs ], [ %urls, %land.rhs.lr.ph ]
  %call15 = tail call %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() #5
  %cmp16 = icmp eq %struct.ACCESS_DESCRIPTION_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %while.body
  %call19 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 178) #5
  %method = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call15, i64 0, i32 0
  store %struct.asn1_object_st* %call19, %struct.asn1_object_st** %method, align 8, !tbaa !36
  %cmp20 = icmp eq %struct.asn1_object_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %call23 = tail call %struct.asn1_string_st* @ASN1_IA5STRING_new() #5
  %cmp24 = icmp eq %struct.asn1_string_st* %call23, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end22
  %5 = load i8*, i8** %urls.addr.06264, align 8, !tbaa !24
  %call27 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call23, i8* noundef %5, i32 noundef -1) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end26
  %location = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call15, i64 0, i32 1
  %6 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %location, align 8, !tbaa !38
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %6, i64 0, i32 0
  store i32 6, i32* %type, align 8, !tbaa !39
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %6, i64 0, i32 1
  %ia532 = bitcast %union.anon* %d to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call23, %struct.asn1_string_st** %ia532, align 8, !tbaa !41
  %7 = load %struct.stack_st_ACCESS_DESCRIPTION*, %struct.stack_st_ACCESS_DESCRIPTION** %locator33, align 8, !tbaa !34
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef %7) #6
  %8 = bitcast %struct.ACCESS_DESCRIPTION_st* %call15 to i8*
  %call36 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call34, i8* noundef nonnull %8) #5
  %tobool37.not = icmp eq i32 %call36, 0
  %incdec.ptr = getelementptr inbounds i8*, i8** %urls.addr.06264, i64 1
  br i1 %tobool37.not, label %err, label %land.rhs

while.end:                                        ; preds = %land.rhs, %land.rhs.lr.ph, %if.end6
  %9 = bitcast %struct.ocsp_service_locator_st* %call to i8*
  %call40 = tail call %struct.X509_extension_st* @X509V3_EXT_i2d(i32 noundef 371, i32 noundef 0, i8* noundef nonnull %9) #5
  br label %err

err:                                              ; preds = %if.end30, %if.end26, %if.end22, %if.end18, %while.body, %land.lhs.true8, %if.end, %entry, %while.end
  %x.0 = phi %struct.X509_extension_st* [ null, %entry ], [ null, %if.end ], [ null, %land.lhs.true8 ], [ %call40, %while.end ], [ null, %while.body ], [ null, %if.end18 ], [ null, %if.end22 ], [ null, %if.end26 ], [ null, %if.end30 ]
  %ia5.1 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.end ], [ null, %land.lhs.true8 ], [ null, %while.end ], [ null, %if.end30 ], [ %call23, %if.end26 ], [ null, %if.end22 ], [ null, %if.end18 ], [ null, %while.body ]
  %ad.1 = phi %struct.ACCESS_DESCRIPTION_st* [ null, %entry ], [ null, %if.end ], [ null, %land.lhs.true8 ], [ null, %while.end ], [ %call15, %if.end30 ], [ %call15, %if.end26 ], [ %call15, %if.end22 ], [ %call15, %if.end18 ], [ null, %while.body ]
  tail call void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef %ia5.1) #5
  tail call void @ACCESS_DESCRIPTION_free(%struct.ACCESS_DESCRIPTION_st* noundef %ad.1) #5
  tail call void @OCSP_SERVICELOC_free(%struct.ocsp_service_locator_st* noundef %call) #5
  ret %struct.X509_extension_st* %x.0
}

declare %struct.ocsp_service_locator_st* @OCSP_SERVICELOC_new() local_unnamed_addr #1

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ACCESS_DESCRIPTION_sk_type(%struct.stack_st_ACCESS_DESCRIPTION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ACCESS_DESCRIPTION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_IA5STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ACCESS_DESCRIPTION_free(%struct.ACCESS_DESCRIPTION_st* noundef) local_unnamed_addr #1

declare void @OCSP_SERVICELOC_free(%struct.ocsp_service_locator_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_put_object(i8** noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 24}
!5 = !{!"ocsp_request_st", !6, i64 0, !7, i64 32}
!6 = !{!"ocsp_req_info_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"ocsp_one_request_st", !7, i64 0, !7, i64 8}
!12 = !{!13, !7, i64 40}
!13 = !{!"ocsp_basic_response_st", !14, i64 0, !17, i64 48, !7, i64 64, !7, i64 72}
!14 = !{!"ocsp_response_data_st", !7, i64 0, !15, i64 8, !7, i64 24, !7, i64 32, !7, i64 40}
!15 = !{!"ocsp_responder_id_st", !16, i64 0, !8, i64 8}
!16 = !{!"int", !8, i64 0}
!17 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!18 = !{!19, !7, i64 32}
!19 = !{!"ocsp_single_response_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!20 = !{!21, !16, i64 0}
!21 = !{!"asn1_string_st", !16, i64 0, !16, i64 4, !7, i64 8, !22, i64 16}
!22 = !{!"long", !8, i64 0}
!23 = !{!21, !7, i64 8}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !7, i64 0}
!26 = !{!"ocsp_crl_id_st", !7, i64 0, !7, i64 8, !7, i64 16}
!27 = !{!26, !7, i64 8}
!28 = !{!22, !22, i64 0}
!29 = !{!26, !7, i64 16}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !7, i64 0}
!33 = !{!"ocsp_service_locator_st", !7, i64 0, !7, i64 8}
!34 = !{!33, !7, i64 8}
!35 = distinct !{!35, !31}
!36 = !{!37, !7, i64 0}
!37 = !{!"ACCESS_DESCRIPTION_st", !7, i64 0, !7, i64 8}
!38 = !{!37, !7, i64 8}
!39 = !{!40, !16, i64 0}
!40 = !{!"GENERAL_NAME_st", !16, i64 0, !8, i64 8}
!41 = !{!8, !8, i64 0}
