; ModuleID = 'crypto/rsa/rsa_saos.c'
source_filename = "crypto/rsa/rsa_saos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_saos.c\00", align 1
@__func__.RSA_sign_ASN1_OCTET_STRING = private unnamed_addr constant [27 x i8] c"RSA_sign_ASN1_OCTET_STRING\00", align 1
@__func__.RSA_verify_ASN1_OCTET_STRING = private unnamed_addr constant [29 x i8] c"RSA_verify_ASN1_OCTET_STRING\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_sign_ASN1_OCTET_STRING(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %sigret, i32* nocapture noundef writeonly %siglen, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %sig = alloca %struct.asn1_string_st, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.asn1_string_st* %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 1
  store i32 4, i32* %type1, align 4, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 0
  store i32 %m_len, i32* %length, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %sig, i64 0, i32 2
  store i8* %m, i8** %data, align 8, !tbaa !12
  %call = call i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef nonnull %sig, i8** noundef null) #5
  %call2 = call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #5
  %sub = add nsw i32 %call2, -11
  %cmp = icmp sgt i32 %call, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.RSA_sign_ASN1_OCTET_STRING, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 112, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %call2, 1
  %conv = zext i32 %add to i64
  %call3 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #5
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.RSA_sign_ASN1_OCTET_STRING, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  store i8* %call3, i8** %p, align 8, !tbaa !13
  %call8 = call i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef nonnull %sig, i8** noundef nonnull %p) #5
  %call9 = call i32 @RSA_private_encrypt(i32 noundef %call, i8* noundef nonnull %call3, i8* noundef %sigret, %struct.rsa_st* noundef %rsa, i32 noundef 1) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.end13, label %if.else

if.else:                                          ; preds = %if.end7
  store i32 %call9, i32* %siglen, align 4, !tbaa !14
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.else
  %ret.0 = phi i32 [ 1, %if.else ], [ 0, %if.end7 ]
  call void @CRYPTO_clear_free(i8* noundef nonnull %call3, i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %ret.0, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @i2d_ASN1_OCTET_STRING(%struct.asn1_string_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RSA_private_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_verify_ASN1_OCTET_STRING(i32 noundef %dtype, i8* noundef readonly %m, i32 noundef %m_len, i8* noundef %sigbuf, i32 noundef %siglen, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #5
  %cmp.not = icmp eq i32 %call, %siglen
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.RSA_verify_ASN1_OCTET_STRING, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 119, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %siglen to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 74) #5
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.RSA_verify_ASN1_OCTET_STRING, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @RSA_public_decrypt(i32 noundef %siglen, i8* noundef %sigbuf, i8* noundef nonnull %call1, %struct.rsa_st* noundef %rsa, i32 noundef 1) #5
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  store i8* %call1, i8** %p, align 8, !tbaa !13
  %conv1146 = zext i32 %call6 to i64
  %call12 = call %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv1146) #5
  %cmp13 = icmp eq %struct.asn1_string_st* %call12, null
  br i1 %cmp13, label %err, label %if.end16

if.end16:                                         ; preds = %if.end10
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call12, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !11
  %cmp17.not = icmp eq i32 %1, %m_len
  br i1 %cmp17.not, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %if.end16
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call12, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !12
  %conv19 = zext i32 %m_len to i64
  %call20 = call i32 @memcmp(i8* noundef %m, i8* noundef %2, i64 noundef %conv19) #6
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %err, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %if.end16
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.RSA_verify_ASN1_OCTET_STRING, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #5
  br label %err

err:                                              ; preds = %lor.lhs.false, %if.then23, %if.end10, %if.end5, %if.then4
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end5 ], [ 0, %if.end10 ], [ 0, %if.then23 ], [ 1, %lor.lhs.false ]
  %sig.0 = phi %struct.asn1_string_st* [ null, %if.then4 ], [ null, %if.end5 ], [ null, %if.end10 ], [ %call12, %if.then23 ], [ %call12, %lor.lhs.false ]
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %sig.0) #5
  call void @CRYPTO_clear_free(i8* noundef %call1, i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 97) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i32 @RSA_public_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 0}
!12 = !{!5, !9, i64 8}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !6, i64 0}
