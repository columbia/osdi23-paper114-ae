; ModuleID = 'crypto/sha/sha3.c'
source_filename = "crypto/sha/sha3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keccak_st = type { [5 x [5 x i64]], i64, i64, i64, [168 x i8], i8, %struct.prov_sha3_meth_st }
%struct.prov_sha3_meth_st = type { i64 (i8*, i8*, i64)*, i32 (i8*, i8*)* }

; Function Attrs: noinline nounwind uwtable
define void @ossl_sha3_reset(%struct.keccak_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.keccak_st* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 200) #3
  %bufsz = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 3
  store i64 0, i64* %bufsz, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sha3_init(%struct.keccak_st* noundef %ctx, i8 noundef zeroext %pad, i64 noundef %bitlen) local_unnamed_addr #0 {
entry:
  %mul.neg = mul i64 %bitlen, -2
  %sub = add i64 %mul.neg, 1600
  %cmp = icmp ult i64 %sub, 1352
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %div = lshr i64 %sub, 3
  tail call void @ossl_sha3_reset(%struct.keccak_st* noundef %ctx) #4
  %block_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 1
  store i64 %div, i64* %block_size, align 8, !tbaa !11
  %div1 = lshr i64 %bitlen, 3
  %md_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 2
  store i64 %div1, i64* %md_size, align 8, !tbaa !12
  %pad2 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 5
  store i8 %pad, i8* %pad2, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_keccak_kmac_init(%struct.keccak_st* noundef %ctx, i8 noundef zeroext %pad, i64 noundef %bitlen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_sha3_init(%struct.keccak_st* noundef %ctx, i8 noundef zeroext %pad, i64 noundef %bitlen) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %md_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 2
  %0 = load i64, i64* %md_size, align 8, !tbaa !12
  %mul = shl i64 %0, 1
  store i64 %mul, i64* %md_size, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sha3_update(%struct.keccak_st* noundef %ctx, i8* noundef %_inp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %block_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 1
  %0 = load i64, i64* %block_size, align 8, !tbaa !11
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bufsz = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 3
  %1 = load i64, i64* %bufsz, align 8, !tbaa !4
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp1.not, label %if.end18, label %if.then2

if.then2:                                         ; preds = %if.end
  %sub = sub i64 %0, %1
  %cmp3 = icmp ugt i64 %sub, %len
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %add.ptr = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 %1
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %_inp, i64 noundef %len) #3
  %2 = load i64, i64* %bufsz, align 8, !tbaa !4
  %add = add i64 %2, %len
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.then2
  %arraydecay8 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 0
  %add.ptr9 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 %1
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr9, i8* noundef %_inp, i64 noundef %sub) #3
  %add.ptr11 = getelementptr inbounds i8, i8* %_inp, i64 %sub
  %sub12 = sub i64 %len, %sub
  %arraydecay13 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 0, i64 0
  %call16 = tail call i64 @SHA3_absorb([5 x i64]* noundef %arraydecay13, i8* noundef nonnull %arraydecay8, i64 noundef %0, i64 noundef %0) #3
  store i64 0, i64* %bufsz, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.end6, %if.end
  %inp.0 = phi i8* [ %add.ptr11, %if.end6 ], [ %_inp, %if.end ]
  %len.addr.0 = phi i64 [ %sub12, %if.end6 ], [ %len, %if.end ]
  %cmp19.not = icmp ult i64 %len.addr.0, %0
  br i1 %cmp19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end18
  %arraydecay22 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 0, i64 0
  %call23 = tail call i64 @SHA3_absorb([5 x i64]* noundef %arraydecay22, i8* noundef %inp.0, i64 noundef %len.addr.0, i64 noundef %0) #3
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.then20
  %rem.0 = phi i64 [ %call23, %if.then20 ], [ %len.addr.0, %if.end18 ]
  %tobool.not = icmp eq i64 %rem.0, 0
  br i1 %tobool.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %if.end24
  %arraydecay27 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 0
  %add.ptr28 = getelementptr inbounds i8, i8* %inp.0, i64 %len.addr.0
  %idx.neg = sub i64 0, %rem.0
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr28, i64 %idx.neg
  %call30 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay27, i8* noundef %add.ptr29, i64 noundef %rem.0) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.then25
  %rem.0.sink = phi i64 [ %rem.0, %if.then25 ], [ %add, %if.then4 ]
  store i64 %rem.0.sink, i64* %bufsz, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24, %entry
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i64 @SHA3_absorb([5 x i64]* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sha3_final(i8* noundef %md, %struct.keccak_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %block_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 1
  %0 = load i64, i64* %block_size, align 8, !tbaa !11
  %bufsz = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 3
  %1 = load i64, i64* %bufsz, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 2
  %2 = load i64, i64* %md_size, align 8, !tbaa !12
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 0
  %add.ptr = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 %1
  %sub = sub i64 %0, %1
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #3
  %pad = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 5
  %3 = load i8, i8* %pad, align 8, !tbaa !13
  store i8 %3, i8* %add.ptr, align 1, !tbaa !14
  %sub3 = add i64 %0, -1
  %arrayidx4 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 4, i64 %sub3
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !14
  %5 = or i8 %4, -128
  store i8 %5, i8* %arrayidx4, align 1, !tbaa !14
  %arraydecay6 = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %ctx, i64 0, i32 0, i64 0
  %call9 = tail call i64 @SHA3_absorb([5 x i64]* noundef %arraydecay6, i8* noundef nonnull %arraydecay, i64 noundef %0, i64 noundef %0) #3
  %6 = load i64, i64* %md_size, align 8, !tbaa !12
  tail call void @SHA3_squeeze([5 x i64]* noundef %arraydecay6, i8* noundef %md, i64 noundef %6, i64 noundef %0) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 1
}

declare void @SHA3_squeeze([5 x i64]* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 216}
!5 = !{!"keccak_st", !6, i64 0, !8, i64 200, !8, i64 208, !8, i64 216, !6, i64 224, !6, i64 392, !9, i64 400}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!"prov_sha3_meth_st", !10, i64 0, !10, i64 8}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!5, !8, i64 200}
!12 = !{!5, !8, i64 208}
!13 = !{!5, !6, i64 392}
!14 = !{!6, !6, i64 0}
