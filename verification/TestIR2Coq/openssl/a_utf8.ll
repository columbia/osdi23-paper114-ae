; ModuleID = 'crypto/asn1/a_utf8.c'
source_filename = "crypto/asn1/a_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @UTF8_getc(i8* nocapture noundef readonly %str, i32 noundef %len, i64* nocapture noundef writeonly %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %str, align 1, !tbaa !4
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 128
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %conv, 127
  %1 = zext i32 %and5 to i64
  br label %if.end137

if.else:                                          ; preds = %if.end
  %and8 = and i32 %conv, 224
  %cmp9 = icmp eq i32 %and8, 192
  br i1 %cmp9, label %if.then11, label %if.else34

if.then11:                                        ; preds = %if.else
  %cmp12 = icmp ult i32 %len, 2
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then11
  %arrayidx = getelementptr inbounds i8, i8* %str, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %3 = and i8 %2, -64
  %cmp18.not = icmp eq i8 %3, -128
  br i1 %cmp18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end15
  %and24 = shl nuw nsw i32 %conv, 6
  %shl = and i32 %and24, 1984
  %4 = zext i32 %shl to i64
  %5 = and i8 %2, 63
  %6 = zext i8 %5 to i64
  %or = or i64 %6, %4
  %cmp30 = icmp ult i64 %or, 128
  br i1 %cmp30, label %cleanup, label %if.end137

if.else34:                                        ; preds = %if.else
  %and36 = and i32 %conv, 240
  %cmp37 = icmp eq i32 %and36, 224
  br i1 %cmp37, label %if.then39, label %if.else78

if.then39:                                        ; preds = %if.else34
  %cmp40 = icmp ult i32 %len, 3
  br i1 %cmp40, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.then39
  %arrayidx44 = getelementptr inbounds i8, i8* %str, i64 1
  %7 = load i8, i8* %arrayidx44, align 1, !tbaa !4
  %8 = and i8 %7, -64
  %cmp47.not = icmp eq i8 %8, -128
  br i1 %cmp47.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end43
  %arrayidx49 = getelementptr inbounds i8, i8* %str, i64 2
  %9 = load i8, i8* %arrayidx49, align 1, !tbaa !4
  %10 = and i8 %9, -64
  %cmp52.not = icmp eq i8 %10, -128
  br i1 %cmp52.not, label %if.end55, label %cleanup

if.end55:                                         ; preds = %lor.lhs.false
  %and58 = shl nuw nsw i32 %conv, 12
  %shl59 = and i32 %and58, 61440
  %11 = zext i32 %shl59 to i64
  %12 = and i8 %7, 63
  %and63 = zext i8 %12 to i64
  %shl64 = shl nuw nsw i64 %and63, 6
  %or66 = or i64 %shl64, %11
  %13 = and i8 %9, 63
  %14 = zext i8 %13 to i64
  %or71 = or i64 %or66, %14
  %cmp72 = icmp ult i64 %or71, 2048
  br i1 %cmp72, label %cleanup, label %if.end75

if.end75:                                         ; preds = %if.end55
  %call = tail call fastcc i32 @is_unicode_surrogate(i64 noundef %or71) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end137, label %cleanup

if.else78:                                        ; preds = %if.else34
  %and80 = and i32 %conv, 248
  %cmp81 = icmp eq i32 %and80, 240
  br i1 %cmp81, label %if.then83, label %cleanup

if.then83:                                        ; preds = %if.else78
  %cmp84 = icmp ult i32 %len, 4
  br i1 %cmp84, label %cleanup, label %if.end87

if.end87:                                         ; preds = %if.then83
  %arrayidx88 = getelementptr inbounds i8, i8* %str, i64 1
  %15 = load i8, i8* %arrayidx88, align 1, !tbaa !4
  %16 = and i8 %15, -64
  %cmp91.not = icmp eq i8 %16, -128
  br i1 %cmp91.not, label %lor.lhs.false93, label %cleanup

lor.lhs.false93:                                  ; preds = %if.end87
  %arrayidx94 = getelementptr inbounds i8, i8* %str, i64 2
  %17 = load i8, i8* %arrayidx94, align 1, !tbaa !4
  %18 = and i8 %17, -64
  %cmp97.not = icmp eq i8 %18, -128
  br i1 %cmp97.not, label %lor.lhs.false99, label %cleanup

lor.lhs.false99:                                  ; preds = %lor.lhs.false93
  %arrayidx100 = getelementptr inbounds i8, i8* %str, i64 3
  %19 = load i8, i8* %arrayidx100, align 1, !tbaa !4
  %20 = and i8 %19, -64
  %cmp103.not = icmp eq i8 %20, -128
  br i1 %cmp103.not, label %if.end106, label %cleanup

if.end106:                                        ; preds = %lor.lhs.false99
  %and109 = shl nuw nsw i32 %conv, 18
  %21 = and i32 %and109, 1835008
  %shl111 = zext i32 %21 to i64
  %22 = and i8 %15, 63
  %and114 = zext i8 %22 to i64
  %shl115 = shl nuw nsw i64 %and114, 12
  %or117 = or i64 %shl115, %shl111
  %23 = and i8 %17, 63
  %and120 = zext i8 %23 to i64
  %shl121 = shl nuw nsw i64 %and120, 6
  %or123 = or i64 %shl121, %or117
  %24 = and i8 %19, 63
  %25 = zext i8 %24 to i64
  %or128 = or i64 %or123, %25
  %cmp129 = icmp ult i64 %or128, 65536
  br i1 %cmp129, label %cleanup, label %if.end137

if.end137:                                        ; preds = %if.end106, %if.end75, %if.end21, %if.then3
  %value.0 = phi i64 [ %1, %if.then3 ], [ %or, %if.end21 ], [ %or71, %if.end75 ], [ %or128, %if.end106 ]
  %ret.0 = phi i32 [ 1, %if.then3 ], [ 2, %if.end21 ], [ 3, %if.end75 ], [ 4, %if.end106 ]
  store i64 %value.0, i64* %val, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.end106, %if.end87, %lor.lhs.false93, %lor.lhs.false99, %if.then83, %if.end75, %if.end55, %if.end43, %lor.lhs.false, %if.then39, %if.end21, %if.end15, %if.then11, %entry, %if.end137
  %retval.0 = phi i32 [ %ret.0, %if.end137 ], [ 0, %entry ], [ -1, %if.then11 ], [ -3, %if.end15 ], [ -4, %if.end21 ], [ -1, %if.then39 ], [ -3, %lor.lhs.false ], [ -3, %if.end43 ], [ -4, %if.end55 ], [ -2, %if.end75 ], [ -1, %if.then83 ], [ -3, %lor.lhs.false99 ], [ -3, %lor.lhs.false93 ], [ -3, %if.end87 ], [ -4, %if.end106 ], [ -2, %if.else78 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @is_unicode_surrogate(i64 noundef %value) unnamed_addr #1 {
entry:
  %0 = and i64 %value, -2048
  %1 = icmp eq i64 %0, 55296
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @UTF8_putc(i8* noundef writeonly %str, i32 noundef %len, i64 noundef %value) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %if.end2, label %if.else

if.else:                                          ; preds = %entry
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %return, label %if.end2.thread

if.end2:                                          ; preds = %entry
  %cmp3 = icmp ult i64 %value, 128
  br i1 %cmp3, label %return, label %if.end8

if.end2.thread:                                   ; preds = %if.else
  %cmp3116 = icmp ult i64 %value, 128
  br i1 %cmp3116, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end2.thread
  %conv = trunc i64 %value to i8
  store i8 %conv, i8* %str, align 1, !tbaa !4
  br label %return

if.end8:                                          ; preds = %if.end2.thread, %if.end2
  %len.addr.0117 = phi i32 [ %len, %if.end2.thread ], [ 4, %if.end2 ]
  %cmp9 = icmp ult i64 %value, 2048
  br i1 %cmp9, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.end8
  %cmp12 = icmp ult i32 %len.addr.0117, 2
  %brmerge = or i1 %tobool.not, %cmp12
  %.mux = select i1 %cmp12, i32 -1, i32 2
  br i1 %brmerge, label %return, label %if.then17

if.then17:                                        ; preds = %if.then11
  %shr = lshr i64 %value, 6
  %0 = trunc i64 %shr to i8
  %conv18 = or i8 %0, -64
  %incdec.ptr = getelementptr inbounds i8, i8* %str, i64 1
  store i8 %conv18, i8* %str, align 1, !tbaa !4
  %1 = trunc i64 %value to i8
  %2 = and i8 %1, 63
  %conv21 = or i8 %2, -128
  store i8 %conv21, i8* %incdec.ptr, align 1, !tbaa !4
  br label %return

if.end23:                                         ; preds = %if.end8
  %cmp24 = icmp ult i64 %value, 65536
  br i1 %cmp24, label %if.then26, label %if.end50

if.then26:                                        ; preds = %if.end23
  %call = tail call fastcc i32 @is_unicode_surrogate(i64 noundef %value) #3
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end29, label %return

if.end29:                                         ; preds = %if.then26
  %cmp30 = icmp ult i32 %len.addr.0117, 3
  %brmerge111 = or i1 %tobool.not, %cmp30
  %.mux112 = select i1 %cmp30, i32 -1, i32 3
  br i1 %brmerge111, label %return, label %if.then35

if.then35:                                        ; preds = %if.end29
  %shr36 = lshr i64 %value, 12
  %3 = trunc i64 %shr36 to i8
  %conv39 = or i8 %3, -32
  %incdec.ptr40 = getelementptr inbounds i8, i8* %str, i64 1
  store i8 %conv39, i8* %str, align 1, !tbaa !4
  %shr41 = lshr i64 %value, 6
  %4 = trunc i64 %shr41 to i8
  %5 = and i8 %4, 63
  %conv44 = or i8 %5, -128
  %incdec.ptr45 = getelementptr inbounds i8, i8* %str, i64 2
  store i8 %conv44, i8* %incdec.ptr40, align 1, !tbaa !4
  %6 = trunc i64 %value to i8
  %7 = and i8 %6, 63
  %conv48 = or i8 %7, -128
  store i8 %conv48, i8* %incdec.ptr45, align 1, !tbaa !4
  br label %return

if.end50:                                         ; preds = %if.end23
  %cmp51 = icmp ult i64 %value, 1114112
  br i1 %cmp51, label %if.then53, label %return

if.then53:                                        ; preds = %if.end50
  %cmp54 = icmp ult i32 %len.addr.0117, 4
  %brmerge113 = or i1 %tobool.not, %cmp54
  %.mux114 = select i1 %cmp54, i32 -1, i32 4
  br i1 %brmerge113, label %return, label %if.then59

if.then59:                                        ; preds = %if.then53
  %shr60 = lshr i64 %value, 18
  %8 = trunc i64 %shr60 to i8
  %conv63 = or i8 %8, -16
  %incdec.ptr64 = getelementptr inbounds i8, i8* %str, i64 1
  store i8 %conv63, i8* %str, align 1, !tbaa !4
  %shr65 = lshr i64 %value, 12
  %9 = trunc i64 %shr65 to i8
  %10 = and i8 %9, 63
  %conv68 = or i8 %10, -128
  %incdec.ptr69 = getelementptr inbounds i8, i8* %str, i64 2
  store i8 %conv68, i8* %incdec.ptr64, align 1, !tbaa !4
  %shr70 = lshr i64 %value, 6
  %11 = trunc i64 %shr70 to i8
  %12 = and i8 %11, 63
  %conv73 = or i8 %12, -128
  %incdec.ptr74 = getelementptr inbounds i8, i8* %str, i64 3
  store i8 %conv73, i8* %incdec.ptr69, align 1, !tbaa !4
  %13 = trunc i64 %value to i8
  %14 = and i8 %13, 63
  %conv77 = or i8 %14, -128
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !4
  br label %return

return:                                           ; preds = %if.end2, %if.then53, %if.end29, %if.then11, %if.end50, %if.then59, %if.then35, %if.then26, %if.then17, %if.then6, %if.else
  %retval.0 = phi i32 [ -1, %if.else ], [ 1, %if.then6 ], [ %.mux, %if.then11 ], [ 2, %if.then17 ], [ -2, %if.then26 ], [ %.mux112, %if.end29 ], [ 3, %if.then35 ], [ %.mux114, %if.then53 ], [ 4, %if.then59 ], [ -2, %if.end50 ], [ 1, %if.end2 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
