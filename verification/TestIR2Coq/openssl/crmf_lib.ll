; ModuleID = 'crypto/crmf/crmf_lib.c'
source_filename = "crypto/crmf/crmf_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ossl_crmf_msg_st = type { %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_popo_st*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* }
%struct.ossl_crmf_certrequest_st = type { %struct.asn1_string_st*, %struct.ossl_crmf_certtemplate_st*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* }
%struct.ossl_crmf_certtemplate_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.ossl_crmf_optionalvalidity_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_crmf_optionalvalidity_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ossl_crmf_popo_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE = type opaque
%struct.ossl_crmf_attributetypeandvalue_st = type { %struct.asn1_object_st*, %union.anon.4 }
%union.anon.4 = type { %struct.asn1_string_st* }
%struct.stack_st = type opaque
%struct.ossl_crmf_singlepubinfo_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st* }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.ossl_crmf_pkipublicationinfo_st = type { %struct.asn1_string_st*, %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* }
%struct.stack_st_OSSL_CRMF_SINGLEPUBINFO = type opaque
%struct.ossl_crmf_certid_st = type { %struct.GENERAL_NAME_st*, %struct.asn1_string_st* }
%struct.X509_extension_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_crmf_poposigningkey_st = type { %struct.ossl_crmf_poposigningkeyinput_st*, %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.ossl_crmf_poposigningkeyinput_st = type { %struct.ossl_crmf_poposigningkeyinput_authinfo_st*, %struct.X509_pubkey_st* }
%struct.ossl_crmf_poposigningkeyinput_authinfo_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.GENERAL_NAME_st* }
%struct.ossl_crmf_popoprivkey_st = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.asn1_string_st* }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.x509_st = type opaque
%struct.ossl_crmf_encryptedvalue_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.evp_cipher_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/crmf/crmf_lib.c\00", align 1
@__func__.OSSL_CRMF_MSG_set0_SinglePubInfo = private unnamed_addr constant [33 x i8] c"OSSL_CRMF_MSG_set0_SinglePubInfo\00", align 1
@__func__.OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo = private unnamed_addr constant [53 x i8] c"OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo\00", align 1
@__func__.OSSL_CRMF_MSG_set_PKIPublicationInfo_action = private unnamed_addr constant [44 x i8] c"OSSL_CRMF_MSG_set_PKIPublicationInfo_action\00", align 1
@__func__.OSSL_CRMF_CERTID_gen = private unnamed_addr constant [21 x i8] c"OSSL_CRMF_CERTID_gen\00", align 1
@__func__.OSSL_CRMF_MSG_get0_tmpl = private unnamed_addr constant [24 x i8] c"OSSL_CRMF_MSG_get0_tmpl\00", align 1
@__func__.OSSL_CRMF_MSG_set0_validity = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_MSG_set0_validity\00", align 1
@__func__.OSSL_CRMF_MSG_set_certReqId = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_MSG_set_certReqId\00", align 1
@__func__.OSSL_CRMF_MSG_get_certReqId = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_MSG_get_certReqId\00", align 1
@__func__.OSSL_CRMF_MSG_set0_extensions = private unnamed_addr constant [30 x i8] c"OSSL_CRMF_MSG_set0_extensions\00", align 1
@__func__.OSSL_CRMF_MSG_push0_extension = private unnamed_addr constant [30 x i8] c"OSSL_CRMF_MSG_push0_extension\00", align 1
@__func__.OSSL_CRMF_MSG_create_popo = private unnamed_addr constant [26 x i8] c"OSSL_CRMF_MSG_create_popo\00", align 1
@__func__.OSSL_CRMF_MSGS_verify_popo = private unnamed_addr constant [27 x i8] c"OSSL_CRMF_MSGS_verify_popo\00", align 1
@__func__.OSSL_CRMF_CERTTEMPLATE_fill = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_CERTTEMPLATE_fill\00", align 1
@__func__.OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert = private unnamed_addr constant [38 x i8] c"OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert\00", align 1
@__func__.OSSL_CRMF_MSG_push0_regCtrl = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_MSG_push0_regCtrl\00", align 1
@__func__.OSSL_CRMF_MSG_push0_regInfo = private unnamed_addr constant [28 x i8] c"OSSL_CRMF_MSG_push0_regInfo\00", align 1
@__func__.crmf_asn1_get_int = private unnamed_addr constant [18 x i8] c"crmf_asn1_get_int\00", align 1
@__func__.create_popo_signature = private unnamed_addr constant [22 x i8] c"create_popo_signature\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @OSSL_CRMF_MSG_get0_regCtrl_regToken(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !11

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 315
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %regToken = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %regToken, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.asn1_string_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.ossl_crmf_attributetypeandvalue_st*
  ret %struct.ossl_crmf_attributetypeandvalue_st* %1
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regCtrl_regToken(%struct.ossl_crmf_msg_st* noundef %msg, %struct.asn1_string_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.asn1_string_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 315) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef nonnull %in) #6
  %regToken = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %call9, %struct.asn1_string_st** %regToken, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef readonly %crm, %struct.ossl_crmf_attributetypeandvalue_st* noundef %ctrl) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  %cmp3 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %ctrl, null
  %or.cond = or i1 %cmp3, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_MSG_push0_regCtrl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %controls = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls, align 8, !tbaa !9
  %cmp5 = icmp eq %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %1, null
  br i1 %cmp5, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null() #5
  %2 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %controls8 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %2, i64 0, i32 2
  store %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %call, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls8, align 8, !tbaa !9
  %cmp11 = icmp eq %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %call, null
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end
  %3 = phi %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* [ %call, %if.then6 ], [ %1, %if.end ]
  %call17 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef nonnull %3, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %ctrl) #5
  %tobool.not = icmp ne i32 %call17, 0
  %cmp5.not = xor i1 %cmp5, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp5.not
  %.mux = zext i1 %tobool.not to i32
  br i1 %brmerge, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.end14
  %4 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %controls23 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %4, i64 0, i32 2
  %5 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls23, align 8, !tbaa !9
  tail call fastcc void @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %5) #5
  %6 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %controls25 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %6, i64 0, i32 2
  store %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* null, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls25, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6, %if.then21, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %.mux, %if.end14 ], [ 0, %if.then21 ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

declare void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @OSSL_CRMF_MSG_get0_regCtrl_authenticator(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !16

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 316
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %authenticator = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %authenticator, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.asn1_string_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regCtrl_authenticator(%struct.ossl_crmf_msg_st* noundef %msg, %struct.asn1_string_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.asn1_string_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 316) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef nonnull %in) #6
  %authenticator = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %call9, %struct.asn1_string_st** %authenticator, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set0_SinglePubInfo(%struct.ossl_crmf_singlepubinfo_st* noundef %spi, i32 noundef %method, %struct.GENERAL_NAME_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_singlepubinfo_st* %spi, null
  %0 = icmp ugt i32 %method, 3
  %1 = or i1 %cmp, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.OSSL_CRMF_MSG_set0_SinglePubInfo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 524550, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %pubMethod = getelementptr inbounds %struct.ossl_crmf_singlepubinfo_st, %struct.ossl_crmf_singlepubinfo_st* %spi, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %pubMethod, align 8, !tbaa !17
  %conv13 = zext i32 %method to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef %conv13) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %pubLocation = getelementptr inbounds %struct.ossl_crmf_singlepubinfo_st, %struct.ossl_crmf_singlepubinfo_st* %spi, i64 0, i32 1
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %pubLocation, align 8, !tbaa !19
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %3) #6
  store %struct.GENERAL_NAME_st* %nm, %struct.GENERAL_NAME_st** %pubLocation, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo(%struct.ossl_crmf_pkipublicationinfo_st* noundef %pi, %struct.ossl_crmf_singlepubinfo_st* noundef %spi) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_pkipublicationinfo_st* %pi, null
  %cmp1 = icmp eq %struct.ossl_crmf_singlepubinfo_st* %spi, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__func__.OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %pubInfos = getelementptr inbounds %struct.ossl_crmf_pkipublicationinfo_st, %struct.ossl_crmf_pkipublicationinfo_st* %pi, i64 0, i32 1
  %0 = load %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO*, %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO** %pubInfos, align 8, !tbaa !20
  %cmp2 = icmp eq %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* %0, null
  br i1 %cmp2, label %if.end5, label %if.end9

if.end5:                                          ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* @sk_OSSL_CRMF_SINGLEPUBINFO_new_null() #5
  store %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* %call, %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO** %pubInfos, align 8, !tbaa !20
  %cmp7 = icmp eq %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* %call, null
  br i1 %cmp7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end, %if.end5
  %1 = phi %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* [ %call, %if.end5 ], [ %0, %if.end ]
  %call11 = tail call fastcc i32 @sk_OSSL_CRMF_SINGLEPUBINFO_push(%struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* noundef nonnull %1, %struct.ossl_crmf_singlepubinfo_st* noundef nonnull %spi) #5
  br label %return

return:                                           ; preds = %if.end5, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call11, %if.end9 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* @sk_OSSL_CRMF_SINGLEPUBINFO_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO*
  ret %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CRMF_SINGLEPUBINFO_push(%struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* noundef %sk, %struct.ossl_crmf_singlepubinfo_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_SINGLEPUBINFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_crmf_singlepubinfo_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set_PKIPublicationInfo_action(%struct.ossl_crmf_pkipublicationinfo_st* noundef readonly %pi, i32 noundef %action) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_pkipublicationinfo_st* %pi, null
  %0 = icmp ugt i32 %action, 1
  %1 = or i1 %cmp, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.OSSL_CRMF_MSG_set_PKIPublicationInfo_action, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 524550, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %action4 = getelementptr inbounds %struct.ossl_crmf_pkipublicationinfo_st, %struct.ossl_crmf_pkipublicationinfo_st* %pi, i64 0, i32 0
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %action4, align 8, !tbaa !22
  %conv9 = zext i32 %action to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %2, i64 noundef %conv9) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_pkipublicationinfo_st* @OSSL_CRMF_MSG_get0_regCtrl_pkiPublicationInfo(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !23

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 317
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1
  %pkiPublicationInfo = bitcast %union.anon.4* %value to %struct.ossl_crmf_pkipublicationinfo_st**
  %3 = load %struct.ossl_crmf_pkipublicationinfo_st*, %struct.ossl_crmf_pkipublicationinfo_st** %pkiPublicationInfo, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.ossl_crmf_pkipublicationinfo_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.ossl_crmf_pkipublicationinfo_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regCtrl_pkiPublicationInfo(%struct.ossl_crmf_msg_st* noundef %msg, %struct.ossl_crmf_pkipublicationinfo_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.ossl_crmf_pkipublicationinfo_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 317) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.ossl_crmf_pkipublicationinfo_st* @OSSL_CRMF_PKIPUBLICATIONINFO_dup(%struct.ossl_crmf_pkipublicationinfo_st* noundef nonnull %in) #6
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1
  %pkiPublicationInfo = bitcast %union.anon.4* %value to %struct.ossl_crmf_pkipublicationinfo_st**
  store %struct.ossl_crmf_pkipublicationinfo_st* %call9, %struct.ossl_crmf_pkipublicationinfo_st** %pkiPublicationInfo, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.ossl_crmf_pkipublicationinfo_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_pkipublicationinfo_st* @OSSL_CRMF_PKIPUBLICATIONINFO_dup(%struct.ossl_crmf_pkipublicationinfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @OSSL_CRMF_MSG_get0_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !24

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 319
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1
  %oldCertID = bitcast %union.anon.4* %value to %struct.ossl_crmf_certid_st**
  %3 = load %struct.ossl_crmf_certid_st*, %struct.ossl_crmf_certid_st** %oldCertID, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.ossl_crmf_certid_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.ossl_crmf_certid_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regCtrl_oldCertID(%struct.ossl_crmf_msg_st* noundef %msg, %struct.ossl_crmf_certid_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.ossl_crmf_certid_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 319) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_dup(%struct.ossl_crmf_certid_st* noundef nonnull %in) #6
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1
  %oldCertID = bitcast %union.anon.4* %value to %struct.ossl_crmf_certid_st**
  store %struct.ossl_crmf_certid_st* %call9, %struct.ossl_crmf_certid_st** %oldCertID, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.ossl_crmf_certid_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_dup(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_gen(%struct.X509_name_st* noundef %issuer, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_name_st* %issuer, null
  %cmp1 = icmp eq %struct.asn1_string_st* %serial, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OSSL_CRMF_CERTID_gen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_certid_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %issuer5 = getelementptr inbounds %struct.ossl_crmf_certid_st, %struct.ossl_crmf_certid_st* %call, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %issuer5, align 8, !tbaa !25
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %0, i64 0, i32 1
  %directoryName = bitcast %union.anon.2* %d to %struct.X509_name_st**
  %call6 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %directoryName, %struct.X509_name_st* noundef nonnull %issuer) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %1 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %issuer5, align 8, !tbaa !25
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %1, i64 0, i32 0
  store i32 4, i32* %type, align 8, !tbaa !27
  %serialNumber = getelementptr inbounds %struct.ossl_crmf_certid_st, %struct.ossl_crmf_certid_st* %call, i64 0, i32 1
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !30
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %2) #6
  %call10 = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef nonnull %serial) #6
  store %struct.asn1_string_st* %call10, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !30
  %cmp12 = icmp eq %struct.asn1_string_st* %call10, null
  br i1 %cmp12, label %err, label %cleanup

err:                                              ; preds = %if.end8, %if.end4, %if.end
  tail call void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %err, %if.then
  %retval.0 = phi %struct.ossl_crmf_certid_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end8 ]
  ret %struct.ossl_crmf_certid_st* %retval.0
}

declare %struct.ossl_crmf_certid_st* @OSSL_CRMF_CERTID_new() local_unnamed_addr #2

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @OSSL_CRMF_CERTID_free(%struct.ossl_crmf_certid_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_pubkey_st* @OSSL_CRMF_MSG_get0_regCtrl_protocolEncrKey(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !31

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 320
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1
  %protocolEncrKey = bitcast %union.anon.4* %value to %struct.X509_pubkey_st**
  %3 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %protocolEncrKey, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.X509_pubkey_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.X509_pubkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regCtrl_protocolEncrKey(%struct.ossl_crmf_msg_st* noundef %msg, %struct.X509_pubkey_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.X509_pubkey_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 320) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* noundef nonnull %in) #6
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1
  %protocolEncrKey = bitcast %union.anon.4* %value to %struct.X509_pubkey_st**
  store %struct.X509_pubkey_st* %call9, %struct.X509_pubkey_st** %protocolEncrKey, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.X509_pubkey_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regCtrl(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @OSSL_CRMF_MSG_get0_regInfo_utf8Pairs(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call21 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp422 = icmp sgt i32 %call21, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !32

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.023) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 321
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %utf8Pairs = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1, i32 0
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %utf8Pairs, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.asn1_string_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regInfo_utf8Pairs(%struct.ossl_crmf_msg_st* noundef %msg, %struct.asn1_string_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.asn1_string_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 321) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef nonnull %in) #6
  %utf8Pairs = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %call9, %struct.asn1_string_st** %utf8Pairs, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regInfo(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @OSSL_CRMF_MSG_push0_regInfo(%struct.ossl_crmf_msg_st* noundef %crm, %struct.ossl_crmf_attributetypeandvalue_st* noundef %ri) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  %cmp1 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %ri, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_MSG_push0_regInfo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regInfo = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 2
  %0 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %regInfo, align 8, !tbaa !33
  %cmp2 = icmp eq %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %0, null
  br i1 %cmp2, label %if.end5, label %if.end9.thread

if.end5:                                          ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null() #5
  store %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %call, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %regInfo, align 8, !tbaa !33
  %cmp7 = icmp eq %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %call, null
  br i1 %cmp7, label %if.end17, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call11 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef nonnull %call, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %ri) #5
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then15, label %cleanup

if.end9.thread:                                   ; preds = %if.end
  %call1134 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef nonnull %0, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %ri) #5
  %tobool.not35 = icmp eq i32 %call1134, 0
  br i1 %tobool.not35, label %if.end17, label %cleanup

if.then15:                                        ; preds = %if.end9
  store %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* null, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %regInfo, align 8, !tbaa !33
  br label %if.end17

if.end17:                                         ; preds = %if.end9.thread, %if.end5, %if.then15
  %info.02932 = phi %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* [ %call, %if.then15 ], [ null, %if.end5 ], [ null, %if.end9.thread ]
  tail call fastcc void @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %info.02932) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9.thread, %if.end9, %if.end17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end17 ], [ 1, %if.end9 ], [ 1, %if.end9.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certrequest_st* @OSSL_CRMF_MSG_get0_regInfo_certReq(%struct.ossl_crmf_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %msg, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %controls3 = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*, %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE** %controls3, align 8, !tbaa !9
  %call22 = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp423 = icmp sgt i32 %call22, 0
  br i1 %cmp423, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call = tail call fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_num(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1) #5
  %cmp4 = icmp slt i32 %inc, %call
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !34

for.body:                                         ; preds = %if.end, %for.cond
  %i.024 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call fastcc %struct.ossl_crmf_attributetypeandvalue_st* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_value(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %1, i32 noundef %i.024) #5
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %call6 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #6
  %cmp7 = icmp eq i32 %call6, 322
  %inc = add nuw nsw i32 %i.024, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call5, i64 0, i32 1
  %certReq9 = bitcast %union.anon.4* %value to %struct.ossl_crmf_certrequest_st**
  %3 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq9, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %lor.lhs.false, %if.then8
  %retval.0 = phi %struct.ossl_crmf_certrequest_st* [ %3, %if.then8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.ossl_crmf_certrequest_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set1_regInfo_certReq(%struct.ossl_crmf_msg_st* noundef %msg, %struct.ossl_crmf_certrequest_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %msg, null
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %in, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_crmf_attributetypeandvalue_st* @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_attributetypeandvalue_st* %call, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 322) #6
  %type = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call5, %struct.asn1_object_st** %type, align 8, !tbaa !13
  %cmp6 = icmp eq %struct.asn1_object_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.ossl_crmf_certrequest_st* @OSSL_CRMF_CERTREQUEST_dup(%struct.ossl_crmf_certrequest_st* noundef nonnull %in) #6
  %value = getelementptr inbounds %struct.ossl_crmf_attributetypeandvalue_st, %struct.ossl_crmf_attributetypeandvalue_st* %call, i64 0, i32 1
  %certReq = bitcast %union.anon.4* %value to %struct.ossl_crmf_certrequest_st**
  store %struct.ossl_crmf_certrequest_st* %call9, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !15
  %cmp10 = icmp eq %struct.ossl_crmf_certrequest_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @OSSL_CRMF_MSG_push0_regInfo(%struct.ossl_crmf_msg_st* noundef nonnull %msg, %struct.ossl_crmf_attributetypeandvalue_st* noundef nonnull %call) #5
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %atav.0 = phi %struct.ossl_crmf_attributetypeandvalue_st* [ null, %entry ], [ null, %if.end ], [ %call, %if.end4 ], [ %call, %if.end8 ], [ %call, %if.end12 ]
  tail call void @OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.ossl_crmf_attributetypeandvalue_st* noundef %atav.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_certrequest_st* @OSSL_CRMF_CERTREQUEST_dup(%struct.ossl_crmf_certrequest_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef readonly %crm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_CRMF_MSG_get0_tmpl, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %certTemplate = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 1
  %1 = load %struct.ossl_crmf_certtemplate_st*, %struct.ossl_crmf_certtemplate_st** %certTemplate, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_crmf_certtemplate_st* [ null, %if.then ], [ %1, %if.end ]
  ret %struct.ossl_crmf_certtemplate_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set0_validity(%struct.ossl_crmf_msg_st* noundef %crm, %struct.asn1_string_st* noundef %notBefore, %struct.asn1_string_st* noundef %notAfter) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef %crm) #5
  %cmp = icmp eq %struct.ossl_crmf_certtemplate_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_MSG_set0_validity, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ossl_crmf_optionalvalidity_st* @OSSL_CRMF_OPTIONALVALIDITY_new() #6
  %cmp2 = icmp eq %struct.ossl_crmf_optionalvalidity_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %notBefore5 = getelementptr inbounds %struct.ossl_crmf_optionalvalidity_st, %struct.ossl_crmf_optionalvalidity_st* %call1, i64 0, i32 0
  store %struct.asn1_string_st* %notBefore, %struct.asn1_string_st** %notBefore5, align 8, !tbaa !36
  %notAfter6 = getelementptr inbounds %struct.ossl_crmf_optionalvalidity_st, %struct.ossl_crmf_optionalvalidity_st* %call1, i64 0, i32 1
  store %struct.asn1_string_st* %notAfter, %struct.asn1_string_st** %notAfter6, align 8, !tbaa !38
  %validity = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %call, i64 0, i32 4
  store %struct.ossl_crmf_optionalvalidity_st* %call1, %struct.ossl_crmf_optionalvalidity_st** %validity, align 8, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_optionalvalidity_st* @OSSL_CRMF_OPTIONALVALIDITY_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set_certReqId(%struct.ossl_crmf_msg_st* noundef readonly %crm, i32 noundef %rid) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %certReqId = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !41
  %cmp4 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_MSG_set_certReqId, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %conv = sext i32 %rid to i64
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %1, i64 noundef %conv) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_get_certReqId(%struct.ossl_crmf_msg_st* noundef readonly %crm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_MSG_get_certReqId, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %certReqId = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %certReqId, align 8, !tbaa !41
  %call = tail call fastcc i32 @crmf_asn1_get_int(%struct.asn1_string_st* noundef %1) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crmf_asn1_get_int(%struct.asn1_string_st* noundef %a) unnamed_addr #0 {
entry:
  %res = alloca i64, align 8
  %0 = bitcast i64* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %res, %struct.asn1_string_st* noundef %a) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.crmf_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 187, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %res, align 8, !tbaa !42
  %cmp = icmp slt i64 %1, -2147483648
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.crmf_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 224, i8* noundef null) #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp sgt i64 %1, 2147483647
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.crmf_asn1_get_int, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 223, i8* noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %conv = trunc i64 %1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ -1, %if.then1 ], [ -1, %if.then4 ], [ %conv, %if.end5 ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_set0_extensions(%struct.ossl_crmf_msg_st* noundef %crm, %struct.stack_st_X509_EXTENSION* noundef %exts) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef %crm) #5
  %cmp = icmp eq %struct.ossl_crmf_certtemplate_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CRMF_MSG_set0_extensions, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %exts) #5
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %exts) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %exts.addr.0 = phi %struct.stack_st_X509_EXTENSION* [ null, %if.then4 ], [ %exts, %if.end ]
  %extensions = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %call, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call7, void (i8*)* noundef bitcast (void (%struct.X509_extension_st*)* @X509_EXTENSION_free to void (i8*)*)) #6
  store %struct.stack_st_X509_EXTENSION* %exts.addr.0, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_push0_extension(%struct.ossl_crmf_msg_st* noundef %crm, %struct.X509_extension_st* noundef %ext) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_crmf_certtemplate_st* @OSSL_CRMF_MSG_get0_tmpl(%struct.ossl_crmf_msg_st* noundef %crm) #5
  %cmp = icmp eq %struct.ossl_crmf_certtemplate_st* %call, null
  %cmp1 = icmp eq %struct.X509_extension_st* %ext, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_CRMF_MSG_push0_extension, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %extensions = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %call, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  %cmp2 = icmp eq %struct.stack_st_X509_EXTENSION* %0, null
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st_X509_EXTENSION** %extensions to %struct.stack_st**
  store %struct.stack_st* %call4, %struct.stack_st** %1, align 8, !tbaa !44
  %cmp6 = icmp eq %struct.stack_st* %call4, null
  %2 = bitcast %struct.stack_st* %call4 to %struct.stack_st_X509_EXTENSION*
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end
  %3 = phi %struct.stack_st_X509_EXTENSION* [ %2, %if.then3 ], [ %0, %if.end ]
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %3) #5
  %4 = bitcast %struct.X509_extension_st* %ext to i8*
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef %4) #6
  %tobool.not = icmp ne i32 %call13, 0
  %cmp2.not = xor i1 %cmp2, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp2.not
  %.mux = zext i1 %tobool.not to i32
  br i1 %brmerge, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.end9
  %5 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %5) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call19) #6
  store %struct.stack_st_X509_EXTENSION* null, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3, %if.then17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %.mux, %if.end9 ], [ 0, %if.then17 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSG_create_popo(i32 noundef %meth, %struct.ossl_crmf_msg_st* noundef %crm, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_msg_st* %crm, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %meth, 1
  %cmp2 = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CRMF_MSG_create_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup42

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq i32 %meth, -1
  br i1 %cmp3, label %end, label %if.end5

if.end5:                                          ; preds = %if.end
  %call = tail call %struct.ossl_crmf_popo_st* @OSSL_CRMF_POPO_new() #6
  %cmp6 = icmp eq %struct.ossl_crmf_popo_st* %call, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %call, i64 0, i32 0
  store i32 %meth, i32* %type, align 8, !tbaa !45
  switch i32 %meth, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end8
  %call9 = tail call i32* @ASN1_NULL_new() #6
  %raVerified = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %call, i64 0, i32 1, i32 0
  store i32* %call9, i32** %raVerified, align 8, !tbaa !15
  %cmp10 = icmp eq i32* %call9, null
  br i1 %cmp10, label %err, label %end

sw.bb13:                                          ; preds = %if.end8
  %call14 = tail call %struct.ossl_crmf_poposigningkey_st* @OSSL_CRMF_POPOSIGNINGKEY_new() #6
  %cmp15 = icmp eq %struct.ossl_crmf_poposigningkey_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %sw.bb13
  %certReq = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 0
  %0 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %call18 = tail call fastcc i32 @create_popo_signature(%struct.ossl_crmf_poposigningkey_st* noundef nonnull %call14, %struct.ossl_crmf_certrequest_st* noundef %0, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end17
  tail call void @OSSL_CRMF_POPOSIGNINGKEY_free(%struct.ossl_crmf_poposigningkey_st* noundef nonnull %call14) #6
  br label %err

cleanup:                                          ; preds = %if.end17
  %value21 = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %call, i64 0, i32 1
  %signature = bitcast %union.anon.0* %value21 to %struct.ossl_crmf_poposigningkey_st**
  store %struct.ossl_crmf_poposigningkey_st* %call14, %struct.ossl_crmf_poposigningkey_st** %signature, align 8, !tbaa !15
  br label %end

sw.bb22:                                          ; preds = %if.end8
  %call23 = tail call %struct.ossl_crmf_popoprivkey_st* @OSSL_CRMF_POPOPRIVKEY_new() #6
  %value24 = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %call, i64 0, i32 1
  %keyEncipherment = bitcast %union.anon.0* %value24 to %struct.ossl_crmf_popoprivkey_st**
  store %struct.ossl_crmf_popoprivkey_st* %call23, %struct.ossl_crmf_popoprivkey_st** %keyEncipherment, align 8, !tbaa !15
  %cmp25 = icmp eq %struct.ossl_crmf_popoprivkey_st* %call23, null
  br i1 %cmp25, label %err, label %if.end27

if.end27:                                         ; preds = %sw.bb22
  %call28 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #6
  %1 = load %struct.ossl_crmf_popoprivkey_st*, %struct.ossl_crmf_popoprivkey_st** %keyEncipherment, align 8, !tbaa !15
  %type31 = getelementptr inbounds %struct.ossl_crmf_popoprivkey_st, %struct.ossl_crmf_popoprivkey_st* %1, i64 0, i32 0
  store i32 1, i32* %type31, align 8, !tbaa !47
  %2 = load %struct.ossl_crmf_popoprivkey_st*, %struct.ossl_crmf_popoprivkey_st** %keyEncipherment, align 8, !tbaa !15
  %subsequentMessage = getelementptr inbounds %struct.ossl_crmf_popoprivkey_st, %struct.ossl_crmf_popoprivkey_st* %2, i64 0, i32 1, i32 0
  store %struct.asn1_string_st* %call28, %struct.asn1_string_st** %subsequentMessage, align 8, !tbaa !15
  %cmp35 = icmp eq %struct.asn1_string_st* %call28, null
  br i1 %cmp35, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end27
  %call37 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call28, i64 noundef 0) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %end

sw.default:                                       ; preds = %if.end8
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CRMF_MSG_create_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 115, i8* noundef null) #6
  br label %err

end:                                              ; preds = %cleanup, %sw.bb, %lor.lhs.false36, %if.end
  %pp.0 = phi %struct.ossl_crmf_popo_st* [ null, %if.end ], [ %call, %lor.lhs.false36 ], [ %call, %cleanup ], [ %call, %sw.bb ]
  %popo = getelementptr inbounds %struct.ossl_crmf_msg_st, %struct.ossl_crmf_msg_st* %crm, i64 0, i32 1
  %3 = load %struct.ossl_crmf_popo_st*, %struct.ossl_crmf_popo_st** %popo, align 8, !tbaa !49
  tail call void @OSSL_CRMF_POPO_free(%struct.ossl_crmf_popo_st* noundef %3) #6
  store %struct.ossl_crmf_popo_st* %pp.0, %struct.ossl_crmf_popo_st** %popo, align 8, !tbaa !49
  br label %cleanup42

err:                                              ; preds = %sw.bb13, %if.then19, %if.end27, %lor.lhs.false36, %sw.bb22, %sw.bb, %if.end5, %sw.default
  tail call void @OSSL_CRMF_POPO_free(%struct.ossl_crmf_popo_st* noundef %call) #6
  br label %cleanup42

cleanup42:                                        ; preds = %err, %end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %end ], [ 0, %err ]
  ret i32 %retval.0
}

declare %struct.ossl_crmf_popo_st* @OSSL_CRMF_POPO_new() local_unnamed_addr #2

declare i32* @ASN1_NULL_new() local_unnamed_addr #2

declare %struct.ossl_crmf_poposigningkey_st* @OSSL_CRMF_POPOSIGNINGKEY_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_popo_signature(%struct.ossl_crmf_poposigningkey_st* noundef readonly %ps, %struct.ossl_crmf_certrequest_st* noundef %cr, %struct.evp_pkey_st* noundef %pkey, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_poposigningkey_st* %ps, null
  %cmp1 = icmp eq %struct.ossl_crmf_certrequest_st* %cr, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond8 = or i1 %or.cond, %cmp3
  br i1 %or.cond8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.create_popo_signature, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %poposkInput = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %ps, i64 0, i32 0
  %0 = load %struct.ossl_crmf_poposigningkeyinput_st*, %struct.ossl_crmf_poposigningkeyinput_st** %poposkInput, align 8, !tbaa !50
  %cmp4.not = icmp eq %struct.ossl_crmf_poposigningkeyinput_st* %0, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.create_popo_signature, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 113, i8* noundef null) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTREQUEST_it() #6
  %algorithmIdentifier = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %ps, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithmIdentifier, align 8, !tbaa !52
  %signature = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %ps, i64 0, i32 2
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature, align 8, !tbaa !53
  %3 = bitcast %struct.ossl_crmf_certrequest_st* %cr to i8*
  %call7 = tail call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call, %struct.X509_algor_st* noundef %1, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef %2, i8* noundef %3, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

declare void @OSSL_CRMF_POPOSIGNINGKEY_free(%struct.ossl_crmf_poposigningkey_st* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_popoprivkey_st* @OSSL_CRMF_POPOPRIVKEY_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare void @OSSL_CRMF_POPO_free(%struct.ossl_crmf_popo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_MSGS_verify_popo(%struct.stack_st_OSSL_CRMF_MSG* noundef %reqs, i32 noundef %rid, i32 noundef %acceptRAVerified, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_OSSL_CRMF_MSG* %reqs, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef nonnull %reqs) #5
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %rid) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %popo = getelementptr inbounds i8, i8* %call1, i64 8
  %0 = bitcast i8* %popo to %struct.ossl_crmf_popo_st**
  %1 = load %struct.ossl_crmf_popo_st*, %struct.ossl_crmf_popo_st** %0, align 8, !tbaa !49
  %cmp3 = icmp eq %struct.ossl_crmf_popo_st* %1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 121, i8* noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %1, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !45
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end5
  %tobool.not = icmp eq i32 %acceptRAVerified, 0
  br i1 %tobool.not, label %if.then7, label %sw.epilog

if.then7:                                         ; preds = %sw.bb
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 120, i8* noundef null) #6
  br label %cleanup

sw.bb9:                                           ; preds = %if.end5
  %certReq = bitcast i8* %call1 to %struct.ossl_crmf_certrequest_st**
  %3 = load %struct.ossl_crmf_certrequest_st*, %struct.ossl_crmf_certrequest_st** %certReq, align 8, !tbaa !4
  %certTemplate = getelementptr inbounds %struct.ossl_crmf_certrequest_st, %struct.ossl_crmf_certrequest_st* %3, i64 0, i32 1
  %4 = load %struct.ossl_crmf_certtemplate_st*, %struct.ossl_crmf_certtemplate_st** %certTemplate, align 8, !tbaa !35
  %publicKey = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %4, i64 0, i32 6
  %5 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %publicKey, align 8, !tbaa !54
  %cmp10 = icmp eq %struct.X509_pubkey_st* %5, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb9
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 118, i8* noundef null) #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb9
  %value = getelementptr inbounds %struct.ossl_crmf_popo_st, %struct.ossl_crmf_popo_st* %1, i64 0, i32 1
  %signature = bitcast %union.anon.0* %value to %struct.ossl_crmf_poposigningkey_st**
  %6 = load %struct.ossl_crmf_poposigningkey_st*, %struct.ossl_crmf_poposigningkey_st** %signature, align 8, !tbaa !15
  %poposkInput = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %6, i64 0, i32 0
  %7 = load %struct.ossl_crmf_poposigningkeyinput_st*, %struct.ossl_crmf_poposigningkeyinput_st** %poposkInput, align 8, !tbaa !50
  %cmp14.not = icmp eq %struct.ossl_crmf_poposigningkeyinput_st* %7, null
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %publicKey17 = getelementptr inbounds %struct.ossl_crmf_poposigningkeyinput_st, %struct.ossl_crmf_poposigningkeyinput_st* %7, i64 0, i32 1
  %8 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %publicKey17, align 8, !tbaa !55
  %cmp18 = icmp eq %struct.X509_pubkey_st* %8, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 118, i8* noundef null) #6
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %call23 = tail call i32 @X509_PUBKEY_eq(%struct.X509_pubkey_st* noundef nonnull %5, %struct.X509_pubkey_st* noundef nonnull %8) #6
  %cmp24.not = icmp eq i32 %call23, 1
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 117, i8* noundef null) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = tail call %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_it() #6
  %9 = bitcast %struct.ossl_crmf_poposigningkey_st* %6 to i8**
  br label %if.end36

if.else:                                          ; preds = %if.end12
  %subject = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %4, i64 0, i32 5
  %10 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !57
  %cmp31 = icmp eq %struct.X509_name_st* %10, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 119, i8* noundef null) #6
  br label %cleanup

if.end33:                                         ; preds = %if.else
  %call34 = tail call %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTREQUEST_it() #6
  %11 = bitcast i8* %call1 to i8**
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end26
  %it.0 = phi %struct.ASN1_ITEM_st* [ %call27, %if.end26 ], [ %call34, %if.end33 ]
  %asn.0.in = phi i8** [ %9, %if.end26 ], [ %11, %if.end33 ]
  %asn.0 = load i8*, i8** %asn.0.in, align 8, !tbaa !58
  %algorithmIdentifier = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %6, i64 0, i32 1
  %12 = load %struct.X509_algor_st*, %struct.X509_algor_st** %algorithmIdentifier, align 8, !tbaa !52
  %signature37 = getelementptr inbounds %struct.ossl_crmf_poposigningkey_st, %struct.ossl_crmf_poposigningkey_st* %6, i64 0, i32 2
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %signature37, align 8, !tbaa !53
  %call38 = tail call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef nonnull %5) #6
  %call39 = tail call i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef %it.0, %struct.X509_algor_st* noundef %12, %struct.asn1_string_st* noundef %13, i8* noundef %asn.0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %call38, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %if.end5
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_CRMF_MSGS_verify_popo, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 116, i8* noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end36, %sw.bb
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %sw.epilog, %sw.default, %if.then32, %if.then25, %if.then19, %if.then11, %if.then7, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %sw.default ], [ 0, %if.then11 ], [ 0, %if.then19 ], [ 0, %if.then25 ], [ 1, %sw.epilog ], [ 0, %if.then32 ], [ 0, %if.then7 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CRMF_MSG_sk_type(%struct.stack_st_OSSL_CRMF_MSG* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_MSG* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_PUBKEY_eq(%struct.X509_pubkey_st* noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_POPOSIGNINGKEYINPUT_it() local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OSSL_CRMF_CERTREQUEST_it() local_unnamed_addr #2

declare i32 @ASN1_item_verify_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(%struct.ossl_crmf_certtemplate_st* noundef readonly %tmpl) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certtemplate_st* %tmpl, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.asn1_string_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.asn1_string_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_subject(%struct.ossl_crmf_certtemplate_st* noundef readonly %tmpl) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certtemplate_st* %tmpl, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %subject = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 5
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %subject, align 8, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.X509_name_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.X509_name_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @OSSL_CRMF_CERTTEMPLATE_get0_issuer(%struct.ossl_crmf_certtemplate_st* noundef readonly %tmpl) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certtemplate_st* %tmpl, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %issuer = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 3
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !60
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.X509_name_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.X509_name_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @OSSL_CRMF_CERTTEMPLATE_get0_extensions(%struct.ossl_crmf_certtemplate_st* noundef readonly %tmpl) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certtemplate_st* %tmpl, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %extensions = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 9
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !44
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.stack_st_X509_EXTENSION* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.stack_st_X509_EXTENSION* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @OSSL_CRMF_CERTID_get0_issuer(%struct.ossl_crmf_certid_st* noundef readonly %cid) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certid_st* %cid, null
  br i1 %cmp.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %issuer = getelementptr inbounds %struct.ossl_crmf_certid_st, %struct.ossl_crmf_certid_st* %cid, i64 0, i32 0
  %0 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %issuer, align 8, !tbaa !25
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !27
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %0, i64 0, i32 1
  %directoryName = bitcast %union.anon.2* %d to %struct.X509_name_st**
  %2 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi %struct.X509_name_st* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.X509_name_st* %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @OSSL_CRMF_CERTID_get0_serialNumber(%struct.ossl_crmf_certid_st* noundef readonly %cid) local_unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.ossl_crmf_certid_st* %cid, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.ossl_crmf_certid_st, %struct.ossl_crmf_certid_st* %cid, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.asn1_string_st* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.asn1_string_st* %cond
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.ossl_crmf_certtemplate_st* noundef %tmpl, %struct.evp_pkey_st* noundef %pubkey, %struct.X509_name_st* noundef %subject, %struct.X509_name_st* noundef %issuer, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_crmf_certtemplate_st* %tmpl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 577, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_CRMF_CERTTEMPLATE_fill, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_name_st* %subject, null
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %subject2 = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 5
  %call = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %subject2, %struct.X509_name_st* noundef nonnull %subject) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %cmp5.not = icmp eq %struct.X509_name_st* %issuer, null
  br i1 %cmp5.not, label %if.end11, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %issuer7 = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 3
  %call8 = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %issuer7, %struct.X509_name_st* noundef nonnull %issuer) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %land.lhs.true6, %if.end4
  %cmp12.not = icmp eq %struct.asn1_string_st* %serial, null
  br i1 %cmp12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end11
  %serialNumber = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !59
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %0) #6
  %call14 = tail call %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef nonnull %serial) #6
  store %struct.asn1_string_st* %call14, %struct.asn1_string_st** %serialNumber, align 8, !tbaa !59
  %cmp16 = icmp eq %struct.asn1_string_st* %call14, null
  br i1 %cmp16, label %return, label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11
  %cmp20.not = icmp eq %struct.evp_pkey_st* %pubkey, null
  br i1 %cmp20.not, label %if.end25, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end19
  %publicKey = getelementptr inbounds %struct.ossl_crmf_certtemplate_st, %struct.ossl_crmf_certtemplate_st* %tmpl, i64 0, i32 6
  %call22 = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %publicKey, %struct.evp_pkey_st* noundef nonnull %pubkey) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %if.end25

if.end25:                                         ; preds = %land.lhs.true21, %if.end19
  br label %return

return:                                           ; preds = %land.lhs.true21, %if.then13, %land.lhs.true6, %land.lhs.true, %if.end25, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end25 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true6 ], [ 0, %if.then13 ], [ 0, %land.lhs.true21 ]
  ret i32 %retval.0
}

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert(%struct.ossl_crmf_encryptedvalue_st* noundef readonly %ecert, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cert = alloca %struct.x509_st*, align 8
  %eksize = alloca i64, align 8
  %p = alloca i8*, align 8
  %n = alloca i32, align 4
  %outlen = alloca i32, align 4
  %name = alloca [50 x i8], align 16
  %0 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !58
  %1 = bitcast i64* %eksize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i64 0, i64* %eksize, align 8, !tbaa !42
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %p, align 8, !tbaa !58
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i32 0, i32* %outlen, align 4, !tbaa !61
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %5) #7
  %cmp = icmp eq %struct.ossl_crmf_encryptedvalue_st* %ecert, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %symmAlg = getelementptr inbounds %struct.ossl_crmf_encryptedvalue_st, %struct.ossl_crmf_encryptedvalue_st* %ecert, i64 0, i32 1
  %6 = load %struct.X509_algor_st*, %struct.X509_algor_st** %symmAlg, align 8, !tbaa !62
  %cmp1 = icmp eq %struct.X509_algor_st* %6, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %encSymmKey = getelementptr inbounds %struct.ossl_crmf_encryptedvalue_st, %struct.ossl_crmf_encryptedvalue_st* %ecert, i64 0, i32 2
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encSymmKey, align 8, !tbaa !64
  %cmp3 = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %encValue = getelementptr inbounds %struct.ossl_crmf_encryptedvalue_st, %struct.ossl_crmf_encryptedvalue_st* %ecert, i64 0, i32 5
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encValue, align 8, !tbaa !65
  %cmp5 = icmp eq %struct.asn1_string_st* %8, null
  %cmp7 = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond = or i1 %cmp7, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 622, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef 109, i8* noundef null) #6
  br label %cleanup111

if.end:                                           ; preds = %lor.lhs.false4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %6, i64 0, i32 0
  %9 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !66
  %call = call i32 @OBJ_obj2txt(i8* noundef nonnull %5, i32 noundef 50, %struct.asn1_object_st* noundef %9, i32 noundef 0) #6
  %call9 = call i32 @ERR_set_mark() #6
  %call11 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %5, i8* noundef null) #6
  %cmp12 = icmp eq %struct.evp_cipher_st* %call11, null
  br i1 %cmp12, label %if.end16, label %if.end20

if.end16:                                         ; preds = %if.end
  %call15 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef nonnull %5) #6
  %cmp17 = icmp eq %struct.evp_cipher_st* %call15, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @ERR_clear_last_mark() #6
  br label %end.sink.split

if.end20:                                         ; preds = %if.end, %if.end16
  %cipher.0177 = phi %struct.evp_cipher_st* [ %call15, %if.end16 ], [ %call11, %if.end ]
  %call21 = call i32 @ERR_pop_to_mark() #6
  %call22 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef nonnull %cipher.0177) #6
  %call23 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef %propq) #6
  %cmp24.not = icmp eq %struct.evp_pkey_ctx_st* %call23, null
  br i1 %cmp24.not, label %end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %call25 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call23) #6
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encSymmKey, align 8, !tbaa !64
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data, align 8, !tbaa !68
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %12 = load i32, i32* %length, align 8, !tbaa !70
  %conv = sext i32 %12 to i64
  %call29 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call23, i8* noundef null, i64* noundef nonnull %eksize, i8* noundef %11, i64 noundef %conv) #6
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %end, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.then26
  %13 = load i64, i64* %eksize, align 8, !tbaa !42
  %call33 = call i8* @CRYPTO_malloc(i64 noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 652) #6
  %cmp34 = icmp eq i8* %call33, null
  br i1 %cmp34, label %end, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false32
  %14 = load i8*, i8** %data, align 8, !tbaa !68
  %15 = load i32, i32* %length, align 8, !tbaa !70
  %conv40 = sext i32 %15 to i64
  %call41 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call23, i8* noundef nonnull %call33, i64* noundef nonnull %eksize, i8* noundef %14, i64 noundef %conv40) #6
  call void @ERR_clear_error() #6
  %call42 = call fastcc i32 @constant_time_msb(i32 noundef %call41) #5
  %call43 = call fastcc i32 @constant_time_is_zero(i32 noundef %call41) #5
  %or = or i32 %call43, %call42
  %conv44 = zext i32 %or to i64
  %call45 = call fastcc i64 @constant_time_is_zero_s(i64 noundef %conv44) #5
  %16 = load i64, i64* %eksize, align 8, !tbaa !42
  %conv46 = sext i32 %call22 to i64
  %call47 = call fastcc i64 @constant_time_eq_s(i64 noundef %16, i64 noundef %conv46) #5
  %or49.demorgan = and i64 %call47, %call45
  %tobool50.not = icmp eq i64 %or49.demorgan, -1
  br i1 %tobool50.not, label %if.end55, label %end.sink.split

if.end55:                                         ; preds = %if.end37
  %call56 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher.0177) #6
  %conv57 = sext i32 %call56 to i64
  %call58 = call i8* @CRYPTO_malloc(i64 noundef %conv57, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 667) #6
  %cmp59 = icmp eq i8* %call58, null
  br i1 %cmp59, label %end, label %if.end62

if.end62:                                         ; preds = %if.end55
  %17 = load %struct.X509_algor_st*, %struct.X509_algor_st** %symmAlg, align 8, !tbaa !62
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %17, i64 0, i32 1
  %18 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !71
  %call64 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher.0177) #6
  %call65 = call i32 @ASN1_TYPE_get_octetstring(%struct.asn1_type_st* noundef %18, i8* noundef nonnull %call58, i32 noundef %call64) #6
  %call66 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %cipher.0177) #6
  %cmp67.not = icmp eq i32 %call65, %call66
  br i1 %cmp67.not, label %if.end70, label %end.sink.split

if.end70:                                         ; preds = %if.end62
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encValue, align 8, !tbaa !65
  %length72 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %19, i64 0, i32 0
  %20 = load i32, i32* %length72, align 8, !tbaa !70
  %call73 = call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef nonnull %cipher.0177) #6
  %add = add nsw i32 %call73, %20
  %conv74 = sext i32 %add to i64
  %call75 = call i8* @CRYPTO_malloc(i64 noundef %conv74, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 681) #6
  store i8* %call75, i8** %p, align 8, !tbaa !58
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %end, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end70
  %call79 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #6
  %cmp80 = icmp eq %struct.evp_cipher_ctx_st* %call79, null
  br i1 %cmp80, label %end, label %if.end83

if.end83:                                         ; preds = %lor.lhs.false78
  %call84 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef nonnull %call79, i32 noundef 0) #6
  %call85 = call i32 @EVP_DecryptInit(%struct.evp_cipher_ctx_st* noundef nonnull %call79, %struct.evp_cipher_st* noundef nonnull %cipher.0177, i8* noundef nonnull %call33, i8* noundef nonnull %call58) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %end.sink.split, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.end83
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %encValue, align 8, !tbaa !65
  %data89 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %21, i64 0, i32 2
  %22 = load i8*, i8** %data89, align 8, !tbaa !68
  %length91 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %21, i64 0, i32 0
  %23 = load i32, i32* %length91, align 8, !tbaa !70
  %call92 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call79, i8* noundef nonnull %call75, i32* noundef nonnull %outlen, i8* noundef %22, i32 noundef %23) #6
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %end.sink.split, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false87
  %24 = load i32, i32* %outlen, align 4, !tbaa !61
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call75, i64 %idx.ext
  %call95 = call i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef nonnull %call79, i8* noundef nonnull %add.ptr, i32* noundef nonnull %n) #6
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %end.sink.split, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false94
  %25 = load i32, i32* %n, align 4, !tbaa !61
  %26 = load i32, i32* %outlen, align 4, !tbaa !61
  %add99 = add nsw i32 %26, %25
  store i32 %add99, i32* %outlen, align 4, !tbaa !61
  %call100 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  store %struct.x509_st* %call100, %struct.x509_st** %cert, align 8, !tbaa !58
  %cmp101 = icmp eq %struct.x509_st* %call100, null
  br i1 %cmp101, label %end, label %if.end104

if.end104:                                        ; preds = %if.end98
  %27 = load i32, i32* %outlen, align 4, !tbaa !61
  %conv105 = sext i32 %27 to i64
  %call106 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %p, i64 noundef %conv105) #6
  %cmp107 = icmp eq %struct.x509_st* %call106, null
  br i1 %cmp107, label %end.sink.split, label %end

end.sink.split:                                   ; preds = %if.end104, %if.end83, %lor.lhs.false87, %lor.lhs.false94, %if.end62, %if.end37, %if.then18
  %.sink182 = phi i32 [ 637, %if.then18 ], [ 661, %if.end37 ], [ 672, %if.end62 ], [ 691, %lor.lhs.false94 ], [ 691, %lor.lhs.false87 ], [ 691, %if.end83 ], [ 700, %if.end104 ]
  %.sink = phi i32 [ 114, %if.then18 ], [ 106, %if.end37 ], [ 101, %if.end62 ], [ 105, %lor.lhs.false94 ], [ 105, %lor.lhs.false87 ], [ 105, %if.end83 ], [ 104, %if.end104 ]
  %cipher.0176.ph = phi %struct.evp_cipher_st* [ null, %if.then18 ], [ %cipher.0177, %if.end37 ], [ %cipher.0177, %if.end62 ], [ %cipher.0177, %lor.lhs.false94 ], [ %cipher.0177, %lor.lhs.false87 ], [ %cipher.0177, %if.end83 ], [ %cipher.0177, %if.end104 ]
  %iv.0.ph = phi i8* [ null, %if.then18 ], [ null, %if.end37 ], [ %call58, %if.end62 ], [ %call58, %lor.lhs.false94 ], [ %call58, %lor.lhs.false87 ], [ %call58, %if.end83 ], [ %call58, %if.end104 ]
  %outbuf.0.ph = phi i8* [ null, %if.then18 ], [ null, %if.end37 ], [ null, %if.end62 ], [ %call75, %lor.lhs.false94 ], [ %call75, %lor.lhs.false87 ], [ %call75, %if.end83 ], [ %call75, %if.end104 ]
  %pkctx.0.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.then18 ], [ %call23, %if.end37 ], [ %call23, %if.end62 ], [ %call23, %lor.lhs.false94 ], [ %call23, %lor.lhs.false87 ], [ %call23, %if.end83 ], [ %call23, %if.end104 ]
  %ek.2.ph = phi i8* [ null, %if.then18 ], [ %call33, %if.end37 ], [ %call33, %if.end62 ], [ %call33, %lor.lhs.false94 ], [ %call33, %lor.lhs.false87 ], [ %call33, %if.end83 ], [ %call33, %if.end104 ]
  %evp_ctx.0.ph = phi %struct.evp_cipher_ctx_st* [ null, %if.then18 ], [ null, %if.end37 ], [ null, %if.end62 ], [ %call79, %lor.lhs.false94 ], [ %call79, %lor.lhs.false87 ], [ %call79, %if.end83 ], [ %call79, %if.end104 ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink182, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_CRMF_ENCRYPTEDVALUE_get1_encCert, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 56, i32 noundef %.sink, i8* noundef null) #6
  br label %end

end:                                              ; preds = %end.sink.split, %if.then26, %lor.lhs.false32, %if.end104, %if.end98, %if.end70, %lor.lhs.false78, %if.end55, %if.end20, %land.lhs.true
  %cipher.0176 = phi %struct.evp_cipher_st* [ %cipher.0177, %if.end55 ], [ %cipher.0177, %if.end70 ], [ %cipher.0177, %lor.lhs.false78 ], [ %cipher.0177, %if.end98 ], [ %cipher.0177, %if.end104 ], [ %cipher.0177, %land.lhs.true ], [ %cipher.0177, %if.end20 ], [ %cipher.0177, %lor.lhs.false32 ], [ %cipher.0177, %if.then26 ], [ %cipher.0176.ph, %end.sink.split ]
  %iv.0 = phi i8* [ null, %if.end55 ], [ %call58, %if.end70 ], [ %call58, %lor.lhs.false78 ], [ %call58, %if.end98 ], [ %call58, %if.end104 ], [ null, %land.lhs.true ], [ null, %if.end20 ], [ null, %lor.lhs.false32 ], [ null, %if.then26 ], [ %iv.0.ph, %end.sink.split ]
  %outbuf.0 = phi i8* [ null, %if.end55 ], [ null, %if.end70 ], [ %call75, %lor.lhs.false78 ], [ %call75, %if.end98 ], [ %call75, %if.end104 ], [ null, %land.lhs.true ], [ null, %if.end20 ], [ null, %lor.lhs.false32 ], [ null, %if.then26 ], [ %outbuf.0.ph, %end.sink.split ]
  %pkctx.0 = phi %struct.evp_pkey_ctx_st* [ %call23, %if.end55 ], [ %call23, %if.end70 ], [ %call23, %lor.lhs.false78 ], [ %call23, %if.end98 ], [ %call23, %if.end104 ], [ %call23, %land.lhs.true ], [ null, %if.end20 ], [ %call23, %lor.lhs.false32 ], [ %call23, %if.then26 ], [ %pkctx.0.ph, %end.sink.split ]
  %ek.2 = phi i8* [ %call33, %if.end55 ], [ %call33, %if.end70 ], [ %call33, %lor.lhs.false78 ], [ %call33, %if.end98 ], [ %call33, %if.end104 ], [ null, %land.lhs.true ], [ null, %if.end20 ], [ null, %lor.lhs.false32 ], [ null, %if.then26 ], [ %ek.2.ph, %end.sink.split ]
  %evp_ctx.0 = phi %struct.evp_cipher_ctx_st* [ null, %if.end55 ], [ null, %if.end70 ], [ null, %lor.lhs.false78 ], [ %call79, %if.end98 ], [ %call79, %if.end104 ], [ null, %land.lhs.true ], [ null, %if.end20 ], [ null, %lor.lhs.false32 ], [ null, %if.then26 ], [ %evp_ctx.0.ph, %end.sink.split ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pkctx.0) #6
  call void @CRYPTO_free(i8* noundef %outbuf.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 703) #6
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %evp_ctx.0) #6
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0176) #6
  %28 = load i64, i64* %eksize, align 8, !tbaa !42
  call void @CRYPTO_clear_free(i8* noundef %ek.2, i64 noundef %28, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 706) #6
  call void @CRYPTO_free(i8* noundef %iv.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 707) #6
  %29 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !58
  br label %cleanup111

cleanup111:                                       ; preds = %end, %if.then
  %retval.0 = phi %struct.x509_st* [ null, %if.then ], [ %29, %end ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.x509_st* %retval.0
}

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_s(i64 noundef %a) unnamed_addr #3 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_s(i64 noundef %and) #5
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #3 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #3 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_eq_s(i64 noundef %a, i64 noundef %b) unnamed_addr #3 {
entry:
  %xor = xor i64 %b, %a
  %call = tail call fastcc i64 @constant_time_is_zero_s(i64 noundef %xor) #5
  ret i64 %call
}

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_get_octetstring(%struct.asn1_type_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE*
  ret %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %sk, %struct.ossl_crmf_attributetypeandvalue_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_crmf_attributetypeandvalue_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(%struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CRMF_ATTRIBUTETYPEANDVALUE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

declare i32 @ASN1_INTEGER_get_int64(i64* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_s(i64 noundef %a) unnamed_addr #3 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_crmf_msg_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"ossl_crmf_certrequest_st", !6, i64 0, !6, i64 8, !6, i64 16}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !6, i64 0}
!14 = !{!"ossl_crmf_attributetypeandvalue_st", !6, i64 0, !7, i64 8}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !12}
!17 = !{!18, !6, i64 0}
!18 = !{!"ossl_crmf_singlepubinfo_st", !6, i64 0, !6, i64 8}
!19 = !{!18, !6, i64 8}
!20 = !{!21, !6, i64 8}
!21 = !{!"ossl_crmf_pkipublicationinfo_st", !6, i64 0, !6, i64 8}
!22 = !{!21, !6, i64 0}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26, !6, i64 0}
!26 = !{!"ossl_crmf_certid_st", !6, i64 0, !6, i64 8}
!27 = !{!28, !29, i64 0}
!28 = !{!"GENERAL_NAME_st", !29, i64 0, !7, i64 8}
!29 = !{!"int", !7, i64 0}
!30 = !{!26, !6, i64 8}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = !{!5, !6, i64 16}
!34 = distinct !{!34, !12}
!35 = !{!10, !6, i64 8}
!36 = !{!37, !6, i64 0}
!37 = !{!"ossl_crmf_optionalvalidity_st", !6, i64 0, !6, i64 8}
!38 = !{!37, !6, i64 8}
!39 = !{!40, !6, i64 32}
!40 = !{!"ossl_crmf_certtemplate_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!41 = !{!10, !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !7, i64 0}
!44 = !{!40, !6, i64 72}
!45 = !{!46, !29, i64 0}
!46 = !{!"ossl_crmf_popo_st", !29, i64 0, !7, i64 8}
!47 = !{!48, !29, i64 0}
!48 = !{!"ossl_crmf_popoprivkey_st", !29, i64 0, !7, i64 8}
!49 = !{!5, !6, i64 8}
!50 = !{!51, !6, i64 0}
!51 = !{!"ossl_crmf_poposigningkey_st", !6, i64 0, !6, i64 8, !6, i64 16}
!52 = !{!51, !6, i64 8}
!53 = !{!51, !6, i64 16}
!54 = !{!40, !6, i64 48}
!55 = !{!56, !6, i64 8}
!56 = !{!"ossl_crmf_poposigningkeyinput_st", !6, i64 0, !6, i64 8}
!57 = !{!40, !6, i64 40}
!58 = !{!6, !6, i64 0}
!59 = !{!40, !6, i64 8}
!60 = !{!40, !6, i64 24}
!61 = !{!29, !29, i64 0}
!62 = !{!63, !6, i64 8}
!63 = !{!"ossl_crmf_encryptedvalue_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!64 = !{!63, !6, i64 16}
!65 = !{!63, !6, i64 40}
!66 = !{!67, !6, i64 0}
!67 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!68 = !{!69, !6, i64 8}
!69 = !{!"asn1_string_st", !29, i64 0, !29, i64 4, !6, i64 8, !43, i64 16}
!70 = !{!69, !29, i64 0}
!71 = !{!67, !6, i64 8}
