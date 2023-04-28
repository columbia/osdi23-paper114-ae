; ModuleID = 'crypto/x509/pcy_map.c'
source_filename = "crypto/x509/pcy_map.c"
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
%struct.X509_POLICY_CACHE_st = type { %struct.X509_POLICY_DATA_st*, %struct.stack_st_X509_POLICY_DATA*, i64, i64, i64 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_POLICY_DATA = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_POLICY_MAPPING = type opaque
%struct.stack_st = type opaque
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }
%struct.POLICY_MAPPING_st = type { %struct.asn1_object_st*, %struct.asn1_object_st* }

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_policy_cache_set_mapping(%struct.x509_st* nocapture noundef %x, %struct.stack_st_POLICY_MAPPING* noundef %maps) local_unnamed_addr #0 {
entry:
  %policy_cache = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 14
  %0 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef %maps) #3
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call393 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp494 = icmp sgt i32 %call393, 0
  br i1 %cmp494, label %for.body.lr.ph, label %if.end55

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %0, i64 0, i32 0
  %data31 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %0, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.095) #4
  %subjectDomainPolicy = getelementptr inbounds i8, i8* %call6, i64 8
  %1 = bitcast i8* %subjectDomainPolicy to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %1, align 8, !tbaa !18
  %call7 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  %cmp8 = icmp eq i32 %call7, 746
  br i1 %cmp8, label %land.lhs.true48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %issuerDomainPolicy = bitcast i8* %call6 to %struct.asn1_object_st**
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %issuerDomainPolicy, align 8, !tbaa !20
  %call9 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %3) #4
  %cmp10 = icmp eq i32 %call9, 746
  br i1 %cmp10, label %land.lhs.true48, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %issuerDomainPolicy, align 8, !tbaa !20
  %call14 = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_cache_find_data(%struct.X509_POLICY_CACHE_st* noundef %0, %struct.asn1_object_st* noundef %4) #4
  %cmp15 = icmp eq %struct.X509_POLICY_DATA_st* %call14, null
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end12
  %5 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !21
  %tobool.not = icmp eq %struct.X509_POLICY_DATA_st* %5, null
  br i1 %tobool.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %6 = load %struct.asn1_object_st*, %struct.asn1_object_st** %issuerDomainPolicy, align 8, !tbaa !20
  %flags = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %5, i64 0, i32 0
  %7 = load i32, i32* %flags, align 8, !tbaa !23
  %and = and i32 %7, 16
  %call22 = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef null, %struct.asn1_object_st* noundef %6, i32 noundef %and) #4
  %cmp23 = icmp eq %struct.X509_POLICY_DATA_st* %call22, null
  br i1 %cmp23, label %if.end55, label %if.end25

if.end25:                                         ; preds = %if.then19
  %8 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !21
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %8, i64 0, i32 2
  %9 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !25
  %qualifier_set27 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call22, i64 0, i32 2
  store %struct.stack_st_POLICYQUALINFO* %9, %struct.stack_st_POLICYQUALINFO** %qualifier_set27, align 8, !tbaa !25
  %flags28 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call22, i64 0, i32 0
  %10 = load i32, i32* %flags28, align 8, !tbaa !23
  %or30 = or i32 %10, 6
  store i32 %or30, i32* %flags28, align 8, !tbaa !23
  %11 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data31, align 8, !tbaa !26
  %call32 = tail call fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef %11, %struct.X509_POLICY_DATA_st* noundef nonnull %call22) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end25
  tail call void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef nonnull %call22) #4
  br label %if.end55

if.else:                                          ; preds = %if.end12
  %flags36 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call14, i64 0, i32 0
  %12 = load i32, i32* %flags36, align 8, !tbaa !23
  %or37 = or i32 %12, 1
  store i32 %or37, i32* %flags36, align 8, !tbaa !23
  br label %if.end38

if.end38:                                         ; preds = %if.end25, %if.else
  %data.0 = phi %struct.X509_POLICY_DATA_st* [ %call22, %if.end25 ], [ %call14, %if.else ]
  %expected_policy_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data.0, i64 0, i32 3
  %13 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !27
  %call39 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %13) #3
  %14 = bitcast i8* %subjectDomainPolicy to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !18
  %call42 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call39, i8* noundef %15) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end55, label %if.end45

if.end45:                                         ; preds = %if.end38
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %1, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end45
  %inc = add nuw nsw i32 %i.095, 1
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %if.end55, !llvm.loop !28

land.lhs.true48:                                  ; preds = %lor.lhs.false, %for.body, %entry
  %lock = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 22
  %16 = load i8*, i8** %lock, align 8, !tbaa !30
  %call49 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %16) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %17 = load i32, i32* %ex_flags, align 8, !tbaa !31
  %or52 = or i32 %17, 2048
  store i32 %or52, i32* %ex_flags, align 8, !tbaa !31
  %18 = load i8*, i8** %lock, align 8, !tbaa !30
  %call54 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %18) #4
  br label %if.end55

if.end55:                                         ; preds = %if.end38, %if.then19, %for.inc, %for.cond.preheader, %if.then34, %if.then51, %land.lhs.true48
  %ret.092 = phi i32 [ -1, %if.then51 ], [ -1, %land.lhs.true48 ], [ 0, %if.then34 ], [ 1, %for.cond.preheader ], [ 0, %if.end38 ], [ 0, %if.then19 ], [ 1, %for.inc ]
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef %maps) #3
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call56, void (i8*)* noundef bitcast (void (%struct.POLICY_MAPPING_st*)* @POLICY_MAPPING_free to void (i8*)*)) #4
  ret i32 %ret.092
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_POLICY_MAPPING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.X509_POLICY_DATA_st* @ossl_policy_cache_find_data(%struct.X509_POLICY_CACHE_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef %sk, %struct.X509_POLICY_DATA_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %1 = bitcast %struct.X509_POLICY_DATA_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #4
  ret i32 %call
}

declare void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICY_MAPPING_sk_type(%struct.stack_st_POLICY_MAPPING* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_POLICY_MAPPING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @POLICY_MAPPING_free(%struct.POLICY_MAPPING_st* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 264}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!19, !7, i64 8}
!19 = !{!"POLICY_MAPPING_st", !7, i64 0, !7, i64 8}
!20 = !{!19, !7, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"X509_POLICY_CACHE_st", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!23 = !{!24, !11, i64 0}
!24 = !{!"X509_POLICY_DATA_st", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!25 = !{!24, !7, i64 16}
!26 = !{!22, !7, i64 8}
!27 = !{!24, !7, i64 24}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!5, !7, i64 344}
!31 = !{!5, !11, i64 232}
