; ModuleID = 'fuzz/client.c'
source_filename = "fuzz/client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_settings_st = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.stack_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [60 x i8] c"assertion failed: SSL_set_min_proto_version(client, 0) == 1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fuzz/client.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ALL:eNULL:@SECLEVEL=0\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"assertion failed: SSL_set_cipher_list(client, \22ALL:eNULL:@SECLEVEL=0\22) == 1\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"assertion failed: (size_t)BIO_write(in, buf, len) == len\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i64 @time(i64* noundef writeonly %t) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64* %t, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 1485898104, i64* %t, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1485898104
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #1 {
entry:
  tail call void @FuzzerSetRand() #6
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 258, %struct.ossl_init_settings_st* noundef null) #6
  %call1 = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, %struct.ossl_init_settings_st* noundef null) #6
  tail call void @ERR_clear_error() #6
  %call2 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #6
  %call3 = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #6
  %call4 = tail call %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() #6
  %cmp.not = icmp eq %struct.stack_st_SSL_COMP* %call4, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %call4) #7
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @FuzzerSetRand() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #3

declare dso_local %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %tmp = alloca [1024 x i8], align 16
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ssl_method_st* @TLS_method() #6
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  %call2 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #6
  %call3 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %call2, i32 noundef 123, i64 noundef 0, i8* noundef null) #6
  %cmp4 = icmp eq i64 %call3, 1
  br i1 %cmp4, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70) #8
  unreachable

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %call2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %cond.end9, label %cond.false8

cond.false8:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71) #8
  unreachable

cond.end9:                                        ; preds = %cond.end
  %call11 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %call2, i32 noundef 55, i64 noundef 0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #6
  %call12 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call13 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call12) #6
  %call14 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call15 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call14) #6
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %call2, %struct.bio_st* noundef %call13, %struct.bio_st* noundef %call15) #6
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef %call2) #6
  %conv = trunc i64 %len to i32
  %call16 = tail call i32 @BIO_write(%struct.bio_st* noundef %call13, i8* noundef %buf, i32 noundef %conv) #6
  %conv17 = sext i32 %call16 to i64
  %cmp18 = icmp eq i64 %conv17, %len
  br i1 %cmp18, label %cond.end22, label %cond.false21

cond.false21:                                     ; preds = %cond.end9
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 77) #8
  unreachable

cond.end22:                                       ; preds = %cond.end9
  %call24 = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call2) #6
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %cond.end22
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then27
  %call28 = call i32 @SSL_read(%struct.ssl_st* noundef %call2, i8* noundef nonnull %0, i32 noundef 1024) #6
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  br label %if.end33

if.end33:                                         ; preds = %for.end, %cond.end22
  call void @SSL_free(%struct.ssl_st* noundef %call2) #6
  call void @ERR_clear_error() #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end33
  ret i32 0
}

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #3

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @SSL_set_cipher_list(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #1 {
entry:
  tail call void @FuzzerClearRand() #6
  ret void
}

declare dso_local void @FuzzerClearRand() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
