; ModuleID = 'crypto/x509/v3_skid.c'
source_filename = "crypto/x509/v3_skid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type opaque
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, {}*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@ossl_v3_skey_id = local_unnamed_addr constant { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* } { i32 82, i32 0, %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it, i8* ()* null, void (i8*)* null, i8* (i8*, i8**, i64)* null, i32 (i8*, i8**)* null, i8* (%struct.v3_ext_method*, i8*)* bitcast (i8* (%struct.v3_ext_method*, %struct.asn1_string_st*)* @i2s_ASN1_OCTET_STRING to i8* (%struct.v3_ext_method*, i8*)*), i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* bitcast (%struct.asn1_string_st* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* @s2i_skey_id to i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*), %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)* null, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)* null, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_skid.c\00", align 1
@__func__.s2i_ASN1_OCTET_STRING = private unnamed_addr constant [22 x i8] c"s2i_ASN1_OCTET_STRING\00", align 1
@__func__.ossl_x509_pubkey_hash = private unnamed_addr constant [22 x i8] c"ossl_x509_pubkey_hash\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@__func__.s2i_skey_id = private unnamed_addr constant [12 x i8] c"s2i_skey_id\00", align 1

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #0

; Function Attrs: noinline nounwind uwtable
define i8* @i2s_ASN1_OCTET_STRING(%struct.v3_ext_method* nocapture readnone %method, %struct.asn1_string_st* nocapture noundef readonly %oct) #1 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !11
  %conv = sext i32 %1 to i64
  %call = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %0, i64 noundef %conv) #4
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.asn1_string_st* @s2i_skey_id(%struct.v3_ext_method* nocapture noundef readnone %method, %struct.v3_ext_ctx* noundef %ctx, i8* noundef %str) #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.asn1_string_st* @s2i_ASN1_OCTET_STRING(%struct.v3_ext_method* undef, %struct.v3_ext_ctx* undef, i8* noundef %str) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %cond33 = icmp eq %struct.v3_ext_ctx* %ctx, null
  br i1 %cond33, label %if.then16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %flags = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 1
  %cmp8.not = icmp eq i32 %and, 0
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %subject_cert = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 2
  %1 = load %struct.x509_st*, %struct.x509_st** %subject_cert, align 8, !tbaa !14
  %cmp13 = icmp eq %struct.x509_st* %1, null
  %subject_req = getelementptr inbounds %struct.v3_ext_ctx, %struct.v3_ext_ctx* %ctx, i64 0, i32 3
  %2 = load %struct.X509_req_st*, %struct.X509_req_st** %subject_req, align 8, !tbaa !15
  %cmp15 = icmp eq %struct.X509_req_st* %2, null
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end6
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.s2i_skey_id, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 125, i8* noundef null) #4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %cmp19.not = icmp eq %struct.X509_req_st* %2, null
  %pubkey = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %2, i64 0, i32 0, i32 3
  %key = getelementptr inbounds %struct.x509_st, %struct.x509_st* %1, i64 0, i32 0, i32 6
  %cond.in = select i1 %cmp19.not, %struct.X509_pubkey_st** %key, %struct.X509_pubkey_st** %pubkey
  %cond = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %cond.in, align 8, !tbaa !16
  %call22 = tail call %struct.asn1_string_st* @ossl_x509_pubkey_hash(%struct.X509_pubkey_st* noundef %cond) #6
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then9, %if.then4, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ null, %if.then16 ], [ %call22, %if.end17 ]
  ret %struct.asn1_string_st* %retval.0
}

declare i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @s2i_ASN1_OCTET_STRING(%struct.v3_ext_method* nocapture readnone %method, %struct.v3_ext_ctx* nocapture readnone %ctx, i8* noundef %str) local_unnamed_addr #1 {
entry:
  %length = alloca i64, align 8
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.s2i_ASN1_OCTET_STRING, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i8* @OPENSSL_hexstr2buf(i8* noundef %str, i64* noundef nonnull %length) #4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  store i8* %call1, i8** %data, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load i64, i64* %length, align 8, !tbaa !17
  %conv = trunc i64 %1 to i32
  %length5 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %conv, i32* %length5, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then3 ], [ %call, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #0

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #0

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_x509_pubkey_hash(%struct.X509_pubkey_st* noundef %pubkey) local_unnamed_addr #1 {
entry:
  %pk = alloca i8*, align 8
  %pklen = alloca i32, align 4
  %pkey_dig = alloca [64 x i8], align 16
  %diglen = alloca i32, align 4
  %propq = alloca i8*, align 8
  %libctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %0 = bitcast i8** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i32* %pklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %pkey_dig, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #7
  %3 = bitcast i32* %diglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = bitcast i8** %propq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  %5 = bitcast %struct.ossl_lib_ctx_st** %libctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  %cmp = icmp eq %struct.X509_pubkey_st* %pubkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_x509_pubkey_hash, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 114, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ossl_x509_PUBKEY_get0_libctx(%struct.ossl_lib_ctx_st** noundef nonnull %libctx, i8** noundef nonnull %propq, %struct.X509_pubkey_st* noundef nonnull %pubkey) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !16
  %7 = load i8*, i8** %propq, align 8, !tbaa !16
  %call3 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7) #4
  %cmp4 = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp8 = icmp eq %struct.asn1_string_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call3) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef nonnull %pk, i32* noundef nonnull %pklen, %struct.X509_algor_st** noundef null, %struct.X509_pubkey_st* noundef nonnull %pubkey) #4
  %8 = load i8*, i8** %pk, align 8, !tbaa !16
  %9 = load i32, i32* %pklen, align 4, !tbaa !18
  %conv = sext i32 %9 to i64
  %call12 = call i32 @EVP_Digest(i8* noundef %8, i64 noundef %conv, i8* noundef nonnull %2, i32* noundef nonnull %diglen, %struct.evp_md_st* noundef nonnull %call3, %struct.engine_st* noundef null) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %10 = load i32, i32* %diglen, align 4, !tbaa !18
  %call15 = call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call7, i8* noundef nonnull %2, i32 noundef %10) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call3) #4
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true, %if.end10
  call void @EVP_MD_free(%struct.evp_md_st* noundef nonnull %call3) #4
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %if.end18, %if.then17, %if.then9, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then9 ], [ %call7, %if.then17 ], [ null, %if.end18 ], [ null, %if.end ], [ null, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @ossl_x509_PUBKEY_get0_libctx(%struct.ossl_lib_ctx_st** noundef, i8** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #0

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #0

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #0

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #0

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #0

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"v3_ext_ctx", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!13, !9, i64 16}
!15 = !{!13, !9, i64 24}
!16 = !{!9, !9, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!6, !6, i64 0}
