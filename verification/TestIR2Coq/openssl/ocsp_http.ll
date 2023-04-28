; ModuleID = 'crypto/ocsp/ocsp_http.c'
source_filename = "crypto/ocsp/ocsp_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.ocsp_request_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ocsp_response_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"application/ocsp-request\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_http_req_ctx_st* @OCSP_sendreq_new(%struct.bio_st* noundef %io, i8* noundef %path, %struct.ocsp_request_st* noundef %req, i32 noundef %buf_size) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_http_req_ctx_st* @OSSL_HTTP_REQ_CTX_new(%struct.bio_st* noundef %io, %struct.bio_st* noundef %io, i32 noundef %buf_size) #2
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @OSSL_HTTP_REQ_CTX_set_request_line(%struct.ossl_http_req_ctx_st* noundef nonnull %call, i32 noundef 1, i8* noundef null, i8* noundef null, i8* noundef %path) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @OSSL_HTTP_REQ_CTX_set_expected(%struct.ossl_http_req_ctx_st* noundef nonnull %call, i8* noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %cmp8.not = icmp eq %struct.ocsp_request_st* %req, null
  br i1 %cmp8.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call9 = tail call %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() #2
  %0 = bitcast %struct.ocsp_request_st* %req to %struct.ASN1_VALUE_st*
  %call10 = tail call i32 @OSSL_HTTP_REQ_CTX_set1_req(%struct.ossl_http_req_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ASN1_ITEM_st* noundef %call9, %struct.ASN1_VALUE_st* noundef nonnull %0) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %cleanup

err:                                              ; preds = %land.lhs.true, %if.end3, %if.end
  tail call void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true, %entry, %err
  %retval.0 = phi %struct.ossl_http_req_ctx_st* [ null, %err ], [ null, %entry ], [ %call, %land.lhs.true ], [ %call, %if.end7 ]
  ret %struct.ossl_http_req_ctx_st* %retval.0
}

declare %struct.ossl_http_req_ctx_st* @OSSL_HTTP_REQ_CTX_new(%struct.bio_st* noundef, %struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_HTTP_REQ_CTX_set_request_line(%struct.ossl_http_req_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_HTTP_REQ_CTX_set_expected(%struct.ossl_http_req_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_HTTP_REQ_CTX_set1_req(%struct.ossl_http_req_ctx_st* noundef, i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @OCSP_REQUEST_it() local_unnamed_addr #1

declare void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ocsp_response_st* @OCSP_sendreq_bio(%struct.bio_st* noundef %b, i8* noundef %path, %struct.ocsp_request_st* noundef %req) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_http_req_ctx_st* @OCSP_sendreq_new(%struct.bio_st* noundef %b, i8* noundef %path, %struct.ocsp_request_st* noundef %req, i32 noundef 0) #3
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @OSSL_HTTP_REQ_CTX_exchange(%struct.ossl_http_req_ctx_st* noundef nonnull %call) #2
  %call2 = tail call %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() #2
  %call3 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call2, %struct.bio_st* noundef %call1, i8* noundef null) #2
  %0 = bitcast i8* %call3 to %struct.ocsp_response_st*
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #2
  tail call void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ocsp_response_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ocsp_response_st* %retval.0
}

declare %struct.bio_st* @OSSL_HTTP_REQ_CTX_exchange(%struct.ossl_http_req_ctx_st* noundef) local_unnamed_addr #1

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @OCSP_RESPONSE_it() local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
