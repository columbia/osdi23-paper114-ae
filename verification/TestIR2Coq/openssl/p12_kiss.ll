; ModuleID = 'crypto/pkcs12/p12_kiss.c'
source_filename = "crypto/pkcs12/p12_kiss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_st = type opaque
%struct.evp_pkey_st = type opaque
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
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.stack_st_PKCS7 = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon.1, %struct.PKCS7_CTX_st }
%union.anon.1 = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_PKCS12_SAFEBAG = type opaque
%struct.PKCS12_SAFEBAG_st = type opaque
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.stack_st_X509_ATTRIBUTE = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_kiss.c\00", align 1
@__func__.PKCS12_parse = private unnamed_addr constant [13 x i8] c"PKCS12_parse\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_parse(%struct.PKCS12_st* noundef %p12, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.x509_st** noundef %cert, %struct.stack_st_X509** noundef %ca) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st** %pkey, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ne %struct.x509_st** %cert, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp eq %struct.PKCS12_st* %p12, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS12_parse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 105, i8* noundef null) #4
  br label %cleanup98

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i8* %pass, null
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %0 = load i8, i8* %pass, align 1, !tbaa !8
  %cmp8 = icmp eq i8 %0, 0
  br i1 %cmp8, label %if.then10, label %if.else21

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  %call = tail call i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef nonnull %p12) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then10
  %call12 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef null, i32 noundef 0) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %if.end26

if.else:                                          ; preds = %lor.lhs.false11
  %call15 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else18, label %if.end26

if.else18:                                        ; preds = %if.else
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS12_parse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 113, i8* noundef null) #4
  br label %err87

if.else21:                                        ; preds = %lor.lhs.false
  %call22 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef nonnull %pass, i32 noundef -1) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else21
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS12_parse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 113, i8* noundef null) #4
  br label %err87

if.end26:                                         ; preds = %if.else, %if.then10, %lor.lhs.false11, %if.else21
  %pass.addr.0 = phi i8* [ %pass, %if.else21 ], [ null, %lor.lhs.false11 ], [ null, %if.then10 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %if.else ]
  %cmp30 = icmp ne %struct.stack_st_X509** %ca, null
  %or.cond = or i1 %cmp1, %cmp30
  br i1 %or.cond, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %call32 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %1 = bitcast %struct.stack_st* %call32 to %struct.stack_st_X509*
  %cmp33 = icmp eq %struct.stack_st* %call32, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS12_parse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #4
  br label %err87

if.end36:                                         ; preds = %if.end26, %land.lhs.true
  %ocerts.0 = phi %struct.stack_st_X509* [ %1, %land.lhs.true ], [ null, %if.end26 ]
  %call37 = tail call fastcc i32 @parse_pk12(%struct.PKCS12_st* noundef nonnull %p12, i8* noundef %pass.addr.0, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts.0) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end36
  %call54 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %ocerts.0) #5
  %call55145 = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call54) #4
  %cmp56.not146 = icmp eq i8* %call55145, null
  br i1 %cmp56.not146, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %2 = bitcast %struct.x509_st** %cert to i8**
  br label %while.body

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i64 @ERR_peek_last_error() #4
  %sext = shl i64 %call40, 32
  %conv42 = ashr exact i64 %sext, 32
  %call43 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %conv42) #5
  %cmp44.not = icmp eq i32 %call43, 6
  br i1 %cmp44.not, label %err87, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.then39
  %call48 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %conv42) #5
  %cmp49.not = icmp eq i32 %call48, 156
  br i1 %cmp49.not, label %err87, label %if.then51

if.then51:                                        ; preds = %land.lhs.true46
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.PKCS12_parse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 114, i8* noundef null) #4
  br label %err87

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call55147 = phi i8* [ %call55145, %while.body.lr.ph ], [ %call55, %while.cond.backedge ]
  %3 = bitcast i8* %call55147 to %struct.x509_st*
  br i1 %cmp.not, label %if.end76, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %while.body
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp61 = icmp ne %struct.evp_pkey_st* %4, null
  %or.cond100 = and i1 %cmp1, %cmp61
  br i1 %or.cond100, label %land.lhs.true66, label %if.end76

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %5 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !4
  %cmp67 = icmp eq %struct.x509_st* %5, null
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %land.lhs.true66
  %call70 = tail call i32 @ERR_set_mark() #4
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %call71 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %3, %struct.evp_pkey_st* noundef %6) #4
  %call72 = tail call i32 @ERR_pop_to_mark() #4
  %tobool73.not = icmp eq i32 %call71, 0
  br i1 %tobool73.not, label %if.end76, label %cleanup

cleanup:                                          ; preds = %if.then69
  store i8* %call55147, i8** %2, align 8, !tbaa !4
  br label %while.cond.backedge

if.end76:                                         ; preds = %if.then69, %land.lhs.true66, %land.lhs.true60, %while.body
  br i1 %cmp30, label %if.then79, label %if.end84

if.then79:                                        ; preds = %if.end76
  %call80 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %ca, %struct.x509_st* noundef nonnull %3, i32 noundef 0) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err87.loopexit, label %while.cond.backedge

if.end84:                                         ; preds = %if.end76
  tail call void @X509_free(%struct.x509_st* noundef nonnull %3) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end84, %if.then79, %cleanup
  %call55 = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call54) #4
  %cmp56.not = icmp eq i8* %call55, null
  br i1 %cmp56.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call54) #4
  br label %cleanup98

err87.loopexit:                                   ; preds = %if.then79
  %7 = bitcast i8* %call55147 to %struct.x509_st*
  br label %err87

err87:                                            ; preds = %err87.loopexit, %if.then39, %land.lhs.true46, %if.then51, %if.then35, %if.then24, %if.else18
  %ocerts.1 = phi %struct.stack_st_X509* [ null, %if.then35 ], [ null, %if.else18 ], [ null, %if.then24 ], [ %ocerts.0, %if.then51 ], [ %ocerts.0, %land.lhs.true46 ], [ %ocerts.0, %if.then39 ], [ %ocerts.0, %err87.loopexit ]
  %x.0 = phi %struct.x509_st* [ null, %if.then35 ], [ null, %if.else18 ], [ null, %if.then24 ], [ null, %if.then51 ], [ null, %land.lhs.true46 ], [ null, %if.then39 ], [ %7, %err87.loopexit ]
  br i1 %cmp.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %err87
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %err87
  br i1 %cmp1, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end91
  %9 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !4
  tail call void @X509_free(%struct.x509_st* noundef %9) #4
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91
  tail call void @X509_free(%struct.x509_st* noundef %x.0) #4
  %call96 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %ocerts.1) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call96, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  br label %cleanup98

cleanup98:                                        ; preds = %if.end95, %while.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end95 ], [ 1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef) local_unnamed_addr #2

declare i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_pk12(%struct.PKCS12_st* noundef %p12, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef %p12) #4
  %cmp = icmp eq %struct.stack_st_PKCS7* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %call) #5
  %call22 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp33 = icmp sgt i32 %call22, 0
  br i1 %cmp33, label %for.body, label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.04 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.04) #4
  %0 = bitcast i8* %call5 to %struct.pkcs7_st*
  %type = getelementptr inbounds i8, i8* %call5, i64 24
  %1 = bitcast i8* %type to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %1, align 8, !tbaa !11
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  switch i32 %call6, label %for.inc [
    i32 21, label %if.then8
    i32 26, label %if.then11
  ]

if.then8:                                         ; preds = %for.body
  %call9 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef nonnull %0) #4
  br label %if.end15

if.then11:                                        ; preds = %for.body
  %call12 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef nonnull %0, i8* noundef %pass, i32 noundef -1) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8
  %bags.0 = phi %struct.stack_st_PKCS12_SAFEBAG* [ %call9, %if.then8 ], [ %call12, %if.then11 ]
  %tobool.not = icmp eq %struct.stack_st_PKCS12_SAFEBAG* %bags.0, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @parse_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %bags.0, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) #5
  %tobool21.not = icmp eq i32 %call20, 0
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef nonnull %bags.0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call23, void (i8*)* noundef bitcast (void (%struct.PKCS12_SAFEBAG_st*)* @PKCS12_SAFEBAG_free to void (i8*)*)) #4
  br i1 %tobool21.not, label %cleanup.sink.split, label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #4
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup.sink.split, !llvm.loop !16

cleanup.sink.split:                               ; preds = %for.inc, %if.end15, %if.end19, %for.cond.preheader
  %retval.0.ph = phi i32 [ 1, %for.cond.preheader ], [ 0, %if.end15 ], [ 1, %for.inc ], [ 0, %if.end19 ]
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef nonnull %call) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call30, void (i8*)* noundef bitcast (void (%struct.pkcs7_st*)* @PKCS7_free to void (i8*)*)) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #3 {
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
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS7* @PKCS12_unpack_authsafes(%struct.PKCS12_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7data(%struct.pkcs7_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_unpack_p7encdata(%struct.pkcs7_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS7_sk_type(%struct.stack_st_PKCS7* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS7* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @PKCS7_free(%struct.pkcs7_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef %bags) #5
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp2 = icmp sgt i32 %call11, 0
  br i1 %cmp2, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !17

for.body:                                         ; preds = %entry, %for.cond
  %i.03 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.03) #4
  %0 = bitcast i8* %call3 to %struct.PKCS12_SAFEBAG_st*
  %call4 = tail call fastcc i32 @parse_bag(%struct.PKCS12_SAFEBAG_st* noundef %0, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) #5
  %tobool.not = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.03, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @PKCS12_SAFEBAG_free(%struct.PKCS12_SAFEBAG_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_PKCS12_SAFEBAG_sk_type(%struct.stack_st_PKCS12_SAFEBAG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_PKCS12_SAFEBAG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_bag(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) unnamed_addr #0 {
entry:
  %data47 = alloca i8*, align 8
  %call = tail call %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* noundef %bag, i32 noundef 156) #4
  %tobool.not = icmp eq %struct.asn1_type_st* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %bmpstring = bitcast %union.anon* %value to %struct.asn1_string_st**
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %bmpstring, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fname.0 = phi %struct.asn1_string_st* [ %0, %if.then ], [ null, %entry ]
  %call1 = tail call %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* noundef %bag, i32 noundef 157) #4
  %tobool2.not = icmp eq %struct.asn1_type_st* %call1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %value4 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call1, i64 0, i32 1
  %octet_string = bitcast %union.anon* %value4 to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %octet_string, align 8, !tbaa !8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %lkid.0 = phi %struct.asn1_string_st* [ %1, %if.then3 ], [ null, %if.end ]
  %call6 = tail call i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  switch i32 %call6, label %cleanup68 [
    i32 150, label %sw.bb
    i32 151, label %sw.bb15
    i32 152, label %sw.bb29
    i32 155, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.end5
  %cmp = icmp eq %struct.evp_pkey_st** %pkey, null
  br i1 %cmp, label %cleanup68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp7.not = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp7.not, label %if.end9, label %cleanup68

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_SAFEBAG_get0_p8inf(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %call11 = tail call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %call10) #4
  store %struct.evp_pkey_st* %call11, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp12 = icmp eq %struct.evp_pkey_st* %call11, null
  br i1 %cmp12, label %cleanup68, label %sw.epilog

sw.bb15:                                          ; preds = %if.end5
  %cmp16 = icmp eq %struct.evp_pkey_st** %pkey, null
  br i1 %cmp16, label %cleanup68, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %sw.bb15
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %cmp18.not = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp18.not, label %if.end20, label %cleanup68

if.end20:                                         ; preds = %lor.lhs.false17
  %call21 = tail call %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %pass, i32 noundef -1) #4
  %cmp22 = icmp eq %struct.pkcs8_priv_key_info_st* %call21, null
  br i1 %cmp22, label %cleanup68, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = tail call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef nonnull %call21) #4
  store %struct.evp_pkey_st* %call25, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call21) #4
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %tobool26.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %tobool26.not, label %cleanup68, label %sw.epilog

sw.bb29:                                          ; preds = %if.end5
  %cmp30 = icmp eq %struct.stack_st_X509* %ocerts, null
  br i1 %cmp30, label %cleanup68, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %sw.bb29
  %call32 = tail call i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp33.not = icmp eq i32 %call32, 158
  br i1 %cmp33.not, label %if.end35, label %cleanup68

if.end35:                                         ; preds = %lor.lhs.false31
  %call36 = tail call %struct.x509_st* @PKCS12_SAFEBAG_get1_cert(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %cmp37 = icmp eq %struct.x509_st* %call36, null
  br i1 %cmp37, label %cleanup68, label %if.end39

if.end39:                                         ; preds = %if.end35
  %tobool40.not = icmp eq %struct.asn1_string_st* %lkid.0, null
  br i1 %tobool40.not, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end39
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %lkid.0, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !18
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %lkid.0, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !20
  %call41 = tail call i32 @X509_keyid_set1(%struct.x509_st* noundef nonnull %call36, i8* noundef %5, i32 noundef %6) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  tail call void @X509_free(%struct.x509_st* noundef nonnull %call36) #4
  br label %cleanup68

if.end44:                                         ; preds = %land.lhs.true, %if.end39
  %tobool45.not = icmp eq %struct.asn1_string_st* %fname.0, null
  br i1 %tobool45.not, label %if.end58, label %if.then46

if.then46:                                        ; preds = %if.end44
  %7 = bitcast i8** %data47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %call48 = call i32 @ASN1_STRING_to_UTF8(i8** noundef nonnull %data47, %struct.asn1_string_st* noundef nonnull %fname.0) #4
  %cmp49 = icmp sgt i32 %call48, -1
  br i1 %cmp49, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.then46
  %8 = load i8*, i8** %data47, align 8, !tbaa !4
  %call51 = call i32 @X509_alias_set1(%struct.x509_st* noundef nonnull %call36, i8* noundef %8, i32 noundef %call48) #4
  %9 = load i8*, i8** %data47, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 236) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %cleanup

if.then53:                                        ; preds = %if.then50
  call void @X509_free(%struct.x509_st* noundef nonnull %call36) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %cleanup68

cleanup:                                          ; preds = %if.then46, %if.then50
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %if.end58

if.end58:                                         ; preds = %cleanup, %if.end44
  %call59 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %ocerts) #5
  %10 = bitcast %struct.x509_st* %call36 to i8*
  %call61 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call59, i8* noundef nonnull %10) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %sw.epilog

if.then63:                                        ; preds = %if.end58
  call void @X509_free(%struct.x509_st* noundef nonnull %call36) #4
  br label %cleanup68

sw.bb65:                                          ; preds = %if.end5
  %call66 = tail call %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_SAFEBAG_get0_safes(%struct.PKCS12_SAFEBAG_st* noundef %bag) #4
  %call67 = tail call fastcc i32 @parse_bags(%struct.stack_st_PKCS12_SAFEBAG* noundef %call66, i8* noundef %pass, %struct.evp_pkey_st** noundef %pkey, %struct.stack_st_X509* noundef %ocerts) #5
  br label %cleanup68

sw.epilog:                                        ; preds = %if.end58, %if.end24, %if.end9
  br label %cleanup68

cleanup68:                                        ; preds = %if.end5, %if.then53, %if.end35, %sw.bb29, %lor.lhs.false31, %if.end24, %if.end20, %sw.bb15, %lor.lhs.false17, %if.end9, %sw.bb, %lor.lhs.false, %sw.epilog, %sw.bb65, %if.then63, %if.then43
  %retval.1 = phi i32 [ %call67, %sw.bb65 ], [ 1, %sw.epilog ], [ 0, %if.then63 ], [ 0, %if.then43 ], [ 1, %lor.lhs.false ], [ 1, %sw.bb ], [ 0, %if.end9 ], [ 1, %lor.lhs.false17 ], [ 1, %sw.bb15 ], [ 0, %if.end20 ], [ 0, %if.end24 ], [ 1, %lor.lhs.false31 ], [ 1, %sw.bb29 ], [ 0, %if.end35 ], [ 0, %if.then53 ], [ 1, %if.end5 ]
  ret i32 %retval.1
}

declare %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS12_SAFEBAG_get_nid(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @PKCS12_SAFEBAG_get0_p8inf(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @PKCS12_decrypt_skey(%struct.PKCS12_SAFEBAG_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare i32 @PKCS12_SAFEBAG_get_bag_nid(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @PKCS12_SAFEBAG_get1_cert(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #2

declare i32 @X509_keyid_set1(%struct.x509_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_to_UTF8(i8** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_alias_set1(%struct.x509_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.stack_st_PKCS12_SAFEBAG* @PKCS12_SAFEBAG_get0_safes(%struct.PKCS12_SAFEBAG_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !5, i64 24}
!12 = !{!"pkcs7_st", !5, i64 0, !13, i64 8, !14, i64 16, !14, i64 20, !5, i64 24, !6, i64 32, !15, i64 40}
!13 = !{!"long", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!"PKCS7_CTX_st", !5, i64 0, !5, i64 8}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !5, i64 8}
!19 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !5, i64 8, !13, i64 16}
!20 = !{!19, !14, i64 0}
