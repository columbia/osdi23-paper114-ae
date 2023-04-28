; ModuleID = 'test/asn1_string_table_test.c'
source_filename = "test/asn1_string_table_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_table_st = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"test_string_tbl\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"test/asn1_string_table_test.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"asn1 string table: ASN1_STRING_TABLE_get non-exist nid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"asn1 string table: add NID(%d) failed\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"asn1 string table: get NID(%d) failed\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_string_tbl) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_string_tbl() #0 {
entry:
  %call = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef 12345678) #2
  %0 = bitcast %struct.asn1_string_table_st* %call to i8*
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0)) #2
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ASN1_STRING_TABLE_add(i32 noundef 12345678, i64 noundef -1, i64 noundef -1, i64 noundef 4097, i64 noundef 0) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 noundef 12345678) #2
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ASN1_STRING_TABLE_add(i32 noundef 87654321, i64 noundef -1, i64 noundef -1, i64 noundef 4097, i64 noundef 0) #2
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv9) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 noundef 87654321) #2
  br label %out

if.end13:                                         ; preds = %if.end6
  %call14 = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef 12345678) #2
  %1 = bitcast %struct.asn1_string_table_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef 12345678) #2
  br label %out

if.end18:                                         ; preds = %if.end13
  %call19 = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef 87654321) #2
  %2 = bitcast %struct.asn1_string_table_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef 87654321) #2
  br label %out

if.end23:                                         ; preds = %if.end18
  tail call void @ASN1_STRING_TABLE_cleanup() #2
  %call24 = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef 12345678) #2
  %3 = bitcast %struct.asn1_string_table_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef 12345678) #2
  br label %out

if.end28:                                         ; preds = %if.end23
  %call29 = tail call %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef 87654321) #2
  %4 = bitcast %struct.asn1_string_table_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4) #2
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %out

if.then32:                                        ; preds = %if.end28
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef 87654321) #2
  br label %out

out:                                              ; preds = %if.end28, %if.then32, %if.then27, %if.then22, %if.then17, %if.then12, %if.then5, %if.then
  %rv.0 = phi i32 [ 0, %if.then32 ], [ 0, %if.then27 ], [ 0, %if.then22 ], [ 0, %if.then17 ], [ 0, %if.then12 ], [ 0, %if.then5 ], [ 0, %if.then ], [ 1, %if.end28 ]
  ret i32 %rv.0
}

declare dso_local %struct.asn1_string_table_st* @ASN1_STRING_TABLE_get(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @ASN1_STRING_TABLE_add(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_STRING_TABLE_cleanup() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
