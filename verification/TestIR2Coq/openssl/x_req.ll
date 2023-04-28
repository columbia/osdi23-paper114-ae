; ModuleID = 'crypto/x509/x_req.c'
source_filename = "crypto/x509/x_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_AUX_st = type { i8*, i32, i32, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)*, i32, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque

@X509_REQ_INFO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_REQ_INFO_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* bitcast (%struct.ASN1_AUX_st* @X509_REQ_INFO_aux to i8*), i64 56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, align 8
@X509_REQ_INFO_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 2, i32 0, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @rinf_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"X509_REQ_INFO\00", align 1
@X509_REQ_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @X509_REQ_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* bitcast (%struct.ASN1_AUX_st* @X509_REQ_aux to i8*), i64 120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, align 8
@X509_REQ_aux = internal constant %struct.ASN1_AUX_st { i8* null, i32 1, i32 80, i32 88, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* @req_cb, i32 0, i32 (i32, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i8*)* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"X509_REQ\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"crypto/x509/x_req.c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@X509_REQ_INFO_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_NAME_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_PUBKEY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 139, i64 0, i64 48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ATTRIBUTE_it }], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"req_info\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sig_alg\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@X509_REQ_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_REQ_INFO_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_ALGOR_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@__func__.req_cb = private unnamed_addr constant [7 x i8] c"req_cb\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_REQ_INFO_it() #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_REQ_INFO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_info_st* @d2i_X509_REQ_INFO(%struct.X509_req_info_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_info_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_INFO_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_req_info_st*
  ret %struct.X509_req_info_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_REQ_INFO(%struct.X509_req_info_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_info_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_INFO_it.local_it) #4
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_info_st* @X509_REQ_INFO_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_INFO_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_req_info_st*
  ret %struct.X509_req_info_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_REQ_INFO_free(%struct.X509_req_info_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_info_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_INFO_it.local_it) #4
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @X509_REQ_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @X509_REQ_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @d2i_X509_REQ(%struct.X509_req_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it) #4
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_req_st*
  ret %struct.X509_req_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_X509_REQ(%struct.X509_req_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @X509_REQ_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_req_st*
  ret %struct.X509_req_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_REQ_free(%struct.X509_req_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @X509_REQ_dup(%struct.X509_req_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it, i8* noundef %0) #4
  %1 = bitcast i8* %call1 to %struct.X509_req_st*
  ret %struct.X509_req_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_REQ_set0_distinguishing_id(%struct.X509_req_st* nocapture noundef %x, %struct.asn1_string_st* noundef %d_id) local_unnamed_addr #1 {
entry:
  %distinguishing_id = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 5
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #4
  store %struct.asn1_string_st* %d_id, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !4
  ret void
}

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_REQ_get0_distinguishing_id(%struct.X509_req_st* nocapture noundef readonly %x) local_unnamed_addr #3 {
entry:
  %distinguishing_id = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 5
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !4
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_req_set0_libctx(%struct.X509_req_st* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.X509_req_st* %x, null
  br i1 %cmp.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %libctx1 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 6
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !14
  %propq2 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 7
  %0 = load i8*, i8** %propq2, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 152) #4
  store i8* null, i8** %propq2, align 8, !tbaa !15
  %cmp4.not = icmp eq i8* %propq, null
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 155) #4
  store i8* %call, i8** %propq2, align 8, !tbaa !15
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %return, label %if.end11

if.end11:                                         ; preds = %if.then, %if.then5, %entry
  br label %return

return:                                           ; preds = %if.then5, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_req_st* @X509_REQ_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X509_REQ_it.local_it) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.X509_req_st*
  %call2 = tail call i32 @ossl_x509_req_set0_libctx(%struct.X509_req_st* noundef %0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %req.0 = phi %struct.X509_req_st* [ %0, %entry ], [ null, %if.then ]
  ret %struct.X509_req_st* %req.0
}

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #2

declare %struct.ASN1_ITEM_st* @X509_NAME_it() #2

declare %struct.ASN1_ITEM_st* @X509_PUBKEY_it() #2

declare %struct.ASN1_ITEM_st* @X509_ATTRIBUTE_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rinf_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef readnone %exarg) #1 {
entry:
  %cmp = icmp eq i32 %operation, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_req_info_st**
  %1 = load %struct.X509_req_info_st*, %struct.X509_req_info_st** %0, align 8, !tbaa !16
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %attributes = getelementptr inbounds %struct.X509_req_info_st, %struct.X509_req_info_st* %1, i64 0, i32 4
  %2 = bitcast %struct.stack_st_X509_ATTRIBUTE** %attributes to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %2, align 8, !tbaa !17
  %tobool.not = icmp eq %struct.stack_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_ALGOR_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @req_cb(i32 noundef %operation, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i8* nocapture noundef %exarg) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.X509_req_st**
  %1 = load %struct.X509_req_st*, %struct.X509_req_st** %0, align 8, !tbaa !16
  switch i32 %operation, label %cleanup34 [
    i32 4, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 15, label %sw.bb5
    i32 16, label %sw.bb28
    i32 17, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  %distinguishing_id = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 5
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id, align 8, !tbaa !4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %2) #4
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %distinguishing_id2 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 5
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %distinguishing_id2, align 8, !tbaa !4
  br label %cleanup34

sw.bb3:                                           ; preds = %entry
  %distinguishing_id4 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %distinguishing_id4, align 8, !tbaa !4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %3) #4
  %propq = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 7
  %4 = load i8*, i8** %propq, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63) #4
  br label %cleanup34

sw.bb5:                                           ; preds = %entry
  %libctx = getelementptr inbounds i8, i8* %exarg, i64 104
  %5 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %5, align 8, !tbaa !14
  %propq6 = getelementptr inbounds i8, i8* %exarg, i64 112
  %7 = bitcast i8* %propq6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !15
  %call = tail call i32 @ossl_x509_req_set0_libctx(%struct.X509_req_st* noundef %1, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %8) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup34, label %if.end

if.end:                                           ; preds = %sw.bb5
  %pubkey = getelementptr inbounds i8, i8* %exarg, i64 40
  %9 = bitcast i8* %pubkey to %struct.X509_pubkey_st**
  %10 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %9, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.X509_pubkey_st* %10, null
  br i1 %cmp.not, label %cleanup34, label %if.then7

if.then7:                                         ; preds = %if.end
  %call10 = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef nonnull %10) #4
  %cmp11.not = icmp eq %struct.evp_pkey_st* %call10, null
  br i1 %cmp11.not, label %cleanup34, label %if.then12

if.then12:                                        ; preds = %if.then7
  %call13 = tail call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef nonnull %call10) #4
  %cmp14 = icmp eq %struct.evp_pkey_st* %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.req_cb, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup34

if.end16:                                         ; preds = %if.then12
  %pubkey18 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 0, i32 3
  %call19 = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %pubkey18, %struct.evp_pkey_st* noundef nonnull %call13) #4
  %tobool20.not = icmp eq i32 %call19, 0
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call13) #4
  br i1 %tobool20.not, label %if.then21, label %cleanup34

if.then21:                                        ; preds = %if.end16
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.req_cb, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #4
  br label %cleanup34

sw.bb28:                                          ; preds = %entry
  %11 = bitcast i8* %exarg to %struct.ossl_lib_ctx_st**
  %libctx30 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 6
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx30, align 8, !tbaa !14
  store %struct.ossl_lib_ctx_st* %12, %struct.ossl_lib_ctx_st** %11, align 8, !tbaa !16
  br label %cleanup34

sw.bb31:                                          ; preds = %entry
  %13 = bitcast i8* %exarg to i8**
  %propq33 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %1, i64 0, i32 7
  %14 = load i8*, i8** %propq33, align 8, !tbaa !15
  store i8* %14, i8** %13, align 8, !tbaa !16
  br label %cleanup34

cleanup34:                                        ; preds = %if.end16, %sw.bb5, %sw.bb1, %sw.bb3, %sw.bb28, %sw.bb31, %entry, %if.end, %if.then7, %if.then15, %if.then21
  %retval.3 = phi i32 [ 0, %if.then21 ], [ 0, %if.then15 ], [ 1, %if.then7 ], [ 1, %if.end ], [ 1, %entry ], [ 1, %sw.bb31 ], [ 1, %sw.bb28 ], [ 1, %sw.bb3 ], [ 1, %sw.bb1 ], [ 0, %sw.bb5 ], [ 1, %if.end16 ]
  ret i32 %retval.3
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 96}
!5 = !{!"X509_req_st", !6, i64 0, !13, i64 56, !8, i64 72, !9, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112}
!6 = !{!"X509_req_info_st", !7, i64 0, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!7 = !{!"ASN1_ENCODING_st", !8, i64 0, !11, i64 8, !12, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!14 = !{!5, !8, i64 104}
!15 = !{!5, !8, i64 112}
!16 = !{!8, !8, i64 0}
!17 = !{!6, !8, i64 48}
!18 = !{!5, !8, i64 40}
