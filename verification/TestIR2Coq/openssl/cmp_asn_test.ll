; ModuleID = 'test/cmp_asn_test.c'
source_filename = "test/cmp_asn_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i8*, i32, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@rand_data = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"test_cmp_asn1_get_int\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"test_ASN1_OCTET_STRING_set\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"test_ASN1_OCTET_STRING_set_tgt_is_src\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"test/cmp_asn_test.c\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"asn1integer\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"77\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ossl_cmp_asn1_get_int(asn1integer)\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"fixture->tgt_string = ASN1_OCTET_STRING_new()\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"fixture->src_string = ASN1_OCTET_STRING_new()\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"ASN1_OCTET_STRING_set(fixture->src_string, rand_data, sizeof(rand_data))\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"fixture->expected\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"ossl_cmp_asn1_octet_string_set1(&fixture->tgt_string, fixture->src_string)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"ASN1_OCTET_STRING_cmp(fixture->tgt_string, fixture->src_string)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_cmp_asn1_get_int) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_ASN1_OCTET_STRING_set) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_ASN1_OCTET_STRING_set_tgt_is_src) #3
  ret i32 1
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmp_asn1_get_int() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_cmp_asn1_get_int_test() #4
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ASN1_OCTET_STRING_set() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call1 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #3
  %tgt_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.asn1_string_st* %call1, %struct.asn1_string_st** %tgt_string, align 8, !tbaa !9
  %0 = bitcast %struct.asn1_string_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #3
  %src_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.asn1_string_st* %call3, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %1 = bitcast %struct.asn1_string_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* noundef %1) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %call8 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #3
  %cmp9 = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup.sink.split, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false6
  %call17 = tail call fastcc i32 @execute_CMP_ASN1_OCTET_STRING_set1_test(%struct.test_fixture* noundef nonnull %call) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end, %if.then16
  %retval.0.ph = phi i32 [ %call17, %if.then16 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false6 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ASN1_OCTET_STRING_set_tgt_is_src() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call1 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #3
  %src_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  store %struct.asn1_string_st* %call1, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %0 = bitcast %struct.asn1_string_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %tgt_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.asn1_string_st* %1, %struct.asn1_string_st** %tgt_string, align 8, !tbaa !9
  %tobool4.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool4.not, label %cleanup.sink.split, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #3
  %cmp8 = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup.sink.split, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false5
  %call16 = tail call fastcc i32 @execute_CMP_ASN1_OCTET_STRING_set1_test(%struct.test_fixture* noundef nonnull %call) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end, %if.then15
  %retval.0.ph = phi i32 [ %call16, %if.then15 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false5 ]
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 28) #3
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.test_fixture*
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.test_fixture* [ %0, %if.end ], [ null, %entry ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_cmp_asn1_get_int_test() unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #3
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %call, i64 noundef 77) #3
  %call3 = tail call i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef %call) #3
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 noundef 77, i32 noundef %call3) #3
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %src_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %0) #3
  %tgt_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tgt_string, align 8, !tbaa !9
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %cmp.not = icmp eq %struct.asn1_string_st* %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 40) #3
  ret void
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare dso_local i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_asn1_get_int(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_CMP_ASN1_OCTET_STRING_set1_test(%struct.test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load i32, i32* %expected, align 8, !tbaa !3
  %tgt_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %src_string = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %call = tail call i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef nonnull %tgt_string, %struct.asn1_string_st* noundef %1) #3
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i32 noundef %0, i32 noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %expected, align 8, !tbaa !3
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tgt_string, align 8, !tbaa !9
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %src_string, align 8, !tbaa !10
  %call6 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %3, %struct.asn1_string_st* noundef %4) #3
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0, i32 noundef %call6) #3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call7, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @ossl_cmp_asn1_octet_string_set1(%struct.asn1_string_st** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 8}
!4 = !{!"test_fixture", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 24}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 24}
!10 = !{!4, !5, i64 16}
!11 = !{!4, !5, i64 0}
