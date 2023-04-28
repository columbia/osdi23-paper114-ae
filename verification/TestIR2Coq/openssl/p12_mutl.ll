; ModuleID = 'crypto/pkcs12/p12_mutl.c'
source_filename = "crypto/pkcs12/p12_mutl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_st = type { %struct.asn1_string_st*, %struct.PKCS12_MAC_DATA_st*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.PKCS12_MAC_DATA_st = type { %struct.X509_sig_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_sig_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.evp_md_st = type opaque
%struct.hmac_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_mutl.c\00", align 1
@__func__.PKCS12_verify_mac = private unnamed_addr constant [18 x i8] c"PKCS12_verify_mac\00", align 1
@__func__.PKCS12_set_mac = private unnamed_addr constant [15 x i8] c"PKCS12_set_mac\00", align 1
@__func__.PKCS12_setup_mac = private unnamed_addr constant [17 x i8] c"PKCS12_setup_mac\00", align 1
@__func__.pkcs12_gen_mac = private unnamed_addr constant [15 x i8] c"pkcs12_gen_mac\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LEGACY_GOST_PKCS12\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @PKCS12_mac_present(%struct.PKCS12_st* nocapture noundef readonly %p12) local_unnamed_addr #0 {
entry:
  %mac = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %0 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %tobool.not = icmp ne %struct.PKCS12_MAC_DATA_st* %0, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define void @PKCS12_get0_mac(%struct.asn1_string_st** noundef %pmac, %struct.X509_algor_st** noundef %pmacalg, %struct.asn1_string_st** noundef writeonly %psalt, %struct.asn1_string_st** noundef writeonly %piter, %struct.PKCS12_st* nocapture noundef readonly %p12) local_unnamed_addr #1 {
entry:
  %mac = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %0 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.PKCS12_MAC_DATA_st* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %0, i64 0, i32 0
  %1 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !9
  tail call void @X509_SIG_get0(%struct.X509_sig_st* noundef %1, %struct.X509_algor_st** noundef %pmacalg, %struct.asn1_string_st** noundef %pmac) #5
  %tobool2.not = icmp eq %struct.asn1_string_st** %psalt, null
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %2 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %salt = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt, align 8, !tbaa !11
  store %struct.asn1_string_st* %3, %struct.asn1_string_st** %psalt, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %tobool5.not = icmp eq %struct.asn1_string_st** %piter, null
  br i1 %tobool5.not, label %if.end21, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %iter = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %4, i64 0, i32 2
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iter, align 8, !tbaa !13
  br label %if.end21.sink.split

if.else:                                          ; preds = %entry
  %tobool9.not = icmp eq %struct.asn1_string_st** %pmac, null
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.else
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %pmac, align 8, !tbaa !12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  %tobool12.not = icmp eq %struct.X509_algor_st** %pmacalg, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %pmacalg, align 8, !tbaa !12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %tobool15.not = icmp eq %struct.asn1_string_st** %psalt, null
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %psalt, align 8, !tbaa !12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %tobool18.not = icmp eq %struct.asn1_string_st** %piter, null
  br i1 %tobool18.not, label %if.end21, label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.end17, %if.then6
  %.sink = phi %struct.asn1_string_st* [ %5, %if.then6 ], [ null, %if.end17 ]
  store %struct.asn1_string_st* %.sink, %struct.asn1_string_st** %piter, align 8, !tbaa !12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end17, %if.end
  ret void
}

declare void @X509_SIG_get0(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_gen_mac(%struct.PKCS12_st* nocapture noundef readonly %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef %mac, i32* noundef %maclen) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @pkcs12_gen_mac(%struct.PKCS12_st* noundef %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef %mac, i32* noundef %maclen) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs12_gen_mac(%struct.PKCS12_st* nocapture noundef readonly %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef %mac, i32* noundef %maclen) unnamed_addr #1 {
entry:
  %key = alloca [64 x i8], align 16
  %md_name = alloca [80 x i8], align 16
  %macalg = alloca %struct.X509_algor_st*, align 8
  %macoid = alloca %struct.asn1_object_st*, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %md_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %2 = bitcast %struct.X509_algor_st** %macalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %3 = bitcast %struct.asn1_object_st** %macoid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 2
  %4 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %4, i64 0, i32 4
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !15
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %5) #5
  %cmp = icmp eq i32 %call, 21
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkcs12_gen_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 121, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac1 = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %6 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac1, align 8, !tbaa !4
  %salt2 = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %6, i64 0, i32 1
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt2, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %8 = load i8*, i8** %data, align 8, !tbaa !20
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %9 = load i32, i32* %length, align 8, !tbaa !22
  %iter6 = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %6, i64 0, i32 2
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %iter6, align 8, !tbaa !13
  %cmp7 = icmp eq %struct.asn1_string_st* %10, null
  br i1 %cmp7, label %if.end12, label %if.else

if.else:                                          ; preds = %if.end
  %call11 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %10) #5
  %conv = trunc i64 %call11 to i32
  %.pre = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac1, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.else
  %11 = phi %struct.PKCS12_MAC_DATA_st* [ %.pre, %if.else ], [ %6, %if.end ]
  %iter.0 = phi i32 [ %conv, %if.else ], [ 1, %if.end ]
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %11, i64 0, i32 0
  %12 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !9
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef %12, %struct.X509_algor_st** noundef nonnull %macalg, %struct.asn1_string_st** noundef null) #5
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %macalg, align 8, !tbaa !12
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %macoid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %13) #5
  %14 = load %struct.asn1_object_st*, %struct.asn1_object_st** %macoid, align 8, !tbaa !12
  %call14 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 80, %struct.asn1_object_st* noundef %14, i32 noundef 0) #5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end12
  %15 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !14
  %libctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %15, i64 0, i32 6, i32 0
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !23
  %propq = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %15, i64 0, i32 6, i32 1
  %17 = load i8*, i8** %propq, align 8, !tbaa !24
  %call23 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef nonnull %1, i8* noundef %17) #5
  %cmp24 = icmp eq %struct.evp_md_st* %call23, null
  br i1 %cmp24, label %if.end30, label %if.end34

if.end30:                                         ; preds = %if.end18
  %18 = load %struct.asn1_object_st*, %struct.asn1_object_st** %macoid, align 8, !tbaa !12
  %call27 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %18) #5
  %call28 = call i8* @OBJ_nid2sn(i32 noundef %call27) #5
  %call29 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call28) #5
  %cmp31 = icmp eq %struct.evp_md_st* %call29, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkcs12_gen_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 118, i8* noundef null) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end18, %if.end30
  %md.03 = phi %struct.evp_md_st* [ %call29, %if.end30 ], [ %call23, %if.end18 ]
  %call35 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %md.03) #5
  %call36 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %md.03) #5
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %err, label %if.end40

if.end40:                                         ; preds = %if.end34
  switch i32 %call36, label %if.else65 [
    i32 983, label %land.lhs.true
    i32 982, label %land.lhs.true
    i32 809, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.end40, %if.end40, %if.end40
  %call48 = call i8* @ossl_safe_getenv(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.then51, label %if.else65

if.then51:                                        ; preds = %land.lhs.true
  %call53 = call fastcc i32 @pkcs12_gen_gost_mac_key(i8* noundef %pass, i32 noundef %passlen, i8* noundef %8, i32 noundef %9, i32 noundef %iter.0, i8* noundef nonnull %0, %struct.evp_md_st* noundef nonnull %md.03) #6
  %tobool.not = icmp eq i32 %call53, 0
  br i1 %tobool.not, label %if.then54, label %if.end78

if.then54:                                        ; preds = %if.then51
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkcs12_gen_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 107, i8* noundef null) #5
  br label %err

if.else65:                                        ; preds = %land.lhs.true, %if.end40
  %19 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !14
  %libctx69 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %19, i64 0, i32 6, i32 0
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx69, align 8, !tbaa !23
  %propq72 = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %19, i64 0, i32 6, i32 1
  %21 = load i8*, i8** %propq72, align 8, !tbaa !24
  %call73 = call i32 @PKCS12_key_gen_utf8_ex(i8* noundef %pass, i32 noundef %passlen, i8* noundef %8, i32 noundef %9, i32 noundef 3, i32 noundef %iter.0, i32 noundef %call35, i8* noundef nonnull %0, %struct.evp_md_st* noundef nonnull %md.03, %struct.ossl_lib_ctx_st* noundef %20, i8* noundef %21) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.else65
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pkcs12_gen_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 107, i8* noundef null) #5
  br label %err

if.end78:                                         ; preds = %if.else65, %if.then51
  %md_size.0 = phi i32 [ 32, %if.then51 ], [ %call35, %if.else65 ]
  %call79 = call %struct.hmac_ctx_st* @HMAC_CTX_new() #5
  %cmp80 = icmp eq %struct.hmac_ctx_st* %call79, null
  br i1 %cmp80, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end78
  %call84 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef nonnull %call79, i8* noundef nonnull %0, i32 noundef %md_size.0, %struct.evp_md_st* noundef nonnull %md.03, %struct.engine_st* noundef null) #5
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %22 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !14
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %22, i64 0, i32 5
  %data88 = bitcast %union.anon* %d to %struct.asn1_string_st**
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %data88, align 8, !tbaa !25
  %data89 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 2
  %24 = load i8*, i8** %data89, align 8, !tbaa !20
  %length93 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 0
  %25 = load i32, i32* %length93, align 8, !tbaa !22
  %conv94 = sext i32 %25 to i64
  %call95 = call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef nonnull %call79, i8* noundef %24, i64 noundef %conv94) #5
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false86
  %call98 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef nonnull %call79, i8* noundef %mac, i32* noundef %maclen) #5
  %tobool99.not = icmp ne i32 %call98, 0
  %spec.select = zext i1 %tobool99.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false97, %if.end78, %lor.lhs.false82, %lor.lhs.false86, %if.end34, %if.then75, %if.then54
  %hmac.0 = phi %struct.hmac_ctx_st* [ null, %if.end34 ], [ null, %if.end78 ], [ %call79, %lor.lhs.false86 ], [ %call79, %lor.lhs.false82 ], [ null, %if.then54 ], [ null, %if.then75 ], [ %call79, %lor.lhs.false97 ]
  %ret.0 = phi i32 [ 0, %if.end34 ], [ 0, %if.end78 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false82 ], [ 0, %if.then54 ], [ 0, %if.then75 ], [ %spec.select, %lor.lhs.false97 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #5
  call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %hmac.0) #5
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err, %if.then33, %if.then
  %retval.0 = phi i32 [ 0, %if.then33 ], [ %ret.0, %err ], [ 0, %if.then ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_verify_mac(%struct.PKCS12_st* nocapture noundef readonly %p12, i8* noundef %pass, i32 noundef %passlen) local_unnamed_addr #1 {
entry:
  %mac = alloca [64 x i8], align 16
  %maclen = alloca i32, align 4
  %macoct = alloca %struct.asn1_string_st*, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = bitcast i32* %maclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast %struct.asn1_string_st** %macoct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %mac1 = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %3 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac1, align 8, !tbaa !4
  %cmp = icmp eq %struct.PKCS12_MAC_DATA_st* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS12_verify_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 108, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @pkcs12_gen_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef nonnull %0, i32* noundef nonnull %maclen) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.PKCS12_verify_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 109, i8* noundef null) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac1, align 8, !tbaa !4
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %4, i64 0, i32 0
  %5 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !9
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef %5, %struct.X509_algor_st** noundef null, %struct.asn1_string_st** noundef nonnull %macoct) #5
  %6 = load i32, i32* %maclen, align 4, !tbaa !26
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %macoct, align 8, !tbaa !12
  %call5 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %7) #5
  %cmp6.not = icmp eq i32 %6, %call5
  br i1 %cmp6.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %macoct, align 8, !tbaa !12
  %call8 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %8) #5
  %9 = load i32, i32* %maclen, align 4, !tbaa !26
  %conv = zext i32 %9 to i64
  %call9 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef %call8, i64 noundef %conv) #5
  %cmp10.not = icmp eq i32 %call9, 0
  %spec.select = zext i1 %cmp10.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.end3 ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_set_mac(%struct.PKCS12_st* nocapture noundef %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef %md_type) local_unnamed_addr #1 {
entry:
  %mac = alloca [64 x i8], align 16
  %maclen = alloca i32, align 4
  %macoct = alloca %struct.asn1_string_st*, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = bitcast i32* %maclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast %struct.asn1_string_st** %macoct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %cmp = icmp eq %struct.evp_md_st* %md_type, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_sha256() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %md_type.addr.0 = phi %struct.evp_md_st* [ %call, %if.then ], [ %md_type, %entry ]
  %tobool.not = icmp eq i32 %iter, 0
  %spec.store.select = select i1 %tobool.not, i32 2048, i32 %iter
  %call3 = tail call i32 @PKCS12_setup_mac(%struct.PKCS12_st* noundef %p12, i32 noundef %spec.store.select, i8* noundef %salt, i32 noundef %saltlen, %struct.evp_md_st* noundef %md_type.addr.0) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_set_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 110, i8* noundef null) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @pkcs12_gen_mac(%struct.PKCS12_st* noundef %p12, i8* noundef %pass, i32 noundef %passlen, i8* noundef nonnull %0, i32* noundef nonnull %maclen) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_set_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 109, i8* noundef null) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %mac11 = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %3 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac11, align 8, !tbaa !4
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %3, i64 0, i32 0
  %4 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !9
  call void @X509_SIG_getm(%struct.X509_sig_st* noundef %4, %struct.X509_algor_st** noundef null, %struct.asn1_string_st** noundef nonnull %macoct) #5
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %macoct, align 8, !tbaa !12
  %6 = load i32, i32* %maclen, align 4, !tbaa !26
  %call13 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %5, i8* noundef nonnull %0, i32 noundef %6) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_set_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 111, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then15, %if.then9, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then15 ], [ 0, %if.then9 ], [ 1, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_setup_mac(%struct.PKCS12_st* nocapture noundef %p12, i32 noundef %iter, i8* noundef %salt, i32 noundef %saltlen, %struct.evp_md_st* noundef %md_type) local_unnamed_addr #1 {
entry:
  %macalg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %macalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %mac = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 1
  %1 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  tail call void @PKCS12_MAC_DATA_free(%struct.PKCS12_MAC_DATA_st* noundef %1) #5
  store %struct.PKCS12_MAC_DATA_st* null, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %call = tail call %struct.PKCS12_MAC_DATA_st* @PKCS12_MAC_DATA_new() #5
  store %struct.PKCS12_MAC_DATA_st* %call, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %cmp = icmp eq %struct.PKCS12_MAC_DATA_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp sgt i32 %iter, 1
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #5
  %2 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %iter7 = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %2, i64 0, i32 2
  store %struct.asn1_string_st* %call5, %struct.asn1_string_st** %iter7, align 8, !tbaa !13
  %cmp8 = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then4
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS12_setup_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  %conv78 = zext i32 %iter to i64
  %call13 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call5, i64 noundef %conv78) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS12_setup_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end10, %if.end
  %cmp17 = icmp eq i32 %saltlen, 0
  br i1 %cmp17, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end16
  %cmp20 = icmp slt i32 %saltlen, 0
  br i1 %cmp20, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end16, %if.else
  %saltlen.addr.0 = phi i32 [ %saltlen, %if.else ], [ 8, %if.end16 ]
  %conv2579 = zext i32 %saltlen.addr.0 to i64
  %call26 = tail call i8* @CRYPTO_malloc(i64 noundef %conv2579, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 256) #5
  %3 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %salt28 = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %3, i64 0, i32 1
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %salt28, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 2
  store i8* %call26, i8** %data, align 8, !tbaa !20
  %cmp29 = icmp eq i8* %call26, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end24
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS12_setup_mac, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 0
  store i32 %saltlen.addr.0, i32* %length, align 8, !tbaa !22
  %cmp35 = icmp eq i8* %salt, null
  br i1 %cmp35, label %if.then37, label %if.else47

if.then37:                                        ; preds = %if.end32
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %p12, i64 0, i32 2
  %5 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !14
  %libctx = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %5, i64 0, i32 6, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !23
  %call42 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef nonnull %call26, i64 noundef %conv2579, i32 noundef 0) #5
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %cleanup, label %if.end53

if.else47:                                        ; preds = %if.end32
  %call52 = tail call i8* @memcpy(i8* noundef nonnull %call26, i8* noundef nonnull %salt, i64 noundef %conv2579) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then37, %if.else47
  %7 = load %struct.PKCS12_MAC_DATA_st*, %struct.PKCS12_MAC_DATA_st** %mac, align 8, !tbaa !4
  %dinfo = getelementptr inbounds %struct.PKCS12_MAC_DATA_st, %struct.PKCS12_MAC_DATA_st* %7, i64 0, i32 0
  %8 = load %struct.X509_sig_st*, %struct.X509_sig_st** %dinfo, align 8, !tbaa !9
  call void @X509_SIG_getm(%struct.X509_sig_st* noundef %8, %struct.X509_algor_st** noundef nonnull %macalg, %struct.asn1_string_st** noundef null) #5
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %macalg, align 8, !tbaa !12
  %call55 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %md_type) #5
  %call56 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call55) #5
  %call57 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %9, %struct.asn1_object_st* noundef %call56, i32 noundef 5, i8* noundef null) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %cleanup

if.then59:                                        ; preds = %if.end53
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS12_setup_mac, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then37, %if.else, %entry, %if.then59, %if.then31, %if.then14, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then31 ], [ 0, %if.then59 ], [ 0, %if.then14 ], [ 0, %entry ], [ 0, %if.else ], [ 0, %if.then37 ], [ 1, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @X509_SIG_getm(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @PKCS12_MAC_DATA_free(%struct.PKCS12_MAC_DATA_st* noundef) local_unnamed_addr #2

declare %struct.PKCS12_MAC_DATA_st* @PKCS12_MAC_DATA_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs12_gen_gost_mac_key(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, i8* noundef %key, %struct.evp_md_st* noundef %digest) unnamed_addr #1 {
entry:
  %out = alloca [96 x i8], align 16
  %0 = getelementptr inbounds [96 x i8], [96 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #7
  %call = call i32 @PKCS5_PBKDF2_HMAC(i8* noundef %pass, i32 noundef %passlen, i8* noundef %salt, i32 noundef %saltlen, i32 noundef %iter, %struct.evp_md_st* noundef %digest, i32 noundef 96, i8* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %add.ptr4 = getelementptr inbounds [96 x i8], [96 x i8]* %out, i64 0, i64 64
  %call5 = call i8* @memcpy(i8* noundef %key, i8* noundef nonnull %add.ptr4, i64 noundef 32) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 96) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @PKCS12_key_gen_utf8_ex(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.hmac_ctx_st* @HMAC_CTX_new() local_unnamed_addr #2

declare i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @HMAC_Update(%struct.hmac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @HMAC_Final(%struct.hmac_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @PKCS5_PBKDF2_HMAC(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.evp_md_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
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
!4 = !{!5, !6, i64 8}
!5 = !{!"PKCS12_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"PKCS12_MAC_DATA_st", !6, i64 0, !6, i64 8, !6, i64 16}
!11 = !{!10, !6, i64 8}
!12 = !{!6, !6, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{!5, !6, i64 16}
!15 = !{!16, !6, i64 24}
!16 = !{!"pkcs7_st", !6, i64 0, !17, i64 8, !18, i64 16, !18, i64 20, !6, i64 24, !7, i64 32, !19, i64 40}
!17 = !{!"long", !7, i64 0}
!18 = !{!"int", !7, i64 0}
!19 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!20 = !{!21, !6, i64 8}
!21 = !{!"asn1_string_st", !18, i64 0, !18, i64 4, !6, i64 8, !17, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!16, !6, i64 40}
!24 = !{!16, !6, i64 48}
!25 = !{!7, !7, i64 0}
!26 = !{!18, !18, i64 0}
