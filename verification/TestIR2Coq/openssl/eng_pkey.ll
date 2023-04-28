; ModuleID = 'crypto/engine/eng_pkey.c'
source_filename = "crypto/engine/eng_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ui_method_st = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/engine/eng_pkey.c\00", align 1
@__func__.ENGINE_load_private_key = private unnamed_addr constant [24 x i8] c"ENGINE_load_private_key\00", align 1
@global_engine_lock = external local_unnamed_addr global i8*, align 8
@__func__.ENGINE_load_public_key = private unnamed_addr constant [23 x i8] c"ENGINE_load_public_key\00", align 1
@__func__.ENGINE_load_ssl_client_cert = private unnamed_addr constant [28 x i8] c"ENGINE_load_ssl_client_cert\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_load_privkey_function(%struct.engine_st* nocapture noundef writeonly %e, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef %loadpriv_f) local_unnamed_addr #0 {
entry:
  %load_privkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 15
  store %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %loadpriv_f, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_load_pubkey_function(%struct.engine_st* nocapture noundef writeonly %e, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef %loadpub_f) local_unnamed_addr #0 {
entry:
  %load_pubkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 16
  store %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %loadpub_f, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_pubkey, align 8, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_load_ssl_client_cert_function(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* noundef %loadssl_f) local_unnamed_addr #0 {
entry:
  %load_ssl_client_cert = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 17
  store i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* %loadssl_f, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)** %load_ssl_client_cert, align 8, !tbaa !12
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* @ENGINE_get_load_privkey_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #1 {
entry:
  %load_privkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 15
  %0 = load %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey, align 8, !tbaa !4
  ret %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* @ENGINE_get_load_pubkey_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #1 {
entry:
  %load_pubkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 16
  %0 = load %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_pubkey, align 8, !tbaa !11
  ret %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* @ENGINE_get_ssl_client_cert_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #1 {
entry:
  %load_ssl_client_cert = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 17
  %0 = load i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)** %load_ssl_client_cert, align 8, !tbaa !12
  ret i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ENGINE_load_private_key(%struct.engine_st* noundef %e, i8* noundef %key_id, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 21
  %1 = load i32, i32* %funct_ref, align 8, !tbaa !14
  %cmp3 = icmp eq i32 %1, 0
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #4
  br i1 %cmp3, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end2
  %load_privkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 15
  %3 = load %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey, align 8, !tbaa !4
  %tobool8.not = icmp eq %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %3, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call12 = tail call %struct.evp_pkey_st* %3(%struct.engine_st* noundef nonnull %e, i8* noundef %key_id, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) #4
  %cmp13 = icmp eq %struct.evp_pkey_st* %call12, null
  br i1 %cmp13, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end10, %if.end6, %if.end2, %entry
  %.sink22 = phi i32 [ 62, %entry ], [ 69, %if.end2 ], [ 74, %if.end6 ], [ 79, %if.end10 ]
  %.sink = phi i32 [ 786690, %entry ], [ 117, %if.end2 ], [ 125, %if.end6 ], [ 128, %if.end10 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink22, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ENGINE_load_private_key, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.end ], [ %call12, %if.end10 ], [ null, %cleanup.sink.split ]
  ret %struct.evp_pkey_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ENGINE_load_public_key(%struct.engine_st* noundef %e, i8* noundef %key_id, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 21
  %1 = load i32, i32* %funct_ref, align 8, !tbaa !14
  %cmp3 = icmp eq i32 %1, 0
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #4
  br i1 %cmp3, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end2
  %load_pubkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 16
  %3 = load %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_pubkey, align 8, !tbaa !11
  %tobool8.not = icmp eq %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* %3, null
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call12 = tail call %struct.evp_pkey_st* %3(%struct.engine_st* noundef nonnull %e, i8* noundef %key_id, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) #4
  %cmp13 = icmp eq %struct.evp_pkey_st* %call12, null
  br i1 %cmp13, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end10, %if.end6, %if.end2, %entry
  %.sink22 = phi i32 [ 91, %entry ], [ 98, %if.end2 ], [ 103, %if.end6 ], [ 108, %if.end10 ]
  %.sink = phi i32 [ 786690, %entry ], [ 117, %if.end2 ], [ 125, %if.end6 ], [ 129, %if.end10 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ENGINE_load_public_key, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.end ], [ %call12, %if.end10 ], [ null, %cleanup.sink.split ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_load_ssl_client_cert(%struct.engine_st* noundef %e, %struct.ssl_st* noundef %s, %struct.stack_st_X509_NAME* noundef %ca_dn, %struct.x509_st** noundef %pcert, %struct.evp_pkey_st** noundef %ppkey, %struct.stack_st_X509** noundef %pother, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ENGINE_load_ssl_client_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 21
  %1 = load i32, i32* %funct_ref, align 8, !tbaa !14
  %cmp3 = icmp eq i32 %1, 0
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #4
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ENGINE_load_ssl_client_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 117, i8* noundef null) #4
  br label %return

if.end6:                                          ; preds = %if.end2
  %load_ssl_client_cert = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 17
  %3 = load i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)** %load_ssl_client_cert, align 8, !tbaa !12
  %tobool8.not = icmp eq i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* %3, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ENGINE_load_ssl_client_cert, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 125, i8* noundef null) #4
  br label %return

if.end10:                                         ; preds = %if.end6
  %call12 = tail call i32 %3(%struct.engine_st* noundef nonnull %e, %struct.ssl_st* noundef %s, %struct.stack_st_X509_NAME* noundef %ca_dn, %struct.x509_st** noundef %pcert, %struct.evp_pkey_st** noundef %ppkey, %struct.stack_st_X509** noundef %pother, %struct.ui_method_st* noundef %ui_method, i8* noundef %callback_data) #4
  br label %return

return:                                           ; preds = %if.end, %if.end10, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %call12, %if.end10 ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 120}
!5 = !{!"engine_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !7, i64 156, !9, i64 160, !10, i64 168, !6, i64 184, !6, i64 192}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!5, !6, i64 128}
!12 = !{!5, !6, i64 136}
!13 = !{!6, !6, i64 0}
!14 = !{!5, !9, i64 160}
