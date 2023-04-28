; ModuleID = 'crypto/pkcs7/pk7_attr.c'
source_filename = "crypto/pkcs7/pk7_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_signer_info_st = type { %struct.asn1_string_st*, %struct.pkcs7_issuer_and_serial_st*, %struct.X509_algor_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE*, %struct.evp_pkey_st*, %struct.PKCS7_CTX_st* }
%struct.pkcs7_issuer_and_serial_st = type { %struct.X509_name_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.evp_pkey_st = type opaque
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs7/pk7_attr.c\00", align 1
@__func__.PKCS7_add_attrib_smimecap = private unnamed_addr constant [26 x i8] c"PKCS7_add_attrib_smimecap\00", align 1
@__func__.PKCS7_simple_smimecap = private unnamed_addr constant [22 x i8] c"PKCS7_simple_smimecap\00", align 1
@__func__.PKCS7_add0_attrib_signing_time = private unnamed_addr constant [31 x i8] c"PKCS7_add0_attrib_signing_time\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_attrib_smimecap(%struct.pkcs7_signer_info_st* noundef %si, %struct.stack_st_X509_ALGOR* noundef %cap) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.PKCS7_add_attrib_smimecap, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.stack_st_X509_ALGOR* %cap to %struct.ASN1_VALUE_st*
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 2
  %call1 = tail call %struct.ASN1_ITEM_st* @X509_ALGORS_it() #4
  %call2 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef nonnull %data, %struct.ASN1_ITEM_st* noundef %call1) #4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 0
  store i32 %call2, i32* %length, align 8, !tbaa !4
  %1 = bitcast %struct.asn1_string_st* %call to i8*
  %call3 = tail call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 167, i32 noundef 16, i8* noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @X509_ALGORS_it() local_unnamed_addr #2

declare i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_ALGOR* @PKCS7_get_smimecap(%struct.pkcs7_signer_info_st* noundef %si) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 167) #4
  %cmp = icmp eq %struct.asn1_type_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !11
  %cmp1.not = icmp eq i32 %1, 16
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %call, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %3, i8** %p, align 8, !tbaa !15
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %2, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !4
  %conv = sext i32 %4 to i64
  %call4 = tail call %struct.ASN1_ITEM_st* @X509_ALGORS_it() #4
  %call5 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %call4) #4
  %5 = bitcast %struct.ASN1_VALUE_st* %call5 to %struct.stack_st_X509_ALGOR*
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.stack_st_X509_ALGOR* [ %5, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.stack_st_X509_ALGOR* %retval.0
}

declare %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_simple_smimecap(%struct.stack_st_X509_ALGOR* noundef %sk, i32 noundef %nid, i32 noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_new() #4
  %cmp = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_simple_smimecap, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #4
  %call1 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #4
  store %struct.asn1_object_st* %call1, %struct.asn1_object_st** %algorithm, align 8, !tbaa !16
  %cmp3 = icmp sgt i32 %arg, 0
  br i1 %cmp3, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #4
  %parameter = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %call, i64 0, i32 1
  store %struct.asn1_type_st* %call5, %struct.asn1_type_st** %parameter, align 8, !tbaa !18
  %cmp6 = icmp eq %struct.asn1_type_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.then4
  %call9 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #4
  %cmp10 = icmp eq %struct.asn1_string_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %conv37 = zext i32 %arg to i64
  %call13 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call9, i64 noundef %conv37) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end12
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !18
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %1, i64 0, i32 1
  %integer = bitcast %union.anon* %value to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call9, %struct.asn1_string_st** %integer, align 8, !tbaa !13
  %2 = load %struct.asn1_type_st*, %struct.asn1_type_st** %parameter, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %2, i64 0, i32 0
  store i32 2, i32* %type, align 8, !tbaa !11
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef %sk) #6
  %3 = bitcast %struct.X509_algor_st* %call to i8*
  %call21 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call19, i8* noundef nonnull %3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %cleanup

err:                                              ; preds = %if.end18, %if.end12, %if.end8, %if.then4
  %nbit.1 = phi %struct.asn1_string_st* [ null, %if.then4 ], [ null, %if.end8 ], [ null, %if.end18 ], [ %call9, %if.end12 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.PKCS7_simple_smimecap, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %nbit.1) #4
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_ALGOR_sk_type(%struct.stack_st_X509_ALGOR* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_ALGOR* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add_attrib_content_type(%struct.pkcs7_signer_info_st* noundef %si, %struct.asn1_object_st* noundef %coid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_type_st* @PKCS7_get_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 50) #4
  %tobool.not = icmp eq %struct.asn1_type_st* %call, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.asn1_object_st* %coid, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %coid.addr.0 = phi %struct.asn1_object_st* [ %coid, %if.end ], [ %call3, %if.then2 ]
  %0 = bitcast %struct.asn1_object_st* %coid.addr.0 to i8*
  %call5 = tail call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 50, i32 noundef 6, i8* noundef %0) #4
  br label %return

return:                                           ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add0_attrib_signing_time(%struct.pkcs7_signer_info_st* noundef %si, %struct.asn1_string_st* noundef %t) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %t, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef null, i64 noundef 0) #4
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.PKCS7_add0_attrib_signing_time, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 33, i32 noundef 786688, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %t.addr.0 = phi %struct.asn1_string_st* [ %call, %land.lhs.true ], [ %t, %entry ]
  %0 = bitcast %struct.asn1_string_st* %t.addr.0 to i8*
  %call2 = tail call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 52, i32 noundef 23, i8* noundef %0) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PKCS7_add1_attrib_digest(%struct.pkcs7_signer_info_st* noundef %si, i8* noundef %md, i32 noundef %mdlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call, i8* noundef %md, i32 noundef %mdlen) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call2 = tail call i32 @PKCS7_add_signed_attribute(%struct.pkcs7_signer_info_st* noundef %si, i32 noundef 51, i32 noundef 4, i8* noundef nonnull %0) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!5, !9, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"X509_algor_st", !9, i64 0, !9, i64 8}
!18 = !{!17, !9, i64 8}
