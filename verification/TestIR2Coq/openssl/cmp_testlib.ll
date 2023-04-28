; ModuleID = 'test/helpers/cmp_testlib.c'
source_filename = "test/helpers/cmp_testlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque

@.str = private unnamed_addr constant [27 x i8] c"test/helpers/cmp_testlib.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"(msg = OSSL_CMP_MSG_read(file, libctx, NULL))\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %file, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_read(i8* noundef %file, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef null) #3
  %0 = bitcast %struct.ossl_cmp_msg_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #3
  ret %struct.ossl_cmp_msg_st* %call
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_read(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @valid_asn1_encoding(%struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_cmp_msg_st* %msg, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i32 @i2d_OSSL_CMP_MSG(%struct.ossl_cmp_msg_st* noundef nonnull %msg, i8** noundef null) #3
  %cmp1 = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

declare dso_local i32 @i2d_OSSL_CMP_MSG(%struct.ossl_cmp_msg_st* noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @STACK_OF_X509_cmp(%struct.stack_st_X509* noundef %sk1, %struct.stack_st_X509* noundef %sk2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %sk1, %sk2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st_X509* %sk1, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq %struct.stack_st_X509* %sk2, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk1) #4
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk2) #4
  %call9 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #3
  %sub = sub nsw i32 %call7, %call9
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %call1347 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %cmp1448 = icmp sgt i32 %call1347, 0
  br i1 %cmp1448, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.049 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.049) #3
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.049) #3
  %cmp19.not = icmp eq i8* %call16, %call18
  br i1 %cmp19.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %for.body
  %0 = bitcast i8* %call18 to %struct.x509_st*
  %1 = bitcast i8* %call16 to %struct.x509_st*
  %call21 = tail call i32 @X509_cmp(%struct.x509_st* noundef %1, %struct.x509_st* noundef %0) #3
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body, %if.then20
  %inc = add nuw nsw i32 %i.049, 1
  %call13 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #3
  %cmp14 = icmp slt i32 %inc, %call13
  br i1 %cmp14, label %for.body, label %cleanup, !llvm.loop !3

cleanup:                                          ; preds = %if.then20, %for.inc, %for.cond.preheader, %if.end6, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ 1, %if.end3 ], [ %sub, %if.end6 ], [ 0, %for.cond.preheader ], [ %call21, %if.then20 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @STACK_OF_X509_push1(%struct.stack_st_X509* noundef %sk, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %sk, null
  %cmp1 = icmp eq %struct.x509_st* %cert, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %cert) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk) #4
  %0 = bitcast %struct.x509_st* %cert to i8*
  %call6 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call4, i8* noundef %0) #3
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end3
  tail call void @X509_free(%struct.x509_st* noundef nonnull %cert) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then8, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %call6, %if.then8 ], [ %call6, %if.end3 ]
  ret i32 %retval.0
}

declare dso_local i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_to_bio_out(i8* noundef %func, i8* noundef %file, i32 noundef %line, i32 noundef %level, i8* noundef %msg) local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !5
  %call = tail call i32 @OSSL_CMP_print_to_bio(%struct.bio_st* noundef %0, i8* noundef %func, i8* noundef %file, i32 noundef %line, i32 noundef %level, i8* noundef %msg) #3
  ret i32 %call
}

declare dso_local i32 @OSSL_CMP_print_to_bio(%struct.bio_st* noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
