; ModuleID = 'crypto/pkcs12/p12_crt.c'
source_filename = "crypto/pkcs12/p12_crt.c"
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
%struct.evp_pkey_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_PKCS7 = type opaque
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.evp_md_st = type opaque
%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon.1, %struct.stack_st_X509_ATTRIBUTE* }
%union.anon.1 = type { %struct.pkcs12_bag_st* }
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.2 }
%union.anon.2 = type { %struct.asn1_string_st* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.stack_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.x509_attributes_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_crt.c\00", align 1
@__func__.PKCS12_create_ex = private unnamed_addr constant [17 x i8] c"PKCS12_create_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_create_ex(i8* noundef %pass, i8* noundef %name, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %ca, i32 noundef %nid_key, i32 noundef %nid_cert, i32 noundef %iter, i32 noundef %mac_iter, i32 noundef %keytype, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %safes = alloca %struct.stack_st_PKCS7*, align 8
  %bags = alloca %struct.stack_st_PKCS12_SAFEBAG*, align 8
  %keyid = alloca [64 x i8], align 16
  %keyidlen = alloca i32, align 4
  %0 = bitcast %struct.stack_st_PKCS7** %safes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.stack_st_PKCS7* null, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !4
  %1 = bitcast %struct.stack_st_PKCS12_SAFEBAG** %bags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %keyid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #4
  %3 = bitcast i32* %keyidlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 0, i32* %keyidlen, align 4, !tbaa !8
  %cmp = icmp eq i32 %nid_cert, 0
  %spec.store.select = select i1 %cmp, i32 427, i32 %nid_cert
  %cmp1 = icmp eq i32 %nid_key, 0
  %spec.store.select123 = select i1 %cmp1, i32 427, i32 %nid_key
  %tobool.not = icmp eq i32 %iter, 0
  %spec.store.select120 = select i1 %tobool.not, i32 2048, i32 %iter
  %tobool6.not = icmp eq i32 %mac_iter, 0
  %spec.store.select124 = select i1 %tobool6.not, i32 2048, i32 %mac_iter
  %cmp9 = icmp eq %struct.evp_pkey_st* %pkey, null
  %cmp10 = icmp eq %struct.x509_st* %cert, null
  %or.cond = and i1 %cmp9, %cmp10
  %cmp12 = icmp eq %struct.stack_st_X509* %ca, null
  %or.cond121 = and i1 %or.cond, %cmp12
  br i1 %or.cond121, label %if.then13, label %if.end14

if.then13:                                        ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.PKCS12_create_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 104, i8* noundef null) #5
  br label %cleanup

if.end14:                                         ; preds = %entry
  %tobool15 = icmp ne %struct.evp_pkey_st* %pkey, null
  %tobool17 = icmp ne %struct.x509_st* %cert, null
  %or.cond122 = and i1 %tobool15, %tobool17
  br i1 %or.cond122, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end14
  %call = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %cert, %struct.evp_pkey_st* noundef nonnull %pkey) #5
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then18
  %call22 = tail call %struct.evp_md_st* @EVP_sha1() #5
  %call23 = call i32 @X509_digest(%struct.x509_st* noundef nonnull %cert, %struct.evp_md_st* noundef %call22, i8* noundef nonnull %2, i32* noundef nonnull %keyidlen) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end21, %if.end14
  br i1 %tobool17, label %if.then29, label %if.end44

if.then29:                                        ; preds = %if.end27
  %call30 = call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_cert(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags, %struct.x509_st* noundef nonnull %cert) #6
  %tobool31.not = icmp eq i8* %name, null
  br i1 %tobool31.not, label %if.end36, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.then29
  %call33 = call i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef %call30, i8* noundef nonnull %name, i32 noundef -1) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %land.lhs.true32, %if.then29
  %4 = load i32, i32* %keyidlen, align 4, !tbaa !8
  %tobool37.not = icmp eq i32 %4, 0
  br i1 %tobool37.not, label %if.end44, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.end36
  %call40 = call i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef %call30, i8* noundef nonnull %2, i32 noundef %4) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end36, %land.lhs.true38, %if.end27
  %call45 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %ca) #6
  %call46171 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call45) #5
  %cmp47172 = icmp sgt i32 %call46171, 0
  br i1 %cmp47172, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call46 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call45) #5
  %cmp47 = icmp slt i32 %inc, %call46
  br i1 %cmp47, label %for.body, label %for.end, !llvm.loop !10

for.body:                                         ; preds = %if.end44, %for.cond
  %i.0173 = phi i32 [ %inc, %for.cond ], [ 0, %if.end44 ]
  %call49 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call45, i32 noundef %i.0173) #5
  %5 = bitcast i8* %call49 to %struct.x509_st*
  %call50 = call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_cert(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags, %struct.x509_st* noundef %5) #6
  %tobool51.not = icmp eq %struct.PKCS12_SAFEBAG_st* %call50, null
  %inc = add nuw nsw i32 %i.0173, 1
  br i1 %tobool51.not, label %err, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end44
  %6 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  %tobool54.not = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %6, null
  br i1 %tobool54.not, label %if.end59, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %for.end
  %call56 = call i32 @PKCS12_add_safe_ex(%struct.stack_st_PKCS7** noundef nonnull %safes, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %6, i32 noundef %spec.store.select, i32 noundef %spec.store.select120, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %land.lhs.true55.if.end59_crit_edge

land.lhs.true55.if.end59_crit_edge:               ; preds = %land.lhs.true55
  %.pre = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true55.if.end59_crit_edge, %for.end
  %7 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %.pre, %land.lhs.true55.if.end59_crit_edge ], [ null, %for.end ]
  %call60 = call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %7) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call60, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #5
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  br i1 %tobool15, label %if.then63, label %if.end95

if.then63:                                        ; preds = %if.end59
  %call64 = call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key_ex(%struct.stack_st_PKCS12_SAFEBAG** noundef nonnull %bags, %struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %keytype, i32 noundef %spec.store.select120, i32 noundef %spec.store.select123, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #6
  %tobool65.not = icmp eq %struct.PKCS12_SAFEBAG_st* %call64, null
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.then63
  %call68 = call fastcc i32 @copy_bag_attr(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call64, %struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 417) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end67
  %call72 = call fastcc i32 @copy_bag_attr(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call64, %struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef 856) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end71
  %tobool76.not = icmp eq i8* %name, null
  br i1 %tobool76.not, label %if.end81, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end75
  %call78 = call i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call64, i8* noundef nonnull %name, i32 noundef -1) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %land.lhs.true77, %if.end75
  %8 = load i32, i32* %keyidlen, align 4, !tbaa !8
  %tobool82.not = icmp eq i32 %8, 0
  br i1 %tobool82.not, label %if.end89, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %if.end81
  %call85 = call i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call64, i8* noundef nonnull %2, i32 noundef %8) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end89

if.end89:                                         ; preds = %if.end81, %land.lhs.true83
  %.pr = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  %tobool90.not = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %.pr, null
  br i1 %tobool90.not, label %if.end95, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %call92 = call i32 @PKCS12_add_safe(%struct.stack_st_PKCS7** noundef nonnull %safes, %struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %.pr, i32 noundef -1, i32 noundef 0, i8* noundef null) #6
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %land.lhs.true91.if.end95_crit_edge

land.lhs.true91.if.end95_crit_edge:               ; preds = %land.lhs.true91
  %.pre174 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true91.if.end95_crit_edge, %if.end59, %if.end89
  %9 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %.pre174, %land.lhs.true91.if.end95_crit_edge ], [ null, %if.end59 ], [ null, %if.end89 ]
  %call96 = call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %9) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call96, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #5
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  %10 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !4
  %call98 = call %struct.PKCS12_st* @PKCS12_add_safes_ex(%struct.stack_st_PKCS7* noundef %10, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #6
  %cmp99 = icmp eq %struct.PKCS12_st* %call98, null
  br i1 %cmp99, label %err, label %if.end101

if.end101:                                        ; preds = %if.end95
  %call102 = call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %10) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call102, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #5
  store %struct.stack_st_PKCS7* null, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !4
  %cmp104.not = icmp eq i32 %spec.store.select124, -1
  br i1 %cmp104.not, label %cleanup, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.end101
  %call106 = call i32 @PKCS12_set_mac(%struct.PKCS12_st* noundef nonnull %call98, i8* noundef %pass, i32 noundef -1, i8* noundef null, i32 noundef 0, i32 noundef %spec.store.select124, %struct.evp_md_st* noundef null) #5
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %cleanup

err:                                              ; preds = %for.body, %land.lhs.true105, %if.end95, %land.lhs.true91, %land.lhs.true83, %land.lhs.true77, %if.end71, %if.end67, %if.then63, %land.lhs.true55, %land.lhs.true38, %land.lhs.true32
  %p12.0 = phi %struct.PKCS12_st* [ null, %if.end95 ], [ %call98, %land.lhs.true105 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true83 ], [ null, %land.lhs.true77 ], [ null, %if.end71 ], [ null, %if.end67 ], [ null, %if.then63 ], [ null, %land.lhs.true55 ], [ null, %land.lhs.true38 ], [ null, %land.lhs.true32 ], [ null, %for.body ]
  call void @PKCS12_free(%struct.PKCS12_st* noundef %p12.0) #5
  %11 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %safes, align 8, !tbaa !4
  %call110 = call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %11) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call110, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #5
  %12 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %bags, align 8, !tbaa !4
  %call112 = call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %12) #6
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call112, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %land.lhs.true105, %if.end21, %if.then18, %err, %if.then13
  %retval.0 = phi %struct.PKCS12_st* [ null, %if.then13 ], [ null, %err ], [ null, %if.then18 ], [ null, %if.end21 ], [ %call98, %land.lhs.true105 ], [ %call98, %if.end101 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.PKCS12_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_digest(%struct.x509_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_add_cert(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %namelen = alloca i32, align 4
  %keyidlen = alloca i32, align 4
  %0 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 -1, i32* %namelen, align 4, !tbaa !8
  %1 = bitcast i32* %keyidlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 -1, i32* %keyidlen, align 4, !tbaa !8
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_cert(%struct.x509_st* noundef %cert) #5
  %cmp = icmp eq %struct.PKCS12_SAFEBAG_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @X509_alias_get0(%struct.x509_st* noundef %cert, i32* noundef nonnull %namelen) #5
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %namelen, align 4, !tbaa !8
  %call2 = call i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call, i8* noundef nonnull %call1, i32 noundef %2) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call i8* @X509_keyid_get0(%struct.x509_st* noundef %cert, i32* noundef nonnull %keyidlen) #5
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end5
  %3 = load i32, i32* %keyidlen, align 4, !tbaa !8
  %call9 = call i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef nonnull %call, i8* noundef nonnull %call6, i32 noundef %3) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %if.end5
  %call13 = call fastcc i32 @pkcs12_add_bag(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.PKCS12_SAFEBAG_st* noundef nonnull %call) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %land.lhs.true8, %land.lhs.true, %entry
  call void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %err ], [ %call, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret %struct.PKCS12_SAFEBAG_st* %retval.0
}

declare i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_safe_ex(%struct.stack_st_PKCS7** nocapture noundef %psafes, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, i32 noundef %nid_safe, i32 noundef %iter, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %psafes, align 8, !tbaa !4
  %cmp = icmp eq %struct.stack_st_PKCS7* %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_PKCS7** %psafes to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %cmp4 = icmp eq i32 %nid_safe, 0
  %spec.store.select = select i1 %cmp4, i32 149, i32 %nid_safe
  %cmp7 = icmp eq i32 %spec.store.select, -1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end3
  %call9 = tail call %struct.pkcs7_st* @PKCS12_pack_p7data(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags) #5
  br label %if.end11

if.else:                                          ; preds = %if.end3
  %call10 = tail call %struct.pkcs7_st* @PKCS12_pack_p7encdata_ex(i32 noundef %spec.store.select, i8* noundef %pass, i32 noundef -1, i8* noundef null, i32 noundef 0, i32 noundef %iter, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %p7.0 = phi %struct.pkcs7_st* [ %call9, %if.then8 ], [ %call10, %if.else ]
  %cmp12 = icmp eq %struct.pkcs7_st* %p7.0, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end11
  %2 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %psafes, align 8, !tbaa !4
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %2) #6
  %3 = bitcast %struct.pkcs7_st* %p7.0 to i8*
  %call17 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call15, i8* noundef nonnull %3) #5
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end14, %if.end11
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %err
  %4 = load %struct.stack_st_PKCS7*, %struct.stack_st_PKCS7** %psafes, align 8, !tbaa !4
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef %4) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call22) #5
  store %struct.stack_st_PKCS7* null, %struct.stack_st_PKCS7** %psafes, align 8, !tbaa !4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %err
  tail call void @PKCS7_free(%struct.pkcs7_st* noundef %p7.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.then ], [ 1, %if.end14 ]
  ret i32 %retval.0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key_ex(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.evp_pkey_st* noundef %key, i32 noundef %key_usage, i32 noundef %iter, i32 noundef %nid_key, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef %key) #5
  %cmp = icmp eq %struct.pkcs8_priv_key_info_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %key_usage, 0
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @PKCS8_add_keyusage(%struct.pkcs8_priv_key_info_st* noundef nonnull %call, i32 noundef %key_usage) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %cmp5.not = icmp eq i32 %nid_key, -1
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_pkcs8_encrypt_ex(i32 noundef %nid_key, i8* noundef %pass, i32 noundef -1, i8* noundef null, i32 noundef 0, i32 noundef %iter, %struct.pkcs8_priv_key_info_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #5
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call) #5
  br label %if.end9

if.else:                                          ; preds = %if.end4
  %call8 = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create0_p8inf(%struct.pkcs8_priv_key_info_st* noundef nonnull %call) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %bag.0 = phi %struct.PKCS12_SAFEBAG_st* [ %call7, %if.then6 ], [ %call8, %if.else ]
  %tobool10.not = icmp eq %struct.PKCS12_SAFEBAG_st* %bag.0, null
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end9
  %call13 = tail call fastcc i32 @pkcs12_add_bag(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.PKCS12_SAFEBAG_st* noundef nonnull %bag.0) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end9, %land.lhs.true, %entry
  %bag.1 = phi %struct.PKCS12_SAFEBAG_st* [ null, %entry ], [ %bag.0, %if.end12 ], [ null, %if.end9 ], [ null, %land.lhs.true ]
  tail call void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef %bag.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %err ], [ %bag.0, %if.end12 ]
  ret %struct.PKCS12_SAFEBAG_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @copy_bag_attr(%struct.PKCS12_SAFEBAG_st* noundef %bag, %struct.evp_pkey_st* noundef %pkey, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_get_attr_by_NID(%struct.evp_pkey_st* noundef %pkey, i32 noundef %nid, i32 noundef -1) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_attributes_st* @EVP_PKEY_get_attr(%struct.evp_pkey_st* noundef %pkey, i32 noundef %call) #5
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call2 = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, %struct.x509_attributes_st* noundef %call1) #5
  %tobool.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call2, null
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_safe(%struct.stack_st_PKCS7** nocapture noundef %psafes, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, i32 noundef %nid_safe, i32 noundef %iter, i8* noundef %pass) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @PKCS12_add_safe_ex(%struct.stack_st_PKCS7** noundef %psafes, %struct.stack_st_PKCS12_SAFEBAG* noundef %bags, i32 noundef %nid_safe, i32 noundef %iter, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_add_safes_ex(%struct.stack_st_PKCS7* noundef %safes, i32 noundef %nid_p7, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %nid_p7, 1
  %spec.store.select = select i1 %cmp, i32 21, i32 %nid_p7
  %call = tail call %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef %spec.store.select, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #5
  %cmp1 = icmp eq %struct.PKCS12_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @PKCS12_pack_authsafes(%struct.PKCS12_st* noundef nonnull %call, %struct.stack_st_PKCS7* noundef %safes) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end3
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.then5
  %retval.0 = phi %struct.PKCS12_st* [ null, %if.then5 ], [ null, %entry ], [ %call, %if.end3 ]
  ret %struct.PKCS12_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @PKCS7_free(%struct.pkcs7_st* noundef) #2

declare i32 @PKCS12_set_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_create(i8* noundef %pass, i8* noundef %name, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %ca, i32 noundef %nid_key, i32 noundef %nid_cert, i32 noundef %iter, i32 noundef %mac_iter, i32 noundef %keytype) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_st* @PKCS12_create_ex(i8* noundef %pass, i8* noundef %name, %struct.evp_pkey_st* noundef %pkey, %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef %ca, i32 noundef %nid_key, i32 noundef %nid_cert, i32 noundef %iter, i32 noundef %mac_iter, i32 noundef %keytype, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.PKCS12_st* %call
}

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_cert(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @X509_alias_get0(%struct.x509_st* noundef, i32* noundef) local_unnamed_addr #2

declare i8* @X509_keyid_get0(%struct.x509_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs12_add_bag(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.PKCS12_SAFEBAG_st* noundef %bag) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_PKCS12_SAFEBAG** %pbags, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %pbags, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %0, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %1 = bitcast %struct.stack_st_PKCS12_SAFEBAG** %pbags to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.stack_st* %call, null
  %2 = bitcast %struct.stack_st* %call to %struct.stack_st_PKCS12_SAFEBAG*
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %3 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %2, %if.then2 ], [ %0, %if.end ]
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %3) #6
  %4 = bitcast %struct.PKCS12_SAFEBAG_st* %bag to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef %4) #5
  %tobool.not = icmp ne i32 %call9, 0
  %cmp1.not = xor i1 %cmp1, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp1.not
  %.mux = zext i1 %tobool.not to i32
  br i1 %brmerge, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end6
  %5 = load %struct.stack_st_PKCS12_SAFEBAG*, %struct.stack_st_PKCS12_SAFEBAG** %pbags, align 8, !tbaa !4
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %5) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call13) #5
  store %struct.stack_st_PKCS12_SAFEBAG* null, %struct.stack_st_PKCS12_SAFEBAG** %pbags, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then12, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 0, %if.then12 ], [ %.mux, %if.end6 ]
  ret i32 %retval.0
}

declare %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @PKCS8_add_keyusage(%struct.pkcs8_priv_key_info_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_pkcs8_encrypt_ex(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create0_p8inf(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.evp_pkey_st* noundef %key, i32 noundef %key_usage, i32 noundef %iter, i32 noundef %nid_key, i8* noundef %pass) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_add_key_ex(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.evp_pkey_st* noundef %key, i32 noundef %key_usage, i32 noundef %iter, i32 noundef %nid_key, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.PKCS12_SAFEBAG_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_SAFEBAG_st* @PKCS12_add_secret(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, i32 noundef %nid_type, i8* noundef %value, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_secret(i32 noundef %nid_type, i32 noundef 4, i8* noundef %value, i32 noundef %len) #5
  %cmp = icmp eq %struct.PKCS12_SAFEBAG_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @pkcs12_add_bag(%struct.stack_st_PKCS12_SAFEBAG** noundef %pbags, %struct.PKCS12_SAFEBAG_st* noundef nonnull %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end, %entry
  tail call void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err
  %retval.0 = phi %struct.PKCS12_SAFEBAG_st* [ null, %err ], [ %call, %if.end ]
  ret %struct.PKCS12_SAFEBAG_st* %retval.0
}

declare %struct.PKCS12_SAFEBAG_st* @PKCS12_SAFEBAG_create_secret(i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.pkcs7_st* @PKCS12_pack_p7data(%struct.stack_st_PKCS12_SAFEBAG* noundef) local_unnamed_addr #2

declare %struct.pkcs7_st* @PKCS12_pack_p7encdata_ex(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.stack_st_PKCS12_SAFEBAG* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @PKCS12_pack_authsafes(%struct.PKCS12_st* noundef, %struct.stack_st_PKCS7* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_add_safes(%struct.stack_st_PKCS7* noundef %safes, i32 noundef %nid_p7) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_st* @PKCS12_add_safes_ex(%struct.stack_st_PKCS7* noundef %safes, i32 noundef %nid_p7, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.PKCS12_st* %call
}

declare i32 @EVP_PKEY_get_attr_by_NID(%struct.evp_pkey_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.x509_attributes_st* @EVP_PKEY_get_attr(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr(%struct.stack_st_X509_ATTRIBUTE** noundef, %struct.x509_attributes_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
