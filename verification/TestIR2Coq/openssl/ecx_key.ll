; ModuleID = 'crypto/ec/ecx_key.c'
source_filename = "crypto/ec/ecx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecx_key_st = type { %struct.ossl_lib_ctx_st*, i8*, i8, [57 x i8], i8*, i64, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/ecx_key.c\00", align 1
@__func__.ossl_ecx_key_new = private unnamed_addr constant [17 x i8] c"ossl_ecx_key_new\00", align 1
@switch.table.ossl_ecx_key_new = private unnamed_addr constant [4 x i64] [i64 32, i64 56, i64 32, i64 57], align 8

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_ecx_key_new(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %type, i32 noundef %haspubkey, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 112, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 17) #6
  %0 = bitcast i8* %call to %struct.ecx_key_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %1 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = trunc i32 %haspubkey to i8
  %bf.load = load i8, i8* %1, align 8
  %bf.value = and i8 %2, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %1, align 8
  %3 = icmp ult i32 %type, 4
  br i1 %3, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  %4 = sext i32 %type to i64
  %switch.gep = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.ossl_ecx_key_new, i64 0, i64 %4
  %switch.load = load i64, i64* %switch.gep, align 8
  %keylen8 = getelementptr inbounds i8, i8* %call, i64 88
  %5 = bitcast i8* %keylen8 to i64*
  store i64 %switch.load, i64* %5, align 8, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %switch.lookup
  %type9 = getelementptr inbounds i8, i8* %call, i64 96
  %6 = bitcast i8* %type9 to i32*
  store i32 %type, i32* %6, align 8, !tbaa !12
  %references = getelementptr inbounds i8, i8* %call, i64 100
  %7 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %7 seq_cst, align 4, !tbaa !13
  %cmp10.not = icmp eq i8* %propq, null
  br i1 %cmp10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #6
  %propq13 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %propq13 to i8**
  store i8* %call12, i8** %8, align 8, !tbaa !14
  %cmp15 = icmp eq i8* %call12, null
  br i1 %cmp15, label %err, label %if.end18

if.end18:                                         ; preds = %if.then11, %sw.epilog
  %call19 = tail call i8* @CRYPTO_THREAD_lock_new() #6
  %lock = getelementptr inbounds i8, i8* %call, i64 104
  %9 = bitcast i8* %lock to i8**
  store i8* %call19, i8** %9, align 8, !tbaa !15
  %cmp21 = icmp eq i8* %call19, null
  br i1 %cmp21, label %err, label %cleanup

err:                                              ; preds = %if.end18, %if.then11
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ecx_key_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry, %err
  %retval.0 = phi %struct.ecx_key_st* [ null, %err ], [ null, %entry ], [ %0, %if.end18 ]
  ret %struct.ecx_key_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_ecx_key_free(%struct.ecx_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %cmp = icmp eq %struct.ecx_key_st* %key, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 7
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #8
  %1 = load i32, i32* %i, align 4, !tbaa !16
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 8
  %propq = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 1
  %2 = load i8*, i8** %propq, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #6
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %3 = load i8*, i8** %privkey, align 8, !tbaa !17
  %keylen = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 5
  %4 = load i64, i64* %keylen, align 8, !tbaa !11
  tail call void @CRYPTO_secure_clear_free(i8* noundef %3, i64 noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #6
  %5 = load i8*, i8** %lock, align 8, !tbaa !15
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %5) #6
  %6 = bitcast %struct.ecx_key_st* %key to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !16
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ecx_key_set0_libctx(%struct.ecx_key_st* nocapture noundef writeonly %key, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #4 {
entry:
  %libctx1 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @ossl_ecx_key_up_ref(%struct.ecx_key_st* nocapture noundef %key) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %references = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 7
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #8
  %1 = load i32, i32* %i, align 4, !tbaa !16
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_ecx_key_allocate_privkey(%struct.ecx_key_st* nocapture noundef %key) local_unnamed_addr #0 {
entry:
  %keylen = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 5
  %0 = load i64, i64* %keylen, align 8, !tbaa !11
  %call = tail call i8* @CRYPTO_secure_zalloc(i64 noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 95) #6
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  store i8* %call, i8** %privkey, align 8, !tbaa !17
  ret i8* %call
}

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ecx_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !7, i64 17, !6, i64 80, !10, i64 88, !7, i64 96, !7, i64 100, !6, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !10, i64 88}
!12 = !{!5, !7, i64 96}
!13 = !{!5, !7, i64 100}
!14 = !{!5, !6, i64 8}
!15 = !{!5, !6, i64 104}
!16 = !{!9, !9, i64 0}
!17 = !{!5, !6, i64 80}
