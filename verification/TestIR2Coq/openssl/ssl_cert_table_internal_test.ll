; ModuleID = 'test/ssl_cert_table_internal_test.c'
source_filename = "test/ssl_cert_table_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SSL_CERT_LOOKUP = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"test_ssl_cert_table\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"test/ssl_cert_table_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"OSSL_NELEM(ssl_cert_info)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SSL_PKEY_NUM\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SSL_PKEY_RSA\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SSL_PKEY_DSA_SIGN\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SSL_PKEY_ECC\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SSL_PKEY_GOST01\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SSL_PKEY_GOST12_256\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"SSL_PKEY_GOST12_512\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SSL_PKEY_ED25519\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SSL_PKEY_ED448\00", align 1
@ssl_cert_info = internal unnamed_addr constant [9 x %struct.SSL_CERT_LOOKUP] [%struct.SSL_CERT_LOOKUP { i32 6, i32 1 }, %struct.SSL_CERT_LOOKUP { i32 912, i32 1 }, %struct.SSL_CERT_LOOKUP { i32 116, i32 2 }, %struct.SSL_CERT_LOOKUP { i32 408, i32 8 }, %struct.SSL_CERT_LOOKUP { i32 811, i32 32 }, %struct.SSL_CERT_LOOKUP { i32 979, i32 128 }, %struct.SSL_CERT_LOOKUP { i32 980, i32 128 }, %struct.SSL_CERT_LOOKUP { i32 1087, i32 8 }, %struct.SSL_CERT_LOOKUP { i32 1088, i32 8 }], align 16
@.str.12 = private unnamed_addr constant [55 x i8] c"Invalid table entry for certificate type %s, index %zu\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Expected auth mask 0x%x, got 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_ssl_cert_table) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ssl_cert_table() #0 {
entry:
  %call = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 noundef 9, i64 noundef 9) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @do_test_cert_table(i32 noundef 6, i32 noundef 1, i64 noundef 0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @do_test_cert_table(i32 noundef 116, i32 noundef 2, i64 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call fastcc i32 @do_test_cert_table(i32 noundef 408, i32 noundef 8, i64 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = tail call fastcc i32 @do_test_cert_table(i32 noundef 811, i32 noundef 32, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = tail call fastcc i32 @do_test_cert_table(i32 noundef 979, i32 noundef 128, i64 noundef 5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call16 = tail call fastcc i32 @do_test_cert_table(i32 noundef 980, i32 noundef 128, i64 noundef 6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call19 = tail call fastcc i32 @do_test_cert_table(i32 noundef 1087, i32 noundef 8, i64 noundef 7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true18
  %call21 = tail call fastcc i32 @do_test_cert_table(i32 noundef 1088, i32 noundef 8, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #3
  %tobool22 = icmp ne i32 %call21, 0
  %phi.cast = zext i1 %tobool22 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_test_cert_table(i32 noundef %nid, i32 noundef %amask, i64 noundef %idx, i8* noundef %idxname) unnamed_addr #0 {
entry:
  %nid1 = getelementptr inbounds [9 x %struct.SSL_CERT_LOOKUP], [9 x %struct.SSL_CERT_LOOKUP]* @ssl_cert_info, i64 0, i64 %idx, i32 0
  %0 = load i32, i32* %nid1, align 8, !tbaa !3
  %cmp = icmp eq i32 %0, %nid
  br i1 %cmp, label %land.lhs.true, label %if.then6

land.lhs.true:                                    ; preds = %entry
  %amask2 = getelementptr inbounds [9 x %struct.SSL_CERT_LOOKUP], [9 x %struct.SSL_CERT_LOOKUP]* @ssl_cert_info, i64 0, i64 %idx, i32 1
  %1 = load i32, i32* %amask2, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %1, %amask
  br i1 %cmp3, label %cleanup, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i8* noundef %idxname, i64 noundef %idx) #2
  br label %if.end9

if.then6:                                         ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i8* noundef %idxname, i64 noundef %idx) #2
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #2
  %call8 = tail call i8* @OBJ_nid2sn(i32 noundef %0) #2
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call, i8* noundef %call8) #2
  %amask10.phi.trans.insert = getelementptr inbounds [9 x %struct.SSL_CERT_LOOKUP], [9 x %struct.SSL_CERT_LOOKUP]* @ssl_cert_info, i64 0, i64 %idx, i32 1
  %.pre = load i32, i32* %amask10.phi.trans.insert, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.end.thread, %if.then6
  %2 = phi i32 [ %1, %if.end.thread ], [ %.pre, %if.then6 ]
  %cmp11.not = icmp eq i32 %2, %amask
  br i1 %cmp11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end9
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 noundef %amask, i32 noundef %2) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then12, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ 0, %if.then12 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 4}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 4}
