; ModuleID = 'crypto/crmf/crmf_pbm.c'
source_filename = "crypto/crmf/crmf_pbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_crmf_pbmparameter_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/crmf/crmf_pbm.c\00", align 1
@__func__.OSSL_CRMF_pbmp_new = private unnamed_addr constant [19 x i8] c"OSSL_CRMF_pbmp_new\00", align 1
@__func__.OSSL_CRMF_pbm_new = private unnamed_addr constant [18 x i8] c"OSSL_CRMF_pbm_new\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_pbmp_new(%struct.ossl_lib_ctx_st* noundef %libctx, i64 noundef %slen, i32 noundef %owfnid, i64 noundef %itercnt, i32 noundef %macnid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_PBMPARAMETER_new() #3
  %cmp = icmp eq %struct.ossl_crmf_pbmparameter_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %slen, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #3
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call1, i64 noundef %slen, i32 noundef 0) #3
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %err.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end4
  %salt9 = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt9, align 8, !tbaa !4
  %conv = trunc i64 %slen to i32
  %call10 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %0, i8* noundef nonnull %call1, i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %owf = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %call, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %owf, align 8, !tbaa !9
  %call13 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %owfnid) #3
  %call14 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %1, %struct.asn1_object_st* noundef %call13, i32 noundef -1, i8* noundef null) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err.sink.split, label %if.end17

if.end17:                                         ; preds = %if.end12
  %cmp18 = icmp ult i64 %itercnt, 100
  br i1 %cmp18, label %err.sink.split, label %if.end21

if.end21:                                         ; preds = %if.end17
  %cmp22 = icmp ugt i64 %itercnt, 100000
  br i1 %cmp22, label %err.sink.split, label %if.end25

if.end25:                                         ; preds = %if.end21
  %iterationCount = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %call, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iterationCount, align 8, !tbaa !10
  %call26 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef %itercnt) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end25
  %mac = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %call, i64 0, i32 3
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %mac, align 8, !tbaa !11
  %call30 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %macnid) #3
  %call31 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %3, %struct.asn1_object_st* noundef %call30, i32 noundef -1, i8* noundef null) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err.sink.split, label %if.end34

if.end34:                                         ; preds = %if.end29
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #3
  br label %cleanup

err.sink.split:                                   ; preds = %if.end29, %if.end25, %if.end21, %if.end17, %if.end12, %if.end4
  %.sink50 = phi i32 [ 59, %if.end4 ], [ 71, %if.end12 ], [ 86, %if.end17 ], [ 90, %if.end21 ], [ 95, %if.end25 ], [ 105, %if.end29 ]
  %.sink = phi i32 [ 107, %if.end4 ], [ 111, %if.end12 ], [ 108, %if.end17 ], [ 100, %if.end21 ], [ 102, %if.end25 ], [ 110, %if.end29 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink50, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OSSL_CRMF_pbmp_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef %.sink, i8* noundef null) #3
  br label %err

err:                                              ; preds = %err.sink.split, %if.end8, %if.end, %entry
  %salt.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end8 ], [ %call1, %err.sink.split ]
  tail call void @CRYPTO_free(i8* noundef %salt.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #3
  tail call void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end34
  %retval.0 = phi %struct.ossl_crmf_pbmparameter_st* [ null, %err ], [ %call, %if.end34 ]
  ret %struct.ossl_crmf_pbmparameter_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_PBMPARAMETER_new() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_pbm_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ossl_crmf_pbmparameter_st* noundef readonly %pbmp, i8* noundef %msg, i64 noundef %msglen, i8* noundef %sec, i64 noundef %seclen, i8** noundef writeonly %out, i64* noundef %outlen) local_unnamed_addr #0 {
entry:
  %hmac_md_nid = alloca i32, align 4
  %mdname = alloca [50 x i8], align 16
  %hmac_mdname = alloca [50 x i8], align 16
  %basekey = alloca [64 x i8], align 16
  %bklen = alloca i32, align 4
  %iterations = alloca i64, align 8
  %buf = alloca [128 x i8], align 16
  %0 = bitcast i32* %hmac_md_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %hmac_md_nid, align 4, !tbaa !12
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %mdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #4
  %2 = getelementptr inbounds [50 x i8], [50 x i8]* %hmac_mdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %2) #4
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %basekey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #4
  %4 = bitcast i32* %bklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 64, i32* %bklen, align 4, !tbaa !12
  %5 = bitcast i64* %iterations to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4
  %cmp = icmp eq i8** %out, null
  %cmp1 = icmp eq %struct.ossl_crmf_pbmparameter_st* %pbmp, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %mac = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %pbmp, i64 0, i32 3
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %mac, align 8, !tbaa !11
  %cmp3 = icmp eq %struct.X509_algor_st* %6, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %7 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.asn1_object_st* %7, null
  %cmp8 = icmp eq i8* %msg, null
  %or.cond121 = or i1 %cmp8, %cmp6
  %cmp10 = icmp eq i8* %sec, null
  %or.cond122 = or i1 %cmp10, %or.cond121
  br i1 %or.cond122, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CRMF_pbm_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #3
  br label %err

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #3
  %cmp11 = icmp eq i8* %call, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end
  %owf14 = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %pbmp, i64 0, i32 1
  %8 = load %struct.X509_algor_st*, %struct.X509_algor_st** %owf14, align 8, !tbaa !9
  %algorithm15 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %8, i64 0, i32 0
  %9 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm15, align 8, !tbaa !14
  %call16 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %9, i32 noundef 0) #3
  %call18 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %1, i8* noundef %propq) #3
  %cmp19 = icmp eq %struct.evp_md_st* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end13
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CRMF_pbm_new, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 112, i8* noundef null) #3
  br label %err

if.end21:                                         ; preds = %if.end13
  %call22 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #3
  %cmp23 = icmp eq %struct.evp_md_ctx_st* %call22, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call22, %struct.evp_md_st* noundef nonnull %call18, %struct.engine_st* noundef null) #3
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end25
  %call29 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %sec, i64 noundef %seclen) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %if.end32

if.end32:                                         ; preds = %if.end28
  %salt = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %pbmp, i64 0, i32 0
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data, align 8, !tbaa !16
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %12 = load i32, i32* %length, align 8, !tbaa !19
  %conv = sext i32 %12 to i64
  %call34 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef %11, i64 noundef %conv) #3
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end32
  %call39 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %3, i32* noundef nonnull %bklen) #3
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %iterationCount = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %pbmp, i64 0, i32 2
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iterationCount, align 8, !tbaa !10
  %call43 = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %iterations, %struct.asn1_string_st* noundef %13) #3
  %tobool44 = icmp eq i32 %call43, 0
  %14 = load i64, i64* %iterations, align 8
  %cmp46 = icmp slt i64 %14, 100
  %or.cond123 = select i1 %tobool44, i1 true, i1 %cmp46
  %cmp49 = icmp sgt i64 %14, 100000
  %or.cond124 = select i1 %or.cond123, i1 true, i1 %cmp49
  br i1 %or.cond124, label %if.then51, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end42
  %dec156 = add nsw i64 %14, -1
  store i64 %dec156, i64* %iterations, align 8, !tbaa !20
  br label %while.body

if.then51:                                        ; preds = %if.end42
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CRMF_pbm_new, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 100, i8* noundef null) #3
  br label %err

while.condthread-pre-split:                       ; preds = %if.end64
  %.pr = load i64, i64* %iterations, align 8, !tbaa !20
  %dec = add nsw i64 %.pr, -1
  store i64 %dec, i64* %iterations, align 8, !tbaa !20
  %cmp53 = icmp sgt i64 %.pr, 1
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.condthread-pre-split
  %call55 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call22, %struct.evp_md_st* noundef nonnull %call18, %struct.engine_st* noundef null) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %while.body
  %15 = load i32, i32* %bklen, align 4, !tbaa !12
  %conv60 = zext i32 %15 to i64
  %call61 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %3, i64 noundef %conv60) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %if.end58
  %call66 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call22, i8* noundef nonnull %3, i32* noundef nonnull %bklen) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %while.condthread-pre-split, !llvm.loop !21

while.end:                                        ; preds = %while.condthread-pre-split
  %16 = load %struct.X509_algor_st*, %struct.X509_algor_st** %mac, align 8, !tbaa !11
  %algorithm71 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %16, i64 0, i32 0
  %17 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm71, align 8, !tbaa !14
  %call72 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %17) #3
  %call73 = call i32 @EVP_PBE_find(i32 noundef 1, i32 noundef %call72, i32* noundef null, i32* noundef nonnull %hmac_md_nid, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %while.end
  %18 = load i32, i32* %hmac_md_nid, align 4, !tbaa !12
  %call77 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %18) #3
  %call78 = call i32 @OBJ_obj2txt(i8* noundef nonnull %2, i32 noundef 50, %struct.asn1_object_st* noundef %call77, i32 noundef 0) #3
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %lor.lhs.false75, %while.end
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_CRMF_pbm_new, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 112, i8* noundef null) #3
  br label %err

if.end81:                                         ; preds = %lor.lhs.false75
  %19 = load i32, i32* %bklen, align 4, !tbaa !12
  %conv84 = zext i32 %19 to i64
  %call85 = call i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propq, i8* noundef nonnull %2, %struct.ossl_param_st* noundef null, i8* noundef nonnull %3, i64 noundef %conv84, i8* noundef %msg, i64 noundef %msglen, i8* noundef nonnull %call, i64 noundef 64, i64* noundef %outlen) #3
  %cmp86 = icmp ne i8* %call85, null
  br label %err

err:                                              ; preds = %if.end64, %if.end58, %while.body, %if.end81, %if.end37, %if.end32, %if.end28, %if.end25, %if.end21, %if.end, %if.then80, %if.then51, %if.then20, %if.then
  %owf.0 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %if.end ], [ null, %if.then20 ], [ %call18, %if.end21 ], [ %call18, %if.then51 ], [ %call18, %if.then80 ], [ %call18, %if.end37 ], [ %call18, %if.end32 ], [ %call18, %if.end28 ], [ %call18, %if.end25 ], [ %call18, %if.end81 ], [ %call18, %while.body ], [ %call18, %if.end58 ], [ %call18, %if.end64 ]
  %ctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %if.end ], [ null, %if.then20 ], [ null, %if.end21 ], [ %call22, %if.then51 ], [ %call22, %if.then80 ], [ %call22, %if.end37 ], [ %call22, %if.end32 ], [ %call22, %if.end28 ], [ %call22, %if.end25 ], [ %call22, %if.end81 ], [ %call22, %while.body ], [ %call22, %if.end58 ], [ %call22, %if.end64 ]
  %mac_res.0 = phi i8* [ null, %if.then ], [ null, %if.end ], [ %call, %if.then20 ], [ %call, %if.end21 ], [ %call, %if.then51 ], [ %call, %if.then80 ], [ %call, %if.end37 ], [ %call, %if.end32 ], [ %call, %if.end28 ], [ %call, %if.end25 ], [ %call, %if.end81 ], [ %call, %while.body ], [ %call, %if.end58 ], [ %call, %if.end64 ]
  %cmp92 = phi i1 [ false, %if.then ], [ false, %if.end ], [ false, %if.then20 ], [ false, %if.end21 ], [ false, %if.then51 ], [ false, %if.then80 ], [ false, %if.end37 ], [ false, %if.end32 ], [ false, %if.end28 ], [ false, %if.end25 ], [ %cmp86, %if.end81 ], [ false, %while.body ], [ false, %if.end58 ], [ false, %if.end64 ]
  %20 = load i32, i32* %bklen, align 4, !tbaa !12
  %conv91 = zext i32 %20 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %3, i64 noundef %conv91) #3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %owf.0) #3
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.0) #3
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %err
  store i8* %mac_res.0, i8** %out, align 8, !tbaa !23
  br label %cleanup

if.end95:                                         ; preds = %err
  call void @CRYPTO_free(i8* noundef %mac_res.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 224) #3
  br i1 %cmp1, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end95
  %mac98 = getelementptr inbounds %struct.ossl_crmf_pbmparameter_st, %struct.ossl_crmf_pbmparameter_st* %pbmp, i64 0, i32 3
  %21 = load %struct.X509_algor_st*, %struct.X509_algor_st** %mac98, align 8, !tbaa !11
  %cmp99.not = icmp eq %struct.X509_algor_st* %21, null
  br i1 %cmp99.not, label %cleanup, label %if.then101

if.then101:                                       ; preds = %land.lhs.true
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %22) #4
  %algorithm104 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %21, i64 0, i32 0
  %23 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm104, align 8, !tbaa !14
  %call105 = call i32 @OBJ_obj2txt(i8* noundef nonnull %22, i32 noundef 128, %struct.asn1_object_st* noundef %23, i32 noundef 0) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.then101
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %22) #3
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then101
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %land.lhs.true, %if.end109, %if.then94
  %retval.0 = phi i32 [ 1, %if.then94 ], [ 0, %if.end109 ], [ 0, %land.lhs.true ], [ 0, %if.end95 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PBE_find(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef) local_unnamed_addr #2

declare i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_crmf_pbmparameter_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!5, !6, i64 24}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!16 = !{!17, !6, i64 8}
!17 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !6, i64 8, !18, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!17, !13, i64 0}
!20 = !{!18, !18, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!6, !6, i64 0}
