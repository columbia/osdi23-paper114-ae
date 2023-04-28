; ModuleID = 'crypto/pkcs12/p12_init.c'
source_filename = "crypto/pkcs12/p12_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_st = type { %struct.asn1_string_st*, %struct.PKCS12_MAC_DATA_st*, %struct.pkcs7_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.PKCS12_MAC_DATA_st = type { %struct.X509_sig_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_sig_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_init.c\00", align 1
@__func__.PKCS12_init_ex = private unnamed_addr constant [15 x i8] c"PKCS12_init_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef %mode, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_st* @PKCS12_new() #2
  %cmp = icmp eq %struct.PKCS12_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_init_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version, align 8, !tbaa !4
  %call1 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef 3) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %mode) #2
  %authsafes = getelementptr inbounds %struct.PKCS12_st, %struct.PKCS12_st* %call, i64 0, i32 2
  %1 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %1, i64 0, i32 4
  store %struct.asn1_object_st* %call4, %struct.asn1_object_st** %type, align 8, !tbaa !10
  tail call void @ossl_pkcs7_set0_libctx(%struct.pkcs7_st* noundef %1, %struct.ossl_lib_ctx_st* noundef %ctx) #2
  %2 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !9
  %call7 = tail call i32 @ossl_pkcs7_set1_propq(%struct.pkcs7_st* noundef %2, i8* noundef %propq) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end3
  %cond = icmp eq i32 %mode, 21
  br i1 %cond, label %sw.bb, label %err.sink.split

sw.bb:                                            ; preds = %if.end10
  %call11 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #2
  %3 = load %struct.pkcs7_st*, %struct.pkcs7_st** %authsafes, align 8, !tbaa !9
  %d = getelementptr inbounds %struct.pkcs7_st, %struct.pkcs7_st* %3, i64 0, i32 5
  %data = bitcast %union.anon* %d to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call11, %struct.asn1_string_st** %data, align 8, !tbaa !15
  %cmp13 = icmp eq %struct.asn1_string_st* %call11, null
  br i1 %cmp13, label %err.sink.split, label %cleanup

err.sink.split:                                   ; preds = %if.end10, %sw.bb, %if.end3
  %.sink24 = phi i32 [ 32, %if.end3 ], [ 39, %sw.bb ], [ 44, %if.end10 ]
  %.sink = phi i32 [ 786688, %if.end3 ], [ 786688, %sw.bb ], [ 119, %if.end10 ]
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.PKCS12_init_ex, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef %.sink, i8* noundef null) #2
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %err, %if.then
  %retval.0 = phi %struct.PKCS12_st* [ null, %if.then ], [ null, %err ], [ %call, %sw.bb ]
  ret %struct.PKCS12_st* %retval.0
}

declare %struct.PKCS12_st* @PKCS12_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare void @ossl_pkcs7_set0_libctx(%struct.pkcs7_st* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ossl_pkcs7_set1_propq(%struct.pkcs7_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @PKCS12_init(i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.PKCS12_st* @PKCS12_init_ex(i32 noundef %mode, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  ret %struct.PKCS12_st* %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"PKCS12_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = !{!11, !6, i64 24}
!11 = !{!"pkcs7_st", !6, i64 0, !12, i64 8, !13, i64 16, !13, i64 20, !6, i64 24, !7, i64 32, !14, i64 40}
!12 = !{!"long", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"PKCS7_CTX_st", !6, i64 0, !6, i64 8}
!15 = !{!7, !7, i64 0}
