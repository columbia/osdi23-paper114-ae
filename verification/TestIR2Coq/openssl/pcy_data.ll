; ModuleID = 'crypto/x509/pcy_data.c'
source_filename = "crypto/x509/pcy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st = type opaque
%struct.POLICYQUALINFO_st = type { %struct.asn1_object_st*, %union.anon }
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/pcy_data.c\00", align 1
@__func__.ossl_policy_data_new = private unnamed_addr constant [21 x i8] c"ossl_policy_data_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_POLICY_DATA_st* %data, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 1
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !4
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #3
  %flags = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 0
  %1 = load i32, i32* %flags, align 8, !tbaa !10
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 2
  %2 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !11
  %call = tail call fastcc %struct.stack_st* @ossl_check_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef %2) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.POLICYQUALINFO_st*)* @POLICYQUALINFO_free to void (i8*)*)) #3
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %expected_policy_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 3
  %3 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !12
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call4, void (i8*)* noundef bitcast (void (%struct.asn1_object_st*)* @ASN1_OBJECT_free to void (i8*)*)) #3
  %4 = bitcast %struct.X509_POLICY_DATA_st* %data to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #3
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICYQUALINFO_sk_type(%struct.stack_st_POLICYQUALINFO* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_POLICYQUALINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @POLICYQUALINFO_free(%struct.POLICYQUALINFO_st* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef %policy, %struct.asn1_object_st* noundef %cid, i32 noundef %crit) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.POLICYINFO_st* %policy, null
  %cmp1 = icmp eq %struct.asn1_object_st* %cid, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef nonnull %cid) #3
  %cmp3 = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %id.0 = phi %struct.asn1_object_st* [ %call, %if.then2 ], [ null, %if.end ]
  %call7 = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #3
  %0 = bitcast i8* %call7 to %struct.X509_POLICY_DATA_st*
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %id.0) #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_policy_data_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  %expected_policy_set = getelementptr inbounds i8, i8* %call7, i64 24
  %1 = bitcast i8* %expected_policy_set to %struct.stack_st**
  store %struct.stack_st* %call11, %struct.stack_st** %1, align 8, !tbaa !12
  %cmp13 = icmp eq %struct.stack_st* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #3
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %id.0) #3
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_policy_data_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %tobool16.not = icmp eq i32 %crit, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  %flags = bitcast i8* %call7 to i32*
  store i32 16, i32* %flags, align 8, !tbaa !10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %tobool19.not = icmp eq %struct.asn1_object_st* %id.0, null
  br i1 %tobool19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.end18
  %valid_policy = getelementptr inbounds i8, i8* %call7, i64 8
  %2 = bitcast i8* %valid_policy to %struct.asn1_object_st**
  store %struct.asn1_object_st* %id.0, %struct.asn1_object_st** %2, align 8, !tbaa !4
  br label %if.end24

if.else21:                                        ; preds = %if.end18
  %policyid = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %policy, i64 0, i32 0
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %policyid, align 8, !tbaa !13
  %valid_policy22 = getelementptr inbounds i8, i8* %call7, i64 8
  %4 = bitcast i8* %valid_policy22 to %struct.asn1_object_st**
  store %struct.asn1_object_st* %3, %struct.asn1_object_st** %4, align 8, !tbaa !4
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %policyid, align 8, !tbaa !13
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then20
  br i1 %cmp, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end24
  %qualifiers = getelementptr inbounds %struct.POLICYINFO_st, %struct.POLICYINFO_st* %policy, i64 0, i32 1
  %5 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifiers, align 8, !tbaa !15
  %qualifier_set = getelementptr inbounds i8, i8* %call7, i64 16
  %6 = bitcast i8* %qualifier_set to %struct.stack_st_POLICYQUALINFO**
  store %struct.stack_st_POLICYQUALINFO* %5, %struct.stack_st_POLICYQUALINFO** %6, align 8, !tbaa !11
  store %struct.stack_st_POLICYQUALINFO* null, %struct.stack_st_POLICYQUALINFO** %qualifiers, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then26, %if.then2, %entry, %if.then14, %if.then9
  %retval.0 = phi %struct.X509_POLICY_DATA_st* [ null, %if.then9 ], [ null, %if.then14 ], [ null, %entry ], [ null, %if.then2 ], [ %0, %if.then26 ], [ %0, %if.end24 ]
  ret %struct.X509_POLICY_DATA_st* %retval.0
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"X509_POLICY_DATA_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !9, i64 16}
!12 = !{!5, !9, i64 24}
!13 = !{!14, !9, i64 0}
!14 = !{!"POLICYINFO_st", !9, i64 0, !9, i64 8}
!15 = !{!14, !9, i64 8}
