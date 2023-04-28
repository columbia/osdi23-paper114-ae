; ModuleID = 'crypto/evp/dh_support.c'
source_filename = "crypto/evp/dh_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_name2id_st = type { i8*, i32, i32 }

@dhtype2id = internal unnamed_addr constant [4 x %struct.dh_name2id_st] [%struct.dh_name2id_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 3, i32 -1 }, %struct.dh_name2id_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0 }, %struct.dh_name2id_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 4096 }, %struct.dh_name2id_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 4096 }], align 16
@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fips186_4\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fips186_2\00", align 1
@switch.table.ossl_dh_gen_type_id2name = private unnamed_addr constant [4 x i64] [i64 1, i64 3, i64 2, i64 0], align 8

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @ossl_dh_gen_type_id2name(i32 noundef %id) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %id, 4
  br i1 %0, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %id to i64
  %switch.gep = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.ossl_dh_gen_type_id2name, i64 0, i64 %1
  %switch.load = load i64, i64* %switch.gep, align 8
  %name = getelementptr inbounds [4 x %struct.dh_name2id_st], [4 x %struct.dh_name2id_st]* @dhtype2id, i64 0, i64 %switch.load, i32 0
  %2 = load i8*, i8** %name, align 16, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %2, %switch.lookup ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ossl_dh_gen_type_name2id(i8* noundef readonly %name, i32 noundef %type) local_unnamed_addr #1 {
land.lhs.true:
  %call = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef %name) #3
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.1

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %i.017.lcssa = phi i64 [ 0, %land.lhs.true ], [ 1, %land.lhs.true.1 ], [ 2, %land.lhs.true.2 ], [ 3, %land.lhs.true.3 ]
  %id = getelementptr inbounds [4 x %struct.dh_name2id_st], [4 x %struct.dh_name2id_st]* @dhtype2id, i64 0, i64 %i.017.lcssa, i32 1
  %0 = load i32, i32* %id, align 8, !tbaa !10
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %land.lhs.true
  switch i32 %type, label %cleanup [
    i32 0, label %land.lhs.true.1
    i32 4096, label %land.lhs.true.2
  ]

land.lhs.true.1:                                  ; preds = %lor.lhs.false.1
  %call.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name) #3
  %cmp8.1 = icmp eq i32 %call.1, 0
  br i1 %cmp8.1, label %if.then, label %cleanup

land.lhs.true.2:                                  ; preds = %lor.lhs.false.1
  %call.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %name) #3
  %cmp8.2 = icmp eq i32 %call.2, 0
  br i1 %cmp8.2, label %if.then, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %call.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %name) #3
  %cmp8.3 = icmp eq i32 %call.3, 0
  br i1 %cmp8.3, label %if.then, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.1, %land.lhs.true.1, %land.lhs.true.3, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %land.lhs.true.3 ], [ -1, %land.lhs.true.1 ], [ -1, %lor.lhs.false.1 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"dh_name2id_st", !6, i64 0, !9, i64 8, !9, i64 12}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
