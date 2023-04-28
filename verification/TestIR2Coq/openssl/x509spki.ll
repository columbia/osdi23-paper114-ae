; ModuleID = 'crypto/x509/x509spki.c'
source_filename = "crypto/x509/x509spki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509spki.c\00", align 1
@__func__.NETSCAPE_SPKI_b64_decode = private unnamed_addr constant [25 x i8] c"NETSCAPE_SPKI_b64_decode\00", align 1
@__func__.NETSCAPE_SPKI_b64_encode = private unnamed_addr constant [25 x i8] c"NETSCAPE_SPKI_b64_encode\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @NETSCAPE_SPKI_set_pubkey(%struct.Netscape_spki_st* noundef readonly %x, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.Netscape_spki_st* %x, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %spkac = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %x, i64 0, i32 0
  %0 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.Netscape_spkac_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pubkey = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %0, i64 0, i32 0
  %call = tail call i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef nonnull %pubkey, %struct.evp_pkey_st* noundef %pkey) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_PUBKEY_set(%struct.X509_pubkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @NETSCAPE_SPKI_get_pubkey(%struct.Netscape_spki_st* noundef readonly %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.Netscape_spki_st* %x, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %spkac = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %x, i64 0, i32 0
  %0 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.Netscape_spkac_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pubkey = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %0, i64 0, i32 0
  %1 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %pubkey, align 8, !tbaa !10
  %call = tail call %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef %1) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @X509_PUBKEY_get(%struct.X509_pubkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.Netscape_spki_st* @NETSCAPE_SPKI_b64_decode(i8* noundef %str, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %str) #6
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i32 [ %conv, %if.then ], [ %len, %entry ]
  %add = add nsw i32 %len.addr.0, 1
  %conv1 = sext i32 %add to i64
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %conv1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #4
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.NETSCAPE_SPKI_b64_decode, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_DecodeBlock(i8* noundef nonnull %call2, i8* noundef %str, i32 noundef %len.addr.0) #4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.NETSCAPE_SPKI_b64_decode, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 118, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  store i8* %call2, i8** %p, align 8, !tbaa !12
  %conv1227 = zext i32 %call7 to i64
  %call13 = call %struct.Netscape_spki_st* @d2i_NETSCAPE_SPKI(%struct.Netscape_spki_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv1227) #4
  call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then5
  %retval.0 = phi %struct.Netscape_spki_st* [ null, %if.then5 ], [ null, %if.then10 ], [ %call13, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.Netscape_spki_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @EVP_DecodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.Netscape_spki_st* @d2i_NETSCAPE_SPKI(%struct.Netscape_spki_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i8* @NETSCAPE_SPKI_b64_encode(%struct.Netscape_spki_st* noundef %spki) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call i32 @i2d_NETSCAPE_SPKI(%struct.Netscape_spki_st* noundef %spki, i8** noundef null) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv29 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv29, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #4
  %mul = shl nuw nsw i32 %call, 1
  %conv2 = sext i32 %mul to i64
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %conv2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 66) #4
  %cmp4 = icmp eq i8* %call1, null
  %cmp6 = icmp eq i8* %call3, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.NETSCAPE_SPKI_b64_encode, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #4
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 69) #4
  tail call void @CRYPTO_free(i8* noundef %call3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  store i8* %call1, i8** %p, align 8, !tbaa !12
  %call10 = call i32 @i2d_NETSCAPE_SPKI(%struct.Netscape_spki_st* noundef %spki, i8** noundef nonnull %p) #4
  %call11 = call i32 @EVP_EncodeBlock(i8* noundef nonnull %call3, i8* noundef nonnull %call1, i32 noundef %call) #4
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then8
  %retval.0 = phi i8* [ null, %if.then8 ], [ %call3, %if.end9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i8* %retval.0
}

declare i32 @i2d_NETSCAPE_SPKI(%struct.Netscape_spki_st* noundef, i8** noundef) local_unnamed_addr #1

declare i32 @EVP_EncodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"Netscape_spki_st", !6, i64 0, !9, i64 8, !6, i64 24}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!10 = !{!11, !6, i64 0}
!11 = !{!"Netscape_spkac_st", !6, i64 0, !6, i64 8}
!12 = !{!6, !6, i64 0}
