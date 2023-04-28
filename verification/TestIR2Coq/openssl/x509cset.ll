; ModuleID = 'crypto/x509/x509cset.c'
source_filename = "crypto/x509/x509cset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_X509_REVOKED = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.0, %struct.X509_name_st* }
%union.anon.0 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_set_version(%struct.X509_crl_st* noundef %x, i64 noundef %version) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_crl_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %version1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version1, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #8
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %version1, align 8, !tbaa !4
  %cmp6 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end
  %1 = phi %struct.asn1_string_st* [ %call, %if.then3 ], [ %0, %if.end ]
  %call12 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %1, i64 noundef %version) #8
  br label %return

return:                                           ; preds = %if.then3, %entry, %if.end9
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ 0, %entry ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_set_issuer_name(%struct.X509_crl_st* noundef %x, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_crl_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %issuer = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 2
  %call = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %issuer, %struct.X509_name_st* noundef %name) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_set1_lastUpdate(%struct.X509_crl_st* noundef %x, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_crl_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %lastUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 3
  %call = tail call i32 @ossl_x509_set1_time(%struct.asn1_string_st** noundef nonnull %lastUpdate, %struct.asn1_string_st* noundef %tm) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_x509_set1_time(%struct.asn1_string_st** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_set1_nextUpdate(%struct.X509_crl_st* noundef %x, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_crl_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nextUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %x, i64 0, i32 0, i32 4
  %call = tail call i32 @ossl_x509_set1_time(%struct.asn1_string_st** noundef nonnull %nextUpdate, %struct.asn1_string_st* noundef %tm) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_sort(%struct.X509_crl_st* nocapture noundef %c) local_unnamed_addr #0 {
entry:
  %revoked = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %c, i64 0, i32 0, i32 5
  %0 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %0) #9
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call) #8
  %1 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !15
  %call318 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %1) #9
  %call419 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call318) #8
  %cmp20 = icmp sgt i32 %call419, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.021 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %2 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !15
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %2) #9
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %i.021) #8
  %sequence = getelementptr inbounds i8, i8* %call8, i64 52
  %3 = bitcast i8* %sequence to i32*
  store i32 %i.021, i32* %3, align 4, !tbaa !16
  %inc = add nuw nsw i32 %i.021, 1
  %4 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %4) #9
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #8
  %cmp = icmp slt i32 %inc, %call4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !18

for.end:                                          ; preds = %for.body, %entry
  %modified = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %c, i64 0, i32 0, i32 7, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @X509_CRL_up_ref(%struct.X509_crl_st* nocapture noundef %crl) local_unnamed_addr #4 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %references = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 3
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !21
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @X509_CRL_get_version(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !4
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %0) #8
  ret i64 %call
}

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %lastUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %lastUpdate, align 8, !tbaa !22
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %nextUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextUpdate, align 8, !tbaa !23
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_CRL_get_lastUpdate(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %lastUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %lastUpdate, align 8, !tbaa !22
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_CRL_get_nextUpdate(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %nextUpdate = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 4
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nextUpdate, align 8, !tbaa !23
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %issuer = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 2
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %issuer, align 8, !tbaa !24
  ret %struct.X509_name_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @X509_CRL_get0_extensions(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %extensions = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 6
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !25
  ret %struct.stack_st_X509_EXTENSION* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #6 {
entry:
  %revoked = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 5
  %0 = load %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_REVOKED** %revoked, align 8, !tbaa !15
  ret %struct.stack_st_X509_REVOKED* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_CRL_get0_signature(%struct.X509_crl_st* noundef %crl, %struct.asn1_string_st** noundef writeonly %psig, %struct.X509_algor_st** noundef writeonly %palg) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp eq %struct.asn1_string_st** %psig, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %signature = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 2
  store %struct.asn1_string_st* %signature, %struct.asn1_string_st** %psig, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.X509_algor_st** %palg, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %sig_alg = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 1
  store %struct.X509_algor_st* %sig_alg, %struct.X509_algor_st** %palg, align 8, !tbaa !26
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_CRL_get_signature_nid(%struct.X509_crl_st* nocapture noundef readonly %crl) local_unnamed_addr #0 {
entry:
  %algorithm = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 1, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !27
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %0) #8
  ret i32 %call
}

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @X509_REVOKED_get0_revocationDate(%struct.x509_revoked_st* nocapture noundef readonly %x) local_unnamed_addr #6 {
entry:
  %revocationDate = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationDate, align 8, !tbaa !28
  ret %struct.asn1_string_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_set_revocationDate(%struct.x509_revoked_st* noundef %x, %struct.asn1_string_st* noundef %tm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_revoked_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %revocationDate = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationDate, align 8, !tbaa !28
  %cmp1.not = icmp eq %struct.asn1_string_st* %0, %tm
  br i1 %cmp1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %tm) #8
  %cmp3.not = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.then2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %revocationDate, align 8, !tbaa !28
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %1) #8
  store %struct.asn1_string_st* %call, %struct.asn1_string_st** %revocationDate, align 8, !tbaa !28
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.then4, %if.end
  %in.0 = phi %struct.asn1_string_st* [ %call, %if.then4 ], [ null, %if.then2 ], [ %tm, %if.end ]
  %cmp9 = icmp ne %struct.asn1_string_st* %in.0, null
  %conv = zext i1 %cmp9 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %conv, %if.end8 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.asn1_string_st* @X509_REVOKED_get0_serialNumber(%struct.x509_revoked_st* noundef readnone %x) local_unnamed_addr #3 {
entry:
  %serialNumber = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 0
  ret %struct.asn1_string_st* %serialNumber
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REVOKED_set_serialNumber(%struct.x509_revoked_st* noundef %x, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_revoked_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %serialNumber = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %x, i64 0, i32 0
  %cmp1.not = icmp eq %struct.asn1_string_st* %serialNumber, %serial
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %serialNumber, %struct.asn1_string_st* noundef %serial) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_EXTENSION* @X509_REVOKED_get0_extensions(%struct.x509_revoked_st* nocapture noundef readonly %r) local_unnamed_addr #6 {
entry:
  %extensions = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %r, i64 0, i32 2
  %0 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !29
  ret %struct.stack_st_X509_EXTENSION* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_re_X509_CRL_tbs(%struct.X509_crl_st* noundef %crl, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %crl1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0
  %modified = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 0, i32 7, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !20
  %call = tail call i32 @i2d_X509_CRL_INFO(%struct.X509_crl_info_st* noundef %crl1, i8** noundef %pp) #8
  ret i32 %call
}

declare i32 @i2d_X509_CRL_INFO(%struct.X509_crl_info_st* noundef, i8** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 0}
!5 = !{!"X509_crl_st", !6, i64 0, !10, i64 88, !14, i64 104, !8, i64 128, !13, i64 132, !7, i64 136, !7, i64 144, !13, i64 152, !13, i64 156, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240}
!6 = !{!"X509_crl_info_st", !7, i64 0, !10, i64 8, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!11 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !13, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !7, i64 8, !12, i64 16}
!15 = !{!5, !7, i64 48}
!16 = !{!17, !13, i64 52}
!17 = !{!"x509_revoked_st", !14, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !13, i64 48, !13, i64 52}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!5, !13, i64 80}
!21 = !{!13, !13, i64 0}
!22 = !{!5, !7, i64 32}
!23 = !{!5, !7, i64 40}
!24 = !{!5, !7, i64 24}
!25 = !{!5, !7, i64 56}
!26 = !{!7, !7, i64 0}
!27 = !{!5, !7, i64 88}
!28 = !{!17, !7, i64 24}
!29 = !{!17, !7, i64 32}
