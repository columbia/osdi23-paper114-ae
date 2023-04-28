; ModuleID = 'test/cmp_status_test.c'
source_filename = "test/cmp_status_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i8*, i32, i8*, i8*, i32 }
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [11 x i8] c"test_PKISI\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"PKIStatus: revocation notification - a revocation of the cert has occurred\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"this is an additional text describing the failure\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"test/cmp_status_test.c\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"si = OSSL_CMP_STATUSINFO_new(fixture->pkistatus, fixture->pkifailure, fixture->text)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"fixture->pkistatus\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"fixture->str\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"ossl_cmp_PKIStatus_to_string(status)\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"statusString = sk_ASN1_UTF8STRING_value(ossl_cmp_pkisi_get0_statusString(si), 0)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"fixture->text\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"(char *)statusString->data\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"fixture->pkifailure\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"ossl_cmp_pkisi_get_pkifailureinfo(si)\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"(fixture->pkifailure >> i) & 1\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"ossl_cmp_pkisi_check_pkifailureinfo(si, i)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_PKISI) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PKISI() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up() #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkistatus = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 5, i32* %pkistatus, align 8, !tbaa !3
  %str = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8** %str, align 8, !tbaa !9
  %text = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8** %text, align 8, !tbaa !10
  %pkifailure = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 4
  store i32 4194336, i32* %pkifailure, align 8, !tbaa !11
  %call3 = tail call fastcc i32 @execute_PKISI_test(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up() unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 26) #4
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.test_fixture*
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %test_case_name2, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.test_fixture* [ %0, %if.end ], [ null, %entry ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_PKISI_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %pkistatus = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load i32, i32* %pkistatus, align 8, !tbaa !3
  %pkifailure = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 4
  %1 = load i32, i32* %pkifailure, align 8, !tbaa !11
  %text = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %2 = load i8*, i8** %text, align 8, !tbaa !10
  %call = tail call %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4
  %3 = bitcast %struct.ossl_cmp_pkisi_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef %call) #4
  %4 = load i32, i32* %pkistatus, align 8, !tbaa !3
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef %4, i32 noundef %call2) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %str = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %5 = load i8*, i8** %str, align 8, !tbaa !9
  %call6 = tail call i8* @ossl_cmp_PKIStatus_to_string(i32 noundef %call2) #4
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5, i8* noundef %call6) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call %struct.stack_st_ASN1_UTF8STRING* @ossl_cmp_pkisi_get0_statusString(%struct.ossl_cmp_pkisi_st* noundef %call) #4
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %call11) #5
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef 0) #4
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call13) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end10
  %6 = load i8*, i8** %text, align 8, !tbaa !10
  %call19 = tail call i64 @strlen(i8* noundef %6) #6
  %data = getelementptr inbounds i8, i8* %call13, i64 8
  %7 = bitcast i8* %data to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !13
  %length = bitcast i8* %call13 to i32*
  %9 = load i32, i32* %length, align 8, !tbaa !16
  %conv = sext i32 %9 to i64
  %call20 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* noundef %6, i64 noundef %call19, i8* noundef %8, i64 noundef %conv) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false16
  %10 = load i32, i32* %pkifailure, align 8, !tbaa !11
  %call25 = tail call i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef %call) #4
  %call26 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 noundef %10, i32 noundef %call25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %end, label %for.body, !llvm.loop !17

for.body:                                         ; preds = %if.end23, %for.cond
  %i.060 = phi i32 [ %inc, %for.cond ], [ 0, %if.end23 ]
  %11 = load i32, i32* %pkifailure, align 8, !tbaa !11
  %shr59 = lshr i32 %11, %i.060
  %and = and i32 %shr59, 1
  %call32 = tail call i32 @ossl_cmp_pkisi_check_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef %call, i32 noundef %i.060) #4
  %call33 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef %and, i32 noundef %call32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %for.cond

end:                                              ; preds = %for.cond, %for.body, %if.end23, %if.end10, %lor.lhs.false16, %if.end, %lor.lhs.false, %entry
  %res.0 = phi i32 [ 0, %if.end23 ], [ 0, %lor.lhs.false16 ], [ 0, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  tail call void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef %call) #4
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 34) #4
  ret void
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_pkisi_st* @OSSL_CMP_STATUSINFO_new(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_pkisi_get_status(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @ossl_cmp_PKIStatus_to_string(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.stack_st_ASN1_UTF8STRING* @ossl_cmp_pkisi_get0_statusString(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_pkisi_check_pkifailureinfo(%struct.ossl_cmp_pkisi_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_PKISI_free(%struct.ossl_cmp_pkisi_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 8}
!4 = !{!"test_fixture", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 24, !8, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 16}
!10 = !{!4, !5, i64 24}
!11 = !{!4, !8, i64 32}
!12 = !{!4, !5, i64 0}
!13 = !{!14, !5, i64 8}
!14 = !{!"asn1_string_st", !8, i64 0, !8, i64 4, !5, i64 8, !15, i64 16}
!15 = !{!"long", !6, i64 0}
!16 = !{!14, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
