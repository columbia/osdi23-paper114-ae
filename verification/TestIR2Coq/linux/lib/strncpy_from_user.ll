; ModuleID = 'lib/strncpy_from_user.c'
source_filename = "lib/strncpy_from_user.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.word_at_a_time = type { i64, i64 }

@__const.do_strncpy_from_user.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strncpy_from_user(i8* nocapture noundef writeonly %dst, i8* noundef %src, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %count, 1
  br i1 %cmp, label %cleanup29, label %if.end3, !prof !7

if.end3:                                          ; preds = %entry
  %0 = ptrtoint i8* %src to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %cmp5 = icmp ult i64 %and, 549755813888
  br i1 %cmp5, label %if.then14, label %cleanup29, !prof !8

if.then14:                                        ; preds = %if.end3
  %sub = sub nuw nsw i64 549755813888, %and
  %cmp16 = icmp ugt i64 %sub, %count
  %spec.select = select i1 %cmp16, i64 %count, i64 %sub
  %call22 = call fastcc i64 @__range_ok(i8* noundef %src, i64 noundef %spec.select) #7
  %tobool23.not = icmp eq i64 %call22, 0
  br i1 %tobool23.not, label %cleanup29, label %cleanup

cleanup:                                          ; preds = %if.then14
  %call25 = call fastcc i64 @do_strncpy_from_user(i8* noundef %dst, i8* noundef %src, i64 noundef %count, i64 noundef %spec.select) #7
  br label %cleanup29

cleanup29:                                        ; preds = %if.then14, %if.end3, %cleanup, %entry
  %retval.1 = phi i64 [ %call25, %cleanup ], [ 0, %entry ], [ -14, %if.end3 ], [ -14, %if.then14 ]
  ret i64 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #8, !srcloc !9
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_strncpy_from_user(i8* nocapture noundef writeonly %dst, i8* noundef %src, i64 noundef %count, i64 noundef %max) unnamed_addr #0 {
entry:
  %constants = alloca %struct.word_at_a_time, align 8
  %data = alloca i64, align 8
  %0 = bitcast %struct.word_at_a_time* %constants to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.word_at_a_time* @__const.do_strncpy_from_user.constants to i8*), i64 16, i1 false)
  %cmp154 = icmp ugt i64 %max, 7
  br i1 %cmp154, label %while.body.lr.ph, label %byte_at_a_time

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast i64* %data to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %max.addr.0156 = phi i64 [ %max, %while.body.lr.ph ], [ %sub, %cleanup ]
  %res.0155 = phi i64 [ 0, %while.body.lr.ph ], [ %add27, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %data, align 8, !annotation !10
  %add.ptr = getelementptr i8, i8* %src, i64 %res.0155
  %call = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 8) #7
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %byte_at_a_time.thread, label %if.end

if.end:                                           ; preds = %while.body
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #7
  %2 = bitcast i8* %call2 to i64*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %2, i32 -14, i32 0) #8, !srcloc !11
  %asmresult = extractvalue { i32, i64 } %3, 0
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %tobool12.not = icmp eq i32 %asmresult, 0
  br i1 %tobool12.not, label %do.end18, label %byte_at_a_time.thread, !prof !8

do.end18:                                         ; preds = %if.end
  %call19 = call fastcc i64 @has_zero(i64 noundef %asmresult6, i64* noundef nonnull %data, %struct.word_at_a_time* noundef nonnull %constants) #7
  %tobool20.not = icmp eq i64 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %cleanup.thread127

cleanup.thread127:                                ; preds = %do.end18
  %asmresult6.le = extractvalue { i32, i64 } %3, 1
  %4 = load i64, i64* %data, align 8
  %call22 = call fastcc i64 @create_zero_mask(i64 noundef %4) #7
  %and = and i64 %call22, %asmresult6.le
  %add.ptr23 = getelementptr i8, i8* %dst, i64 %res.0155
  %5 = bitcast i8* %add.ptr23 to i64*
  store i64 %and, i64* %5, align 8
  %call24 = call fastcc i64 @find_zero(i64 noundef %call22) #7
  %add = add i64 %call24, %res.0155
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  br label %cleanup83

byte_at_a_time.thread:                            ; preds = %while.body, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  br label %while.body32.preheader

cleanup:                                          ; preds = %do.end18
  %add.ptr26 = getelementptr i8, i8* %dst, i64 %res.0155
  %6 = bitcast i8* %add.ptr26 to i64*
  store i64 %asmresult6, i64* %6, align 8
  %add27 = add i64 %res.0155, 8
  %sub = add i64 %max.addr.0156, -8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  %cmp = icmp ugt i64 %sub, 7
  br i1 %cmp, label %while.body, label %byte_at_a_time

byte_at_a_time:                                   ; preds = %cleanup, %entry
  %res.0151 = phi i64 [ 0, %entry ], [ %add27, %cleanup ]
  %max.addr.0148 = phi i64 [ %max, %entry ], [ %sub, %cleanup ]
  %tobool31.not158 = icmp eq i64 %max.addr.0148, 0
  br i1 %tobool31.not158, label %while.end78, label %while.body32.preheader

while.body32.preheader:                           ; preds = %byte_at_a_time.thread, %byte_at_a_time
  %max.addr.3160.ph = phi i64 [ %max.addr.0148, %byte_at_a_time ], [ %max.addr.0156, %byte_at_a_time.thread ]
  %res.3159.ph = phi i64 [ %res.0151, %byte_at_a_time ], [ %res.0155, %byte_at_a_time.thread ]
  br label %while.body32

while.body32:                                     ; preds = %while.body32.preheader, %cleanup75
  %max.addr.3160 = phi i64 [ %dec, %cleanup75 ], [ %max.addr.3160.ph, %while.body32.preheader ]
  %res.3159 = phi i64 [ %inc, %cleanup75 ], [ %res.3159.ph, %while.body32.preheader ]
  %add.ptr38 = getelementptr i8, i8* %src, i64 %res.3159
  %call39 = call fastcc i64 @__range_ok(i8* noundef %add.ptr38, i64 noundef 1) #7
  %tobool40.not = icmp eq i64 %call39, 0
  br i1 %tobool40.not, label %efault, label %if.end56

if.end56:                                         ; preds = %while.body32
  %call42 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr38) #7
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call42, i32 -14, i32 0) #8, !srcloc !12
  %asmresult47 = extractvalue { i32, i64 } %7, 0
  %asmresult48 = extractvalue { i32, i64 } %7, 1
  %conv49 = trunc i64 %asmresult48 to i8
  %tobool60.not = icmp eq i32 %asmresult47, 0
  br i1 %tobool60.not, label %do.end71, label %efault, !prof !8

do.end71:                                         ; preds = %if.end56
  %arrayidx = getelementptr i8, i8* %dst, i64 %res.3159
  store i8 %conv49, i8* %arrayidx, align 1
  %tobool72.not = icmp eq i8 %conv49, 0
  br i1 %tobool72.not, label %cleanup83, label %cleanup75

cleanup75:                                        ; preds = %do.end71
  %inc = add i64 %res.3159, 1
  %dec = add i64 %max.addr.3160, -1
  %tobool31.not = icmp eq i64 %dec, 0
  br i1 %tobool31.not, label %while.end78, label %while.body32

while.end78:                                      ; preds = %cleanup75, %byte_at_a_time
  %res.3.lcssa = phi i64 [ %res.0151, %byte_at_a_time ], [ %inc, %cleanup75 ]
  %cmp79.not = icmp ult i64 %res.3.lcssa, %count
  br i1 %cmp79.not, label %efault, label %cleanup83

efault:                                           ; preds = %while.body32, %if.end56, %while.end78
  br label %cleanup83

cleanup83:                                        ; preds = %do.end71, %cleanup.thread127, %while.end78, %efault
  %retval.5 = phi i64 [ -14, %efault ], [ %res.3.lcssa, %while.end78 ], [ %add, %cleanup.thread127 ], [ %res.3159, %do.end71 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i64 %retval.5
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #8, !srcloc !13
  call void asm sideeffect "hint #20", "~{memory}"() #8, !srcloc !14
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @has_zero(i64 noundef %a, i64* nocapture noundef writeonly %bits, %struct.word_at_a_time* nocapture noundef readonly %c) unnamed_addr #3 {
entry:
  %one_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 0
  %0 = load i64, i64* %one_bits, align 8
  %sub = sub i64 %a, %0
  %neg = xor i64 %a, -1
  %and = and i64 %sub, %neg
  %high_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 1
  %1 = load i64, i64* %high_bits, align 8
  %and1 = and i64 %and, %1
  store i64 %and1, i64* %bits, align 8
  ret i64 %and1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @create_zero_mask(i64 noundef %bits) unnamed_addr #4 {
entry:
  %sub = add i64 %bits, -1
  %neg = xor i64 %bits, -1
  %and = and i64 %sub, %neg
  %shr = lshr i64 %and, 7
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @find_zero(i64 noundef %mask) unnamed_addr #5 {
entry:
  %cmp.i = icmp eq i64 %mask, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %mask, i1 false) #8, !range !15
  %conv.i = sub nuw nsw i64 64, %0
  %conv.i.op = lshr i64 %conv.i, 3
  %conv2 = select i1 %cmp.i, i64 0, i64 %conv.i.op
  ret i64 %conv2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2980442, i64 2980525, i64 2980749, i64 2980969, i64 2980992}
!10 = !{!"auto-init"}
!11 = !{i64 2152566907, i64 2152566947, i64 2152566964, i64 2152566999, i64 2152567021, i64 2152567047, i64 2152567070, i64 2152567088, i64 2152567103, i64 2152567144, i64 2152567166, i64 2152567212}
!12 = !{i64 2152575168, i64 2152575212, i64 2152575229, i64 2152575264, i64 2152575286, i64 2152575312, i64 2152575335, i64 2152575353, i64 2152575368, i64 2152575409, i64 2152575431, i64 2152575477}
!13 = !{i64 2985144, i64 2985168}
!14 = !{i64 2150784602}
!15 = !{i64 0, i64 65}
