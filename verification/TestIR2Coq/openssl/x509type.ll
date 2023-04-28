; ModuleID = 'crypto/x509/x509type.c'
source_filename = "crypto/x509/x509type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @X509_certificate_type(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp1, label %if.end3, label %if.end6

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %x) #4
  %cmp4 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %if.end3
  %pk.041 = phi %struct.evp_pkey_st* [ %call, %if.end3 ], [ %pkey, %if.end ]
  %call7 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %pk.041) #4
  switch i32 %call7, label %sw.epilog [
    i32 6, label %sw.bb
    i32 912, label %sw.bb8
    i32 116, label %sw.bb9
    i32 408, label %sw.bb10
    i32 1088, label %sw.bb11
    i32 1087, label %sw.bb11
    i32 28, label %sw.bb12
    i32 811, label %sw.bb13
    i32 979, label %sw.bb13
    i32 980, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end6
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end6, %if.end6
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6, %if.end6, %if.end6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 80, %sw.bb13 ], [ 68, %sw.bb12 ], [ 16, %sw.bb11 ], [ 88, %sw.bb10 ], [ 18, %sw.bb9 ], [ 17, %sw.bb8 ], [ 49, %sw.bb ]
  %call14 = tail call i32 @X509_get_signature_nid(%struct.x509_st* noundef nonnull %x) #4
  store i32 %call14, i32* %i, align 4, !tbaa !4
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %call15 = call i32 @OBJ_find_sigid_algs(i32 noundef %call14, i32* noundef null, i32* noundef nonnull %i) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %1 = load i32, i32* %i, align 4, !tbaa !4
  switch i32 %1, label %cleanup [
    i32 6, label %sw.bb18
    i32 19, label %sw.bb18
    i32 116, label %sw.bb20
    i32 67, label %sw.bb20
    i32 408, label %sw.bb22
  ]

sw.bb18:                                          ; preds = %if.then17, %if.then17
  %or19 = or i32 %ret.0, 256
  br label %cleanup

sw.bb20:                                          ; preds = %if.then17, %if.then17
  %or21 = or i32 %ret.0, 512
  br label %cleanup

sw.bb22:                                          ; preds = %if.then17
  %or23 = or i32 %ret.0, 1024
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true, %if.then17, %sw.bb22, %sw.bb20, %sw.bb18, %if.end3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end3 ], [ %ret.0, %if.then17 ], [ %or23, %sw.bb22 ], [ %or21, %sw.bb20 ], [ %or19, %sw.bb18 ], [ %ret.0, %land.lhs.true ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @X509_get_signature_nid(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
