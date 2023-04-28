; ModuleID = 'crypto/http/http_client.c'
source_filename = "crypto/http/http_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_http_req_ctx_st = type { i32, i8*, i32, i32, %struct.bio_st*, %struct.bio_st*, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, i8*, i8*, i8*, %struct.bio_st*, %struct.bio_st*, i32, i8*, i32, i8*, i64, i64, i64, i32, i64, i64, i8* }
%struct.bio_st = type opaque
%struct.bio_method_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [26 x i8] c"crypto/http/http_client.c\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_new = private unnamed_addr constant [22 x i8] c"OSSL_HTTP_REQ_CTX_new\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_get0_mem_bio = private unnamed_addr constant [31 x i8] c"OSSL_HTTP_REQ_CTX_get0_mem_bio\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_get_resp_len = private unnamed_addr constant [31 x i8] c"OSSL_HTTP_REQ_CTX_get_resp_len\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_set_max_response_length = private unnamed_addr constant [42 x i8] c"OSSL_HTTP_REQ_CTX_set_max_response_length\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_set_request_line = private unnamed_addr constant [35 x i8] c"OSSL_HTTP_REQ_CTX_set_request_line\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"http://%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s HTTP/1.0\0D\0A\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_add1_header = private unnamed_addr constant [30 x i8] c"OSSL_HTTP_REQ_CTX_add1_header\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_set_expected = private unnamed_addr constant [31 x i8] c"OSSL_HTTP_REQ_CTX_set_expected\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_nbio = private unnamed_addr constant [23 x i8] c"OSSL_HTTP_REQ_CTX_nbio\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"expected=%s, actual=%s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"input=%s\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"expected=%s\00", align 1
@__func__.OSSL_HTTP_REQ_CTX_exchange = private unnamed_addr constant [27 x i8] c"OSSL_HTTP_REQ_CTX_exchange\00", align 1
@__func__.OSSL_HTTP_open = private unnamed_addr constant [15 x i8] c"OSSL_HTTP_open\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@__func__.OSSL_HTTP_set1_request = private unnamed_addr constant [23 x i8] c"OSSL_HTTP_set1_request\00", align 1
@__func__.OSSL_HTTP_exchange = private unnamed_addr constant [19 x i8] c"OSSL_HTTP_exchange\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"server=http%s://%s%s%s\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" proxy=\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c" peer has disconnected%s\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" violating the protocol\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c", likely because it requires the use of TLS\00", align 1
@__func__.OSSL_HTTP_get = private unnamed_addr constant [14 x i8] c"OSSL_HTTP_get\00", align 1
@__func__.OSSL_HTTP_proxy_connect = private unnamed_addr constant [24 x i8] c"OSSL_HTTP_proxy_connect\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: out of memory\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"CONNECT %s:%s HTTP/1.0\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Proxy-Connection: Keep-Alive\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Proxy-Authorization: Basic %s\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"%s: HTTP CONNECT %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"failed waiting for data\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"%s: HTTP CONNECT failed, non-HTTP response\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"1.\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"%s: HTTP CONNECT failed, bad HTTP version %.*s\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c" 2\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"reason=%s\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"%s: HTTP CONNECT failed, reason=%s\0A\00", align 1
@__func__.set1_content = private unnamed_addr constant [13 x i8] c"set1_content\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Content-Type: %s\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Content-Length: %ld\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"HTTP/1.\00", align 1
@__func__.parse_http_line1 = private unnamed_addr constant [17 x i8] c"parse_http_line1\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"code=%s\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"code=%s, reason=%s\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"content=%s\00", align 1
@__func__.check_set_resp_len = private unnamed_addr constant [19 x i8] c"check_set_resp_len\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"length=%zu, max=%zu\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"ASN.1 length=%zu, Content-Length=%zu\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@__func__.redirection_ok = private unnamed_addr constant [15 x i8] c"redirection_ok\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"https:\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_http_req_ctx_st* @OSSL_HTTP_REQ_CTX_new(%struct.bio_st* noundef %wbio, %struct.bio_st* noundef %rbio, i32 noundef %buf_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %wbio, null
  %cmp1 = icmp eq %struct.bio_st* %rbio, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.OSSL_HTTP_REQ_CTX_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 192, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 99) #7
  %0 = bitcast i8* %call to %struct.ossl_http_req_ctx_st*
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %state = bitcast i8* %call to i32*
  store i32 4096, i32* %state, align 8, !tbaa !4
  %cmp5 = icmp sgt i32 %buf_size, 0
  %cond = select i1 %cmp5, i32 %buf_size, i32 4096
  %buf_size6 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %buf_size6 to i32*
  store i32 %cond, i32* %1, align 8, !tbaa !11
  %conv29 = zext i32 %cond to i64
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %conv29, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #7
  %buf = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %buf to i8**
  store i8* %call8, i8** %2, align 8, !tbaa !12
  %wbio9 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %wbio9 to %struct.bio_st**
  store %struct.bio_st* %wbio, %struct.bio_st** %3, align 8, !tbaa !13
  %rbio10 = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %rbio10 to %struct.bio_st**
  store %struct.bio_st* %rbio, %struct.bio_st** %4, align 8, !tbaa !14
  %cmp12 = icmp eq i8* %call8, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %max_resp_len = getelementptr inbounds i8, i8* %call, i64 152
  %5 = bitcast i8* %max_resp_len to i64*
  store i64 102400, i64* %5, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end15, %if.then14, %if.then
  %retval.0 = phi %struct.ossl_http_req_ctx_st* [ null, %if.then ], [ null, %if.then14 ], [ %0, %if.end15 ], [ null, %if.end ]
  ret %struct.ossl_http_req_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef %rctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %free_wbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 3
  %0 = load i32, i32* %free_wbio, align 4, !tbaa !16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %wbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 4
  %1 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  tail call void @BIO_free_all(%struct.bio_st* noundef %1) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %2 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %2) #7
  %req = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 13
  %3 = load %struct.bio_st*, %struct.bio_st** %req, align 8, !tbaa !18
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %3) #7
  %buf = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 1
  %4 = load i8*, i8** %buf, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #7
  %proxy = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 9
  %5 = load i8*, i8** %proxy, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #7
  %server = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 10
  %6 = load i8*, i8** %server, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 131) #7
  %port = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 11
  %7 = load i8*, i8** %port, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 132) #7
  %expected_ct = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 15
  %8 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 133) #7
  %9 = bitcast %struct.ossl_http_req_ctx_st* %rctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 134) #7
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @OSSL_HTTP_REQ_CTX_get0_mem_bio(%struct.ossl_http_req_ctx_st* noundef readonly %rctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_HTTP_REQ_CTX_get0_mem_bio, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %0 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @OSSL_HTTP_REQ_CTX_get_resp_len(%struct.ossl_http_req_ctx_st* noundef readonly %rctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_HTTP_REQ_CTX_get_resp_len, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %resp_len = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 19
  %0 = load i64, i64* %resp_len, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_HTTP_REQ_CTX_set_max_response_length(%struct.ossl_http_req_ctx_st* noundef writeonly %rctx, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.OSSL_HTTP_REQ_CTX_set_max_response_length, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i64 %len, 0
  %cond = select i1 %cmp1.not, i64 102400, i64 %len
  %max_resp_len = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 20
  store i64 %cond, i64* %max_resp_len, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_set_request_line(%struct.ossl_http_req_ctx_st* noundef %rctx, i32 noundef %method_POST, i8* noundef %server, i8* noundef %port, i8* noundef %path) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.OSSL_HTTP_REQ_CTX_set_request_line, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %0 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %0) #7
  %call1 = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #7
  store %struct.bio_st* %call2, %struct.bio_st** %mem, align 8, !tbaa !17
  %cmp4 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp ne i32 %method_POST, 0
  %conv = zext i1 %cmp7 to i32
  %method_POST8 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 14
  store i32 %conv, i32* %method_POST8, align 8, !tbaa !24
  %cond = select i1 %cmp7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %cond) #7
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %return, label %if.end15

if.end15:                                         ; preds = %if.end6
  %cmp16.not = icmp eq i8* %server, null
  br i1 %cmp16.not, label %if.end33, label %if.then18

if.then18:                                        ; preds = %if.end15
  %1 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %server) #7
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %return, label %if.end24

if.end24:                                         ; preds = %if.then18
  %cmp25.not = icmp eq i8* %port, null
  br i1 %cmp25.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %2 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %port) #7
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %return, label %if.end33

if.end33:                                         ; preds = %if.end24, %land.lhs.true, %if.end15
  %cmp34 = icmp eq i8* %path, null
  %spec.store.select = select i1 %cmp34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %path
  %3 = load i8, i8* %spec.store.select, align 1, !tbaa !25
  %cmp39.not = icmp eq i8 %3, 47
  br i1 %cmp39.not, label %if.end47, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end33
  %4 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call43 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #7
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %return, label %if.end47

if.end47:                                         ; preds = %land.lhs.true41, %if.end33
  %5 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %spec.store.select) #7
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %return, label %if.end53

if.end53:                                         ; preds = %if.end47
  %resp_len = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 19
  store i64 0, i64* %resp_len, align 8, !tbaa !23
  %state = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 0
  store i32 4097, i32* %state, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end47, %land.lhs.true41, %land.lhs.true, %if.then18, %if.end6, %if.end, %if.end53, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end53 ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.then18 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true41 ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_add1_header(%struct.ossl_http_req_ctx_st* noundef readonly %rctx, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  %cmp1 = icmp eq i8* %name, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_HTTP_REQ_CTX_add1_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %0 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %cmp2 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_HTTP_REQ_CTX_add1_header, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, i8* noundef null) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef nonnull %0, i8* noundef nonnull %name) #7
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %cmp9.not = icmp eq i8* %value, null
  br i1 %cmp9.not, label %if.end21, label %if.then10

if.then10:                                        ; preds = %if.end8
  %1 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call12 = tail call i32 @BIO_write(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 noundef 2) #7
  %cmp13.not = icmp eq i32 %call12, 2
  br i1 %cmp13.not, label %if.end15, label %return

if.end15:                                         ; preds = %if.then10
  %2 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call17 = tail call i32 @BIO_puts(%struct.bio_st* noundef %2, i8* noundef nonnull %value) #7
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %return, label %if.end21

if.end21:                                         ; preds = %if.end15, %if.end8
  %3 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call23 = tail call i32 @BIO_write(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef 2) #7
  %cmp24 = icmp eq i32 %call23, 2
  %conv = zext i1 %cmp24 to i32
  br label %return

return:                                           ; preds = %if.end15, %if.then10, %if.end4, %if.end21, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %conv, %if.end21 ], [ 0, %if.end4 ], [ 0, %if.then10 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_set_expected(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %content_type, i32 noundef %asn1, i32 noundef %timeout, i32 noundef %keep_alive) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_HTTP_REQ_CTX_set_expected, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 %keep_alive, 0
  br i1 %cmp1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 0
  %0 = load i32, i32* %state, align 8, !tbaa !4
  %1 = and i32 %0, -2
  %switch = icmp eq i32 %1, 4096
  br i1 %switch, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.OSSL_HTTP_REQ_CTX_set_expected, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, i8* noundef null) #7
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %expected_ct = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 15
  %2 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 251) #7
  store i8* null, i8** %expected_ct, align 8, !tbaa !22
  %cmp9.not = icmp eq i8* %content_type, null
  br i1 %cmp9.not, label %if.end14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end7
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %content_type, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 254) #7
  store i8* %call, i8** %expected_ct, align 8, !tbaa !22
  %cmp12 = icmp eq i8* %call, null
  br i1 %cmp12, label %return, label %if.end14

if.end14:                                         ; preds = %land.lhs.true10, %if.end7
  %expect_asn1 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 16
  store i32 %asn1, i32* %expect_asn1, align 8, !tbaa !26
  %cmp15 = icmp sgt i32 %timeout, -1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %cmp17.not = icmp eq i32 %timeout, 0
  br i1 %cmp17.not, label %if.end20, label %cond.true

cond.true:                                        ; preds = %if.then16
  %call18 = tail call i64 @time(i64* noundef null) #7
  %conv36 = zext i32 %timeout to i64
  %add = add nsw i64 %call18, %conv36
  br label %if.end20

if.else:                                          ; preds = %if.end14
  %max_total_time = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 23
  %3 = load i64, i64* %max_total_time, align 8, !tbaa !27
  br label %if.end20

if.end20:                                         ; preds = %cond.true, %if.then16, %if.else
  %.sink = phi i64 [ %3, %if.else ], [ %add, %cond.true ], [ 0, %if.then16 ]
  %max_time19 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 22
  store i64 %.sink, i64* %max_time19, align 8, !tbaa !28
  %keep_alive21 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 21
  store i32 %keep_alive, i32* %keep_alive21, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %land.lhs.true10, %if.end20, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.end20 ], [ 0, %land.lhs.true10 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_set1_req(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %content_type, %struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st* noundef %req) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ASN1_VALUE_st* %req, null
  br i1 %cmp.not, label %land.rhs, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st* noundef nonnull %req) #7
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %if.end
  %mem.012 = phi %struct.bio_st* [ %call, %if.end ], [ null, %entry ]
  %call2 = tail call fastcc i32 @set1_content(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %content_type, %struct.bio_st* noundef %mem.012) #8
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %mem.013 = phi %struct.bio_st* [ null, %if.end ], [ %mem.012, %land.rhs ]
  %0 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef %mem.013) #7
  ret i32 %0
}

declare %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set1_content(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %content_type, %struct.bio_st* noundef %req) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq %struct.bio_st* %req, null
  %cmp2 = icmp ne i8* %content_type, null
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.set1_content, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %keep_alive = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 21
  %0 = load i32, i32* %keep_alive, align 8, !tbaa !29
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %if.end6, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %call = tail call i32 @OSSL_HTTP_REQ_CTX_add1_header(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true4, %if.end
  %req7 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 13
  %1 = load %struct.bio_st*, %struct.bio_st** %req7, align 8, !tbaa !18
  %call8 = tail call i32 @BIO_free(%struct.bio_st* noundef %1) #7
  store %struct.bio_st* null, %struct.bio_st** %req7, align 8, !tbaa !18
  br i1 %cmp1, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end6
  %method_POST = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 14
  %2 = load i32, i32* %method_POST, align 8, !tbaa !24
  %tobool13.not = icmp eq i32 %2, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.set1_content, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, i8* noundef null) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  br i1 %cmp2, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %if.end15
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %3 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call18 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* noundef nonnull %content_type) #7
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %if.end15
  %call22 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %req, i32 noundef 3, i64 noundef 0, i8* noundef null) #7
  %cmp23 = icmp slt i64 %call22, 1
  br i1 %cmp23, label %land.lhs.true28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %mem25 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %4 = load %struct.bio_st*, %struct.bio_st** %mem25, align 8, !tbaa !17
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i64 noundef %call22) #7
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true28, label %cleanup

land.lhs.true28:                                  ; preds = %lor.lhs.false24, %if.end21
  %call29 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %req) #7
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  store %struct.bio_st* %req, %struct.bio_st** %req7, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false24, %land.lhs.true28, %land.lhs.true17, %if.end6, %land.lhs.true4, %if.then31, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then31 ], [ 0, %if.then14 ], [ 0, %land.lhs.true4 ], [ 1, %if.end6 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true28 ], [ 0, %lor.lhs.false24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_nbio(%struct.ossl_http_req_ctx_st* noundef %rctx) local_unnamed_addr #0 {
entry:
  %found_keep_alive = alloca i32, align 4
  %p = alloca i8*, align 8
  %line_end = alloca i8*, align 8
  %0 = bitcast i32* %found_keep_alive to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %found_keep_alive, align 4, !tbaa !30
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i8** %line_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %line_end, align 8, !tbaa !31
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %3 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %cmp1 = icmp eq %struct.bio_st* %3, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %wbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 4
  %4 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %cmp2 = icmp eq %struct.bio_st* %4, null
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %rbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 5
  %5 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !14
  %cmp4 = icmp eq %struct.bio_st* %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 484, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786689, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false3
  %redirection_url = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 24
  store i8* null, i8** %redirection_url, align 8, !tbaa !32
  %state = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 0
  %expect_asn1 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 16
  %buf = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 1
  %buf_size = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 2
  %method_POST = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 14
  %expected_ct = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 15
  %keep_alive = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 21
  %pos = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 17
  %6 = bitcast i8** %pos to i8*
  %len_to_send = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 18
  %req = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 13
  %resp_len377 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 19
  br label %next_io

next_io:                                          ; preds = %next_io.backedge, %if.end6
  %found_expected_ct.0 = phi i32 [ 0, %if.end6 ], [ %found_expected_ct.0.be, %next_io.backedge ]
  %7 = load i32, i32* %state, align 8, !tbaa !4
  %and = and i32 %7, 4096
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end35

if.then8:                                         ; preds = %next_io
  %8 = load i32, i32* %expect_asn1, align 8, !tbaa !26
  %tobool.not = icmp eq i32 %8, 0
  %9 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !14
  %10 = load i8*, i8** %buf, align 8, !tbaa !12
  %11 = load i32, i32* %buf_size, align 8, !tbaa !11
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then8
  %call = call i32 @BIO_read(%struct.bio_st* noundef %9, i8* noundef %10, i32 noundef %11) #7
  br label %if.end16

if.else:                                          ; preds = %if.then8
  %call14 = call i32 @BIO_gets(%struct.bio_st* noundef %9, i8* noundef %10, i32 noundef %11) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %n.0.in = phi i32 [ %call, %if.then9 ], [ %call14, %if.else ]
  %cmp17 = icmp slt i32 %n.0.in, 1
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  %12 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !14
  %call21 = call i32 @BIO_test_flags(%struct.bio_st* noundef %12, i32 noundef 8) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then19
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 128, i8* noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %13 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %14 = load i8*, i8** %buf, align 8, !tbaa !12
  %call29 = call i32 @BIO_write(%struct.bio_st* noundef %13, i8* noundef %14, i32 noundef %n.0.in) #7
  %cmp31.not = icmp eq i32 %call29, %n.0.in
  br i1 %cmp31.not, label %if.end35thread-pre-split, label %cleanup

if.end35thread-pre-split:                         ; preds = %if.end25
  %.pr = load i32, i32* %state, align 8, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %next_io
  %15 = phi i32 [ %.pr, %if.end35thread-pre-split ], [ %7, %next_io ]
  switch i32 %15, label %sw.default371 [
    i32 4097, label %sw.bb
    i32 4098, label %sw.bb49.thread
    i32 4099, label %sw.bb49
    i32 4100, label %sw.bb49
    i32 4101, label %sw.bb108
    i32 4096, label %cleanup
    i32 1, label %sw.bb124
    i32 2, label %sw.bb124
    i32 3, label %sw.bb124
    i32 4, label %sw.bb317
  ]

sw.bb:                                            ; preds = %if.end35
  %16 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call38 = call i32 @BIO_write(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef 2) #7
  %cmp39.not = icmp eq i32 %call38, 2
  br i1 %cmp39.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %sw.bb
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end43:                                         ; preds = %sw.bb
  store i32 4098, i32* %state, align 8, !tbaa !4
  br label %sw.bb49.thread

sw.bb49:                                          ; preds = %if.end35, %if.end35
  %.pr622 = load i64, i64* %len_to_send, align 8, !tbaa !33
  %cmp51 = icmp sgt i64 %.pr622, 0
  br i1 %cmp51, label %if.then53, label %if.end72

sw.bb49.thread:                                   ; preds = %if.end43, %if.end35
  %17 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call47 = call i64 @BIO_ctrl(%struct.bio_st* noundef %17, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %6) #7
  store i64 %call47, i64* %len_to_send, align 8, !tbaa !33
  store i32 4099, i32* %state, align 8, !tbaa !4
  %cmp51623 = icmp sgt i64 %call47, 0
  br i1 %cmp51623, label %if.then53, label %if.then76

if.then53:                                        ; preds = %sw.bb49.thread, %sw.bb49
  %18 = phi i64 [ %call47, %sw.bb49.thread ], [ %.pr622, %sw.bb49 ]
  %19 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %20 = load i8*, i8** %pos, align 8, !tbaa !34
  %conv57 = trunc i64 %18 to i32
  %call58 = call i32 @BIO_write(%struct.bio_st* noundef %19, i8* noundef %20, i32 noundef %conv57) #7
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.then53
  %21 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %call63 = call i32 @BIO_test_flags(%struct.bio_st* noundef %21, i32 noundef 8) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %cleanup

if.end66:                                         ; preds = %if.then61
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end68:                                         ; preds = %if.then53
  %22 = load i8*, i8** %pos, align 8, !tbaa !34
  %idx.ext542 = zext i32 %call58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext542
  store i8* %add.ptr, i8** %pos, align 8, !tbaa !34
  %23 = load i64, i64* %len_to_send, align 8, !tbaa !33
  %sub = sub nsw i64 %23, %idx.ext542
  store i64 %sub, i64* %len_to_send, align 8, !tbaa !33
  br label %next_io.backedge

if.end72:                                         ; preds = %sw.bb49
  %cmp74 = icmp eq i32 %15, 4099
  br i1 %cmp74, label %if.then76, label %if.end81

if.then76:                                        ; preds = %sw.bb49.thread, %if.end72
  %24 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call78 = call i64 @BIO_ctrl(%struct.bio_st* noundef %24, i32 noundef 1, i64 noundef 0, i8* noundef null) #7
  store i32 4100, i32* %state, align 8, !tbaa !4
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end72
  %25 = load %struct.bio_st*, %struct.bio_st** %req, align 8, !tbaa !18
  %cmp82.not = icmp eq %struct.bio_st* %25, null
  br i1 %cmp82.not, label %if.end106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end81
  %call85 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %25, i32 noundef 2, i64 noundef 0, i8* noundef null) #7
  %conv86 = trunc i64 %call85 to i32
  %tobool87.not = icmp eq i32 %conv86, 0
  br i1 %tobool87.not, label %if.then88, label %if.end106

if.then88:                                        ; preds = %land.lhs.true
  %26 = load %struct.bio_st*, %struct.bio_st** %req, align 8, !tbaa !18
  %27 = load i8*, i8** %buf, align 8, !tbaa !12
  %28 = load i32, i32* %buf_size, align 8, !tbaa !11
  %call92 = call i32 @BIO_read(%struct.bio_st* noundef %26, i8* noundef %27, i32 noundef %28) #7
  %cmp94 = icmp slt i32 %call92, 1
  br i1 %cmp94, label %if.then96, label %if.end102

if.then96:                                        ; preds = %if.then88
  %29 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !14
  %call98 = call i32 @BIO_test_flags(%struct.bio_st* noundef %29, i32 noundef 8) #7
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %cleanup

if.end101:                                        ; preds = %if.then96
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 128, i8* noundef null) #7
  br label %cleanup

if.end102:                                        ; preds = %if.then88
  %conv93543 = zext i32 %call92 to i64
  %30 = load i8*, i8** %buf, align 8, !tbaa !12
  store i8* %30, i8** %pos, align 8, !tbaa !34
  store i64 %conv93543, i64* %len_to_send, align 8, !tbaa !33
  br label %next_io.backedge

if.end106:                                        ; preds = %land.lhs.true, %if.end81
  store i32 4101, i32* %state, align 8, !tbaa !4
  br label %sw.bb108

sw.bb108:                                         ; preds = %if.end35, %if.end106
  %31 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %call110 = call i64 @BIO_ctrl(%struct.bio_st* noundef %31, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %conv111 = trunc i64 %call110 to i32
  %cmp112 = icmp sgt i32 %conv111, 0
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %sw.bb108
  store i32 1, i32* %state, align 8, !tbaa !4
  br label %next_io.backedge

if.end116:                                        ; preds = %sw.bb108
  %32 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %call118 = call i32 @BIO_test_flags(%struct.bio_st* noundef %32, i32 noundef 8) #7
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %cleanup

if.end121:                                        ; preds = %if.end116
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

sw.bb124:                                         ; preds = %if.end35, %if.end35, %if.end35
  %33 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call126590598 = call i64 @BIO_ctrl(%struct.bio_st* noundef %33, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #7
  %cmp127591599 = icmp slt i64 %call126590598, 1
  br i1 %cmp127591599, label %if.then133, label %lor.lhs.false129.lr.ph

next_line.loopexit:                               ; preds = %for.cond
  %34 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call126590 = call i64 @BIO_ctrl(%struct.bio_st* noundef %34, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #7
  %cmp127591 = icmp slt i64 %call126590, 1
  br i1 %cmp127591, label %if.then133, label %lor.lhs.false129.lr.ph

lor.lhs.false129.lr.ph:                           ; preds = %sw.bb124, %next_line.loopexit
  %call126590601 = phi i64 [ %call126590, %next_line.loopexit ], [ %call126590598, %sw.bb124 ]
  %found_expected_ct.1.ph600 = phi i32 [ %found_expected_ct.3, %next_line.loopexit ], [ %found_expected_ct.0, %sw.bb124 ]
  br label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false129.lr.ph, %next_line.backedge
  %call126592 = phi i64 [ %call126590601, %lor.lhs.false129.lr.ph ], [ %call126, %next_line.backedge ]
  %35 = load i8*, i8** %p, align 8, !tbaa !31
  %call130 = call i8* @memchr(i8* noundef %35, i32 noundef 10, i64 noundef %call126592) #10
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %if.then133, label %if.end141

if.then133:                                       ; preds = %next_line.loopexit, %next_line.backedge, %lor.lhs.false129, %sw.bb124
  %found_expected_ct.1.ph.lcssa = phi i32 [ %found_expected_ct.0, %sw.bb124 ], [ %found_expected_ct.1.ph600, %lor.lhs.false129 ], [ %found_expected_ct.1.ph600, %next_line.backedge ], [ %found_expected_ct.3, %next_line.loopexit ]
  %call126.lcssa = phi i64 [ %call126590598, %sw.bb124 ], [ %call126, %next_line.backedge ], [ %call126592, %lor.lhs.false129 ], [ %call126590, %next_line.loopexit ]
  %36 = load i32, i32* %buf_size, align 8, !tbaa !11
  %conv135 = sext i32 %36 to i64
  %cmp136.not = icmp slt i64 %call126.lcssa, %conv135
  br i1 %cmp136.not, label %next_io.backedge, label %if.then138

if.then138:                                       ; preds = %if.then133
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end141:                                        ; preds = %lor.lhs.false129
  %37 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %38 = load i8*, i8** %buf, align 8, !tbaa !12
  %39 = load i32, i32* %buf_size, align 8, !tbaa !11
  %call145 = call i32 @BIO_gets(%struct.bio_st* noundef %37, i8* noundef %38, i32 noundef %39) #7
  %cmp147 = icmp slt i32 %call145, 1
  br i1 %cmp147, label %if.then149, label %if.end156

if.then149:                                       ; preds = %if.end141
  %40 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call151 = call i32 @BIO_test_flags(%struct.bio_st* noundef %40, i32 noundef 8) #7
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %next_io.backedge

if.end154:                                        ; preds = %if.then149
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end156:                                        ; preds = %if.end141
  %41 = load i32, i32* %buf_size, align 8, !tbaa !11
  %cmp159 = icmp eq i32 %call145, %41
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %if.end156
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 113, i8* noundef null) #7
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end163:                                        ; preds = %if.end156
  %42 = load i32, i32* %state, align 8, !tbaa !4
  %cmp165 = icmp eq i32 %42, 1
  %43 = load i8*, i8** %buf, align 8, !tbaa !12
  br i1 %cmp165, label %if.then167, label %if.end178

if.then167:                                       ; preds = %if.end163
  %call169 = call fastcc i32 @parse_http_line1(i8* noundef %43, i32* noundef nonnull %found_keep_alive) #8
  switch i32 %call169, label %sw.default [
    i32 200, label %next_line.backedge
    i32 301, label %sw.bb172
    i32 302, label %sw.bb172
  ]

next_line.backedge:                               ; preds = %sw.bb172, %if.then167
  %storemerge608 = phi i32 [ 2, %if.then167 ], [ 3, %sw.bb172 ]
  store i32 %storemerge608, i32* %state, align 8, !tbaa !4
  %44 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call126 = call i64 @BIO_ctrl(%struct.bio_st* noundef %44, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #7
  %cmp127 = icmp slt i64 %call126, 1
  br i1 %cmp127, label %if.then133, label %lor.lhs.false129

sw.bb172:                                         ; preds = %if.then167, %if.then167
  %45 = load i32, i32* %method_POST, align 8, !tbaa !24
  %tobool173.not = icmp eq i32 %45, 0
  br i1 %tobool173.not, label %next_line.backedge, label %if.end176

if.end176:                                        ; preds = %sw.bb172
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 623, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 116, i8* noundef null) #7
  br label %sw.default

sw.default:                                       ; preds = %if.then167, %if.end176
  store i32 4096, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end178:                                        ; preds = %if.end163
  %call180 = call i8* @strchr(i8* noundef %43, i32 noundef 58) #10
  %cmp181.not = icmp eq i8* %call180, null
  br i1 %cmp181.not, label %if.end265, label %if.then183

if.then183:                                       ; preds = %if.end178
  store i8 0, i8* %call180, align 1, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then183
  %call180.pn = phi i8* [ %call180, %if.then183 ], [ %value.0, %while.cond ]
  %value.0 = getelementptr inbounds i8, i8* %call180.pn, i64 1
  %46 = load i8, i8* %value.0, align 1, !tbaa !25
  %conv184 = sext i8 %46 to i32
  %call185 = call i32 @ossl_ctype_check(i32 noundef %conv184, i32 noundef 8) #7
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %while.end, label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %call188 = call i8* @strchr(i8* noundef nonnull %value.0, i32 noundef 13) #10
  store i8* %call188, i8** %line_end, align 8, !tbaa !31
  %cmp189 = icmp eq i8* %call188, null
  br i1 %cmp189, label %if.end193, label %if.end198

if.end193:                                        ; preds = %while.end
  %call192 = call i8* @strchr(i8* noundef nonnull %value.0, i32 noundef 10) #10
  store i8* %call192, i8** %line_end, align 8, !tbaa !31
  %cmp194.not = icmp eq i8* %call192, null
  br i1 %cmp194.not, label %if.end265, label %if.end198

if.end198:                                        ; preds = %if.end193, %while.end
  %47 = phi i8* [ %call192, %if.end193 ], [ %call188, %while.end ]
  store i8 0, i8* %47, align 1, !tbaa !25
  %.pre = load i8*, i8** %line_end, align 8
  %cmp202.not = icmp eq i8* %.pre, null
  br i1 %cmp202.not, label %if.end265, label %if.then204

if.then204:                                       ; preds = %if.end198
  %48 = load i32, i32* %state, align 8, !tbaa !4
  %cmp206 = icmp eq i32 %48, 3
  br i1 %cmp206, label %land.lhs.true208, label %if.end214

land.lhs.true208:                                 ; preds = %if.then204
  %call209 = call i32 @strcasecmp(i8* noundef %43, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #10
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %land.lhs.true208
  store i8* %value.0, i8** %redirection_url, align 8, !tbaa !32
  br label %cleanup

if.end214:                                        ; preds = %land.lhs.true208, %if.then204
  %49 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  %cmp215.not = icmp eq i8* %49, null
  br i1 %cmp215.not, label %if.end229, label %land.lhs.true217

land.lhs.true217:                                 ; preds = %if.end214
  %call218 = call i32 @strcasecmp(i8* noundef %43, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #10
  %cmp219 = icmp eq i32 %call218, 0
  br i1 %cmp219, label %if.then221, label %if.end229

if.then221:                                       ; preds = %land.lhs.true217
  %call223 = call i32 @strcasecmp(i8* noundef nonnull %49, i8* noundef nonnull %value.0) #10
  %cmp224.not = icmp eq i32 %call223, 0
  br i1 %cmp224.not, label %if.end229, label %if.then226

if.then226:                                       ; preds = %if.then221
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 652, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  %50 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 118, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* noundef %50, i8* noundef nonnull %value.0) #7
  br label %cleanup

if.end229:                                        ; preds = %if.then221, %land.lhs.true217, %if.end214
  %found_expected_ct.2 = phi i32 [ %found_expected_ct.1.ph600, %land.lhs.true217 ], [ %found_expected_ct.1.ph600, %if.end214 ], [ 1, %if.then221 ]
  %call230 = call i32 @strcasecmp(i8* noundef %43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #10
  %cmp231 = icmp eq i32 %call230, 0
  br i1 %cmp231, label %if.then233, label %if.else245

if.then233:                                       ; preds = %if.end229
  %call234 = call i32 @strcasecmp(i8* noundef nonnull %value.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #10
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.else238

if.then237:                                       ; preds = %if.then233
  store i32 1, i32* %found_keep_alive, align 4, !tbaa !30
  br label %if.end265

if.else238:                                       ; preds = %if.then233
  %call239 = call i32 @strcasecmp(i8* noundef nonnull %value.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #10
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.end265

if.then242:                                       ; preds = %if.else238
  store i32 0, i32* %found_keep_alive, align 4, !tbaa !30
  br label %if.end265

if.else245:                                       ; preds = %if.end229
  %call246 = call i32 @strcasecmp(i8* noundef %43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #10
  %cmp247 = icmp eq i32 %call246, 0
  br i1 %cmp247, label %if.then249, label %if.end265

if.then249:                                       ; preds = %if.else245
  %call250 = call i64 @strtoul(i8* noundef nonnull %value.0, i8** noundef nonnull %line_end, i32 noundef 10) #7
  %51 = load i8*, i8** %line_end, align 8, !tbaa !31
  %cmp251 = icmp eq i8* %51, %value.0
  br i1 %cmp251, label %if.then257, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %if.then249
  %52 = load i8, i8* %51, align 1, !tbaa !25
  %cmp255.not = icmp eq i8 %52, 0
  br i1 %cmp255.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %lor.lhs.false253, %if.then249
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %value.0) #7
  br label %cleanup

if.end258:                                        ; preds = %lor.lhs.false253
  call fastcc void @check_set_resp_len(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i64 noundef %call250) #8
  br label %if.end265

if.end265:                                        ; preds = %if.end193, %if.end178, %if.end258, %if.else238, %if.then242, %if.then237, %if.else245, %if.end198
  %found_expected_ct.3 = phi i32 [ %found_expected_ct.2, %if.then237 ], [ %found_expected_ct.2, %if.then242 ], [ %found_expected_ct.2, %if.else238 ], [ %found_expected_ct.2, %if.end258 ], [ %found_expected_ct.2, %if.else245 ], [ %found_expected_ct.1.ph600, %if.end198 ], [ %found_expected_ct.1.ph600, %if.end178 ], [ %found_expected_ct.1.ph600, %if.end193 ]
  %53 = load i8*, i8** %buf, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end265
  %storemerge = phi i8* [ %53, %if.end265 ], [ %incdec.ptr279, %for.inc ]
  store i8* %storemerge, i8** %p, align 8, !tbaa !31
  %54 = load i8, i8* %storemerge, align 1, !tbaa !25
  switch i8 %54, label %next_line.loopexit [
    i8 10, label %for.inc
    i8 13, label %for.inc
    i8 0, label %if.end284
  ]

for.inc:                                          ; preds = %for.cond, %for.cond
  %incdec.ptr279 = getelementptr inbounds i8, i8* %storemerge, i64 1
  br label %for.cond, !llvm.loop !37

if.end284:                                        ; preds = %for.cond
  %55 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  %cmp286 = icmp eq i8* %55, null
  %tobool289 = icmp ne i32 %found_expected_ct.3, 0
  %or.cond391 = select i1 %cmp286, i1 true, i1 %tobool289
  br i1 %or.cond391, label %if.end292, label %if.then290

if.then290:                                       ; preds = %if.end284
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 688, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  %56 = load i8*, i8** %expected_ct, align 8, !tbaa !22
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 121, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* noundef %56) #7
  br label %cleanup

if.end292:                                        ; preds = %if.end284
  %57 = load i32, i32* %keep_alive, align 8, !tbaa !29
  %cmp293 = icmp eq i32 %57, 0
  %58 = load i32, i32* %found_keep_alive, align 4
  %tobool296 = icmp ne i32 %58, 0
  %or.cond392 = select i1 %cmp293, i1 true, i1 %tobool296
  br i1 %or.cond392, label %if.end305, label %if.then297

if.then297:                                       ; preds = %if.end292
  %cmp299 = icmp eq i32 %57, 2
  store i32 0, i32* %keep_alive, align 8, !tbaa !29
  br i1 %cmp299, label %if.then301, label %if.end305

if.then301:                                       ; preds = %if.then297
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 696, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 127, i8* noundef null) #7
  br label %cleanup

if.end305:                                        ; preds = %if.then297, %if.end292
  %59 = load i32, i32* %state, align 8, !tbaa !4
  %cmp307 = icmp eq i32 %59, 3
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %if.end305
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 704, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 111, i8* noundef null) #7
  br label %cleanup

if.end310:                                        ; preds = %if.end305
  %60 = load i32, i32* %expect_asn1, align 8, !tbaa !26
  %tobool312.not = icmp eq i32 %60, 0
  br i1 %tobool312.not, label %if.then313, label %if.end315

if.then313:                                       ; preds = %if.end310
  store i32 4103, i32* %state, align 8, !tbaa !4
  br label %cleanup

if.end315:                                        ; preds = %if.end310
  store i32 4, i32* %state, align 8, !tbaa !4
  br label %sw.bb317

sw.bb317:                                         ; preds = %if.end35, %if.end315
  %found_expected_ct.4 = phi i32 [ %found_expected_ct.0, %if.end35 ], [ %found_expected_ct.3, %if.end315 ]
  %61 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call319 = call i64 @BIO_ctrl(%struct.bio_st* noundef %61, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #7
  %cmp320 = icmp slt i64 %call319, 2
  br i1 %cmp320, label %next_io.backedge, label %if.end323

if.end323:                                        ; preds = %sw.bb317
  %62 = load i8*, i8** %p, align 8, !tbaa !31
  %incdec.ptr324 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %incdec.ptr324, i8** %p, align 8, !tbaa !31
  %63 = load i8, i8* %62, align 1, !tbaa !25
  %cmp326.not = icmp eq i8 %63, 48
  br i1 %cmp326.not, label %if.end329, label %if.then328

if.then328:                                       ; preds = %if.end323
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 110, i8* noundef null) #7
  br label %cleanup

if.end329:                                        ; preds = %if.end323
  %64 = load i8, i8* %incdec.ptr324, align 1, !tbaa !25
  %conv330 = zext i8 %64 to i32
  %and331 = and i32 %conv330, 128
  %cmp332.not = icmp eq i32 %and331, 0
  br i1 %cmp332.not, label %if.else360, label %if.then334

if.then334:                                       ; preds = %if.end329
  %cmp335 = icmp ult i64 %call319, 6
  br i1 %cmp335, label %next_io.backedge, label %if.end338

if.end338:                                        ; preds = %if.then334
  %and340 = and i32 %conv330, 127
  %65 = add nsw i32 %and340, -5
  %66 = icmp ult i32 %65, -4
  br i1 %66, label %if.then347, label %for.body354.preheader

if.then347:                                       ; preds = %if.end338
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_REQ_CTX_nbio, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 109, i8* noundef null) #7
  br label %cleanup

for.body354.preheader:                            ; preds = %if.end338
  %incdec.ptr349 = getelementptr inbounds i8, i8* %62, i64 2
  %67 = add nsw i32 %and340, -1
  %xtraiter = and i32 %conv330, 3
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %for.end358.unr-lcssa, label %for.body354.preheader.new

for.body354.preheader.new:                        ; preds = %for.body354.preheader
  %unroll_iter = sub nsw i32 %and340, %xtraiter
  br label %for.body354

for.body354:                                      ; preds = %for.body354, %for.body354.preheader.new
  %69 = phi i8* [ %incdec.ptr349, %for.body354.preheader.new ], [ %incdec.ptr355.3, %for.body354 ]
  %resp_len.0606 = phi i64 [ 0, %for.body354.preheader.new ], [ %or.3, %for.body354 ]
  %niter = phi i32 [ 0, %for.body354.preheader.new ], [ %niter.next.3, %for.body354 ]
  %incdec.ptr355 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %incdec.ptr355, i8** %p, align 8, !tbaa !31
  %70 = load i8, i8* %69, align 1, !tbaa !25
  %conv356 = zext i8 %70 to i64
  %71 = shl i64 %resp_len.0606, 16
  %72 = shl nuw nsw i64 %conv356, 8
  %shl.1 = or i64 %71, %72
  %incdec.ptr355.1 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %incdec.ptr355.1, i8** %p, align 8, !tbaa !31
  %73 = load i8, i8* %incdec.ptr355, align 1, !tbaa !25
  %conv356.1 = zext i8 %73 to i64
  %or.1 = or i64 %shl.1, %conv356.1
  %incdec.ptr355.2 = getelementptr inbounds i8, i8* %69, i64 3
  store i8* %incdec.ptr355.2, i8** %p, align 8, !tbaa !31
  %74 = load i8, i8* %incdec.ptr355.1, align 1, !tbaa !25
  %conv356.2 = zext i8 %74 to i64
  %75 = shl i64 %or.1, 16
  %76 = shl nuw nsw i64 %conv356.2, 8
  %shl.3 = or i64 %75, %76
  %incdec.ptr355.3 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %incdec.ptr355.3, i8** %p, align 8, !tbaa !31
  %77 = load i8, i8* %incdec.ptr355.2, align 1, !tbaa !25
  %conv356.3 = zext i8 %77 to i64
  %or.3 = or i64 %shl.3, %conv356.3
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end358.unr-lcssa, label %for.body354, !llvm.loop !38

for.end358.unr-lcssa:                             ; preds = %for.body354, %for.body354.preheader
  %or.lcssa.ph = phi i64 [ undef, %for.body354.preheader ], [ %or.3, %for.body354 ]
  %.unr = phi i8* [ %incdec.ptr349, %for.body354.preheader ], [ %incdec.ptr355.3, %for.body354 ]
  %resp_len.0606.unr = phi i64 [ 0, %for.body354.preheader ], [ %or.3, %for.body354 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end358, label %for.body354.epil

for.body354.epil:                                 ; preds = %for.end358.unr-lcssa, %for.body354.epil
  %78 = phi i8* [ %incdec.ptr355.epil, %for.body354.epil ], [ %.unr, %for.end358.unr-lcssa ]
  %resp_len.0606.epil = phi i64 [ %or.epil, %for.body354.epil ], [ %resp_len.0606.unr, %for.end358.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body354.epil ], [ 0, %for.end358.unr-lcssa ]
  %shl.epil = shl i64 %resp_len.0606.epil, 8
  %incdec.ptr355.epil = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %incdec.ptr355.epil, i8** %p, align 8, !tbaa !31
  %79 = load i8, i8* %78, align 1, !tbaa !25
  %conv356.epil = zext i8 %79 to i64
  %or.epil = or i64 %shl.epil, %conv356.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end358, label %for.body354.epil, !llvm.loop !39

for.end358:                                       ; preds = %for.body354.epil, %for.end358.unr-lcssa
  %or.lcssa = phi i64 [ %or.lcssa.ph, %for.end358.unr-lcssa ], [ %or.epil, %for.body354.epil ]
  %narrow = add nuw nsw i32 %and340, 2
  %add = zext i32 %narrow to i64
  %add359 = add i64 %or.lcssa, %add
  br label %if.end364

if.else360:                                       ; preds = %if.end329
  %add362 = add nuw nsw i32 %conv330, 2
  %80 = zext i32 %add362 to i64
  br label %if.end364

if.end364:                                        ; preds = %if.else360, %for.end358
  %resp_len.1 = phi i64 [ %add359, %for.end358 ], [ %80, %if.else360 ]
  call fastcc void @check_set_resp_len(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i64 noundef %resp_len.1) #8
  store i32 5, i32* %state, align 8, !tbaa !4
  br label %sw.default371

sw.default371:                                    ; preds = %if.end364, %if.end35
  %found_expected_ct.5 = phi i32 [ %found_expected_ct.0, %if.end35 ], [ %found_expected_ct.4, %if.end364 ]
  %81 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call373 = call i64 @BIO_ctrl(%struct.bio_st* noundef %81, i32 noundef 3, i64 noundef 0, i8* noundef null) #7
  %cmp374 = icmp slt i64 %call373, 0
  br i1 %cmp374, label %next_io.backedge, label %lor.lhs.false376

next_io.backedge:                                 ; preds = %sw.default371, %lor.lhs.false376, %if.end68, %if.end102, %if.then114, %if.then133, %if.then149, %sw.bb317, %if.then334
  %found_expected_ct.0.be = phi i32 [ %found_expected_ct.4, %sw.bb317 ], [ %found_expected_ct.4, %if.then334 ], [ %found_expected_ct.1.ph.lcssa, %if.then133 ], [ %found_expected_ct.1.ph600, %if.then149 ], [ %found_expected_ct.0, %if.then114 ], [ %found_expected_ct.0, %if.end68 ], [ %found_expected_ct.0, %if.end102 ], [ %found_expected_ct.5, %lor.lhs.false376 ], [ %found_expected_ct.5, %sw.default371 ]
  br label %next_io

lor.lhs.false376:                                 ; preds = %sw.default371
  %82 = load i64, i64* %resp_len377, align 8, !tbaa !23
  %cmp378 = icmp ult i64 %call373, %82
  br i1 %cmp378, label %next_io.backedge, label %if.end381

if.end381:                                        ; preds = %lor.lhs.false376
  store i32 4102, i32* %state, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end25, %if.end116, %if.then96, %if.then61, %if.then19, %if.end381, %if.then347, %if.then328, %if.then313, %if.then309, %if.then301, %if.then290, %if.then257, %if.then226, %if.then212, %sw.default, %if.then161, %if.end154, %if.then138, %if.end121, %if.end101, %if.end66, %if.then41, %if.end24, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.end24 ], [ 1, %if.end381 ], [ 0, %if.then328 ], [ 0, %if.then347 ], [ 0, %if.then138 ], [ 0, %if.end154 ], [ 0, %if.then161 ], [ 0, %sw.default ], [ 0, %if.then212 ], [ 0, %if.then226 ], [ 0, %if.then309 ], [ 1, %if.then313 ], [ 0, %if.then301 ], [ 0, %if.then290 ], [ 0, %if.then257 ], [ 0, %if.end121 ], [ 0, %if.end66 ], [ 0, %if.end101 ], [ 0, %if.then41 ], [ -1, %if.then19 ], [ -1, %if.then61 ], [ -1, %if.then96 ], [ -1, %if.end116 ], [ 0, %if.end25 ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_http_line1(i8* noundef %line, i32* nocapture noundef writeonly %found_keep_alive) unnamed_addr #0 {
entry:
  %end = alloca i8*, align 8
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @strncmp(i8* noundef %line, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 noundef 7) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %land.rhs95.preheader

land.rhs95.preheader:                             ; preds = %for.inc, %while.body, %for.inc39, %if.end, %if.end46, %for.end41, %while.end, %for.end, %entry
  br label %land.rhs95

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)) #10
  %arrayidx = getelementptr inbounds i8, i8* %line, i64 %call1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %cmp2 = icmp sgt i8 %1, 48
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %found_keep_alive, align 4, !tbaa !30
  %2 = load i8, i8* %line, align 1, !tbaa !25
  %cmp5.not157 = icmp eq i8 %2, 0
  br i1 %cmp5.not157, label %land.rhs95.preheader, label %land.rhs

land.rhs:                                         ; preds = %if.end, %for.inc
  %3 = phi i8 [ %4, %for.inc ], [ %2, %if.end ]
  %code.0158 = phi i8* [ %incdec.ptr, %for.inc ], [ %line, %if.end ]
  %conv4 = sext i8 %3 to i32
  %call8 = tail call i32 @ossl_ctype_check(i32 noundef %conv4, i32 noundef 8) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %code.0158, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !25
  %cmp5.not = icmp eq i8 %4, 0
  br i1 %cmp5.not, label %land.rhs95.preheader, label %land.rhs, !llvm.loop !41

for.end:                                          ; preds = %land.rhs
  %.pr = load i8, i8* %code.0158, align 1, !tbaa !25
  %cmp10 = icmp eq i8 %.pr, 0
  br i1 %cmp10, label %land.rhs95.preheader, label %land.rhs17

land.rhs17:                                       ; preds = %for.end, %while.body
  %code.1160 = phi i8* [ %incdec.ptr22, %while.body ], [ %code.0158, %for.end ]
  %5 = phi i8 [ %.pr149, %while.body ], [ %.pr, %for.end ]
  %conv14 = sext i8 %5 to i32
  %call19 = tail call i32 @ossl_ctype_check(i32 noundef %conv14, i32 noundef 8) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs17
  %incdec.ptr22 = getelementptr inbounds i8, i8* %code.1160, i64 1
  %.pr149 = load i8, i8* %incdec.ptr22, align 1, !tbaa !25
  %cmp15.not = icmp eq i8 %.pr149, 0
  br i1 %cmp15.not, label %land.rhs95.preheader, label %land.rhs17, !llvm.loop !42

while.end:                                        ; preds = %land.rhs17
  %.pre = load i8, i8* %code.1160, align 1, !tbaa !25
  %cmp24 = icmp eq i8 %.pre, 0
  br i1 %cmp24, label %land.rhs95.preheader, label %land.rhs32

land.rhs32:                                       ; preds = %while.end, %for.inc39
  %reason.0163 = phi i8* [ %incdec.ptr40, %for.inc39 ], [ %code.1160, %while.end ]
  %6 = phi i8 [ %.pr150, %for.inc39 ], [ %.pre, %while.end ]
  %conv29 = sext i8 %6 to i32
  %call34 = tail call i32 @ossl_ctype_check(i32 noundef %conv29, i32 noundef 8) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc39, label %for.end41

for.inc39:                                        ; preds = %land.rhs32
  %incdec.ptr40 = getelementptr inbounds i8, i8* %reason.0163, i64 1
  %.pr150 = load i8, i8* %incdec.ptr40, align 1, !tbaa !25
  %cmp30.not = icmp eq i8 %.pr150, 0
  br i1 %cmp30.not, label %land.rhs95.preheader, label %land.rhs32, !llvm.loop !43

for.end41:                                        ; preds = %land.rhs32
  %.pre176 = load i8, i8* %reason.0163, align 1, !tbaa !25
  %phi.cmp = icmp eq i8 %.pre176, 0
  br i1 %phi.cmp, label %land.rhs95.preheader, label %if.end46

if.end46:                                         ; preds = %for.end41
  store i8 0, i8* %reason.0163, align 1, !tbaa !25
  %call48 = call i64 @strtoul(i8* noundef nonnull %code.1160, i8** noundef nonnull %end, i32 noundef 10) #7
  %conv49 = trunc i64 %call48 to i32
  %7 = load i8*, i8** %end, align 8, !tbaa !31
  %8 = load i8, i8* %7, align 1, !tbaa !25
  %cmp51.not = icmp eq i8 %8, 0
  br i1 %cmp51.not, label %while.cond55, label %land.rhs95.preheader

while.cond55:                                     ; preds = %if.end46, %land.rhs59
  %reason.0.pn = phi i8* [ %reason.1, %land.rhs59 ], [ %reason.0163, %if.end46 ]
  %reason.1 = getelementptr inbounds i8, i8* %reason.0.pn, i64 1
  %9 = load i8, i8* %reason.1, align 1, !tbaa !25
  %cmp57.not = icmp eq i8 %9, 0
  br i1 %cmp57.not, label %if.end81, label %land.rhs59

land.rhs59:                                       ; preds = %while.cond55
  %conv56 = sext i8 %9 to i32
  %call61 = call i32 @ossl_ctype_check(i32 noundef %conv56, i32 noundef 8) #7
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %while.end66, label %while.cond55, !llvm.loop !44

while.end66:                                      ; preds = %land.rhs59
  %.pr151 = load i8, i8* %reason.1, align 1, !tbaa !25
  %cmp68.not = icmp eq i8 %.pr151, 0
  br i1 %cmp68.not, label %if.end81, label %if.then70

if.then70:                                        ; preds = %while.end66
  %call71 = call i64 @strlen(i8* noundef nonnull %reason.1) #10
  %add.ptr = getelementptr inbounds i8, i8* %reason.1, i64 %call71
  %storemerge166 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %storemerge166, i8** %end, align 8, !tbaa !31
  %10 = load i8, i8* %storemerge166, align 1, !tbaa !25
  %conv74167 = sext i8 %10 to i32
  %call75168 = call i32 @ossl_ctype_check(i32 noundef %conv74167, i32 noundef 8) #7
  %tobool76.not169 = icmp eq i32 %call75168, 0
  br i1 %tobool76.not169, label %if.end81, label %for.body77

for.body77:                                       ; preds = %if.then70, %for.body77
  %11 = load i8*, i8** %end, align 8, !tbaa !31
  store i8 0, i8* %11, align 1, !tbaa !25
  %12 = load i8*, i8** %end, align 8, !tbaa !31
  %storemerge = getelementptr inbounds i8, i8* %12, i64 -1
  store i8* %storemerge, i8** %end, align 8, !tbaa !31
  %13 = load i8, i8* %storemerge, align 1, !tbaa !25
  %conv74 = sext i8 %13 to i32
  %call75 = call i32 @ossl_ctype_check(i32 noundef %conv74, i32 noundef 8) #7
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end81, label %for.body77, !llvm.loop !45

if.end81:                                         ; preds = %while.cond55, %for.body77, %if.then70, %while.end66
  switch i32 %conv49, label %sw.default [
    i32 200, label %cleanup
    i32 301, label %cleanup
    i32 302, label %cleanup
  ]

sw.default:                                       ; preds = %if.end81
  %cmp82 = icmp slt i32 %conv49, 400
  %. = select i1 %cmp82, i32 114, i32 105
  %14 = load i8, i8* %reason.1, align 1, !tbaa !25
  %cmp87 = icmp eq i8 %14, 0
  call void @ERR_new() #7
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %sw.default
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.parse_http_line1, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef %., i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %code.1160) #7
  br label %cleanup

if.else90:                                        ; preds = %sw.default
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.parse_http_line1, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef %., i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i64 0, i64 0), i8* noundef nonnull %code.1160, i8* noundef nonnull %reason.1) #7
  br label %cleanup

land.rhs95:                                       ; preds = %land.rhs95.preheader, %while.body101
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body101 ], [ 0, %land.rhs95.preheader ]
  %arrayidx96 = getelementptr inbounds i8, i8* %line, i64 %indvars.iv
  %15 = load i8, i8* %arrayidx96, align 1, !tbaa !25
  %conv97 = sext i8 %15 to i32
  %call98 = call i32 @ossl_ctype_check(i32 noundef %conv97, i32 noundef 256) #7
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %while.end102, label %while.body101

while.body101:                                    ; preds = %land.rhs95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %while.end102, label %land.rhs95, !llvm.loop !46

while.end102:                                     ; preds = %while.body101, %land.rhs95
  %i.0.lcssa = phi i64 [ 60, %while.body101 ], [ %indvars.iv, %land.rhs95 ]
  %idxprom103 = and i64 %i.0.lcssa, 4294967295
  %arrayidx104 = getelementptr inbounds i8, i8* %line, i64 %idxprom103
  store i8 0, i8* %arrayidx104, align 1, !tbaa !25
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.parse_http_line1, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 126, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %line) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.else90, %if.end81, %if.end81, %if.end81, %while.end102
  %retval.0 = phi i32 [ 0, %while.end102 ], [ %conv49, %if.end81 ], [ %conv49, %if.end81 ], [ %conv49, %if.end81 ], [ 0, %if.else90 ], [ 0, %if.then89 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @check_set_resp_len(%struct.ossl_http_req_ctx_st* nocapture noundef %rctx, i64 noundef %len) unnamed_addr #0 {
entry:
  %max_resp_len = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 20
  %0 = load i64, i64* %max_resp_len, align 8, !tbaa !15
  %cmp.not = icmp ne i64 %0, 0
  %cmp2 = icmp ult i64 %0, %len
  %or.cond = and i1 %cmp.not, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.check_set_resp_len, i64 0, i64 0)) #7
  %1 = load i64, i64* %max_resp_len, align 8, !tbaa !15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 117, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i64 noundef %len, i64 noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %resp_len = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 19
  %2 = load i64, i64* %resp_len, align 8, !tbaa !23
  %cmp4.not = icmp eq i64 %2, 0
  %cmp7.not = icmp eq i64 %2, %len
  %or.cond1 = or i1 %cmp4.not, %cmp7.not
  br i1 %or.cond1, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.check_set_resp_len, i64 0, i64 0)) #7
  %3 = load i64, i64* %resp_len, align 8, !tbaa !23
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 120, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i64 noundef %len, i64 noundef %3) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  store i64 %len, i64* %resp_len, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_REQ_CTX_nbio_d2i(%struct.ossl_http_req_ctx_st* noundef %rctx, %struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !31
  %call = tail call i32 @OSSL_HTTP_REQ_CTX_nbio(%struct.ossl_http_req_ctx_st* noundef %rctx) #8
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %1 = load %struct.bio_st*, %struct.bio_st** %mem, align 8, !tbaa !17
  %call1 = call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %call2 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %call1, %struct.ASN1_ITEM_st* noundef %it) #7
  store %struct.ASN1_VALUE_st* %call2, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !31
  %cmp3 = icmp ne %struct.ASN1_VALUE_st* %call2, null
  %conv = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @OSSL_HTTP_REQ_CTX_exchange(%struct.ossl_http_req_ctx_st* noundef %rctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %rbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 5
  %max_time = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 22
  br label %for.cond

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 828, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_HTTP_REQ_CTX_exchange, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader, %if.end3
  %call = tail call i32 @OSSL_HTTP_REQ_CTX_nbio(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx) #8
  switch i32 %call, label %if.end16 [
    i32 -1, label %if.end3
    i32 0, label %if.then9
  ]

if.end3:                                          ; preds = %for.cond
  %0 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !14
  %1 = load i64, i64* %max_time, align 8, !tbaa !28
  %call4 = tail call i32 @BIO_wait(%struct.bio_st* noundef %0, i64 noundef %1, i32 noundef 100) #7
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup, label %for.cond

if.then9:                                         ; preds = %for.cond
  %redirection_url = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 24
  %2 = load i8*, i8** %redirection_url, align 8, !tbaa !32
  %cmp10 = icmp eq i8* %2, null
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then9
  %len_to_send = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 18
  %3 = load i64, i64* %len_to_send, align 8, !tbaa !33
  %cmp12 = icmp sgt i64 %3, 0
  tail call void @ERR_new() #7
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 845, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_HTTP_REQ_CTX_exchange, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 102, i8* noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %if.then11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 847, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_HTTP_REQ_CTX_exchange, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 103, i8* noundef null) #7
  br label %cleanup

if.end16:                                         ; preds = %for.cond
  %state = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 0
  %4 = load i32, i32* %state, align 8, !tbaa !4
  %cmp17 = icmp eq i32 %4, 4103
  %mem = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 12
  %cond.in = select i1 %cmp17, %struct.bio_st** %rbio, %struct.bio_st** %mem
  %cond = load %struct.bio_st*, %struct.bio_st** %cond.in, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then9, %if.else, %if.then13, %if.end16, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %cond, %if.end16 ], [ null, %if.then13 ], [ null, %if.else ], [ null, %if.then9 ], [ null, %if.end3 ]
  ret %struct.bio_st* %retval.0
}

declare i32 @BIO_wait(%struct.bio_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef readonly %rctx) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %keep_alive = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 21
  %0 = load i32, i32* %keep_alive, align 8, !tbaa !29
  %cmp1 = icmp ne i32 %0, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_http_req_ctx_st* @OSSL_HTTP_open(i8* noundef %server, i8* noundef %port, i8* noundef %proxy, i8* noundef %no_proxy, i32 noundef %use_ssl, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %buf_size, i32 noundef %overall_timeout) local_unnamed_addr #0 {
entry:
  %proxy_host = alloca i8*, align 8
  %proxy_port = alloca i8*, align 8
  %tobool = icmp ne i32 %use_ssl, 0
  %cmp = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %bio_update_fn, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_HTTP_open, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 107, i8* noundef null) #7
  br label %cleanup88

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.bio_st* %rbio, null
  %cmp7.not = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  %cmp4 = icmp ne %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %bio_update_fn, null
  %or.cond91 = or i1 %cmp7.not, %cmp4
  br i1 %or.cond91, label %if.then5, label %if.then8

if.then5:                                         ; preds = %land.lhs.true2
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 876, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_HTTP_open, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 524550, i8* noundef null) #7
  br label %cleanup88

if.end6:                                          ; preds = %if.end
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true2, %if.end6
  %cmp9 = icmp ne i8* %proxy, null
  %cmp11 = icmp ne i8* %no_proxy, null
  %or.cond92 = or i1 %cmp9, %cmp11
  br i1 %or.cond92, label %if.then12, label %if.end45

if.then12:                                        ; preds = %if.then8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 883, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_HTTP_open, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 524550, i8* noundef null) #7
  br label %cleanup88

if.else:                                          ; preds = %if.end6
  %0 = bitcast i8** %proxy_host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %proxy_host, align 8, !tbaa !31
  %1 = bitcast i8** %proxy_port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %proxy_port, align 8, !tbaa !31
  %cmp14 = icmp eq i8* %server, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 891, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OSSL_HTTP_open, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup.thread

if.end16:                                         ; preds = %if.else
  %cmp17.not = icmp eq i8* %port, null
  br i1 %cmp17.not, label %land.lhs.true25, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end16
  %2 = load i8, i8* %port, align 1, !tbaa !25
  %cmp19 = icmp eq i8 %2, 0
  br i1 %cmp19, label %land.lhs.true25, label %if.end30

land.lhs.true25:                                  ; preds = %land.lhs.true18, %if.end16
  %call = tail call i8* @strchr(i8* noundef nonnull %server, i32 noundef 58) #10
  %cmp26 = icmp eq i8* %call, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)
  %spec.select = select i1 %cmp26, i8* %cond, i8* null
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true18, %land.lhs.true25
  %port.addr.1 = phi i8* [ %spec.select, %land.lhs.true25 ], [ %port, %land.lhs.true18 ]
  %call31 = tail call i8* @OSSL_HTTP_adapt_proxy(i8* noundef %proxy, i8* noundef %no_proxy, i8* noundef nonnull %server, i32 noundef %use_ssl) #7
  %cmp32.not = icmp eq i8* %call31, null
  br i1 %cmp32.not, label %cleanup, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end30
  %call35 = call i32 @OSSL_HTTP_parse_url(i8* noundef nonnull %call31, i32* noundef null, i8** noundef null, i8** noundef nonnull %proxy_host, i8** noundef nonnull %proxy_port, i32* noundef null, i8** noundef null, i8** noundef null, i8** noundef null) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup.thread, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  %.pre = load i8*, i8** %proxy_host, align 8, !tbaa !31
  %.pre165 = load i8*, i8** %proxy_port, align 8, !tbaa !31
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then15, %land.lhs.true34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  br label %cleanup88

cleanup:                                          ; preds = %land.lhs.true34.cleanup_crit_edge, %if.end30
  %3 = phi i8* [ %.pre165, %land.lhs.true34.cleanup_crit_edge ], [ null, %if.end30 ]
  %4 = phi i8* [ %.pre, %land.lhs.true34.cleanup_crit_edge ], [ null, %if.end30 ]
  %call39 = call fastcc %struct.bio_st* @http_new_bio(i8* noundef nonnull %server, i8* noundef %port.addr.1, i32 noundef %use_ssl, i8* noundef %4, i8* noundef %3) #8
  %5 = load i8*, i8** %proxy_host, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 905) #7
  %6 = load i8*, i8** %proxy_port, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 906) #7
  %cmp40.not = icmp eq %struct.bio_st* %call39, null
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  br i1 %cmp40.not, label %cleanup88, label %land.lhs.true49

if.end45:                                         ; preds = %if.then8
  %call46 = tail call i32 @ERR_set_mark() #7
  br i1 %cmp1.not, label %land.lhs.true49.thread, label %if.end58

land.lhs.true49:                                  ; preds = %cleanup
  %call46152 = call i32 @ERR_set_mark() #7
  %call50 = call i32 @BIO_do_connect_retry(%struct.bio_st* noundef nonnull %call39, i32 noundef %overall_timeout, i32 noundef -1) #7
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.else85.sink.split, label %if.end58

land.lhs.true49.thread:                           ; preds = %if.end45
  %call50170 = call i32 @BIO_do_connect_retry(%struct.bio_st* noundef nonnull %bio, i32 noundef %overall_timeout, i32 noundef -1) #7
  %cmp51171 = icmp slt i32 %call50170, 1
  br i1 %cmp51171, label %if.else85, label %if.end58

if.end58:                                         ; preds = %land.lhs.true49.thread, %land.lhs.true49, %if.end45
  %cbio.1159 = phi %struct.bio_st* [ %call39, %land.lhs.true49 ], [ %bio, %if.end45 ], [ %bio, %land.lhs.true49.thread ]
  %port.addr.3156 = phi i8* [ %port.addr.1, %land.lhs.true49 ], [ %port, %if.end45 ], [ %port, %land.lhs.true49.thread ]
  %proxy.addr.1154 = phi i8* [ %call31, %land.lhs.true49 ], [ null, %if.end45 ], [ null, %land.lhs.true49.thread ]
  %cmp7.not141 = phi i1 [ true, %land.lhs.true49 ], [ false, %if.end45 ], [ false, %land.lhs.true49.thread ]
  br i1 %cmp, label %end, label %if.then61

if.then61:                                        ; preds = %if.end58
  %call62 = call %struct.bio_st* %bio_update_fn(%struct.bio_st* noundef nonnull %cbio.1159, i8* noundef %arg, i32 noundef 1, i32 noundef %use_ssl) #7
  %cmp63 = icmp eq %struct.bio_st* %call62, null
  br i1 %cmp63, label %if.then65, label %end

if.then65:                                        ; preds = %if.then61
  br i1 %cmp7.not141, label %if.else85.sink.split, label %if.else85

end:                                              ; preds = %if.end58, %if.then61
  %cbio.2 = phi %struct.bio_st* [ %cbio.1159, %if.end58 ], [ %call62, %if.then61 ]
  %conv76 = zext i1 %cmp7.not141 to i32
  %cond79 = select i1 %cmp1.not, %struct.bio_st* %cbio.2, %struct.bio_st* %rbio
  %call80 = call fastcc %struct.ossl_http_req_ctx_st* @http_req_ctx_new(i32 noundef %conv76, %struct.bio_st* noundef nonnull %cbio.2, %struct.bio_st* noundef %cond79, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %use_ssl, i8* noundef %proxy.addr.1154, i8* noundef %server, i8* noundef %port.addr.3156, i32 noundef %buf_size, i32 noundef %overall_timeout) #8
  %cmp81.not = icmp eq %struct.ossl_http_req_ctx_st* %call80, null
  br i1 %cmp81.not, label %if.else85, label %if.then83

if.then83:                                        ; preds = %end
  %call84 = call i32 @ERR_pop_to_mark() #7
  br label %cleanup88

if.else85.sink.split:                             ; preds = %if.then65, %land.lhs.true49
  %cbio.1159.sink = phi %struct.bio_st* [ %call39, %land.lhs.true49 ], [ %cbio.1159, %if.then65 ]
  call void @BIO_free_all(%struct.bio_st* noundef nonnull %cbio.1159.sink) #7
  br label %if.else85

if.else85:                                        ; preds = %if.else85.sink.split, %land.lhs.true49.thread, %if.then65, %end
  %call86 = call i32 @ERR_clear_last_mark() #7
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup.thread, %if.then83, %if.else85, %cleanup, %if.then12, %if.then5, %if.then
  %retval.2 = phi %struct.ossl_http_req_ctx_st* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then12 ], [ null, %cleanup ], [ null, %if.else85 ], [ %call80, %if.then83 ], [ null, %cleanup.thread ]
  ret %struct.ossl_http_req_ctx_st* %retval.2
}

declare i8* @OSSL_HTTP_adapt_proxy(i8* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_HTTP_parse_url(i8* noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef, i32* noundef, i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @http_new_bio(i8* noundef %server, i8* noundef %server_port, i32 noundef %use_ssl, i8* noundef %proxy, i8* noundef %proxy_port) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %server, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3.not = icmp eq i8* %proxy, null
  %spec.select = select i1 %cmp3.not, i8* %server, i8* %proxy
  %spec.select35 = select i1 %cmp3.not, i8* %server_port, i8* %proxy_port
  %cmp7 = icmp eq i8* %spec.select35, null
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i8* @strchr(i8* noundef nonnull %spec.select, i32 noundef 58) #10
  %cmp9 = icmp eq i8* %call, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %tobool.not = icmp eq i32 %use_ssl, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %port.1 = phi i8* [ %cond, %if.then11 ], [ null, %land.lhs.true ], [ %spec.select35, %if.end ]
  %call13 = tail call %struct.bio_st* @BIO_new_connect(i8* noundef nonnull %spec.select) #7
  %cmp14 = icmp ne %struct.bio_st* %call13, null
  %cmp18 = icmp ne i8* %port.1, null
  %or.cond = and i1 %cmp18, %cmp14
  br i1 %or.cond, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end12
  %call21 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call13, i32 noundef 100, i64 noundef 1, i8* noundef nonnull %port.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then20, %entry
  %retval.0 = phi %struct.bio_st* [ null, %entry ], [ %call13, %if.then20 ], [ %call13, %if.end12 ]
  ret %struct.bio_st* %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @BIO_do_connect_retry(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_http_req_ctx_st* @http_req_ctx_new(i32 noundef %free_wbio, %struct.bio_st* noundef %wbio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %use_ssl, i8* noundef %proxy, i8* noundef %server, i8* noundef %port, i32 noundef %buf_size, i32 noundef %overall_timeout) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_http_req_ctx_st* @OSSL_HTTP_REQ_CTX_new(%struct.bio_st* noundef %wbio, %struct.bio_st* noundef %rbio, i32 noundef %buf_size) #8
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %free_wbio1 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 3
  store i32 %free_wbio, i32* %free_wbio1, align 4, !tbaa !16
  %upd_fn = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 6
  store %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %bio_update_fn, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)** %upd_fn, align 8, !tbaa !47
  %upd_arg = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 7
  store i8* %arg, i8** %upd_arg, align 8, !tbaa !48
  %use_ssl2 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 8
  store i32 %use_ssl, i32* %use_ssl2, align 8, !tbaa !49
  %cmp3.not = icmp eq i8* %proxy, null
  br i1 %cmp3.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %proxy, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 353) #7
  %proxy5 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 9
  store i8* %call4, i8** %proxy5, align 8, !tbaa !19
  %cmp6 = icmp eq i8* %call4, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %cmp9.not = icmp eq i8* %server, null
  br i1 %cmp9.not, label %if.end15, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %server, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 356) #7
  %server12 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 10
  store i8* %call11, i8** %server12, align 8, !tbaa !20
  %cmp13 = icmp eq i8* %call11, null
  br i1 %cmp13, label %err, label %if.end15

if.end15:                                         ; preds = %land.lhs.true10, %if.end8
  %cmp16.not = icmp eq i8* %port, null
  br i1 %cmp16.not, label %if.end22, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15
  %call18 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %port, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 359) #7
  %port19 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 11
  store i8* %call18, i8** %port19, align 8, !tbaa !21
  %cmp20 = icmp eq i8* %call18, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %land.lhs.true17, %if.end15
  %cmp23 = icmp sgt i32 %overall_timeout, 0
  br i1 %cmp23, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end22
  %call24 = tail call i64 @time(i64* noundef null) #7
  %conv40 = zext i32 %overall_timeout to i64
  %add = add nsw i64 %call24, %conv40
  br label %cond.end

cond.end:                                         ; preds = %if.end22, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %if.end22 ]
  %max_total_time = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %call, i64 0, i32 23
  store i64 %cond, i64* %max_total_time, align 8, !tbaa !27
  br label %cleanup

err:                                              ; preds = %land.lhs.true17, %land.lhs.true10, %land.lhs.true
  tail call void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %cond.end
  %retval.0 = phi %struct.ossl_http_req_ctx_st* [ null, %err ], [ %call, %cond.end ], [ null, %entry ]
  ret %struct.ossl_http_req_ctx_st* %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_set1_request(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %path, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %content_type, %struct.bio_st* noundef %req, i8* noundef %expected_content_type, i32 noundef %expect_asn1, i64 noundef %max_resp_len, i32 noundef %timeout, i32 noundef %keep_alive) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_set1_request, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %proxy = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 9
  %0 = load i8*, i8** %proxy, align 8, !tbaa !19
  %cmp1.not = icmp eq i8* %0, null
  br i1 %cmp1.not, label %if.end6.thread, label %land.end

land.end:                                         ; preds = %if.end
  %use_ssl = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 8
  %1 = load i32, i32* %use_ssl, align 8, !tbaa !49
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end6.thread

land.lhs.true:                                    ; preds = %land.end
  %server = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 10
  %2 = load i8*, i8** %server, align 8, !tbaa !20
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %port = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 11
  %3 = load i8*, i8** %port, align 8, !tbaa !21
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then5, label %cond.true

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 963, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.OSSL_HTTP_set1_request, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 524550, i8* noundef null) #7
  br label %cleanup

if.end6.thread:                                   ; preds = %land.end, %if.end
  %max_resp_len740 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 20
  store i64 %max_resp_len, i64* %max_resp_len740, align 8, !tbaa !15
  %port11.phi.trans.insert = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 11
  %.pre = load i8*, i8** %port11.phi.trans.insert, align 8, !tbaa !21
  br label %cond.end

cond.true:                                        ; preds = %lor.lhs.false
  %max_resp_len7 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 20
  store i64 %max_resp_len, i64* %max_resp_len7, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %if.end6.thread, %cond.true
  %4 = phi i8* [ %3, %cond.true ], [ %.pre, %if.end6.thread ]
  %cond = phi i8* [ %2, %cond.true ], [ null, %if.end6.thread ]
  %conv43.in = icmp ne %struct.bio_st* %req, null
  %conv43 = zext i1 %conv43.in to i32
  %call = tail call i32 @OSSL_HTTP_REQ_CTX_set_request_line(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i32 noundef %conv43, i8* noundef %cond, i8* noundef %4, i8* noundef %path) #8
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %cleanup, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.end
  %server14 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 10
  %5 = load i8*, i8** %server14, align 8, !tbaa !20
  %call15 = tail call fastcc i32 @add1_headers(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %5) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i32 @OSSL_HTTP_REQ_CTX_set_expected(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i8* noundef %expected_content_type, i32 noundef %expect_asn1, i32 noundef %timeout, i32 noundef %keep_alive) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %land.rhs20

land.rhs20:                                       ; preds = %land.lhs.true17
  %call21 = tail call fastcc i32 @set1_content(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx, i8* noundef %content_type, %struct.bio_st* noundef %req) #8
  %tobool22 = icmp ne i32 %call21, 0
  %phi.cast = zext i1 %tobool22 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.lhs.true13, %land.lhs.true17, %land.rhs20, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %cond.end ], [ %phi.cast, %land.rhs20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add1_headers(%struct.ossl_http_req_ctx_st* noundef %rctx, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %host) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %host, null
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load i8, i8* %host, align 1, !tbaa !25
  %cmp1 = icmp ne i8 %0, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %headers) #8
  %call337 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp438 = icmp sgt i32 %call337, 0
  br i1 %cmp438, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %for.end, !llvm.loop !50

for.body:                                         ; preds = %land.end, %for.cond
  %add_host.040 = phi i32 [ %add_host.1, %for.cond ], [ %1, %land.end ]
  %i.039 = phi i32 [ %inc, %for.cond ], [ 0, %land.end ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.039) #7
  %tobool.not = icmp eq i32 %add_host.040, 0
  %name11.phi.trans.insert = getelementptr inbounds i8, i8* %call7, i64 8
  %.phi.trans.insert = bitcast i8* %name11.phi.trans.insert to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !51
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @strcasecmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef %.pre) #10
  %cmp9 = icmp ne i32 %call8, 0
  %spec.select = zext i1 %cmp9 to i32
  br label %if.end

if.end:                                           ; preds = %for.body, %land.lhs.true
  %add_host.1 = phi i32 [ %spec.select, %land.lhs.true ], [ 0, %for.body ]
  %value = getelementptr inbounds i8, i8* %call7, i64 16
  %2 = bitcast i8* %value to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !53
  %call12 = tail call i32 @OSSL_HTTP_REQ_CTX_add1_header(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef %.pre, i8* noundef %3) #8
  %tobool13.not = icmp eq i32 %call12, 0
  %inc = add nuw nsw i32 %i.039, 1
  br i1 %tobool13.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %land.end
  %add_host.0.lcssa = phi i32 [ %1, %land.end ], [ %add_host.1, %for.cond ]
  %tobool16.not = icmp eq i32 %add_host.0.lcssa, 0
  br i1 %tobool16.not, label %if.end21, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %for.end
  %call18 = tail call i32 @OSSL_HTTP_REQ_CTX_add1_header(%struct.ossl_http_req_ctx_st* noundef %rctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* noundef %host) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %for.end
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true17, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %land.lhs.true17 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @OSSL_HTTP_exchange(%struct.ossl_http_req_ctx_st* noundef %rctx, i8** noundef writeonly %redirection_url) local_unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 16
  %cmp = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 987, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OSSL_HTTP_exchange, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i8** %redirection_url, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8* null, i8** %redirection_url, align 8, !tbaa !31
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call = tail call %struct.bio_st* @OSSL_HTTP_REQ_CTX_exchange(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx) #8
  %cond103 = icmp eq %struct.bio_st* %call, null
  br i1 %cond103, label %if.then5, label %land.lhs.true61

if.then5:                                         ; preds = %if.end3
  %redirection_url6 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 24
  %0 = load i8*, i8** %redirection_url6, align 8, !tbaa !32
  %cmp7.not = icmp eq i8* %0, null
  br i1 %cmp7.not, label %if.else14, label %if.then8

if.then8:                                         ; preds = %if.then5
  br i1 %cmp1.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OSSL_HTTP_exchange, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 116, i8* noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %if.then8
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1001) #7
  store i8* %call12, i8** %redirection_url, align 8, !tbaa !31
  br label %cleanup

if.else14:                                        ; preds = %if.then5
  %1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #9
  %call15 = tail call i64 @ERR_peek_error() #7
  %call16 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call15) #8
  %call17 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call15) #8
  switch i32 %call16, label %lor.lhs.false20 [
    i32 61, label %if.then31
    i32 20, label %if.then31
  ]

lor.lhs.false20:                                  ; preds = %if.else14
  %cmp21 = icmp eq i32 %call16, 32
  %cmp22 = icmp eq i32 %call17, 147
  %or.cond66 = select i1 %cmp21, i1 %cmp22, i1 false
  br i1 %or.cond66, label %if.then31, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %cmp26 = icmp eq i32 %call17, 103
  %or.cond67 = select i1 %cmp21, i1 %cmp26, i1 false
  br i1 %or.cond67, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %cmp28 = icmp eq i32 %call16, 58
  %or.cond68 = select i1 %cmp28, i1 %cmp22, i1 false
  br i1 %or.cond68, label %if.then31, label %if.end57

if.then31:                                        ; preds = %if.else14, %if.else14, %lor.lhs.false27, %lor.lhs.false23, %lor.lhs.false20
  %server = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 10
  %2 = load i8*, i8** %server, align 8, !tbaa !20
  %cmp32.not = icmp eq i8* %2, null
  br i1 %cmp32.not, label %if.end43, label %if.then33

if.then33:                                        ; preds = %if.then31
  %use_ssl = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 8
  %3 = load i32, i32* %use_ssl, align 8, !tbaa !49
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)
  %port = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 11
  %4 = load i8*, i8** %port, align 8, !tbaa !21
  %cmp35.not = icmp eq i8* %4, null
  %cond36 = select i1 %cmp35.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)
  %spec.select = select i1 %cmp35.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* %4
  %call41 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 200, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %2, i8* noundef %cond36, i8* noundef %spec.select) #7
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %1) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.then31
  %proxy = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 9
  %5 = load i8*, i8** %proxy, align 8, !tbaa !19
  %cmp44.not = icmp eq i8* %5, null
  br i1 %cmp44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %5) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43
  %cmp48 = icmp eq i64 %call15, 0
  br i1 %cmp48, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.end47
  %use_ssl51 = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 8
  %6 = load i32, i32* %use_ssl51, align 8, !tbaa !49
  %tobool52.not = icmp eq i32 %6, 0
  %cond53 = select i1 %tobool52.not, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)
  %call54 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 200, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* noundef %cond53) #7
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %1) #7
  br label %if.end57

if.end57:                                         ; preds = %if.end47, %if.then49, %lor.lhs.false27
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #9
  br label %cleanup

land.lhs.true61:                                  ; preds = %if.end3
  %call62 = call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call) #7
  %tobool63.not = icmp eq i32 %call62, 0
  %spec.select102 = select i1 %tobool63.not, %struct.bio_st* null, %struct.bio_st* %call
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else, %if.end57, %land.lhs.true61, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %spec.select102, %land.lhs.true61 ], [ null, %if.end57 ], [ null, %if.else ], [ null, %if.then10 ]
  ret %struct.bio_st* %retval.0
}

declare i64 @ERR_peek_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #6 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #6 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

declare i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @OSSL_HTTP_get(i8* noundef %url, i8* noundef %proxy, i8* noundef %no_proxy, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %buf_size, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %expected_ct, i32 noundef %expect_asn1, i64 noundef %max_resp_len, i32 noundef %timeout) local_unnamed_addr #0 {
entry:
  %redirection_url = alloca i8*, align 8
  %host = alloca i8*, align 8
  %port = alloca i8*, align 8
  %path = alloca i8*, align 8
  %use_ssl = alloca i32, align 4
  %0 = bitcast i8** %redirection_url to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %redirection_url, align 8, !tbaa !31
  %1 = bitcast i8** %host to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i8** %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = bitcast i32* %use_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %cmp = icmp eq i8* %url, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1074, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.OSSL_HTTP_get, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %url, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1077) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call475 = call i32 @OSSL_HTTP_parse_url(i8* noundef nonnull %call, i32* noundef nonnull %use_ssl, i8** noundef null, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef null, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #7
  %tobool.not76 = icmp eq i32 %call475, 0
  br i1 %tobool.not76, label %for.end, label %if.end6

if.end6:                                          ; preds = %for.cond.preheader, %if.end28
  %n_redirs.078 = phi i32 [ %inc, %if.end28 ], [ 0, %for.cond.preheader ]
  %current_url.077 = phi i8* [ %11, %if.end28 ], [ %call, %for.cond.preheader ]
  %5 = load i8*, i8** %host, align 8, !tbaa !31
  %6 = load i8*, i8** %port, align 8, !tbaa !31
  %7 = load i32, i32* %use_ssl, align 4, !tbaa !30
  %call7 = call %struct.ossl_http_req_ctx_st* @OSSL_HTTP_open(i8* noundef %5, i8* noundef %6, i8* noundef %proxy, i8* noundef %no_proxy, i32 noundef %7, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %buf_size, i32 noundef %timeout) #8
  %cmp8.not = icmp eq %struct.ossl_http_req_ctx_st* %call7, null
  br label %new_rpath

new_rpath:                                        ; preds = %if.then26, %if.end6
  %current_url.1 = phi i8* [ %current_url.077, %if.end6 ], [ %11, %if.then26 ]
  %n_redirs.1 = phi i32 [ %n_redirs.078, %if.end6 ], [ %inc, %if.then26 ]
  br i1 %cmp8.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %new_rpath
  %8 = load i8*, i8** %path, align 8, !tbaa !31
  %call10 = call i32 @OSSL_HTTP_set1_request(%struct.ossl_http_req_ctx_st* noundef nonnull %call7, i8* noundef %8, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef null, %struct.bio_st* noundef null, i8* noundef %expected_ct, i32 noundef %expect_asn1, i64 noundef %max_resp_len, i32 noundef -1, i32 noundef 0) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef nonnull %call7) #8
  br label %if.end15

if.else:                                          ; preds = %if.then9
  %call13 = call %struct.bio_st* @OSSL_HTTP_exchange(%struct.ossl_http_req_ctx_st* noundef nonnull %call7, i8** noundef nonnull %redirection_url) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %new_rpath
  %resp.2 = phi %struct.bio_st* [ %call13, %if.else ], [ null, %if.then12 ], [ null, %new_rpath ]
  %9 = load i8*, i8** %path, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1100) #7
  %cmp16 = icmp eq %struct.bio_st* %resp.2, null
  %10 = load i8*, i8** %redirection_url, align 8
  %cmp17 = icmp ne i8* %10, null
  %or.cond = select i1 %cmp16, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.end15
  %inc = add nsw i32 %n_redirs.1, 1
  %call19 = call fastcc i32 @redirection_ok(i32 noundef %inc, i8* noundef nonnull %current_url.1, i8* noundef nonnull %10) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end30, label %if.then21

if.then21:                                        ; preds = %if.then18
  %call22 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 1, i64 noundef 0, i8* noundef null) #7
  call void @CRYPTO_free(i8* noundef nonnull %current_url.1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1104) #7
  %11 = load i8*, i8** %redirection_url, align 8, !tbaa !31
  %12 = load i8, i8* %11, align 1, !tbaa !25
  %cmp24 = icmp eq i8 %12, 47
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then21
  %call27 = call i8* @CRYPTO_strdup(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1107) #7
  store i8* %call27, i8** %path, align 8, !tbaa !31
  br label %new_rpath

if.end28:                                         ; preds = %if.then21
  %13 = load i8*, i8** %host, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1110) #7
  %14 = load i8*, i8** %port, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1111) #7
  %call29 = call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef %call7, i32 noundef 1) #8
  %call4 = call i32 @OSSL_HTTP_parse_url(i8* noundef nonnull %11, i32* noundef nonnull %use_ssl, i8** noundef null, i8** noundef nonnull %host, i8** noundef nonnull %port, i32* noundef null, i8** noundef nonnull %path, i8** noundef null, i8** noundef null) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %if.end6

if.end30:                                         ; preds = %if.then18
  %15 = load i8*, i8** %redirection_url, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1116) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end15, %if.end30
  %resp.284 = phi %struct.bio_st* [ null, %if.end30 ], [ %resp.2, %if.end15 ]
  %16 = load i8*, i8** %host, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1118) #7
  %17 = load i8*, i8** %port, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1119) #7
  %cmp32 = icmp ne %struct.bio_st* %resp.284, null
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef %call7, i32 noundef %conv33) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %for.end

if.then36:                                        ; preds = %if.end31
  %call37 = call i32 @BIO_free(%struct.bio_st* noundef %resp.284) #7
  br label %for.end

for.end:                                          ; preds = %if.end28, %for.cond.preheader, %if.end31, %if.then36
  %current_url.2 = phi i8* [ %current_url.1, %if.end31 ], [ %current_url.1, %if.then36 ], [ %call, %for.cond.preheader ], [ %11, %if.end28 ]
  %resp.3 = phi %struct.bio_st* [ %resp.284, %if.end31 ], [ null, %if.then36 ], [ null, %for.cond.preheader ], [ null, %if.end28 ]
  call void @CRYPTO_free(i8* noundef nonnull %current_url.2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1126) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %resp.3, %for.end ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @redirection_ok(i32 noundef %n_redir, i8* noundef readonly %old_url, i8* noundef readonly %new_url) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n_redir, 49
  br i1 %cmp, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %new_url, align 1, !tbaa !25
  %cmp1 = icmp eq i8 %0, 47
  br i1 %cmp1, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call i32 @strncmp(i8* noundef %old_url, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i64 noundef 6) #10
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end4
  %call7 = tail call i32 @strncmp(i8* noundef nonnull %new_url, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i64 noundef 6) #10
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %return, label %return.sink.split

return.sink.split:                                ; preds = %land.lhs.true, %entry
  %.sink13 = phi i32 [ 1043, %entry ], [ 1050, %land.lhs.true ]
  %.sink = phi i32 [ 115, %entry ], [ 112, %land.lhs.true ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.redirection_ok, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef %.sink, i8* noundef null) #7
  br label %return

return:                                           ; preds = %return.sink.split, %if.end4, %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %land.lhs.true ], [ 1, %if.end4 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef %rctx, i32 noundef %ok) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_http_req_ctx_st* %rctx, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %upd_fn = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 6
  %0 = load %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)** %upd_fn, align 8, !tbaa !47
  %cmp1.not = icmp eq %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %wbio = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 4
  %1 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !13
  %upd_arg = getelementptr inbounds %struct.ossl_http_req_ctx_st, %struct.ossl_http_req_ctx_st* %rctx, i64 0, i32 7
  %2 = load i8*, i8** %upd_arg, align 8, !tbaa !48
  %call = tail call %struct.bio_st* %0(%struct.bio_st* noundef %1, i8* noundef %2, i32 noundef 0, i32 noundef %ok) #7
  %cmp3 = icmp ne %struct.bio_st* %call, null
  %conv = zext i1 %cmp3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ret.0 = phi i32 [ %conv, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  tail call void @OSSL_HTTP_REQ_CTX_free(%struct.ossl_http_req_ctx_st* noundef %rctx) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef %prctx, i8* noundef %server, i8* noundef %port, i8* noundef %path, i32 noundef %use_ssl, i8* noundef %proxy, i8* noundef %no_proxy, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %buf_size, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %content_type, %struct.bio_st* noundef %req, i8* noundef %expected_ct, i32 noundef %expect_asn1, i64 noundef %max_resp_len, i32 noundef %timeout, i32 noundef %keep_alive) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_http_req_ctx_st** %prctx, null
  br i1 %cmp, label %if.end, label %cond.end

cond.end:                                         ; preds = %entry
  %0 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %prctx, align 8, !tbaa !31
  %cmp1 = icmp eq %struct.ossl_http_req_ctx_st* %0, null
  br i1 %cmp1, label %if.end, label %if.then3

if.end:                                           ; preds = %entry, %cond.end
  %call = tail call %struct.ossl_http_req_ctx_st* @OSSL_HTTP_open(i8* noundef %server, i8* noundef %port, i8* noundef %proxy, i8* noundef %no_proxy, i32 noundef %use_ssl, %struct.bio_st* noundef %bio, %struct.bio_st* noundef %rbio, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %bio_update_fn, i8* noundef %arg, i32 noundef %buf_size, i32 noundef %timeout) #8
  %cmp2.not = icmp eq %struct.ossl_http_req_ctx_st* %call, null
  br i1 %cmp2.not, label %if.end19, label %if.then3

if.then3:                                         ; preds = %cond.end, %if.end
  %rctx.045 = phi %struct.ossl_http_req_ctx_st* [ %call, %if.end ], [ %0, %cond.end ]
  %timeout.addr.044 = phi i32 [ -1, %if.end ], [ %timeout, %cond.end ]
  %call4 = tail call i32 @OSSL_HTTP_set1_request(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx.045, i8* noundef %path, %struct.stack_st_CONF_VALUE* noundef %headers, i8* noundef %content_type, %struct.bio_st* noundef %req, i8* noundef %expected_ct, i32 noundef %expect_asn1, i64 noundef %max_resp_len, i32 noundef %timeout.addr.044, i32 noundef %keep_alive) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then11, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call6 = tail call %struct.bio_st* @OSSL_HTTP_exchange(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx.045, i8** noundef null) #8
  %cmp8 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call9 = tail call i32 @OSSL_HTTP_is_alive(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx.045) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.then3, %lor.lhs.false, %if.end7
  %resp.049 = phi %struct.bio_st* [ %call6, %lor.lhs.false ], [ null, %if.end7 ], [ null, %if.then3 ]
  %cmp12 = icmp ne %struct.bio_st* %resp.049, null
  %conv = zext i1 %cmp12 to i32
  %call13 = tail call i32 @OSSL_HTTP_close(%struct.ossl_http_req_ctx_st* noundef nonnull %rctx.045, i32 noundef %conv) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then11
  %call16 = tail call i32 @BIO_free(%struct.bio_st* noundef %resp.049) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.then15, %lor.lhs.false, %if.end
  %rctx.1 = phi %struct.ossl_http_req_ctx_st* [ %rctx.045, %lor.lhs.false ], [ null, %if.end ], [ null, %if.then15 ], [ null, %if.then11 ]
  %resp.2 = phi %struct.bio_st* [ %call6, %lor.lhs.false ], [ null, %if.end ], [ null, %if.then15 ], [ %resp.049, %if.then11 ]
  br i1 %cmp, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  store %struct.ossl_http_req_ctx_st* %rctx.1, %struct.ossl_http_req_ctx_st** %prctx, align 8, !tbaa !31
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  ret %struct.bio_st* %resp.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_HTTP_proxy_connect(%struct.bio_st* noundef %bio, i8* noundef %server, i8* noundef %port, i8* noundef %proxyuser, i8* noundef %proxypass, i32 noundef %timeout, %struct.bio_st* noundef %bio_err, i8* noundef %prog) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 8192, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1215) #7
  %call1 = tail call %struct.bio_method_st* @BIO_f_buffer() #7
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #7
  %cmp = icmp sgt i32 %timeout, 0
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call3 = tail call i64 @time(i64* noundef null) #7
  %conv237 = zext i32 %timeout to i64
  %add = add nsw i64 %call3, %conv237
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %entry ]
  %cmp4 = icmp eq %struct.bio_st* %bio, null
  %cmp6 = icmp eq i8* %server, null
  %or.cond = or i1 %cmp4, %cmp6
  br i1 %or.cond, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %cond.end
  %cmp9 = icmp ne %struct.bio_st* %bio_err, null
  %cmp11 = icmp eq i8* %prog, null
  %or.cond153 = and i1 %cmp9, %cmp11
  br i1 %or.cond153, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %cond.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1225, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_HTTP_proxy_connect, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 786690, i8* noundef null) #7
  br label %end

if.end:                                           ; preds = %lor.lhs.false8
  %cmp13 = icmp eq i8* %port, null
  br i1 %cmp13, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %0 = load i8, i8* %port, align 1, !tbaa !25
  %cmp17 = icmp eq i8 %0, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false15, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false15
  %port.addr.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), %if.then19 ], [ %port, %lor.lhs.false15 ]
  %cmp21 = icmp eq i8* %call, null
  %cmp24 = icmp eq %struct.bio_st* %call2, null
  %or.cond154 = select i1 %cmp21, i1 true, i1 %cmp24
  br i1 %or.cond154, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  %call27 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_err, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* noundef %prog) #7
  br label %end

if.end28:                                         ; preds = %if.end20
  %call29 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call2, %struct.bio_st* noundef nonnull %bio) #7
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %server, i8* noundef %port.addr.0) #7
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)) #7
  %cmp32.not = icmp eq i8* %proxyuser, null
  br i1 %cmp32.not, label %if.end75, label %if.then34

if.then34:                                        ; preds = %if.end28
  %call35 = tail call i64 @strlen(i8* noundef nonnull %proxyuser) #10
  %add36 = add i64 %call35, 1
  %cmp37.not = icmp eq i8* %proxypass, null
  br i1 %cmp37.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.then34
  %call40 = tail call i64 @strlen(i8* noundef nonnull %proxypass) #10
  %add41 = add i64 %call40, %add36
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then34
  %len.0 = phi i64 [ %add41, %if.then39 ], [ %add36, %if.then34 ]
  %add43 = add i64 %len.0, 1
  %call44 = tail call i8* @CRYPTO_malloc(i64 noundef %add43, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1252) #7
  %cmp45 = icmp eq i8* %call44, null
  br i1 %cmp45, label %if.then140, label %if.end48

if.end48:                                         ; preds = %if.end42
  %cond55 = select i1 %cmp37.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i8* %proxypass
  %call56 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %call44, i64 noundef %add43, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* noundef nonnull %proxyuser, i8* noundef %cond55) #7
  %conv57 = trunc i64 %len.0 to i32
  %cmp58.not = icmp eq i32 %call56, %conv57
  br i1 %cmp58.not, label %if.end61, label %1

if.end61:                                         ; preds = %if.end48
  %call62 = tail call fastcc i8* @base64encode(i8* noundef nonnull %call44, i64 noundef %len.0) #8
  %cmp63.not = icmp eq i8* %call62, null
  br i1 %cmp63.not, label %1, label %cleanup

1:                                                ; preds = %if.end48, %if.end61
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call44, i64 noundef %len.0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1264) #7
  br label %if.then140

cleanup:                                          ; preds = %if.end61
  %call66 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %call62) #7
  %call67 = tail call i64 @strlen(i8* noundef nonnull %call62) #10
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call62, i64 noundef %call67, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1261) #7
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %call44, i64 noundef %len.0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1264) #7
  br label %if.end75

if.end75:                                         ; preds = %cleanup, %if.end28
  %call76 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #7
  br label %for.cond

for.cond:                                         ; preds = %if.end82, %if.end75
  %call77 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %conv78 = trunc i64 %call77 to i32
  %cmp79.not = icmp eq i32 %conv78, 0
  br i1 %cmp79.not, label %if.end82, label %for.cond86.preheader

if.end82:                                         ; preds = %for.cond
  %call83 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call2, i32 noundef 8) #7
  %tobool.not = icmp eq i32 %call83, 0
  br i1 %tobool.not, label %for.cond86.preheader, label %for.cond

for.cond86.preheader:                             ; preds = %if.end82, %for.cond
  br label %for.cond86

for.cond86:                                       ; preds = %for.cond86.preheader, %if.end95
  %call87 = tail call i32 @BIO_wait(%struct.bio_st* noundef %call2, i64 noundef %cond, i32 noundef 100) #7
  %cmp88 = icmp slt i32 %call87, 1
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %for.cond86
  %cmp91 = icmp eq i32 %call87, 0
  %cond93 = select i1 %cmp91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0)
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_err, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8* noundef %prog, i8* noundef %cond93) #7
  br label %end

if.end95:                                         ; preds = %for.cond86
  %call96 = tail call i32 @BIO_gets(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef 8192) #7
  %cmp97 = icmp slt i32 %call96, 13
  br i1 %cmp97, label %for.cond86, label %if.end100

if.end100:                                        ; preds = %if.end95
  %call101 = tail call i32 @strncmp(i8* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i64 noundef 5) #10
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end100
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1301, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_HTTP_proxy_connect, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 126, i8* noundef null) #7
  %call107 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_err, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i64 0, i64 0), i8* noundef %prog) #7
  br label %end

if.end108:                                        ; preds = %if.end100
  %call109 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #10
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %call109
  %call110 = tail call i32 @strncmp(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i64 noundef 2) #10
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.end119, label %if.then117

if.then117:                                       ; preds = %if.end108
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1309, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_HTTP_proxy_connect, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 106, i8* noundef null) #7
  %call118 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_err, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0), i8* noundef %prog, i32 noundef 3, i8* noundef %add.ptr) #7
  br label %end

if.end119:                                        ; preds = %if.end108
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %call121 = tail call i32 @strncmp(i8* noundef nonnull %add.ptr120, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i64 noundef 2) #10
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end119
  %2 = zext i32 %call96 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %land.rhs
  %indvars.iv = phi i64 [ %2, %while.cond.preheader ], [ %4, %land.rhs ]
  %3 = trunc i64 %indvars.iv to i32
  %cmp125 = icmp sgt i32 %3, 0
  br i1 %cmp125, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %4
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv127 = sext i8 %5 to i32
  %call128 = tail call i32 @ossl_ctype_check(i32 noundef %conv127, i32 noundef 8) #7
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %while.end.split.loop.exit244, label %while.cond, !llvm.loop !54

while.end.split.loop.exit244:                     ; preds = %land.rhs
  %phi.cast = and i64 %indvars.iv, 4294967295
  br label %while.end

while.end:                                        ; preds = %while.cond, %while.end.split.loop.exit244
  %read_len.0.lcssa = phi i64 [ %phi.cast, %while.end.split.loop.exit244 ], [ 0, %while.cond ]
  %arrayidx131 = getelementptr inbounds i8, i8* %call, i64 %read_len.0.lcssa
  store i8 0, i8* %arrayidx131, align 1, !tbaa !25
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1323, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_HTTP_proxy_connect, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 61, i32 noundef 100, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull %add.ptr120) #7
  %call132 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio_err, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0), i8* noundef %prog, i8* noundef nonnull %add.ptr120) #7
  br label %end

do.body:                                          ; preds = %if.end119, %do.body
  %call135 = tail call i32 @BIO_gets(%struct.bio_st* noundef %call2, i8* noundef %call, i32 noundef 8192) #7
  %cmp136 = icmp sgt i32 %call135, 2
  br i1 %cmp136, label %do.body, label %end, !llvm.loop !55

end:                                              ; preds = %do.body, %while.end, %if.then117, %if.then106, %if.then90, %if.then26, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then26 ], [ 0, %if.then90 ], [ 0, %if.then106 ], [ 0, %if.then117 ], [ 0, %while.end ], [ 1, %do.body ]
  %cmp138.not = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp138.not, label %if.end145, label %if.then140

if.then140:                                       ; preds = %if.end42, %1, %end
  %ret.0235 = phi i32 [ %ret.0, %end ], [ 0, %1 ], [ 0, %if.end42 ]
  %call141 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 11, i64 noundef 0, i8* noundef null) #7
  %call143 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef nonnull %call2) #7
  %call144 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call2) #7
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %end
  %ret.0236 = phi i32 [ %ret.0235, %if.then140 ], [ %ret.0, %end ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1348) #7
  ret i32 %ret.0236
}

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @base64encode(i8* noundef %buf, i64 noundef %len) unnamed_addr #0 {
entry:
  %div = udiv i64 %len, 3
  %rem = urem i64 %len, 3
  %cmp.not = icmp ne i64 %rem, 0
  %inc = zext i1 %cmp.not to i64
  %spec.select = add nuw nsw i64 %div, %inc
  %shl = shl i64 %spec.select, 2
  %add = or i64 %shl, 1
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1192) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %conv = trunc i64 %len to i32
  %call4 = tail call i32 @EVP_EncodeBlock(i8* noundef nonnull %call, i8* noundef %buf, i32 noundef %conv) #7
  %cmp5 = icmp sgt i32 %call4, -1
  %conv7 = sext i32 %call4 to i64
  %cmp8 = icmp uge i64 %shl, %conv7
  %0 = and i1 %cmp5, %cmp8
  br i1 %0, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end3
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 1198) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.then12
  %retval.0 = phi i8* [ null, %if.then12 ], [ null, %entry ], [ %call, %if.end3 ]
  ret i8* %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_connect(i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_http_req_ctx_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !9, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !6, i64 160, !10, i64 168, !10, i64 176, !9, i64 184}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !9, i64 8}
!13 = !{!5, !9, i64 24}
!14 = !{!5, !9, i64 32}
!15 = !{!5, !10, i64 152}
!16 = !{!5, !6, i64 20}
!17 = !{!5, !9, i64 88}
!18 = !{!5, !9, i64 96}
!19 = !{!5, !9, i64 64}
!20 = !{!5, !9, i64 72}
!21 = !{!5, !9, i64 80}
!22 = !{!5, !9, i64 112}
!23 = !{!5, !10, i64 144}
!24 = !{!5, !6, i64 104}
!25 = !{!7, !7, i64 0}
!26 = !{!5, !6, i64 120}
!27 = !{!5, !10, i64 176}
!28 = !{!5, !10, i64 168}
!29 = !{!5, !6, i64 160}
!30 = !{!6, !6, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!5, !9, i64 184}
!33 = !{!5, !10, i64 136}
!34 = !{!5, !9, i64 128}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = distinct !{!46, !36}
!47 = !{!5, !9, i64 40}
!48 = !{!5, !9, i64 48}
!49 = !{!5, !6, i64 56}
!50 = distinct !{!50, !36}
!51 = !{!52, !9, i64 8}
!52 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!53 = !{!52, !9, i64 16}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
