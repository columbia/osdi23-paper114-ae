; ModuleID = 'crypto/evp/cmeth_lib.c'
source_filename = "crypto/evp/cmeth_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef %cipher_type, i32 noundef %block_size, i32 noundef %key_len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @evp_cipher_new() #5
  %cmp.not = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 0
  store i32 %cipher_type, i32* %nid, align 8, !tbaa !4
  %block_size1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  store i32 %block_size, i32* %block_size1, align 4, !tbaa !11
  %key_len2 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 2
  store i32 %key_len, i32* %key_len2, align 8, !tbaa !12
  %origin = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 5
  store i32 2, i32* %origin, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.evp_cipher_st* %call
}

declare %struct.evp_cipher_st* @evp_cipher_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_CIPHER_meth_dup(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 17
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 1
  %2 = load i32, i32* %block_size, align 4, !tbaa !11
  %key_len = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 2
  %3 = load i32, i32* %key_len, align 8, !tbaa !12
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef %1, i32 noundef %2, i32 noundef %3) #6
  %cmp1.not = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %lock3 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 19
  %4 = load i8*, i8** %lock3, align 8, !tbaa !15
  %5 = bitcast %struct.evp_cipher_st* %call to i8*
  %6 = bitcast %struct.evp_cipher_st* %cipher to i8*
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %5, i8* noundef %6, i64 noundef 256) #5
  store i8* %4, i8** %lock3, align 8, !tbaa !15
  %origin = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 5
  store i32 2, i32* %origin, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.evp_cipher_st* [ null, %entry ], [ %call, %if.then2 ], [ null, %if.end ]
  ret %struct.evp_cipher_st* %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %cipher) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st* %cipher, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %origin = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 5
  %0 = load i32, i32* %origin, align 8, !tbaa !13
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @evp_cipher_free_int(%struct.evp_cipher_st* noundef nonnull %cipher) #5
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

declare void @evp_cipher_free_int(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* nocapture noundef %cipher, i32 noundef %iv_len) local_unnamed_addr #3 {
entry:
  %iv_len1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 3
  %0 = load i32, i32* %iv_len1, align 4, !tbaa !16
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 %iv_len, i32* %iv_len1, align 4, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* nocapture noundef %cipher, i64 noundef %flags) local_unnamed_addr #3 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 4
  %0 = load i64, i64* %flags1, align 8, !tbaa !17
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i64 %flags, i64* %flags1, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* nocapture noundef %cipher, i32 noundef %ctx_size) local_unnamed_addr #3 {
entry:
  %ctx_size1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 9
  %0 = load i32, i32* %ctx_size1, align 8, !tbaa !18
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 %ctx_size, i32* %ctx_size1, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef %init) local_unnamed_addr #3 {
entry:
  %init1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 6
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)** %init1, align 8, !tbaa !19
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* %init, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)** %init1, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef %do_cipher) local_unnamed_addr #3 {
entry:
  %do_cipher1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 7
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher1, align 8, !tbaa !20
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* %do_cipher, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher1, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*)* noundef %cleanup) local_unnamed_addr #3 {
entry:
  %cleanup1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 8
  %0 = load i32 (%struct.evp_cipher_ctx_st*)*, i32 (%struct.evp_cipher_ctx_st*)** %cleanup1, align 8, !tbaa !21
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*)* %cleanup, i32 (%struct.evp_cipher_ctx_st*)** %cleanup1, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef %set_asn1_parameters) local_unnamed_addr #3 {
entry:
  %set_asn1_parameters1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 10
  %0 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %set_asn1_parameters1, align 8, !tbaa !22
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %set_asn1_parameters, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %set_asn1_parameters1, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef %get_asn1_parameters) local_unnamed_addr #3 {
entry:
  %get_asn1_parameters1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 11
  %0 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %get_asn1_parameters1, align 8, !tbaa !23
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %get_asn1_parameters, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %get_asn1_parameters1, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* nocapture noundef %cipher, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef %ctrl) local_unnamed_addr #3 {
entry:
  %ctrl1 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 12
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)** %ctrl1, align 8, !tbaa !24
  %cmp.not = icmp eq i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* %ctrl, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)** %ctrl1, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %init = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 6
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)** %init, align 8, !tbaa !19
  ret i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %do_cipher = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 7
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)** %do_cipher, align 8, !tbaa !20
  ret i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*)* @EVP_CIPHER_meth_get_cleanup(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %cleanup = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 8
  %0 = load i32 (%struct.evp_cipher_ctx_st*)*, i32 (%struct.evp_cipher_ctx_st*)** %cleanup, align 8, !tbaa !21
  ret i32 (%struct.evp_cipher_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_meth_get_set_asn1_params(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %set_asn1_parameters = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 10
  %0 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %set_asn1_parameters, align 8, !tbaa !22
  ret i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @EVP_CIPHER_meth_get_get_asn1_params(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %get_asn1_parameters = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 11
  %0 = load i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)** %get_asn1_parameters, align 8, !tbaa !23
  ret i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #4 {
entry:
  %ctrl = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %cipher, i64 0, i32 12
  %0 = load i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)** %ctrl, align 8, !tbaa !24
  ret i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_cipher_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !6, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !7, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !6, i64 24}
!14 = !{!5, !10, i64 120}
!15 = !{!5, !10, i64 136}
!16 = !{!5, !6, i64 12}
!17 = !{!5, !9, i64 16}
!18 = !{!5, !6, i64 56}
!19 = !{!5, !10, i64 32}
!20 = !{!5, !10, i64 40}
!21 = !{!5, !10, i64 48}
!22 = !{!5, !10, i64 64}
!23 = !{!5, !10, i64 72}
!24 = !{!5, !10, i64 80}
