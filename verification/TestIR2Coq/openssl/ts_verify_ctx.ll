; ModuleID = 'crypto/ts/ts_verify_ctx.c'
source_filename = "crypto/ts/ts_verify_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_verify_ctx = type { i32, %struct.x509_store_st*, %struct.stack_st_X509*, %struct.asn1_object_st*, %struct.X509_algor_st*, i8*, i32, %struct.bio_st*, %struct.asn1_string_st*, %struct.GENERAL_NAME_st* }
%struct.x509_store_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.asn1_object_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st = type opaque
%struct.x509_st = type opaque
%struct.TS_req_st = type { %struct.asn1_string_st*, %struct.TS_msg_imprint_st*, %struct.asn1_object_st*, %struct.asn1_string_st*, i32, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.stack_st_X509_EXTENSION = type opaque

@.str = private unnamed_addr constant [26 x i8] c"crypto/ts/ts_verify_ctx.c\00", align 1
@__func__.TS_VERIFY_CTX_new = private unnamed_addr constant [18 x i8] c"TS_VERIFY_CTX_new\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"assertion failed: ctx != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"assertion failed: req != NULL\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_verify_ctx* @TS_VERIFY_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 80, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 17) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.TS_VERIFY_CTX_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 47, i32 noundef 786688, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.TS_verify_ctx*
  ret %struct.TS_verify_ctx* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @TS_VERIFY_CTX_init(%struct.TS_verify_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.TS_verify_ctx* %ctx, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 26) #8
  unreachable

cond.end:                                         ; preds = %entry
  %0 = bitcast %struct.TS_verify_ctx* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 80) #7
  ret void
}

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @TS_VERIFY_CTX_free(%struct.TS_verify_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.TS_verify_ctx* %ctx, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @TS_VERIFY_CTX_cleanup(%struct.TS_verify_ctx* noundef nonnull %ctx) #9
  %0 = bitcast %struct.TS_verify_ctx* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @TS_VERIFY_CTX_cleanup(%struct.TS_verify_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.TS_verify_ctx* %ctx, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %store = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 1
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store, align 8, !tbaa !4
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %0) #7
  %certs = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !10
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #7
  %policy = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 3
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy, align 8, !tbaa !11
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %2) #7
  %md_alg = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 4
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %md_alg, align 8, !tbaa !12
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %3) #7
  %imprint = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 5
  %4 = load i8*, i8** %imprint, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #7
  %data = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 7
  %5 = load %struct.bio_st*, %struct.bio_st** %data, align 8, !tbaa !14
  tail call void @BIO_free_all(%struct.bio_st* noundef %5) #7
  %nonce = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 8
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !15
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %6) #7
  %tsa_name = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 9
  %7 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %tsa_name, align 8, !tbaa !16
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %7) #7
  tail call void @TS_VERIFY_CTX_init(%struct.TS_verify_ctx* noundef nonnull %ctx) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @TS_VERIFY_CTX_add_flags(%struct.TS_verify_ctx* nocapture noundef %ctx, i32 noundef %f) local_unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !17
  %or = or i32 %0, %f
  store i32 %or, i32* %flags, align 8, !tbaa !17
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @TS_VERIFY_CTX_set_flags(%struct.TS_verify_ctx* nocapture noundef writeonly %ctx, i32 noundef returned %f) local_unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 0
  store i32 %f, i32* %flags, align 8, !tbaa !17
  ret i32 %f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define %struct.bio_st* @TS_VERIFY_CTX_set_data(%struct.TS_verify_ctx* nocapture noundef writeonly %ctx, %struct.bio_st* noundef returned %b) local_unnamed_addr #5 {
entry:
  %data = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 7
  store %struct.bio_st* %b, %struct.bio_st** %data, align 8, !tbaa !14
  ret %struct.bio_st* %b
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define %struct.x509_store_st* @TS_VERIFY_CTX_set_store(%struct.TS_verify_ctx* nocapture noundef writeonly %ctx, %struct.x509_store_st* noundef returned %s) local_unnamed_addr #5 {
entry:
  %store = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 1
  store %struct.x509_store_st* %s, %struct.x509_store_st** %store, align 8, !tbaa !4
  ret %struct.x509_store_st* %s
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define %struct.stack_st_X509* @TS_VERIFY_CTX_set_certs(%struct.TS_verify_ctx* nocapture noundef writeonly %ctx, %struct.stack_st_X509* noundef returned %certs) local_unnamed_addr #5 {
entry:
  %certs1 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 2
  store %struct.stack_st_X509* %certs, %struct.stack_st_X509** %certs1, align 8, !tbaa !10
  ret %struct.stack_st_X509* %certs
}

; Function Attrs: noinline nounwind uwtable
define i8* @TS_VERIFY_CTX_set_imprint(%struct.TS_verify_ctx* nocapture noundef %ctx, i8* noundef returned %hexstr, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %imprint = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 5
  %0 = load i8*, i8** %imprint, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #7
  store i8* %hexstr, i8** %imprint, align 8, !tbaa !13
  %conv = trunc i64 %len to i32
  %imprint_len = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ctx, i64 0, i32 6
  store i32 %conv, i32* %imprint_len, align 8, !tbaa !18
  ret i8* %hexstr
}

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.TS_verify_ctx* @TS_REQ_to_TS_VERIFY_CTX(%struct.TS_req_st* noundef readonly %req, %struct.TS_verify_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.TS_req_st* %req, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 110) #8
  unreachable

cond.end:                                         ; preds = %entry
  %tobool.not = icmp eq %struct.TS_verify_ctx* %ctx, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @TS_VERIFY_CTX_cleanup(%struct.TS_verify_ctx* noundef nonnull %ctx) #9
  br label %if.end3

if.else:                                          ; preds = %cond.end
  %call = tail call %struct.TS_verify_ctx* @TS_VERIFY_CTX_new() #9
  %cmp1 = icmp eq %struct.TS_verify_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.else, %if.then
  %ret.0 = phi %struct.TS_verify_ctx* [ %ctx, %if.then ], [ %call, %if.else ]
  %flags = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 0
  store i32 110, i32* %flags, align 8, !tbaa !17
  %policy_id = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %req, i64 0, i32 2
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policy_id, align 8, !tbaa !19
  %cmp4.not = icmp eq %struct.asn1_object_st* %0, null
  br i1 %cmp4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %0) #7
  %policy7 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 3
  store %struct.asn1_object_st* %call6, %struct.asn1_object_st** %policy7, align 8, !tbaa !11
  %cmp8 = icmp eq %struct.asn1_object_st* %call6, null
  br i1 %cmp8, label %err, label %if.end13

if.else11:                                        ; preds = %if.end3
  store i32 106, i32* %flags, align 8, !tbaa !17
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.else11
  %msg_imprint = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %req, i64 0, i32 1
  %1 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !21
  %hash_algo = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %1, i64 0, i32 0
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %hash_algo, align 8, !tbaa !22
  %call14 = tail call %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef %2) #7
  %md_alg15 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 4
  store %struct.X509_algor_st* %call14, %struct.X509_algor_st** %md_alg15, align 8, !tbaa !12
  %cmp16 = icmp eq %struct.X509_algor_st* %call14, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %hashed_msg = getelementptr inbounds %struct.TS_msg_imprint_st, %struct.TS_msg_imprint_st* %1, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %hashed_msg, align 8, !tbaa !24
  %call19 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %3) #7
  %imprint_len = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 6
  store i32 %call19, i32* %imprint_len, align 8, !tbaa !18
  %cmp21 = icmp eq i32 %call19, 0
  br i1 %cmp21, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  %conv = zext i32 %call19 to i64
  %call25 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 132) #7
  %imprint26 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 5
  store i8* %call25, i8** %imprint26, align 8, !tbaa !13
  %cmp27 = icmp eq i8* %call25, null
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.end23
  %call32 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %3) #7
  %4 = load i32, i32* %imprint_len, align 8, !tbaa !18
  %conv34 = zext i32 %4 to i64
  %call35 = tail call i8* @memcpy(i8* noundef nonnull %call25, i8* noundef %call32, i64 noundef %conv34) #7
  %nonce36 = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %req, i64 0, i32 3
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce36, align 8, !tbaa !25
  %cmp37.not = icmp eq %struct.asn1_string_st* %5, null
  br i1 %cmp37.not, label %if.else46, label %if.then39

if.then39:                                        ; preds = %if.end30
  %call40 = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef nonnull %5) #7
  %nonce41 = getelementptr inbounds %struct.TS_verify_ctx, %struct.TS_verify_ctx* %ret.0, i64 0, i32 8
  store %struct.asn1_string_st* %call40, %struct.asn1_string_st** %nonce41, align 8, !tbaa !15
  %cmp42 = icmp eq %struct.asn1_string_st* %call40, null
  br i1 %cmp42, label %err, label %cleanup

if.else46:                                        ; preds = %if.end30
  %6 = load i32, i32* %flags, align 8, !tbaa !17
  %and48 = and i32 %6, -33
  store i32 %and48, i32* %flags, align 8, !tbaa !17
  br label %cleanup

err:                                              ; preds = %if.then39, %if.end23, %if.end18, %if.end13, %if.then5
  br i1 %tobool.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %err
  tail call void @TS_VERIFY_CTX_cleanup(%struct.TS_verify_ctx* noundef nonnull %ctx) #9
  br label %cleanup

if.else52:                                        ; preds = %err
  tail call void @TS_VERIFY_CTX_free(%struct.TS_verify_ctx* noundef nonnull %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.else52, %if.else46, %if.then39, %if.else
  %retval.0 = phi %struct.TS_verify_ctx* [ null, %if.else ], [ %ret.0, %if.then39 ], [ %ret.0, %if.else46 ], [ null, %if.else52 ], [ null, %if.then51 ]
  ret %struct.TS_verify_ctx* %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.X509_algor_st* @X509_ALGOR_dup(%struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"TS_verify_ctx", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 16}
!11 = !{!5, !9, i64 24}
!12 = !{!5, !9, i64 32}
!13 = !{!5, !9, i64 40}
!14 = !{!5, !9, i64 56}
!15 = !{!5, !9, i64 64}
!16 = !{!5, !9, i64 72}
!17 = !{!5, !6, i64 0}
!18 = !{!5, !6, i64 48}
!19 = !{!20, !9, i64 16}
!20 = !{!"TS_req_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 40}
!21 = !{!20, !9, i64 8}
!22 = !{!23, !9, i64 0}
!23 = !{!"TS_msg_imprint_st", !9, i64 0, !9, i64 8}
!24 = !{!23, !9, i64 8}
!25 = !{!20, !9, i64 24}
