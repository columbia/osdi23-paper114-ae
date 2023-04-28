; ModuleID = 'crypto/engine/tb_eckey.c'
source_filename = "crypto/engine/tb_eckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_engine_table = type opaque
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
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@dh_table = internal global %struct.st_engine_table* null, align 8
@dummy_nid = internal constant i32 1, align 4
@.str = private unnamed_addr constant [25 x i8] c"crypto/engine/tb_eckey.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_unregister_EC(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  tail call void @engine_table_unregister(%struct.st_engine_table** noundef nonnull @dh_table, %struct.engine_st* noundef %e) #4
  ret void
}

declare void @engine_table_unregister(%struct.st_engine_table** noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_register_EC(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %ec_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 5
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %ec_meth, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ec_key_method_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @dh_table, void ()* noundef nonnull @engine_unregister_all_EC, %struct.engine_st* noundef nonnull %e, i32* noundef nonnull @dummy_nid, i32 noundef 1, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @engine_table_register(%struct.st_engine_table** noundef, void ()* noundef, %struct.engine_st* noundef, i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @engine_unregister_all_EC() #0 {
entry:
  tail call void @engine_table_cleanup(%struct.st_engine_table** noundef nonnull @dh_table) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_register_all_EC() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_first() #4
  %tobool.not6 = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %e.07 = phi %struct.engine_st* [ %call2, %for.body ], [ %call, %entry ]
  %call1 = tail call i32 @ENGINE_register_EC(%struct.engine_st* noundef nonnull %e.07) #5
  %call2 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.07) #4
  %tobool.not = icmp eq %struct.engine_st* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_default_EC(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %ec_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 5
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %ec_meth, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ec_key_method_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @dh_table, void ()* noundef nonnull @engine_unregister_all_EC, %struct.engine_st* noundef nonnull %e, i32* noundef nonnull @dummy_nid, i32 noundef 1, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_default_EC() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef nonnull @dh_table, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #4
  ret %struct.engine_st* %call
}

declare %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_key_method_st* @ENGINE_get_EC(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #2 {
entry:
  %ec_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 5
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %ec_meth, align 8, !tbaa !4
  ret %struct.ec_key_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_EC(%struct.engine_st* nocapture noundef writeonly %e, %struct.ec_key_method_st* noundef %ec_meth) local_unnamed_addr #3 {
entry:
  %ec_meth1 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 5
  store %struct.ec_key_method_st* %ec_meth, %struct.ec_key_method_st** %ec_meth1, align 8, !tbaa !4
  ret i32 1
}

declare void @engine_table_cleanup(%struct.st_engine_table** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 40}
!5 = !{!"engine_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !7, i64 156, !9, i64 160, !10, i64 168, !6, i64 184, !6, i64 192}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
