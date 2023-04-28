; ModuleID = 'crypto/conf/conf_sap.c'
source_filename = "crypto/conf/conf_sap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_settings_st = type { i8*, i8*, i64 }

@openssl_configured = internal unnamed_addr global i1 false, align 4

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_config(i8* noundef %appname) local_unnamed_addr #0 {
entry:
  %settings = alloca %struct.ossl_init_settings_st, align 8
  %0 = bitcast %struct.ossl_init_settings_st* %settings to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 24) #6
  %cmp.not = icmp eq i8* %appname, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @strdup(i8* noundef nonnull %appname) #6
  %appname2 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 1
  store i8* %call1, i8** %appname2, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 2
  store i64 50, i64* %flags, align 8, !tbaa !10
  %call3 = call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef nonnull %settings) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_config_int(%struct.ossl_init_settings_st* noundef readonly %settings) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @openssl_configured, align 4
  br i1 %.b, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.ossl_init_settings_st* %settings, null
  br i1 %tobool1.not, label %cond.end13, label %cond.true10

cond.true10:                                      ; preds = %if.end
  %filename2 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 0
  %0 = load i8*, i8** %filename2, align 8, !tbaa !11
  %appname5 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 1
  %1 = load i8*, i8** %appname5, align 8, !tbaa !4
  %flags11 = getelementptr inbounds %struct.ossl_init_settings_st, %struct.ossl_init_settings_st* %settings, i64 0, i32 2
  %2 = load i64, i64* %flags11, align 8, !tbaa !10
  br label %cond.end13

cond.end13:                                       ; preds = %if.end, %cond.true10
  %cond832 = phi i8* [ %1, %cond.true10 ], [ null, %if.end ]
  %cond2831 = phi i8* [ %0, %cond.true10 ], [ null, %if.end ]
  %cond14 = phi i64 [ %2, %cond.true10 ], [ 50, %if.end ]
  %call = tail call i32 @CONF_modules_load_file(i8* noundef %cond2831, i8* noundef %cond832, i64 noundef %cond14) #6
  store i1 true, i1* @openssl_configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end13
  %retval.0 = phi i32 [ %call, %cond.end13 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @CONF_modules_load_file(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_no_config_int() local_unnamed_addr #4 {
entry:
  store i1 true, i1* @openssl_configured, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"ossl_init_settings_st", !6, i64 0, !6, i64 8, !9, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !9, i64 16}
!11 = !{!5, !6, i64 0}
