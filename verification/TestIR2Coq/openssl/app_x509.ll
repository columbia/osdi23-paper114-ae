; ModuleID = 'apps/lib/app_x509.c'
source_filename = "apps/lib/app_x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.x509_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_req_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"apps/lib/app_x509.c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"distid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hexdistid\00", align 1
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"error: setting distinguishing ID in certificate failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"error: allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"error: setting distinguishing ID in certificate signing request failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @x509_ctrl_string(%struct.x509_st* noundef %x, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x to i8*
  %call = tail call fastcc i32 @do_x509_ctrl_string(i32 (i8*, i32, i8*, i64)* noundef nonnull @x509_ctrl, i8* noundef %0, i8* noundef %value) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_x509_ctrl_string(i32 (i8*, i32, i8*, i64)* nocapture noundef readonly %ctrl, i8* noundef %object, i8* noundef %value) unnamed_addr #0 {
entry:
  %hexid_len = alloca i64, align 8
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 94) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @strchr(i8* noundef nonnull %call, i32 noundef 58) #6
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %call1, align 1, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  %call4 = tail call i64 @strlen(i8* noundef nonnull %incdec.ptr) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %vtmp.0 = phi i8* [ %incdec.ptr, %if.then3 ], [ null, %if.end ]
  %vtmp_len.0 = phi i64 [ %call4, %if.then3 ], [ 0, %if.end ]
  %call6 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end17, label %if.else

if.else:                                          ; preds = %if.end5
  %call9 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.else
  %cmp12.not = icmp eq i8* %vtmp.0, null
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.then11
  %0 = bitcast i64* %hexid_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %hexid_len, align 8, !tbaa !7
  %call14 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %vtmp.0, i64* noundef nonnull %hexid_len) #5
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 114) #5
  %1 = load i64, i64* %hexid_len, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.then13, %if.end5, %if.else
  %stmp.1 = phi i8* [ %call, %if.else ], [ %call, %if.end5 ], [ %call14, %if.then13 ], [ %call, %if.then11 ]
  %vtmp.2 = phi i8* [ %vtmp.0, %if.else ], [ %vtmp.0, %if.end5 ], [ %call14, %if.then13 ], [ null, %if.then11 ]
  %vtmp_len.2 = phi i64 [ %vtmp_len.0, %if.else ], [ %vtmp_len.0, %if.end5 ], [ %1, %if.then13 ], [ %vtmp_len.0, %if.then11 ]
  %cmd.0 = phi i32 [ 0, %if.else ], [ 15, %if.end5 ], [ 15, %if.then13 ], [ 15, %if.then11 ]
  %call18 = call i32 %ctrl(i8* noundef %object, i32 noundef %cmd.0, i8* noundef %vtmp.2, i64 noundef %vtmp_len.2) #5, !callees !9
  call void @CRYPTO_free(i8* noundef %stmp.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 125) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_ctrl(i8* noundef %object, i32 noundef %cmd, i8* noundef %value, i64 noundef %value_n) #0 {
entry:
  %cond = icmp eq i32 %cmd, 15
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc %struct.asn1_string_st* @mk_octet_string(i8* noundef %value, i64 noundef %value_n) #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !10
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %return

if.end:                                           ; preds = %sw.bb
  %1 = bitcast i8* %object to %struct.x509_st*
  tail call void @X509_set0_distinguishing_id(%struct.x509_st* noundef %1, %struct.asn1_string_st* noundef nonnull %call) #5
  br label %return

return:                                           ; preds = %entry, %if.then, %if.end
  %retval.1 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ -2, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @x509_req_ctrl_string(%struct.X509_req_st* noundef %x, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_req_st* %x to i8*
  %call = tail call fastcc i32 @do_x509_ctrl_string(i32 (i8*, i32, i8*, i64)* noundef nonnull @x509_req_ctrl, i8* noundef %0, i8* noundef %value) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_req_ctrl(i8* noundef %object, i32 noundef %cmd, i8* noundef %value, i64 noundef %value_n) #0 {
entry:
  %cond = icmp eq i32 %cmd, 15
  br i1 %cond, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc %struct.asn1_string_st* @mk_octet_string(i8* noundef %value, i64 noundef %value_n) #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !10
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %return

if.end:                                           ; preds = %sw.bb
  %1 = bitcast i8* %object to %struct.X509_req_st*
  tail call void @X509_REQ_set0_distinguishing_id(%struct.X509_req_st* noundef %1, %struct.asn1_string_st* noundef nonnull %call) #5
  br label %return

return:                                           ; preds = %entry, %if.then, %if.end
  %retval.1 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ -2, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @mk_octet_string(i8* noundef %value, i64 noundef %value_n) unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !10
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end4

if.else:                                          ; preds = %entry
  %conv = trunc i64 %value_n to i32
  %call2 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef %value, i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #5
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3, %if.then
  %v.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call, %if.else ], [ null, %if.then3 ]
  ret %struct.asn1_string_st* %v.0
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @X509_set0_distinguishing_id(%struct.x509_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @X509_REQ_set0_distinguishing_id(%struct.X509_req_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{i32 (i8*, i32, i8*, i64)* @x509_ctrl, i32 (i8*, i32, i8*, i64)* @x509_req_ctrl}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
