; ModuleID = 'crypto/x509/by_file.c'
source_filename = "crypto/x509/by_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_lookup_method_st = type { i8*, i32 (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.x509_lookup_st = type { i32, i32, %struct.x509_lookup_method_st*, i8*, %struct.x509_store_st* }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_X509_OBJECT = type opaque
%struct.stack_st_X509_LOOKUP = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_name_st = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.x509_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.stack_st = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque

@x509_file_lookup = internal global %struct.x509_lookup_method_st { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.x509_lookup_st*)* null, void (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* @by_file_ctrl, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* @by_file_ctrl_ex }, align 8
@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/by_file.c\00", align 1
@__func__.X509_load_cert_file_ex = private unnamed_addr constant [23 x i8] c"X509_load_cert_file_ex\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.X509_load_crl_file = private unnamed_addr constant [19 x i8] c"X509_load_crl_file\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.X509_load_cert_crl_file_ex = private unnamed_addr constant [27 x i8] c"X509_load_cert_crl_file_ex\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Load file into cache\00", align 1
@__func__.by_file_ctrl_ex = private unnamed_addr constant [16 x i8] c"by_file_ctrl_ex\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #0 {
entry:
  ret %struct.x509_lookup_method_st* @x509_file_lookup
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !4
  %call = tail call %struct.bio_method_st* @BIO_s_file() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_load_cert_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524290, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %1 = add i32 %type, -3
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_load_cert_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 100, i8* noundef null) #5
  br label %err

if.end10:                                         ; preds = %if.end
  %call11 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.x509_st* %call11, %struct.x509_st** %x, align 8, !tbaa !4
  %cmp12 = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_load_cert_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end15:                                         ; preds = %if.end10
  switch i32 %type, label %if.then57 [
    i32 1, label %for.cond.preheader
    i32 2, label %if.then42
  ]

for.cond.preheader:                               ; preds = %if.end15
  %call1981 = call i32 @ERR_set_mark() #5
  %call2082 = call %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp2183 = icmp eq %struct.x509_st* %call2082, null
  br i1 %cmp2183, label %if.then23, label %if.end34.lr.ph

if.end34.lr.ph:                                   ; preds = %for.cond.preheader
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  br label %if.end34

if.then23:                                        ; preds = %if.end38, %for.cond.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end38 ]
  %call24 = call i64 @ERR_peek_last_error() #5
  %call25 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call24) #6
  %cmp26 = icmp eq i32 %call25, 108
  %cmp29 = icmp ne i32 %count.0.lcssa, 0
  %or.cond60 = select i1 %cmp26, i1 %cmp29, i1 false
  br i1 %or.cond60, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then23
  %call32 = call i32 @ERR_pop_to_mark() #5
  br label %if.end54.thread

if.else:                                          ; preds = %if.then23
  %call33 = call i32 @ERR_clear_last_mark() #5
  br label %err

if.end34:                                         ; preds = %if.end34.lr.ph, %if.end38
  %count.084 = phi i32 [ 0, %if.end34.lr.ph ], [ %inc, %if.end38 ]
  %call35 = call i32 @ERR_clear_last_mark() #5
  %3 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !8
  %4 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !4
  %call36 = call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %3, %struct.x509_st* noundef %4) #5
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end34
  %inc = add nuw nsw i32 %count.084, 1
  %5 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !4
  call void @X509_free(%struct.x509_st* noundef %5) #5
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !4
  %call19 = call i32 @ERR_set_mark() #5
  %call20 = call %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp21 = icmp eq %struct.x509_st* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end34

if.then42:                                        ; preds = %if.end15
  %call43 = call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x) #5
  %cmp44 = icmp eq %struct.x509_st* %call43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then42
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_load_cert_file_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524301, i8* noundef null) #5
  br label %err

if.end47:                                         ; preds = %if.then42
  %store_ctx48 = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  %6 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx48, align 8, !tbaa !8
  %7 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !4
  %call49 = call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %6, %struct.x509_st* noundef %7) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end54.thread

if.end54.thread:                                  ; preds = %if.then31, %if.end47
  %ret.0.ph = phi i32 [ %call49, %if.end47 ], [ %count.0.lcssa, %if.then31 ]
  br label %err

if.then57:                                        ; preds = %if.end15
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.X509_load_cert_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 135, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.end34, %if.end54.thread, %if.then57, %if.end47, %if.then46, %if.else, %if.then14, %if.then9, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then14 ], [ 0, %if.then57 ], [ 0, %if.else ], [ 0, %if.then46 ], [ 0, %if.end47 ], [ %ret.0.ph, %if.end54.thread ], [ 0, %if.end34 ]
  %8 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !4
  call void @X509_free(%struct.x509_st* noundef %8) #5
  %call59 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef, %struct.x509_st** noundef) local_unnamed_addr #3

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_load_cert_file(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %file, i32 noundef %type, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_load_crl_file(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509_load_crl_file, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524290, i8* noundef null) #5
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %type, label %if.else37 [
    i32 1, label %for.cond.preheader
    i32 2, label %if.then26
  ]

for.cond.preheader:                               ; preds = %if.end
  %call868 = tail call %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef nonnull %call1, %struct.X509_crl_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp969 = icmp eq %struct.X509_crl_st* %call868, null
  br i1 %cmp969, label %if.then11, label %if.end19.lr.ph

if.end19.lr.ph:                                   ; preds = %for.cond.preheader
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  br label %if.end19

if.then11:                                        ; preds = %if.end22, %for.cond.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end22 ]
  %call12 = tail call i64 @ERR_peek_last_error() #5
  %call13 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call12) #6
  %cmp14 = icmp eq i32 %call13, 108
  %cmp16 = icmp ne i32 %count.0.lcssa, 0
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then11
  tail call void @ERR_clear_error() #5
  br label %if.end39

if.else:                                          ; preds = %if.then11
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509_load_crl_file, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524297, i8* noundef null) #5
  br label %err

if.end19:                                         ; preds = %if.end19.lr.ph, %if.end22
  %call871 = phi %struct.X509_crl_st* [ %call868, %if.end19.lr.ph ], [ %call8, %if.end22 ]
  %count.070 = phi i32 [ 0, %if.end19.lr.ph ], [ %inc, %if.end22 ]
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !8
  %call20 = tail call i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef %0, %struct.X509_crl_st* noundef nonnull %call871) #5
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end19
  %inc = add nuw nsw i32 %count.070, 1
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef nonnull %call871) #5
  %call8 = tail call %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef nonnull %call1, %struct.X509_crl_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp9 = icmp eq %struct.X509_crl_st* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end19

if.then26:                                        ; preds = %if.end
  %call27 = tail call %struct.X509_crl_st* @d2i_X509_CRL_bio(%struct.bio_st* noundef nonnull %call1, %struct.X509_crl_st** noundef null) #5
  %cmp28 = icmp eq %struct.X509_crl_st* %call27, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then26
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509_load_crl_file, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524301, i8* noundef null) #5
  br label %err

if.end31:                                         ; preds = %if.then26
  %store_ctx32 = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  %1 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx32, align 8, !tbaa !8
  %call33 = tail call i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef %1, %struct.X509_crl_st* noundef nonnull %call27) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end39

if.else37:                                        ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509_load_crl_file, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 100, i8* noundef null) #5
  br label %err

if.end39:                                         ; preds = %if.end31, %if.then18
  %ret.0 = phi i32 [ %count.0.lcssa, %if.then18 ], [ %call33, %if.end31 ]
  %x.0 = phi %struct.X509_crl_st* [ null, %if.then18 ], [ %call27, %if.end31 ]
  br label %err

err:                                              ; preds = %if.end19, %if.end39, %if.end31, %if.else37, %if.then30, %if.else, %if.then
  %ret.1 = phi i32 [ 0, %if.then ], [ %ret.0, %if.end39 ], [ 0, %if.else ], [ 0, %if.then30 ], [ 0, %if.end31 ], [ 0, %if.else37 ], [ 0, %if.end19 ]
  %x.1 = phi %struct.X509_crl_st* [ null, %if.then ], [ %x.0, %if.end39 ], [ null, %if.else ], [ null, %if.then30 ], [ %call27, %if.end31 ], [ null, %if.else37 ], [ %call871, %if.end19 ]
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %x.1) #5
  %call44 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  ret i32 %ret.1
}

declare %struct.X509_crl_st* @PEM_read_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

declare i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #3

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #3

declare %struct.X509_crl_st* @d2i_X509_CRL_bio(%struct.bio_st* noundef, %struct.X509_crl_st** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_load_cert_crl_file_ex(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %file, i32 noundef %type, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5
  %tobool.not = icmp eq %struct.bio_st* %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_load_cert_crl_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524290, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio_ex(%struct.bio_st* noundef nonnull %call1, %struct.stack_st_X509_INFO* noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  %tobool6.not = icmp eq %struct.stack_st_X509_INFO* %call4, null
  br i1 %tobool6.not, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef nonnull %call4) #6
  %call1068 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #5
  %cmp1169 = icmp sgt i32 %call1068, 0
  br i1 %cmp1169, label %for.body.lr.ph, label %if.then34

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  br label %for.body

if.then7:                                         ; preds = %if.end3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_load_cert_crl_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524297, i8* noundef null) #5
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %count.071 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2, %for.inc ]
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc ]
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.070) #5
  %x509 = bitcast i8* %call13 to %struct.x509_st**
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !11
  %tobool14.not = icmp eq %struct.x509_st* %0, null
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %for.body
  %1 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !8
  %call17 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %1, %struct.x509_st* noundef nonnull %0) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.then15
  %inc = add nsw i32 %count.071, 1
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.body
  %count.1 = phi i32 [ %inc, %if.end20 ], [ %count.071, %for.body ]
  %crl = getelementptr inbounds i8, i8* %call13, i64 8
  %2 = bitcast i8* %crl to %struct.X509_crl_st**
  %3 = load %struct.X509_crl_st*, %struct.X509_crl_st** %2, align 8, !tbaa !14
  %tobool22.not = icmp eq %struct.X509_crl_st* %3, null
  br i1 %tobool22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.end21
  %4 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !8
  %call26 = tail call i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef %4, %struct.X509_crl_st* noundef nonnull %3) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.then23
  %inc30 = add nsw i32 %count.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.end29
  %count.2 = phi i32 [ %inc30, %if.end29 ], [ %count.1, %if.end21 ]
  %inc32 = add nuw nsw i32 %i.070, 1
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #5
  %cmp11 = icmp slt i32 %inc32, %call10
  br i1 %cmp11, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.inc
  %cmp33 = icmp eq i32 %count.2, 0
  br i1 %cmp33, label %if.then34, label %err

if.then34:                                        ; preds = %for.cond.preheader, %for.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_load_cert_crl_file_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 136, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.then23, %if.then15, %for.end, %if.then34
  %count.3 = phi i32 [ 0, %if.then34 ], [ %count.2, %for.end ], [ %count.071, %if.then15 ], [ %count.1, %if.then23 ]
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef nonnull %call4) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call36, void (i8*)* noundef bitcast (void (%struct.X509_info_st*)* @X509_INFO_free to void (i8*)*)) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %count.3, %err ], [ 0, %if.then7 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio_ex(%struct.bio_st* noundef, %struct.stack_st_X509_INFO* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_INFO_free(%struct.X509_info_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_load_cert_crl_file(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @X509_load_cert_crl_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %file, i32 noundef %type, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_file_ctrl(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** nocapture noundef readnone %ret) #1 {
entry:
  %call = tail call i32 @by_file_ctrl_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** noundef %ret, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_file_ctrl_ex(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** nocapture noundef readnone %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  %cond = icmp eq i32 %cmd, 1
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  switch i64 %argl, label %if.else19 [
    i64 3, label %if.then
    i64 1, label %if.then15
  ]

if.then:                                          ; preds = %sw.bb
  %call = tail call i8* @X509_get_default_cert_file_env() #5
  %call1 = tail call i8* @ossl_safe_getenv(i8* noundef %call) #5
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @X509_load_cert_crl_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef nonnull %call1, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %call5 = tail call i8* @X509_get_default_cert_file() #5
  %call6 = tail call i32 @X509_load_cert_crl_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %call5, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %ok.0.in.in = phi i32 [ %call3, %if.then2 ], [ %call6, %if.else ]
  %ok.0.in.not = icmp eq i32 %ok.0.in.in, 0
  br i1 %ok.0.in.not, label %if.then10, label %sw.epilog

if.then10:                                        ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.by_file_ctrl_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 104, i8* noundef null) #5
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb
  %call16 = tail call i32 @X509_load_cert_crl_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %argp, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp17 = icmp ne i32 %call16, 0
  br label %sw.epilog

if.else19:                                        ; preds = %sw.bb
  %conv20 = trunc i64 %argl to i32
  %call21 = tail call i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* noundef %ctx, i8* noundef %argp, i32 noundef %conv20, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp22 = icmp ne i32 %call21, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %if.end, %if.else19, %if.then15, %entry
  %ok.1.shrunk = phi i1 [ true, %if.end ], [ false, %if.then10 ], [ %cmp17, %if.then15 ], [ %cmp22, %if.else19 ], [ false, %entry ]
  %ok.1 = zext i1 %ok.1.shrunk to i32
  ret i32 %ok.1
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #3

declare i8* @X509_get_default_cert_file_env() local_unnamed_addr #3

declare i8* @X509_get_default_cert_file() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"x509_lookup_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"X509_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !13, i64 24, !10, i64 48, !5, i64 56}
!13 = !{!"evp_cipher_info_st", !5, i64 0, !6, i64 8}
!14 = !{!12, !5, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
