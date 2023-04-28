; ModuleID = 'crypto/x509/x509_trust.c'
source_filename = "crypto/x509/x509_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.stack_st_X509_TRUST = type opaque
%struct.x509_trust_st = type { i32, i32, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)*, i8*, i32, i8* }
%struct.stack_st = type opaque

@default_trust = internal unnamed_addr global i32 (i32, %struct.x509_st*, i32)* @obj_trust, align 8
@trtable = internal unnamed_addr global %struct.stack_st_X509_TRUST* null, align 8
@trstandard = internal global [8 x %struct.x509_trust_st] [%struct.x509_trust_st { i32 1, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_compat, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* null }, %struct.x509_trust_st { i32 2, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oidany, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 130, i8* null }, %struct.x509_trust_st { i32 3, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oidany, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 129, i8* null }, %struct.x509_trust_st { i32 4, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oidany, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 132, i8* null }, %struct.x509_trust_st { i32 5, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oidany, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 131, i8* null }, %struct.x509_trust_st { i32 6, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oid, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 180, i8* null }, %struct.x509_trust_st { i32 7, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oid, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 178, i8* null }, %struct.x509_trust_st { i32 8, i32 0, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* @trust_1oidany, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 133, i8* null }], align 16
@.str = private unnamed_addr constant [25 x i8] c"crypto/x509/x509_trust.c\00", align 1
@__func__.X509_TRUST_set = private unnamed_addr constant [15 x i8] c"X509_TRUST_set\00", align 1
@__func__.X509_TRUST_add = private unnamed_addr constant [15 x i8] c"X509_TRUST_add\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"S/MIME email\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Object Signer\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OCSP responder\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"OCSP request\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TSA server\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 (i32, %struct.x509_st*, i32)* @X509_TRUST_set_default(i32 (i32, %struct.x509_st*, i32)* noundef %trust) local_unnamed_addr #0 {
entry:
  %0 = load i32 (i32, %struct.x509_st*, i32)*, i32 (i32, %struct.x509_st*, i32)** @default_trust, align 8, !tbaa !4
  store i32 (i32, %struct.x509_st*, i32)* %trust, i32 (i32, %struct.x509_st*, i32)** @default_trust, align 8, !tbaa !4
  ret i32 (i32, %struct.x509_st*, i32)* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_check_trust(%struct.x509_st* noundef %x, i32 noundef %id, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %id, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %or = or i32 %flags, 8
  %call = tail call i32 @obj_trust(i32 noundef 910, %struct.x509_st* noundef %x, i32 noundef %or) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_TRUST_get_by_id(i32 noundef %id) #6
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %0 = load i32 (i32, %struct.x509_st*, i32)*, i32 (i32, %struct.x509_st*, i32)** @default_trust, align 8, !tbaa !4
  %call4 = tail call i32 %0(i32 noundef %id, %struct.x509_st* noundef %x, i32 noundef %flags) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.x509_trust_st* @X509_TRUST_get0(i32 noundef %call1) #6
  %check_trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %call6, i64 0, i32 2
  %1 = load i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)*, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)** %check_trust, align 8, !tbaa !8
  %call7 = tail call i32 %1(%struct.x509_trust_st* noundef %call6, %struct.x509_st* noundef %x, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ %call7, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @obj_trust(i32 noundef %id, %struct.x509_st* noundef %x, i32 noundef %flags) #2 {
entry:
  %aux = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 21
  %0 = load %struct.x509_cert_aux_st*, %struct.x509_cert_aux_st** %aux, align 8, !tbaa !11
  %tobool.not = icmp eq %struct.x509_cert_aux_st* %0, null
  br i1 %tobool.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %reject = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !21
  %tobool1.not = icmp eq %struct.stack_st_ASN1_OBJECT* %1, null
  br i1 %tobool1.not, label %land.lhs.true16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %call86 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %1) #6
  %call387 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call86) #7
  %cmp88 = icmp sgt i32 %call387, 0
  br i1 %cmp88, label %for.body.lr.ph, label %land.lhs.true16

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %flags, 16
  %tobool11.not = icmp eq i32 %and, 0
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %2 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !21
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %2) #6
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %land.lhs.true16, !llvm.loop !23

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %3 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %reject, align 8, !tbaa !21
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #6
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.089) #7
  %4 = bitcast i8* %call6 to %struct.asn1_object_st*
  %call7 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #7
  %cmp8 = icmp eq i32 %call7, %id
  br i1 %cmp8, label %cleanup52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp9 = icmp ne i32 %call7, 910
  %or.cond = or i1 %tobool11.not, %cmp9
  %inc = add nuw nsw i32 %i.089, 1
  br i1 %or.cond, label %for.cond, label %cleanup52

land.lhs.true16:                                  ; preds = %for.cond, %for.cond.preheader, %land.lhs.true
  %trust = getelementptr inbounds %struct.x509_cert_aux_st, %struct.x509_cert_aux_st* %0, i64 0, i32 0
  %5 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !25
  %tobool17.not = icmp eq %struct.stack_st_ASN1_OBJECT* %5, null
  br i1 %tobool17.not, label %if.end46, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %land.lhs.true16
  %call2190 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef nonnull %5) #6
  %call2291 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2190) #7
  %cmp2392 = icmp sgt i32 %call2291, 0
  br i1 %cmp2392, label %for.body24.lr.ph, label %cleanup52

for.body24.lr.ph:                                 ; preds = %for.cond19.preheader
  %and35 = and i32 %flags, 16
  %tobool36.not = icmp eq i32 %and35, 0
  br label %for.body24

for.cond19:                                       ; preds = %cleanup39
  %6 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !25
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %6) #6
  %call22 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call21) #7
  %cmp23 = icmp slt i32 %inc44, %call22
  br i1 %cmp23, label %for.body24, label %cleanup52, !llvm.loop !26

for.body24:                                       ; preds = %for.body24.lr.ph, %for.cond19
  %i.193 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc44, %for.cond19 ]
  %7 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %trust, align 8, !tbaa !25
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %7) #6
  %call28 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %i.193) #7
  %8 = bitcast i8* %call28 to %struct.asn1_object_st*
  %call30 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %8) #7
  %cmp31 = icmp eq i32 %call30, %id
  br i1 %cmp31, label %cleanup52, label %cleanup39

cleanup39:                                        ; preds = %for.body24
  %cmp33 = icmp ne i32 %call30, 910
  %or.cond81 = or i1 %tobool36.not, %cmp33
  %inc44 = add nuw nsw i32 %i.193, 1
  br i1 %or.cond81, label %for.cond19, label %cleanup52

if.end46:                                         ; preds = %entry, %land.lhs.true16
  %and47 = and i32 %flags, 8
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %cleanup52, label %if.end50

if.end50:                                         ; preds = %if.end46
  %call51 = tail call i32 @trust_compat(%struct.x509_trust_st* noundef null, %struct.x509_st* noundef %x, i32 noundef %flags) #6
  br label %cleanup52

cleanup52:                                        ; preds = %lor.lhs.false, %for.body, %cleanup39, %for.cond19, %for.body24, %for.cond19.preheader, %if.end46, %if.end50
  %retval.5 = phi i32 [ %call51, %if.end50 ], [ 3, %if.end46 ], [ 2, %for.cond19.preheader ], [ 1, %cleanup39 ], [ 2, %for.cond19 ], [ 1, %for.body24 ], [ 2, %for.body ], [ 2, %lor.lhs.false ]
  ret i32 %retval.5
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_TRUST_get_by_id(i32 noundef %id) local_unnamed_addr #2 {
entry:
  %tmp = alloca %struct.x509_trust_st, align 8
  %0 = bitcast %struct.x509_trust_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %1 = add i32 %id, -1
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load %struct.stack_st_X509_TRUST*, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.stack_st_X509_TRUST* %3, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %tmp, i64 0, i32 0
  store i32 %id, i32* %trust, align 8, !tbaa !27
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef nonnull %3) #6
  %call6 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef nonnull %0) #7
  %add = add i32 %call6, 8
  %cmp7.inv = icmp sgt i32 %call6, -1
  %spec.select = select i1 %cmp7.inv, i32 %add, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ %spec.select, %if.end4 ], [ %1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_trust_st* @X509_TRUST_get0(i32 noundef %idx) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %idx, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %idx.ext9 = zext i32 %idx to i64
  %add.ptr = getelementptr inbounds [8 x %struct.x509_trust_st], [8 x %struct.x509_trust_st]* @trstandard, i64 0, i64 %idx.ext9
  br label %return

if.end3:                                          ; preds = %if.end
  %0 = load %struct.stack_st_X509_TRUST*, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef %0) #6
  %sub = add nsw i32 %idx, -8
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #7
  %1 = bitcast i8* %call5 to %struct.x509_trust_st*
  br label %return

return:                                           ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi %struct.x509_trust_st* [ %add.ptr, %if.then2 ], [ %1, %if.end3 ], [ null, %entry ]
  ret %struct.x509_trust_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_TRUST_get_count() local_unnamed_addr #2 {
entry:
  %0 = load %struct.stack_st_X509_TRUST*, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.stack_st_X509_TRUST* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef nonnull %0) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %add = add i32 %call1, 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %add, %if.end ], [ 8, %entry ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_TRUST* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_TRUST* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_TRUST_set(i32* nocapture noundef writeonly %t, i32 noundef %trust) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @X509_TRUST_get_by_id(i32 noundef %trust) #6
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_TRUST_set, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 123, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  store i32 %trust, i32* %t, align 4, !tbaa !28
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @X509_TRUST_add(i32 noundef %id, i32 noundef %flags, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* noundef %ck, i8* noundef %name, i32 noundef %arg1, i8* noundef %arg2) local_unnamed_addr #2 {
entry:
  %and = and i32 %flags, -4
  %call = tail call i32 @X509_TRUST_get_by_id(i32 noundef %id) #6
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 138) #7
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_TRUST_add, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %0 = bitcast i8* %call1 to %struct.x509_trust_st*
  %flags4 = getelementptr inbounds i8, i8* %call1, i64 4
  %1 = bitcast i8* %flags4 to i32*
  store i32 1, i32* %1, align 4, !tbaa !29
  br label %if.end6

if.else:                                          ; preds = %entry
  %call5 = tail call %struct.x509_trust_st* @X509_TRUST_get0(i32 noundef %call) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %trtmp.0 = phi %struct.x509_trust_st* [ %0, %if.end ], [ %call5, %if.else ]
  %flags7 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 1
  %2 = load i32, i32* %flags7, align 4, !tbaa !29
  %and8 = and i32 %2, 2
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  %name10 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 3
  %3 = load i8*, i8** %name10, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 148) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #7
  %name13 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 3
  store i8* %call12, i8** %name13, align 8, !tbaa !30
  %cmp14 = icmp eq i8* %call12, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  %4 = load i32, i32* %flags7, align 4, !tbaa !29
  %and18 = and i32 %4, 1
  %or = or i32 %and, %and18
  %or20 = or i32 %or, 2
  store i32 %or20, i32* %flags7, align 4, !tbaa !29
  %trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 0
  store i32 %id, i32* %trust, align 8, !tbaa !27
  %check_trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 2
  store i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)* %ck, i32 (%struct.x509_trust_st*, %struct.x509_st*, i32)** %check_trust, align 8, !tbaa !8
  %arg121 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 4
  store i32 %arg1, i32* %arg121, align 8, !tbaa !31
  %arg222 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trtmp.0, i64 0, i32 5
  store i8* %arg2, i8** %arg222, align 8, !tbaa !32
  br i1 %cmp, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end16
  %5 = load %struct.stack_st_X509_TRUST*, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  %cmp25 = icmp eq %struct.stack_st_X509_TRUST* %5, null
  br i1 %cmp25, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.then24
  %call27 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.x509_trust_st**, %struct.x509_trust_st**)* @tr_cmp to i32 (i8*, i8*)*)) #7
  store %struct.stack_st* %call27, %struct.stack_st** bitcast (%struct.stack_st_X509_TRUST** @trtable to %struct.stack_st**), align 8, !tbaa !4
  %cmp28 = icmp eq %struct.stack_st* %call27, null
  %6 = bitcast %struct.stack_st* %call27 to %struct.stack_st_X509_TRUST*
  br i1 %cmp28, label %if.then39.sink.split, label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %if.then24
  %7 = phi %struct.stack_st_X509_TRUST* [ %6, %land.lhs.true ], [ %5, %if.then24 ]
  %call31 = tail call fastcc %struct.stack_st* @ossl_check_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef %7) #6
  %8 = bitcast %struct.x509_trust_st* %trtmp.0 to i8*
  %call33 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call31, i8* noundef %8) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then39.sink.split, label %cleanup

err:                                              ; preds = %if.end11
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_TRUST_add, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br i1 %cmp, label %if.then39, label %cleanup

if.then39.sink.split:                             ; preds = %if.end30, %land.lhs.true
  %.sink = phi i32 [ 168, %land.lhs.true ], [ 172, %if.end30 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_TRUST_add, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %if.then39

if.then39:                                        ; preds = %if.then39.sink.split, %err
  %9 = load i8*, i8** %name13, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #7
  %10 = bitcast %struct.x509_trust_st* %trtmp.0 to i8*
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 180) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then39, %if.end16, %if.end30, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.end30 ], [ 1, %if.end16 ], [ 0, %if.then39 ], [ 0, %err ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @tr_cmp(%struct.x509_trust_st** nocapture noundef readonly %a, %struct.x509_trust_st** nocapture noundef readonly %b) #5 {
entry:
  %0 = load %struct.x509_trust_st*, %struct.x509_trust_st** %a, align 8, !tbaa !4
  %trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %0, i64 0, i32 0
  %1 = load i32, i32* %trust, align 8, !tbaa !27
  %2 = load %struct.x509_trust_st*, %struct.x509_trust_st** %b, align 8, !tbaa !4
  %trust1 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %2, i64 0, i32 0
  %3 = load i32, i32* %trust1, align 8, !tbaa !27
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @X509_TRUST_cleanup() local_unnamed_addr #2 {
entry:
  %0 = load %struct.stack_st_X509_TRUST*, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_TRUST_sk_type(%struct.stack_st_X509_TRUST* noundef %0) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_trust_st*)* @trtable_free to void (i8*)*)) #7
  store %struct.stack_st_X509_TRUST* null, %struct.stack_st_X509_TRUST** @trtable, align 8, !tbaa !4
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @trtable_free(%struct.x509_trust_st* noundef %p) #2 {
entry:
  %cmp = icmp eq %struct.x509_trust_st* %p, null
  br i1 %cmp, label %if.end7, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %p, i64 0, i32 1
  %0 = load i32, i32* %flags, align 4, !tbaa !29
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %and3 = and i32 %0, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then1
  %name = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %p, i64 0, i32 3
  %1 = load i8*, i8** %name, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 191) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then1
  %2 = bitcast %struct.x509_trust_st* %p to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #7
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.end6, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_TRUST_get_flags(%struct.x509_trust_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %xp, i64 0, i32 1
  %0 = load i32, i32* %flags, align 4, !tbaa !29
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_TRUST_get0_name(%struct.x509_trust_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %xp, i64 0, i32 3
  %0 = load i8*, i8** %name, align 8, !tbaa !30
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_TRUST_get_trust(%struct.x509_trust_st* nocapture noundef readonly %xp) local_unnamed_addr #5 {
entry:
  %trust = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %xp, i64 0, i32 0
  %0 = load i32, i32* %trust, align 8, !tbaa !27
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trust_compat(%struct.x509_trust_st* nocapture noundef readnone %trust, %struct.x509_st* noundef %x, i32 noundef %flags) #2 {
entry:
  %call = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef -1, i32 noundef 0) #7
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 4
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !33
  %and2 = and i32 %0, 8192
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.else
  %retval.0 = phi i32 [ 3, %if.else ], [ 3, %entry ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trust_1oidany(%struct.x509_trust_st* nocapture noundef readonly %trust, %struct.x509_st* noundef %x, i32 noundef %flags) #2 {
entry:
  %or = or i32 %flags, 24
  %arg1 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trust, i64 0, i32 4
  %0 = load i32, i32* %arg1, align 8, !tbaa !31
  %call = tail call i32 @obj_trust(i32 noundef %0, %struct.x509_st* noundef %x, i32 noundef %or) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trust_1oid(%struct.x509_trust_st* nocapture noundef readonly %trust, %struct.x509_st* noundef %x, i32 noundef %flags) #2 {
entry:
  %and = and i32 %flags, -25
  %arg1 = getelementptr inbounds %struct.x509_trust_st, %struct.x509_trust_st* %trust, i64 0, i32 4
  %0 = load i32, i32* %arg1, align 8, !tbaa !31
  %call = tail call i32 @obj_trust(i32 noundef %0, %struct.x509_st* noundef %x, i32 noundef %and) #6
  ret i32 %call
}

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"x509_trust_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !10, i64 24, !5, i64 32}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !5, i64 336}
!12 = !{!"x509_st", !13, i64 0, !16, i64 136, !14, i64 152, !19, i64 176, !6, i64 192, !20, i64 200, !15, i64 216, !15, i64 224, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !10, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!13 = !{!"x509_cinf_st", !5, i64 0, !14, i64 8, !16, i64 32, !5, i64 48, !17, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !18, i64 112}
!14 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !15, i64 16}
!15 = !{!"long", !6, i64 0}
!16 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!17 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!18 = !{!"ASN1_ENCODING_st", !5, i64 0, !15, i64 8, !10, i64 16}
!19 = !{!"x509_sig_info_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!20 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!21 = !{!22, !5, i64 8}
!22 = !{!"x509_cert_aux_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!22, !5, i64 0}
!26 = distinct !{!26, !24}
!27 = !{!9, !10, i64 0}
!28 = !{!10, !10, i64 0}
!29 = !{!9, !10, i64 4}
!30 = !{!9, !5, i64 16}
!31 = !{!9, !10, i64 24}
!32 = !{!9, !5, i64 32}
!33 = !{!12, !10, i64 232}
