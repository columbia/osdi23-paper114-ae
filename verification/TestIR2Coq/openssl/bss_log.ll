; ModuleID = 'crypto/bio/bss_log.c'
source_filename = "crypto/bio/bss_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.anon = type { i32, [10 x i8], i32 }

@methods_slg = internal constant %struct.bio_method_st { i32 1025, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @slg_write, i32 (%struct.bio_st*, i8*, i64, i64*)* null, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*)* @slg_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @slg_ctrl, i32 (%struct.bio_st*)* @slg_new, i32 (%struct.bio_st*)* @slg_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@slg_write.mapping = internal constant [20 x %struct.anon] [%struct.anon { i32 6, [10 x i8] c"PANIC \00\00\00\00", i32 0 }, %struct.anon { i32 6, [10 x i8] c"EMERG \00\00\00\00", i32 0 }, %struct.anon { i32 4, [10 x i8] c"EMR \00\00\00\00\00\00", i32 0 }, %struct.anon { i32 6, [10 x i8] c"ALERT \00\00\00\00", i32 1 }, %struct.anon { i32 4, [10 x i8] c"ALR \00\00\00\00\00\00", i32 1 }, %struct.anon { i32 5, [10 x i8] c"CRIT \00\00\00\00\00", i32 2 }, %struct.anon { i32 4, [10 x i8] c"CRI \00\00\00\00\00\00", i32 2 }, %struct.anon { i32 6, [10 x i8] c"ERROR \00\00\00\00", i32 3 }, %struct.anon { i32 4, [10 x i8] c"ERR \00\00\00\00\00\00", i32 3 }, %struct.anon { i32 8, [10 x i8] c"WARNING \00\00", i32 4 }, %struct.anon { i32 5, [10 x i8] c"WARN \00\00\00\00\00", i32 4 }, %struct.anon { i32 4, [10 x i8] c"WAR \00\00\00\00\00\00", i32 4 }, %struct.anon { i32 7, [10 x i8] c"NOTICE \00\00\00", i32 5 }, %struct.anon { i32 5, [10 x i8] c"NOTE \00\00\00\00\00", i32 5 }, %struct.anon { i32 4, [10 x i8] c"NOT \00\00\00\00\00\00", i32 5 }, %struct.anon { i32 5, [10 x i8] c"INFO \00\00\00\00\00", i32 6 }, %struct.anon { i32 4, [10 x i8] c"INF \00\00\00\00\00\00", i32 6 }, %struct.anon { i32 6, [10 x i8] c"DEBUG \00\00\00\00", i32 7 }, %struct.anon { i32 4, [10 x i8] c"DBG \00\00\00\00\00\00", i32 7 }, %struct.anon { i32 0, [10 x i8] zeroinitializer, i32 3 }], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/bio/bss_log.c\00", align 1
@__func__.slg_write = private unnamed_addr constant [10 x i8] c"slg_write\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"application\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_log() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_slg
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @slg_write(%struct.bio_st* nocapture noundef readnone %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %cmp = icmp slt i32 %inl, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nuw nsw i32 %inl, 1
  %conv41 = zext i32 %add to i64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %conv41, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.slg_write, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv542 = zext i32 %inl to i64
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %in, i64 noundef %conv542) #5
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv542
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end4
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %if.end4 ]
  %arraydecay = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %indvars.iv, i32 1, i64 0
  %strl = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %indvars.iv, i32 0
  %0 = load i32, i32* %strl, align 4, !tbaa !7
  %conv11 = sext i32 %0 to i64
  %call12 = tail call i32 @strncmp(i8* noundef nonnull %call, i8* noundef nonnull %arraydecay, i64 noundef %conv11) #6
  %cmp13.not = icmp eq i32 %call12, 0
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %cmp13.not, label %while.end, label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %conv11.le = sext i32 %0 to i64
  %idxprom7.le = and i64 %indvars.iv, 4294967295
  %log_level = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %idxprom7.le, i32 2
  %1 = load i32, i32* %log_level, align 4, !tbaa !12
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %conv11.le
  tail call fastcc void @xsyslog(i32 noundef %1, i8* noundef nonnull %add.ptr) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 215) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %inl, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slg_puts(%struct.bio_st* nocapture noundef readnone %bp, i8* noundef %str) #2 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #6
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @slg_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @slg_ctrl(%struct.bio_st* nocapture noundef readnone %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %cond = icmp eq i32 %cmd, 4
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call fastcc void @xcloselog() #7
  %conv = trunc i64 %num to i32
  tail call fastcc void @xopenlog(i8* noundef %ptr, i32 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slg_new(%struct.bio_st* nocapture noundef writeonly %bi) #2 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !13
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 0, i32* %num, align 8, !tbaa !18
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* null, i8** %ptr, align 8, !tbaa !19
  tail call fastcc void @xopenlog(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef 24) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @slg_free(%struct.bio_st* noundef readnone %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @xcloselog() #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @xsyslog(i32 noundef %priority, i8* noundef %string) unnamed_addr #2 {
entry:
  tail call void (i32, i8*, ...) @syslog(i32 noundef %priority, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %string) #5
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @syslog(i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @xcloselog() unnamed_addr #2 {
entry:
  tail call void @closelog() #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @xopenlog(i8* noundef %name, i32 noundef %level) unnamed_addr #2 {
entry:
  tail call void @openlog(i8* noundef %name, i32 noundef 3, i32 noundef %level) #5
  ret void
}

declare void @closelog() local_unnamed_addr #1

declare void @openlog(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !5, i64 4, !9, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !9, i64 16}
!13 = !{!14, !9, i64 40}
!14 = !{!"bio_st", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !5, i64 88, !16, i64 96, !16, i64 104, !17, i64 112, !15, i64 128}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"crypto_ex_data_st", !15, i64 0, !15, i64 8}
!18 = !{!14, !9, i64 56}
!19 = !{!14, !15, i64 64}
