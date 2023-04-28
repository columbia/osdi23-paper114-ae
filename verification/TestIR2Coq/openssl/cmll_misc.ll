; ModuleID = 'crypto/camellia/cmll_misc.c'
source_filename = "crypto/camellia/cmll_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camellia_key_st = type { %union.anon, i32 }
%union.anon = type { double, [264 x i8] }

; Function Attrs: noinline nounwind uwtable
define i32 @Camellia_set_key(i8* noundef %userKey, i32 noundef %bits, %struct.camellia_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne i8* %userKey, null
  %tobool1 = icmp ne %struct.camellia_key_st* %key, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  switch i32 %bits, label %return [
    i32 256, label %if.end6
    i32 192, label %if.end6
    i32 128, label %if.end6
  ]

if.end6:                                          ; preds = %if.end, %if.end, %if.end
  %arraydecay = bitcast %struct.camellia_key_st* %key to i32*
  %call = tail call i32 @Camellia_Ekeygen(i32 noundef %bits, i8* noundef nonnull %userKey, i32* noundef nonnull %arraydecay) #2
  %grand_rounds = getelementptr inbounds %struct.camellia_key_st, %struct.camellia_key_st* %key, i64 0, i32 1
  store i32 %call, i32* %grand_rounds, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -1, %entry ], [ -2, %if.end ]
  ret i32 %retval.0
}

declare i32 @Camellia_Ekeygen(i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @Camellia_encrypt(i8* noundef %in, i8* noundef %out, %struct.camellia_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %grand_rounds = getelementptr inbounds %struct.camellia_key_st, %struct.camellia_key_st* %key, i64 0, i32 1
  %0 = load i32, i32* %grand_rounds, align 8, !tbaa !4
  %arraydecay = bitcast %struct.camellia_key_st* %key to i32*
  tail call void @Camellia_EncryptBlock_Rounds(i32 noundef %0, i8* noundef %in, i32* noundef %arraydecay, i8* noundef %out) #2
  ret void
}

declare void @Camellia_EncryptBlock_Rounds(i32 noundef, i8* noundef, i32* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @Camellia_decrypt(i8* noundef %in, i8* noundef %out, %struct.camellia_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %grand_rounds = getelementptr inbounds %struct.camellia_key_st, %struct.camellia_key_st* %key, i64 0, i32 1
  %0 = load i32, i32* %grand_rounds, align 8, !tbaa !4
  %arraydecay = bitcast %struct.camellia_key_st* %key to i32*
  tail call void @Camellia_DecryptBlock_Rounds(i32 noundef %0, i8* noundef %in, i32* noundef %arraydecay, i8* noundef %out) #2
  ret void
}

declare void @Camellia_DecryptBlock_Rounds(i32 noundef, i8* noundef, i32* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 272}
!5 = !{!"camellia_key_st", !6, i64 0, !8, i64 272}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
