; ModuleID = 'crypto/pkcs12/p12_attr.c'
source_filename = "crypto/pkcs12/p12_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PKCS12_SAFEBAG_st = type { %struct.asn1_object_st*, %union.anon, %struct.stack_st_X509_ATTRIBUTE* }
%struct.asn1_object_st = type opaque
%union.anon = type { %struct.pkcs12_bag_st* }
%struct.pkcs12_bag_st = type { %struct.asn1_object_st*, %union.anon.0 }
%union.anon.0 = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.x509_attributes_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_localkeyid(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef 157, i32 noundef 4, i8* noundef %name, i32 noundef %namelen) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS8_add_keyusage(%struct.pkcs8_priv_key_info_st* noundef %p8, i32 noundef %usage) local_unnamed_addr #0 {
entry:
  %us_val = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %us_val) #5
  %conv = trunc i32 %usage to i8
  store i8 %conv, i8* %us_val, align 1, !tbaa !4
  %call = call i32 @PKCS8_pkey_add1_attr_by_NID(%struct.pkcs8_priv_key_info_st* noundef %p8, i32 noundef 83, i32 noundef 3, i8* noundef nonnull %us_val, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %us_val) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @PKCS8_pkey_add1_attr_by_NID(%struct.pkcs8_priv_key_info_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_friendlyname_asc(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef 156, i32 noundef 4097, i8* noundef %name, i32 noundef %namelen) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_friendlyname_utf8(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef 156, i32 noundef 4096, i8* noundef %name, i32 noundef %namelen) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_friendlyname_uni(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef 156, i32 noundef 4098, i8* noundef %name, i32 noundef %namelen) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add_CSPName_asc(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %name, i32 noundef %namelen) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef 417, i32 noundef 4097, i8* noundef %name, i32 noundef %namelen) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add1_attr_by_NID(%struct.PKCS12_SAFEBAG_st* noundef %bag, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i32 noundef %nid, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS12_add1_attr_by_txt(%struct.PKCS12_SAFEBAG_st* noundef %bag, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %call = tail call %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef nonnull %attrib, i8* noundef %attrname, i32 noundef %type, i8* noundef %bytes, i32 noundef %len) #4
  %cmp.not = icmp ne %struct.stack_st_X509_ATTRIBUTE* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

declare %struct.stack_st_X509_ATTRIBUTE* @X509at_add1_attr_by_txt(%struct.stack_st_X509_ATTRIBUTE** noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @PKCS12_get_attr_gen(%struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %attr_nid) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %attr_nid, i32 noundef -1) #4
  %call1 = tail call %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef %attrs, i32 noundef %call) #4
  %call2 = tail call %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef %call1, i32 noundef 0) #4
  ret %struct.asn1_type_st* %call2
}

declare i32 @X509at_get_attr_by_NID(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.x509_attributes_st* @X509at_get_attr(%struct.stack_st_X509_ATTRIBUTE* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.asn1_type_st* @X509_ATTRIBUTE_get0_type(%struct.x509_attributes_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @PKCS12_get_friendlyname(%struct.PKCS12_SAFEBAG_st* noundef %bag) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* noundef %bag, i32 noundef 156) #4
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !7
  %cmp1.not = icmp eq i32 %0, 30
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %bmpstring = bitcast %union.anon.1* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %bmpstring, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !14
  %call6 = tail call i8* @OPENSSL_uni2utf8(i8* noundef %2, i32 noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i8* [ %call6, %if.end3 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

declare %struct.asn1_type_st* @PKCS12_SAFEBAG_get0_attr(%struct.PKCS12_SAFEBAG_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_uni2utf8(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_ATTRIBUTE* @PKCS12_SAFEBAG_get0_attrs(%struct.PKCS12_SAFEBAG_st* nocapture noundef readonly %bag) local_unnamed_addr #3 {
entry:
  %attrib = getelementptr inbounds %struct.PKCS12_SAFEBAG_st, %struct.PKCS12_SAFEBAG_st* %bag, i64 0, i32 2
  %0 = load %struct.stack_st_X509_ATTRIBUTE*, %struct.stack_st_X509_ATTRIBUTE** %attrib, align 8, !tbaa !15
  ret %struct.stack_st_X509_ATTRIBUTE* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"asn1_type_st", !9, i64 0, !5, i64 8}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !12, i64 8, !13, i64 16}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!11, !9, i64 0}
!15 = !{!16, !12, i64 16}
!16 = !{!"PKCS12_SAFEBAG_st", !12, i64 0, !5, i64 8, !12, i64 16}
