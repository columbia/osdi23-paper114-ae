; ModuleID = 'lib/uuid.c'
source_filename = "lib/uuid.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.uuid_t = type { [16 x i8] }

@guid_index = dso_local constant [16 x i8] c"\03\02\01\00\05\04\07\06\08\09\0A\0B\0C\0D\0E\0F", align 1
@uuid_index = dso_local constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@guid_null = dso_local local_unnamed_addr constant %struct.guid_t zeroinitializer, align 1
@uuid_null = dso_local local_unnamed_addr constant %struct.uuid_t zeroinitializer, align 1
@__uuid_parse.si = internal unnamed_addr constant [16 x i8] c"\00\02\04\06\09\0B\0E\10\13\15\18\1A\1C\1E \22", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @generate_random_uuid(i8* noundef %uuid) local_unnamed_addr #0 {
entry:
  call void @get_random_bytes(i8* noundef %uuid, i32 noundef 16) #3
  %arrayidx = getelementptr i8, i8* %uuid, i64 6
  %0 = load i8, i8* %arrayidx, align 1
  %1 = and i8 %0, 15
  %2 = or i8 %1, 64
  store i8 %2, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr i8, i8* %uuid, i64 8
  %3 = load i8, i8* %arrayidx3, align 1
  %4 = and i8 %3, 63
  %5 = or i8 %4, -128
  store i8 %5, i8* %arrayidx3, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @generate_random_guid(i8* noundef %guid) local_unnamed_addr #0 {
entry:
  call void @get_random_bytes(i8* noundef %guid, i32 noundef 16) #3
  %arrayidx = getelementptr i8, i8* %guid, i64 7
  %0 = load i8, i8* %arrayidx, align 1
  %1 = and i8 %0, 15
  %2 = or i8 %1, 64
  store i8 %2, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr i8, i8* %guid, i64 8
  %3 = load i8, i8* %arrayidx3, align 1
  %4 = and i8 %3, 63
  %5 = or i8 %4, -128
  store i8 %5, i8* %arrayidx3, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @guid_gen(%struct.guid_t* noundef %lu) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.guid_t, %struct.guid_t* %lu, i64 0, i32 0, i64 0
  call fastcc void @__uuid_gen_common(i8* noundef %arraydecay) #4
  %arrayidx = getelementptr %struct.guid_t, %struct.guid_t* %lu, i64 0, i32 0, i64 7
  %0 = load i8, i8* %arrayidx, align 1
  %1 = and i8 %0, 15
  %2 = or i8 %1, 64
  store i8 %2, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__uuid_gen_common(i8* noundef %b) unnamed_addr #0 {
entry:
  call void @prandom_bytes(i8* noundef %b, i64 noundef 16) #3
  %arrayidx = getelementptr i8, i8* %b, i64 8
  %0 = load i8, i8* %arrayidx, align 1
  %1 = and i8 %0, 63
  %2 = or i8 %1, -128
  store i8 %2, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @uuid_gen(%struct.uuid_t* noundef %bu) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.uuid_t, %struct.uuid_t* %bu, i64 0, i32 0, i64 0
  call fastcc void @__uuid_gen_common(i8* noundef %arraydecay) #4
  %arrayidx = getelementptr %struct.uuid_t, %struct.uuid_t* %bu, i64 0, i32 0, i64 6
  %0 = load i8, i8* %arrayidx, align 1
  %1 = and i8 %0, 15
  %2 = or i8 %1, 64
  store i8 %2, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @uuid_is_valid(i8* nocapture noundef readonly %uuid) local_unnamed_addr #2 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = trunc i64 %indvars.iv to i32
  switch i32 %0, label %if.else [
    i32 23, label %if.then
    i32 18, label %if.then
    i32 13, label %if.then
    i32 8, label %if.then
  ]

if.then:                                          ; preds = %for.body, %for.body, %for.body, %for.body
  %arrayidx = getelementptr i8, i8* %uuid, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx, align 1
  %cmp7.not = icmp eq i8 %1, 45
  br i1 %cmp7.not, label %for.inc, label %cleanup

if.else:                                          ; preds = %for.body
  %arrayidx11 = getelementptr i8, i8* %uuid, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx11, align 1
  %3 = zext i8 %2 to i64
  %arrayidx14 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx14, align 1
  %5 = and i8 %4, 68
  %cmp16.not = icmp eq i8 %5, 0
  br i1 %cmp16.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.else, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.else ], [ true, %for.inc ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @guid_parse(i8* nocapture noundef readonly %uuid, %struct.guid_t* nocapture noundef writeonly %u) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.guid_t, %struct.guid_t* %u, i64 0, i32 0, i64 0
  %call = call fastcc i32 @__uuid_parse(i8* noundef %uuid, i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @guid_index, i64 0, i64 0)) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__uuid_parse(i8* nocapture noundef readonly %uuid, i8* nocapture noundef writeonly %b, i8* nocapture noundef readonly %ei) unnamed_addr #0 {
entry:
  %call = call i1 @uuid_is_valid(i8* noundef %uuid) #4
  br i1 %call, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr [16 x i8], [16 x i8]* @__uuid_parse.si, i64 0, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %1 = zext i8 %0 to i64
  %arrayidx2 = getelementptr i8, i8* %uuid, i64 %1
  %2 = load i8, i8* %arrayidx2, align 1
  %call3 = call i32 @hex_to_bin(i8 noundef %2) #3
  %add7 = add nuw nsw i64 %1, 1
  %arrayidx9 = getelementptr i8, i8* %uuid, i64 %add7
  %3 = load i8, i8* %arrayidx9, align 1
  %call10 = call i32 @hex_to_bin(i8 noundef %3) #3
  %shl = shl i32 %call3, 4
  %or = or i32 %call10, %shl
  %conv11 = trunc i32 %or to i8
  %arrayidx13 = getelementptr i8, i8* %ei, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %4 to i64
  %arrayidx15 = getelementptr i8, i8* %b, i64 %idxprom14
  store i8 %conv11, i8* %arrayidx15, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @uuid_parse(i8* nocapture noundef readonly %uuid, %struct.uuid_t* nocapture noundef writeonly %u) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.uuid_t, %struct.uuid_t* %u, i64 0, i32 0, i64 0
  %call = call fastcc i32 @__uuid_parse(i8* noundef %uuid, i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @uuid_index, i64 0, i64 0)) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
