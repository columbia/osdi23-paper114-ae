; ModuleID = 'crypto/asn1/a_type.c'
source_filename = "crypto/asn1/a_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ASN1_TYPE_get(%struct.asn1_type_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  switch i32 %0, label %lor.lhs.false3 [
    i32 1, label %if.then
    i32 5, label %if.then
  ]

lor.lhs.false3:                                   ; preds = %entry
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !9
  %cmp4.not = icmp eq i8* %1, null
  br i1 %cmp4.not, label %return, label %if.then

if.then:                                          ; preds = %entry, %entry, %lor.lhs.false3
  br label %return

return:                                           ; preds = %lor.lhs.false3, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %a, i32 noundef %type, i8* noundef %value) local_unnamed_addr #1 {
entry:
  %a.addr = alloca %struct.asn1_type_st*, align 8
  store %struct.asn1_type_st* %a, %struct.asn1_type_st** %a.addr, align 8, !tbaa !10
  %type1 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type1, align 8, !tbaa !4
  switch i32 %0, label %land.lhs.true4 [
    i32 1, label %if.end
    i32 5, label %if.end
  ]

land.lhs.true4:                                   ; preds = %entry
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !9
  %cmp6.not = icmp eq i8* %1, null
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true4
  %2 = bitcast %struct.asn1_type_st** %a.addr to %struct.ASN1_VALUE_st**
  call void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef nonnull %2, %struct.ASN1_ITEM_st* noundef null, i32 noundef 0) #3
  %.pre = load %struct.asn1_type_st*, %struct.asn1_type_st** %a.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %if.then, %land.lhs.true4
  %3 = phi %struct.asn1_type_st* [ %a, %entry ], [ %a, %entry ], [ %.pre, %if.then ], [ %a, %land.lhs.true4 ]
  %type7 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %3, i64 0, i32 0
  store i32 %type, i32* %type7, align 8, !tbaa !4
  %cmp8 = icmp eq i32 %type, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %tobool.not = icmp eq i8* %value, null
  %cond = select i1 %tobool.not, i32 0, i32 255
  %value10 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %3, i64 0, i32 1
  %boolean = bitcast %union.anon* %value10 to i32*
  store i32 %cond, i32* %boolean, align 8, !tbaa !9
  br label %if.end13

if.else:                                          ; preds = %if.end
  %ptr12 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %3, i64 0, i32 1, i32 0
  store i8* %value, i8** %ptr12, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  ret void
}

declare void @ossl_asn1_primitive_free(%struct.ASN1_VALUE_st** noundef, %struct.ASN1_ITEM_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_set1(%struct.asn1_type_st* noundef %a, i32 noundef %type, i8* noundef %value) local_unnamed_addr #1 {
entry:
  %tobool = icmp eq i8* %value, null
  %cmp = icmp eq i32 %type, 1
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %a, i32 noundef %type, i8* noundef %value) #4
  br label %return

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %type, 6
  br i1 %cmp1, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %0 = bitcast i8* %value to %struct.asn1_object_st*
  %call = tail call %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef %0) #3
  %tobool3.not = icmp eq %struct.asn1_object_st* %call, null
  br i1 %tobool3.not, label %return, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then2
  %1 = bitcast %struct.asn1_object_st* %call to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %a, i32 noundef 6, i8* noundef nonnull %1) #4
  br label %return

if.else5:                                         ; preds = %if.else
  %2 = bitcast i8* %value to %struct.asn1_string_st*
  %call6 = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %2) #3
  %tobool7.not = icmp eq %struct.asn1_string_st* %call6, null
  br i1 %tobool7.not, label %return, label %cleanup10.thread

cleanup10.thread:                                 ; preds = %if.else5
  %3 = bitcast %struct.asn1_string_st* %call6 to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %a, i32 noundef %type, i8* noundef nonnull %3) #4
  br label %return

return:                                           ; preds = %if.then, %cleanup.thread, %cleanup10.thread, %if.else5, %if.then2
  %retval.2 = phi i32 [ 0, %if.then2 ], [ 0, %if.else5 ], [ 1, %cleanup10.thread ], [ 1, %cleanup.thread ], [ 1, %if.then ]
  ret i32 %retval.2
}

declare %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef readonly %a, %struct.asn1_type_st* noundef readonly %b) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne %struct.asn1_type_st* %a, null
  %tobool1 = icmp ne %struct.asn1_type_st* %b, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %type3 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %b, i64 0, i32 0
  %1 = load i32, i32* %type3, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %sw.bb7
    i32 5, label %cleanup
  ]

sw.bb:                                            ; preds = %if.end
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1
  %object = bitcast %union.anon* %value to %struct.asn1_object_st**
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object, align 8, !tbaa !9
  %value5 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %b, i64 0, i32 1
  %object6 = bitcast %union.anon* %value5 to %struct.asn1_object_st**
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %object6, align 8, !tbaa !9
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %3) #3
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %value8 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1
  %boolean = bitcast %union.anon* %value8 to i32*
  %4 = load i32, i32* %boolean, align 8, !tbaa !9
  %value9 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %b, i64 0, i32 1
  %boolean10 = bitcast %union.anon* %value9 to i32*
  %5 = load i32, i32* %boolean10, align 8, !tbaa !9
  %sub = sub nsw i32 %4, %5
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %ptr = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %a, i64 0, i32 1, i32 0
  %6 = bitcast i8** %ptr to %struct.asn1_string_st**
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %6, align 8, !tbaa !9
  %ptr15 = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %b, i64 0, i32 1, i32 0
  %8 = bitcast i8** %ptr15 to %struct.asn1_string_st**
  %9 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !tbaa !9
  %call16 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %7, %struct.asn1_string_st* noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb7, %sw.default, %if.end, %entry, %lor.lhs.false2
  %retval.0 = phi i32 [ -1, %lor.lhs.false2 ], [ -1, %entry ], [ %call16, %sw.default ], [ %sub, %sw.bb7 ], [ %call, %sw.bb ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_type_st* @ASN1_TYPE_pack_sequence(%struct.ASN1_ITEM_st* noundef %it, i8* noundef %s, %struct.asn1_type_st** noundef %t) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %s, %struct.ASN1_ITEM_st* noundef %it, %struct.asn1_string_st** noundef null) #3
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.asn1_type_st** %t, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = load %struct.asn1_type_st*, %struct.asn1_type_st** %t, align 8, !tbaa !10
  %tobool1.not = icmp eq %struct.asn1_type_st* %0, null
  br i1 %tobool1.not, label %if.else.thread, label %if.end10

if.else:                                          ; preds = %if.end
  %call3 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #3
  %cmp4 = icmp eq %struct.asn1_type_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end10

if.else.thread:                                   ; preds = %land.lhs.true
  %call323 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #3
  %cmp424 = icmp eq %struct.asn1_type_st* %call323, null
  br i1 %cmp424, label %if.then5, label %if.then8

if.then5:                                         ; preds = %if.else.thread, %if.else
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #3
  br label %cleanup

if.then8:                                         ; preds = %if.else.thread
  store %struct.asn1_type_st* %call323, %struct.asn1_type_st** %t, align 8, !tbaa !10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true, %if.then8
  %rt.0 = phi %struct.asn1_type_st* [ %call323, %if.then8 ], [ %0, %land.lhs.true ], [ %call3, %if.else ]
  %1 = bitcast %struct.asn1_string_st* %call to i8*
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef nonnull %rt.0, i32 noundef 16, i8* noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10, %if.then5
  %retval.0 = phi %struct.asn1_type_st* [ %rt.0, %if.end10 ], [ null, %if.then5 ], [ null, %entry ]
  ret %struct.asn1_type_st* %retval.0
}

declare %struct.asn1_string_st* @ASN1_item_pack(i8* noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_TYPE_unpack_sequence(%struct.ASN1_ITEM_st* noundef %it, %struct.asn1_type_st* noundef readonly %t) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_type_st* %t, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %t, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !4
  %cmp1.not = icmp eq i32 %0, 16
  br i1 %cmp1.not, label %lor.lhs.false2, label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %t, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !9
  %cmp3 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef nonnull %1, %struct.ASN1_ITEM_st* noundef %it) #3
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %lor.lhs.false2 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

declare i8* @ASN1_item_unpack(%struct.asn1_string_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
