; ModuleID = 'crypto/pem/pem_info.c'
source_filename = "crypto/pem/pem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.rsa_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/pem/pem_info.c\00", align 1
@__func__.PEM_X509_INFO_read_ex = private unnamed_addr constant [22 x i8] c"PEM_X509_INFO_read_ex\00", align 1
@__func__.PEM_X509_INFO_read_bio_ex = private unnamed_addr constant [26 x i8] c"PEM_X509_INFO_read_bio_ex\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"X509 CRL\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@__func__.PEM_X509_INFO_write_bio = private unnamed_addr constant [24 x i8] c"PEM_X509_INFO_write_bio\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"RSA PRIVATE KEY\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_ex(%struct._IO_FILE* noundef %fp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PEM_X509_INFO_read_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #5
  %call3 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio_ex(%struct.bio_st* noundef nonnull %call1, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.stack_st_X509_INFO* [ null, %if.then ], [ %call3, %if.end ]
  ret %struct.stack_st_X509_INFO* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio_ex(%struct.bio_st* noundef %bp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  %cipher = alloca %struct.evp_cipher_info_st, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i8* null, i8** %name, align 8, !tbaa !4
  %1 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %header, align 8, !tbaa !4
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %data, align 8, !tbaa !4
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %cmp = icmp eq %struct.stack_st_X509_INFO* %sk, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %5 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_INFO*
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.PEM_X509_INFO_read_bio_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end3:                                          ; preds = %entry, %if.then
  %ret.0 = phi %struct.stack_st_X509_INFO* [ %5, %if.then ], [ %sk, %entry ]
  %call4 = tail call %struct.X509_info_st* @X509_INFO_new() #5
  %cmp5 = icmp eq %struct.X509_info_st* %call4, null
  br i1 %cmp5, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %call8328 = call i32 @ERR_set_mark() #5
  %call9329 = call i32 @PEM_read_bio(%struct.bio_st* noundef %bp, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len) #5
  %cmp10330 = icmp eq i32 %call9329, 0
  br i1 %cmp10330, label %if.then11, label %if.end20.lr.ph

if.end20.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = bitcast %struct.evp_cipher_info_st* %cipher to i8*
  br label %if.end20

if.then11:                                        ; preds = %if.end170, %for.cond.preheader
  %xi.0.lcssa = phi %struct.X509_info_st* [ %call4, %for.cond.preheader ], [ %xi.1, %if.end170 ]
  %call12 = call i64 @ERR_peek_last_error() #5
  %call13 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call12) #6
  %cmp14 = icmp eq i32 %call13, 108
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then11
  %call17 = call i32 @ERR_pop_to_mark() #5
  %x509171 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.0.lcssa, i64 0, i32 0
  %7 = load %struct.x509_st*, %struct.x509_st** %x509171, align 8, !tbaa !8
  %cmp172.not = icmp eq %struct.x509_st* %7, null
  br i1 %cmp172.not, label %lor.lhs.false174, label %if.then186

if.end18:                                         ; preds = %if.then11
  %call19 = call i32 @ERR_clear_last_mark() #5
  br label %err

if.end20:                                         ; preds = %if.end20.lr.ph, %if.end170
  %xi.0331 = phi %struct.X509_info_st* [ %call4, %if.end20.lr.ph ], [ %xi.1, %if.end170 ]
  %call21 = call i32 @ERR_clear_last_mark() #5
  br label %start

start:                                            ; preds = %start.backedge, %if.end20
  %xi.1 = phi %struct.X509_info_st* [ %xi.0331, %if.end20 ], [ %xi.1.be, %start.backedge ]
  %8 = load i8*, i8** %name, align 8, !tbaa !4
  %call22 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %start
  %call25 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %call29 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else61

if.then32:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %start
  %x509 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 0
  %9 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  %cmp33.not = icmp eq %struct.x509_st* %9, null
  br i1 %cmp33.not, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.then32
  %call36 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.0) #6
  %10 = bitcast %struct.X509_info_st* %xi.1 to i8*
  %call38 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call36, i8* noundef %10) #5
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.then35
  %call41 = call %struct.X509_info_st* @X509_INFO_new() #5
  %cmp42 = icmp eq %struct.X509_info_st* %call41, null
  br i1 %cmp42, label %err, label %start.backedge

start.backedge:                                   ; preds = %if.end40, %if.end74, %if.end95
  %xi.1.be = phi %struct.X509_info_st* [ %call41, %if.end40 ], [ %call75, %if.end74 ], [ %call96, %if.end95 ]
  br label %start

if.end46:                                         ; preds = %if.then32
  %x509.le = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 0
  %call47 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #8
  %call53 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  store %struct.x509_st* %call53, %struct.x509_st** %x509.le, align 8, !tbaa !8
  %cmp56 = icmp eq %struct.x509_st* %call53, null
  br i1 %cmp56, label %err, label %if.end59

if.end59:                                         ; preds = %if.end46
  %cmp48 = icmp eq i32 %call47, 0
  %. = select i1 %cmp48, i8* (i8**, i8**, i64)* bitcast (%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509 to i8* (i8**, i8**, i64)*)
  %11 = bitcast %struct.X509_info_st* %xi.1 to i8*
  br label %if.then138

if.else61:                                        ; preds = %lor.lhs.false28
  %call62 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else82

if.then65:                                        ; preds = %if.else61
  %crl = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 1
  %12 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !12
  %cmp66.not = icmp eq %struct.X509_crl_st* %12, null
  br i1 %cmp66.not, label %if.end80, label %if.then68

if.then68:                                        ; preds = %if.then65
  %call69 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.0) #6
  %13 = bitcast %struct.X509_info_st* %xi.1 to i8*
  %call71 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call69, i8* noundef %13) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.then68
  %call75 = call %struct.X509_info_st* @X509_INFO_new() #5
  %cmp76 = icmp eq %struct.X509_info_st* %call75, null
  br i1 %cmp76, label %err, label %start.backedge

if.end80:                                         ; preds = %if.then65
  %crl.le = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 1
  %14 = bitcast %struct.X509_crl_st** %crl.le to i8*
  br label %if.then138

if.else82:                                        ; preds = %if.else61
  %call83 = call i8* @strstr(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp84.not = icmp eq i8* %call83, null
  br i1 %cmp84.not, label %if.end170, label %if.then86

if.then86:                                        ; preds = %if.else82
  %x_pkey = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 2
  %15 = load %struct.private_key_st*, %struct.private_key_st** %x_pkey, align 8, !tbaa !13
  %cmp87.not = icmp eq %struct.private_key_st* %15, null
  br i1 %cmp87.not, label %if.end101, label %if.then89

if.then89:                                        ; preds = %if.then86
  %call90 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.0) #6
  %16 = bitcast %struct.X509_info_st* %xi.1 to i8*
  %call92 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call90, i8* noundef %16) #5
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %if.end95

if.end95:                                         ; preds = %if.then89
  %call96 = call %struct.X509_info_st* @X509_INFO_new() #5
  %cmp97 = icmp eq %struct.X509_info_st* %call96, null
  br i1 %cmp97, label %err, label %start.backedge

if.end101:                                        ; preds = %if.then86
  %x_pkey.le = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 2
  %cmp102 = icmp eq i8* %call83, %8
  br i1 %cmp102, label %if.end111, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end101
  %call105 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.end111, label %if.else109

if.else109:                                       ; preds = %lor.lhs.false104
  %incdec.ptr = getelementptr inbounds i8, i8* %call83, i64 -1
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !14
  %17 = load i8*, i8** %name, align 8, !tbaa !4
  %call110 = call i32 @evp_pkey_name2type(i8* noundef %17) #5
  br label %if.end111

if.end111:                                        ; preds = %if.end101, %lor.lhs.false104, %if.else109
  %ptype.0 = phi i32 [ %call110, %if.else109 ], [ 0, %lor.lhs.false104 ], [ 0, %if.end101 ]
  %enc_data = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 5
  store i8* null, i8** %enc_data, align 8, !tbaa !15
  %enc_len = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 4
  store i32 0, i32* %enc_len, align 8, !tbaa !16
  %call112 = call %struct.private_key_st* @X509_PKEY_new() #5
  store %struct.private_key_st* %call112, %struct.private_key_st** %x_pkey.le, align 8, !tbaa !13
  %cmp115 = icmp eq %struct.private_key_st* %call112, null
  br i1 %cmp115, label %err, label %if.end118

if.end118:                                        ; preds = %if.end111
  %18 = load i8*, i8** %header, align 8, !tbaa !4
  %call120 = call i64 @strlen(i8* noundef %18) #8
  %conv121 = trunc i64 %call120 to i32
  %cmp122 = icmp sgt i32 %conv121, 10
  br i1 %cmp122, label %if.else161, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.end118
  %dec_pkey = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %call112, i64 0, i32 3
  %19 = bitcast %struct.evp_pkey_st** %dec_pkey to i8*
  %20 = load i8*, i8** %name, align 8, !tbaa !4
  %call125 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.else161, label %if.then138

if.then138:                                       ; preds = %lor.lhs.false124, %if.end80, %if.end59
  %pp.0.ph.ph = phi i8* [ %11, %if.end59 ], [ %14, %if.end80 ], [ %19, %lor.lhs.false124 ]
  %ptype.1.ph.ph = phi i32 [ 0, %if.end59 ], [ 0, %if.end80 ], [ %ptype.0, %lor.lhs.false124 ]
  %d2i.1.ph.ph = phi i8* (i8**, i8**, i64)* [ %., %if.end59 ], [ bitcast (%struct.X509_crl_st* (%struct.X509_crl_st**, i8**, i64)* @d2i_X509_CRL to i8* (i8**, i8**, i64)*), %if.end80 ], [ bitcast (%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_AutoPrivateKey to i8* (i8**, i8**, i64)*), %lor.lhs.false124 ]
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7
  %21 = load i8*, i8** %header, align 8, !tbaa !4
  %call139 = call i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef %21, %struct.evp_cipher_info_st* noundef nonnull %cipher) #5
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cleanup.thread, label %if.end142

if.end142:                                        ; preds = %if.then138
  %22 = load i8*, i8** %data, align 8, !tbaa !4
  %call143 = call i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef nonnull %cipher, i8* noundef %22, i64* noundef nonnull %len, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %cleanup.thread, label %if.end146

if.end146:                                        ; preds = %if.end142
  %23 = load i8*, i8** %data, align 8, !tbaa !4
  store i8* %23, i8** %p, align 8, !tbaa !4
  %tobool147.not = icmp eq i32 %ptype.1.ph.ph, 0
  br i1 %tobool147.not, label %if.else154, label %if.then148

if.then148:                                       ; preds = %if.end146
  %24 = bitcast i8* %pp.0.ph.ph to %struct.evp_pkey_st**
  %25 = load i64, i64* %len, align 8, !tbaa !17
  %call149 = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %ptype.1.ph.ph, %struct.evp_pkey_st** noundef %24, i8** noundef nonnull %p, i64 noundef %25, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %cmp150 = icmp eq %struct.evp_pkey_st* %call149, null
  br i1 %cmp150, label %cleanup.thread.sink.split, label %cleanup

if.else154:                                       ; preds = %if.end146
  %26 = bitcast i8* %pp.0.ph.ph to i8**
  %27 = load i64, i64* %len, align 8, !tbaa !17
  %call155 = call i8* %d2i.1.ph.ph(i8** noundef %26, i8** noundef nonnull %p, i64 noundef %27) #5, !callees !19
  %cmp156 = icmp eq i8* %call155, null
  br i1 %cmp156, label %cleanup.thread.sink.split, label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.else154, %if.then148
  %.sink = phi i32 [ 165, %if.then148 ], [ 169, %if.else154 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.PEM_X509_INFO_read_bio_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524301, i8* noundef null) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then138, %if.end142, %cleanup.thread.sink.split
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7
  br label %err

cleanup:                                          ; preds = %if.then148, %if.else154
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7
  br label %if.end170

if.else161:                                       ; preds = %lor.lhs.false124, %if.end118
  %enc_cipher = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.1, i64 0, i32 3
  %call162 = call i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef %18, %struct.evp_cipher_info_st* noundef nonnull %enc_cipher) #5
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %err, label %if.end165

if.end165:                                        ; preds = %if.else161
  %28 = load i8*, i8** %data, align 8, !tbaa !4
  store i8* %28, i8** %enc_data, align 8, !tbaa !15
  %29 = load i64, i64* %len, align 8, !tbaa !17
  %conv167 = trunc i64 %29 to i32
  store i32 %conv167, i32* %enc_len, align 8, !tbaa !16
  store i8* null, i8** %data, align 8, !tbaa !4
  br label %if.end170

if.end170:                                        ; preds = %if.else82, %cleanup, %if.end165
  %30 = load i8*, i8** %name, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 180) #5
  store i8* null, i8** %name, align 8, !tbaa !4
  %31 = load i8*, i8** %header, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %31, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #5
  store i8* null, i8** %header, align 8, !tbaa !4
  %32 = load i8*, i8** %data, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 184) #5
  store i8* null, i8** %data, align 8, !tbaa !4
  %call8 = call i32 @ERR_set_mark() #5
  %call9 = call i32 @PEM_read_bio(%struct.bio_st* noundef %bp, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end20

lor.lhs.false174:                                 ; preds = %if.then16
  %crl175 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.0.lcssa, i64 0, i32 1
  %33 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl175, align 8, !tbaa !12
  %cmp176.not = icmp eq %struct.X509_crl_st* %33, null
  br i1 %cmp176.not, label %lor.lhs.false178, label %if.then186

lor.lhs.false178:                                 ; preds = %lor.lhs.false174
  %x_pkey179 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.0.lcssa, i64 0, i32 2
  %34 = load %struct.private_key_st*, %struct.private_key_st** %x_pkey179, align 8, !tbaa !13
  %cmp180.not = icmp eq %struct.private_key_st* %34, null
  br i1 %cmp180.not, label %lor.lhs.false182, label %if.then186

lor.lhs.false182:                                 ; preds = %lor.lhs.false178
  %enc_data183 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi.0.lcssa, i64 0, i32 5
  %35 = load i8*, i8** %enc_data183, align 8, !tbaa !15
  %cmp184.not = icmp eq i8* %35, null
  br i1 %cmp184.not, label %err.thread, label %if.then186

if.then186:                                       ; preds = %lor.lhs.false182, %lor.lhs.false178, %lor.lhs.false174, %if.then16
  %call187 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.0) #6
  %36 = bitcast %struct.X509_info_st* %xi.0.lcssa to i8*
  %call189 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call187, i8* noundef %36) #5
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %err.thread

err.thread:                                       ; preds = %lor.lhs.false182, %if.then186
  %xi.2 = phi %struct.X509_info_st* [ %xi.0.lcssa, %lor.lhs.false182 ], [ null, %if.then186 ]
  call void @X509_INFO_free(%struct.X509_info_st* noundef %xi.2) #5
  br label %if.end209

err:                                              ; preds = %if.else161, %if.end111, %if.end46, %if.end95, %if.then89, %if.end74, %if.then68, %if.end40, %if.then35, %cleanup.thread, %if.then186, %if.end3, %if.end18, %if.then2
  %xi.3 = phi %struct.X509_info_st* [ null, %if.then2 ], [ null, %if.end3 ], [ %xi.0.lcssa, %if.then186 ], [ %xi.0.lcssa, %if.end18 ], [ %xi.1, %cleanup.thread ], [ %xi.1, %if.then89 ], [ null, %if.end95 ], [ %xi.1, %if.then68 ], [ null, %if.end74 ], [ %xi.1, %if.then35 ], [ null, %if.end40 ], [ %xi.1, %if.end46 ], [ %xi.1, %if.end111 ], [ %xi.1, %if.else161 ]
  %ret.1 = phi %struct.stack_st_X509_INFO* [ null, %if.then2 ], [ %ret.0, %if.end3 ], [ %ret.0, %if.then186 ], [ %ret.0, %if.end18 ], [ %ret.0, %cleanup.thread ], [ %ret.0, %if.then35 ], [ %ret.0, %if.end40 ], [ %ret.0, %if.then68 ], [ %ret.0, %if.end74 ], [ %ret.0, %if.then89 ], [ %ret.0, %if.end95 ], [ %ret.0, %if.end46 ], [ %ret.0, %if.end111 ], [ %ret.0, %if.else161 ]
  call void @X509_INFO_free(%struct.X509_info_st* noundef %xi.3) #5
  %call197 = call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.1) #6
  %call198332 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call197) #5
  %cmp199333 = icmp sgt i32 %call198332, 0
  br i1 %cmp199333, label %for.body, label %for.end203

for.body:                                         ; preds = %err, %for.body
  %i.0334 = phi i32 [ %inc, %for.body ], [ 0, %err ]
  %call202 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call197, i32 noundef %i.0334) #5
  %37 = bitcast i8* %call202 to %struct.X509_info_st*
  call void @X509_INFO_free(%struct.X509_info_st* noundef %37) #5
  %inc = add nuw nsw i32 %i.0334, 1
  %call198 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call197) #5
  %cmp199 = icmp slt i32 %inc, %call198
  br i1 %cmp199, label %for.body, label %for.end203, !llvm.loop !20

for.end203:                                       ; preds = %for.body, %err
  %cmp204.not = icmp eq %struct.stack_st_X509_INFO* %ret.1, %sk
  br i1 %cmp204.not, label %if.end209, label %if.then206

if.then206:                                       ; preds = %for.end203
  %call207 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %ret.1) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call207) #5
  br label %if.end209

if.end209:                                        ; preds = %err.thread, %for.end203, %if.then206
  %ret.2 = phi %struct.stack_st_X509_INFO* [ null, %if.then206 ], [ null, %for.end203 ], [ %ret.0, %err.thread ]
  %38 = load i8*, i8** %name, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %38, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 211) #5
  %39 = load i8*, i8** %header, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %39, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 212) #5
  %40 = load i8*, i8** %data, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %40, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 213) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.stack_st_X509_INFO* %ret.2
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_INFO* @PEM_X509_INFO_read(%struct._IO_FILE* noundef %fp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_ex(%struct._IO_FILE* noundef %fp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.stack_st_X509_INFO* %call
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.X509_info_st* @X509_INFO_new() local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @PEM_read_bio(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @evp_pkey_name2type(i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.private_key_st* @X509_PKEY_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef, %struct.evp_cipher_info_st* noundef) local_unnamed_addr #2

declare i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef, i8* noundef, i64* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_INFO_free(%struct.X509_info_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef %bp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio_ex(%struct.bio_st* noundef %bp, %struct.stack_st_X509_INFO* noundef %sk, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.stack_st_X509_INFO* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_X509_INFO_write_bio(%struct.bio_st* noundef %bp, %struct.X509_info_st* noundef %xi, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #7
  %cmp.not = icmp eq %struct.evp_cipher_st* %enc, null
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %enc) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i64 @strlen(i8* noundef nonnull %call) #8
  %call3 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #5
  %mul = shl nsw i32 %call3, 1
  %conv = sext i32 %mul to i64
  %add4 = add i64 %call2, -989
  %1 = add i64 %add4, %conv
  %cmp6 = icmp ult i64 %1, -1025
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_X509_INFO_write_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 113, i8* noundef null) #5
  br label %err

if.end9:                                          ; preds = %lor.lhs.false, %entry
  %x_pkey = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 2
  %2 = load %struct.private_key_st*, %struct.private_key_st** %x_pkey, align 8, !tbaa !13
  %cmp10.not = icmp eq %struct.private_key_st* %2, null
  br i1 %cmp10.not, label %if.end49, label %if.then12

if.then12:                                        ; preds = %if.end9
  %enc_data = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 5
  %3 = load i8*, i8** %enc_data, align 8, !tbaa !15
  %cmp13.not = icmp eq i8* %3, null
  br i1 %cmp13.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then12
  %enc_len = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 4
  %4 = load i32, i32* %enc_len, align 8, !tbaa !16
  %cmp15 = icmp sgt i32 %4, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  br i1 %cmp.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_X509_INFO_write_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 127, i8* noundef null) #5
  br label %err

if.end21:                                         ; preds = %if.then17
  %cipher = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 3, i32 0
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !22
  %call26 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %5) #5
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end21
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.PEM_X509_INFO_write_bio, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 113, i8* noundef null) #5
  br label %err

if.end30:                                         ; preds = %if.end21
  %arraydecay = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 3, i32 1, i64 0
  store i8 0, i8* %0, align 16, !tbaa !14
  call void @PEM_proc_type(i8* noundef nonnull %0, i32 noundef 10) #5
  %call33 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %enc) #5
  call void @PEM_dek_info(i8* noundef nonnull %0, i8* noundef nonnull %call26, i32 noundef %call33, i8* noundef nonnull %arraydecay) #5
  %conv3587 = zext i32 %4 to i64
  %call36 = call i32 @PEM_write_bio(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef nonnull %3, i64 noundef %conv3587) #5
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %err, label %if.end49

if.else:                                          ; preds = %land.lhs.true, %if.then12
  %dec_pkey = getelementptr inbounds %struct.private_key_st, %struct.private_key_st* %2, i64 0, i32 3
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dec_pkey, align 8, !tbaa !23
  %call42 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %6) #5
  %call43 = tail call i32 @PEM_write_bio_RSAPrivateKey(%struct.bio_st* noundef %bp, %struct.rsa_st* noundef %call42, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %err, label %if.end49

if.end49:                                         ; preds = %if.end30, %if.else, %if.end9
  %x509 = getelementptr inbounds %struct.X509_info_st, %struct.X509_info_st* %xi, i64 0, i32 0
  %7 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  %cmp50.not = icmp eq %struct.x509_st* %7, null
  br i1 %cmp50.not, label %if.end58, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.end49
  %call54 = call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %bp, %struct.x509_st* noundef nonnull %7) #5
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %err, label %if.end58

if.end58:                                         ; preds = %land.lhs.true52, %if.end49
  br label %err

err:                                              ; preds = %land.lhs.true52, %if.else, %if.end30, %if.end58, %if.then29, %if.then20, %if.then8
  %ret.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then20 ], [ 0, %if.then29 ], [ 0, %if.end30 ], [ 0, %land.lhs.true52 ], [ 1, %if.end58 ], [ 0, %if.else ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 1024) #5
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #7
  ret i32 %ret.0
}

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @PEM_proc_type(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @PEM_dek_info(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio(%struct.bio_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_RSAPrivateKey(%struct.bio_st* noundef, %struct.rsa_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"X509_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !11, i64 48, !5, i64 56}
!10 = !{!"evp_cipher_info_st", !5, i64 0, !6, i64 8}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !5, i64 8}
!13 = !{!9, !5, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!9, !5, i64 56}
!16 = !{!9, !11, i64 48}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{%struct.evp_pkey_st* (%struct.evp_pkey_st**, i8**, i64)* @d2i_AutoPrivateKey, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX, %struct.X509_crl_st* (%struct.X509_crl_st**, i8**, i64)* @d2i_X509_CRL}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!9, !5, i64 24}
!23 = !{!24, !5, i64 24}
!24 = !{!"private_key_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !11, i64 32, !5, i64 40, !11, i64 48, !10, i64 56}
