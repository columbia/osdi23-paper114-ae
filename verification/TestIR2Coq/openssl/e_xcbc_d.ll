; ModuleID = 'crypto/evp/e_xcbc_d.c'
source_filename = "crypto/evp/e_xcbc_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.DES_ks = type { [16 x %union.anon.0] }
%union.anon.0 = type { [2 x i32] }

@d_xcbc_cipher = internal constant %struct.evp_cipher_st { i32 80, i32 8, i32 24, i32 8, i64 2, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @desx_cbc_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @desx_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 144, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_set_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_get_asn1_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_desx_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @d_xcbc_cipher
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @desx_cbc_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %0 = bitcast i8* %key to [8 x i8]*
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef %0, %struct.DES_ks* noundef %ks) #4
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %inw = getelementptr inbounds i8, i8* %call1, i64 128
  %arrayidx2 = getelementptr inbounds i8, i8* %key, i64 8
  %call3 = tail call i8* @memcpy(i8* noundef nonnull %inw, i8* noundef nonnull %arrayidx2, i64 noundef 8) #4
  %call4 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %outw = getelementptr inbounds i8, i8* %call4, i64 136
  %arrayidx6 = getelementptr inbounds i8, i8* %key, i64 16
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %outw, i8* noundef nonnull %arrayidx6, i64 noundef 8) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @desx_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp30 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp30, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %0 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.033 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.032 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.031 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr4, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = bitcast i8* %call to %struct.DES_ks*
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %inw = getelementptr inbounds i8, i8* %call1, i64 128
  %1 = bitcast i8* %inw to [8 x i8]*
  %call2 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %outw = getelementptr inbounds i8, i8* %call2, i64 136
  %2 = bitcast i8* %outw to [8 x i8]*
  %call3 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_xcbc_encrypt(i8* noundef %in.addr.032, i8* noundef %out.addr.031, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %ks, [8 x i8]* noundef nonnull %0, [8 x i8]* noundef nonnull %1, [8 x i8]* noundef nonnull %2, i32 noundef %call3) #4
  %sub = add i64 %inl.addr.033, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.032, i64 4611686018427387904
  %add.ptr4 = getelementptr inbounds i8, i8* %out.addr.031, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.033, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr4, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks6 = bitcast i8* %call5 to %struct.DES_ks*
  %arraydecay8 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %3 = bitcast i8* %arraydecay8 to [8 x i8]*
  %call9 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %inw10 = getelementptr inbounds i8, i8* %call9, i64 128
  %4 = bitcast i8* %inw10 to [8 x i8]*
  %call11 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %outw12 = getelementptr inbounds i8, i8* %call11, i64 136
  %5 = bitcast i8* %outw12 to [8 x i8]*
  %call13 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @DES_xcbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %ks6, [8 x i8]* noundef nonnull %3, [8 x i8]* noundef nonnull %4, [8 x i8]* noundef nonnull %5, i32 noundef %call13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @DES_xcbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, [8 x i8]* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
