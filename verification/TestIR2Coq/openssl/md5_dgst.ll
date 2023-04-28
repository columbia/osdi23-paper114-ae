; ModuleID = 'crypto/md5/md5_dgst.c'
source_filename = "crypto/md5/md5_dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @MD5_Update(%struct.MD5state_st* noundef %c, i8* noundef %data_, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %Nl = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 4
  %0 = load i32, i32* %Nl, align 4, !tbaa !4
  %conv = trunc i64 %len to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %0, %shl
  %cmp4 = icmp ult i32 %add, %0
  %Nh = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 5
  %1 = load i32, i32* %Nh, align 4, !tbaa !9
  %inc = zext i1 %cmp4 to i32
  %2 = add i32 %1, %inc
  %shr = lshr i64 %len, 29
  %conv8 = trunc i64 %shr to i32
  %Nh9 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 5
  %add10 = add i32 %2, %conv8
  store i32 %add10, i32* %Nh9, align 4, !tbaa !9
  store i32 %add, i32* %Nl, align 4, !tbaa !4
  %num = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 7
  %3 = load i32, i32* %num, align 4, !tbaa !10
  %conv12 = zext i32 %3 to i64
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.end34, label %if.then15

if.then15:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 6, i64 0
  %4 = bitcast i32* %arraydecay to i8*
  %cmp17 = icmp ugt i64 %len, 63
  %add19 = add i64 %conv12, %len
  %cmp20 = icmp ugt i64 %add19, 63
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %conv12
  br i1 %or.cond, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %sub = sub nsw i64 64, %conv12
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %sub) #3
  tail call void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef nonnull %c, i8* noundef nonnull %4, i64 noundef 1) #3
  %add.ptr24 = getelementptr inbounds i8, i8* %data_, i64 %sub
  %sub25 = sub i64 %len, %sub
  store i32 0, i32* %num, align 4, !tbaa !10
  %call27 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 64) #3
  br label %if.end34

if.else:                                          ; preds = %if.then15
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %len) #3
  %5 = load i32, i32* %num, align 4, !tbaa !10
  %add32 = add i32 %5, %conv
  store i32 %add32, i32* %num, align 4, !tbaa !10
  br label %cleanup

if.end34:                                         ; preds = %if.then22, %if.end
  %len.addr.0 = phi i64 [ %sub25, %if.then22 ], [ %len, %if.end ]
  %data.0 = phi i8* [ %add.ptr24, %if.then22 ], [ %data_, %if.end ]
  %cmp35.not = icmp ult i64 %len.addr.0, 64
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end34
  %div = lshr i64 %len.addr.0, 6
  tail call void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef nonnull %c, i8* noundef %data.0, i64 noundef %div) #3
  %mul = and i64 %len.addr.0, -64
  %add.ptr38 = getelementptr inbounds i8, i8* %data.0, i64 %mul
  %sub39 = and i64 %len.addr.0, 63
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34
  %len.addr.1 = phi i64 [ %sub39, %if.then37 ], [ %len.addr.0, %if.end34 ]
  %data.1 = phi i8* [ %add.ptr38, %if.then37 ], [ %data.0, %if.end34 ]
  %cmp41.not = icmp eq i64 %len.addr.1, 0
  br i1 %cmp41.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  %arraydecay45 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 6, i64 0
  %6 = bitcast i32* %arraydecay45 to i8*
  %conv46 = trunc i64 %len.addr.1 to i32
  store i32 %conv46, i32* %num, align 4, !tbaa !10
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %data.1, i64 noundef %len.addr.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then43, %entry, %if.else
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @MD5_Transform(%struct.MD5state_st* noundef %c, i8* noundef %data) local_unnamed_addr #0 {
entry:
  tail call void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef %c, i8* noundef %data, i64 noundef 1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @MD5_Final(i8* nocapture noundef writeonly %md, %struct.MD5state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 6, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  %num = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 7
  %1 = load i32, i32* %num, align 4, !tbaa !10
  %conv = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %conv
  store i8 -128, i8* %arrayidx, align 1, !tbaa !11
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ugt i32 %1, 55
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %inc
  %sub = sub nsw i64 63, %conv
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #3
  tail call void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 0, %if.then ], [ %inc, %entry ]
  %add.ptr2 = getelementptr inbounds i8, i8* %0, i64 %n.0
  %sub3 = sub nsw i64 56, %n.0
  %call4 = tail call i8* @memset(i8* noundef nonnull %add.ptr2, i32 noundef 0, i64 noundef %sub3) #3
  %add.ptr5183 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 6, i64 14
  %add.ptr5 = bitcast i32* %add.ptr5183 to i8*
  %Nl = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 4
  %2 = load i32, i32* %Nl, align 4, !tbaa !4
  %conv6 = trunc i32 %2 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  store i8 %conv6, i8* %add.ptr5, align 1, !tbaa !11
  %shr = lshr i32 %2, 8
  %conv9 = trunc i32 %shr to i8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %add.ptr5, i64 2
  store i8 %conv9, i8* %incdec.ptr, align 1, !tbaa !11
  %shr12 = lshr i32 %2, 16
  %conv14 = trunc i32 %shr12 to i8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %add.ptr5, i64 3
  store i8 %conv14, i8* %incdec.ptr10, align 1, !tbaa !11
  %shr17 = lshr i32 %2, 24
  %conv19 = trunc i32 %shr17 to i8
  %incdec.ptr20184 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 6, i64 15
  %incdec.ptr20 = bitcast i32* %incdec.ptr20184 to i8*
  store i8 %conv19, i8* %incdec.ptr15, align 1, !tbaa !11
  %Nh = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 5
  %3 = load i32, i32* %Nh, align 4, !tbaa !9
  %conv23 = trunc i32 %3 to i8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 1
  store i8 %conv23, i8* %incdec.ptr20, align 1, !tbaa !11
  %shr26 = lshr i32 %3, 8
  %conv28 = trunc i32 %shr26 to i8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 2
  store i8 %conv28, i8* %incdec.ptr24, align 1, !tbaa !11
  %shr31 = lshr i32 %3, 16
  %conv33 = trunc i32 %shr31 to i8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 3
  store i8 %conv33, i8* %incdec.ptr29, align 1, !tbaa !11
  %shr36 = lshr i32 %3, 24
  %conv38 = trunc i32 %shr36 to i8
  store i8 %conv38, i8* %incdec.ptr34, align 1, !tbaa !11
  tail call void @ossl_md5_block_asm_data_order(%struct.MD5state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #3
  store i32 0, i32* %num, align 4, !tbaa !10
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #3
  %A = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 0
  %4 = load i32, i32* %A, align 4, !tbaa !12
  %conv43 = zext i32 %4 to i64
  %conv45 = trunc i32 %4 to i8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv45, i8* %md, align 1, !tbaa !11
  %shr47 = lshr i64 %conv43, 8
  %conv49 = trunc i64 %shr47 to i8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv49, i8* %incdec.ptr46, align 1, !tbaa !11
  %shr51 = lshr i64 %conv43, 16
  %conv53 = trunc i64 %shr51 to i8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv53, i8* %incdec.ptr50, align 1, !tbaa !11
  %shr55 = lshr i64 %conv43, 24
  %conv57 = trunc i64 %shr55 to i8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv57, i8* %incdec.ptr54, align 1, !tbaa !11
  %B = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 1
  %5 = load i32, i32* %B, align 4, !tbaa !13
  %conv59 = zext i32 %5 to i64
  %conv61 = trunc i32 %5 to i8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv61, i8* %incdec.ptr58, align 1, !tbaa !11
  %shr63 = lshr i64 %conv59, 8
  %conv65 = trunc i64 %shr63 to i8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv65, i8* %incdec.ptr62, align 1, !tbaa !11
  %shr67 = lshr i64 %conv59, 16
  %conv69 = trunc i64 %shr67 to i8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv69, i8* %incdec.ptr66, align 1, !tbaa !11
  %shr71 = lshr i64 %conv59, 24
  %conv73 = trunc i64 %shr71 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv73, i8* %incdec.ptr70, align 1, !tbaa !11
  %C = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 2
  %6 = load i32, i32* %C, align 4, !tbaa !14
  %conv75 = zext i32 %6 to i64
  %conv77 = trunc i32 %6 to i8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !11
  %shr79 = lshr i64 %conv75, 8
  %conv81 = trunc i64 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv81, i8* %incdec.ptr78, align 1, !tbaa !11
  %shr83 = lshr i64 %conv75, 16
  %conv85 = trunc i64 %shr83 to i8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv85, i8* %incdec.ptr82, align 1, !tbaa !11
  %shr87 = lshr i64 %conv75, 24
  %conv89 = trunc i64 %shr87 to i8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv89, i8* %incdec.ptr86, align 1, !tbaa !11
  %D = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %c, i64 0, i32 3
  %7 = load i32, i32* %D, align 4, !tbaa !15
  %conv91 = zext i32 %7 to i64
  %conv93 = trunc i32 %7 to i8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv93, i8* %incdec.ptr90, align 1, !tbaa !11
  %shr95 = lshr i64 %conv91, 8
  %conv97 = trunc i64 %shr95 to i8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv97, i8* %incdec.ptr94, align 1, !tbaa !11
  %shr99 = lshr i64 %conv91, 16
  %conv101 = trunc i64 %shr99 to i8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv101, i8* %incdec.ptr98, align 1, !tbaa !11
  %shr103 = lshr i64 %conv91, 24
  %conv105 = trunc i64 %shr103 to i8
  store i8 %conv105, i8* %incdec.ptr102, align 1, !tbaa !11
  ret i32 1
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @MD5_Init(%struct.MD5state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.MD5state_st* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 92) #3
  %1 = bitcast %struct.MD5state_st* %c to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %1, align 4, !tbaa !16
  ret i32 1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 16}
!5 = !{!"MD5state_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !7, i64 24, !6, i64 88}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 20}
!10 = !{!5, !6, i64 88}
!11 = !{!7, !7, i64 0}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !6, i64 4}
!14 = !{!5, !6, i64 8}
!15 = !{!5, !6, i64 12}
!16 = !{!6, !6, i64 0}
