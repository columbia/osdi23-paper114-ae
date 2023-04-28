; ModuleID = 'crypto/x509/x509rset.c'
source_filename = "crypto/x509/x509rset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_set_version(%struct.X509_req_st* noundef %x, i64 noundef %version) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_req_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %modified = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !4
  %version2 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 1
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %version2, align 8, !tbaa !14
  %call = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %0, i64 noundef %version) #2
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_set_subject_name(%struct.X509_req_st* noundef %x, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_req_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %modified = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !4
  %subject = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 2
  %call = tail call i32 @X509_NAME_set(%struct.X509_name_st** noundef nonnull %subject, %struct.X509_name_st* noundef %name) #2
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_set(%struct.X509_name_st** noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_REQ_set_pubkey(%struct.X509_req_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.X509_req_st* %x, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %modified = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 0, i32 2
  store i32 1, i32* %modified, align 8, !tbaa !4
  %pubkey = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %x, i64 0, i32 0, i32 3
  %call = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %pubkey, %struct.evp_pkey_st* noundef %pkey) #2
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !12, i64 16}
!5 = !{!"X509_req_st", !6, i64 0, !13, i64 56, !8, i64 72, !9, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112}
!6 = !{!"X509_req_info_st", !7, i64 0, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!7 = !{!"ASN1_ENCODING_st", !8, i64 0, !11, i64 8, !12, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"X509_algor_st", !8, i64 0, !8, i64 8}
!14 = !{!5, !8, i64 24}
