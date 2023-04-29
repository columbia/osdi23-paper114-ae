; ModuleID = 'lib/extable.c'
source_filename = "lib/extable.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32, i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sort_extable(%struct.exception_table_entry* noundef %start, %struct.exception_table_entry* noundef %finish) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.exception_table_entry* %start to i8*
  %sub.ptr.lhs.cast = ptrtoint %struct.exception_table_entry* %finish to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.exception_table_entry* %start to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  call void @sort(i8* noundef %0, i64 noundef %sub.ptr.div, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @cmp_ex_sort, void (i8*, i8*, i32)* noundef nonnull @swap_ex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @cmp_ex_sort(i8* noundef readonly %a, i8* noundef readonly %b) #2 {
entry:
  %0 = bitcast i8* %a to %struct.exception_table_entry*
  %1 = bitcast i8* %b to %struct.exception_table_entry*
  %call = call fastcc i64 @ex_to_insn(%struct.exception_table_entry* noundef %0) #5
  %call1 = call fastcc i64 @ex_to_insn(%struct.exception_table_entry* noundef %1) #5
  %cmp = icmp ugt i64 %call, %call1
  %cmp4 = icmp ult i64 %call, %call1
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @swap_ex(i8* noundef %a, i8* noundef %b, i32 noundef %size) #3 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %b to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %a to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %tmp.sroa.0.0..sroa_idx = bitcast i8* %a to i32*
  %tmp.sroa.0.0.copyload = load i32, i32* %tmp.sroa.0.0..sroa_idx, align 4
  %tmp.sroa.5.0..sroa_idx15 = getelementptr inbounds i8, i8* %a, i64 4
  %0 = bitcast i8* %tmp.sroa.5.0..sroa_idx15 to i32*
  %tmp.sroa.5.0.copyload = load i32, i32* %0, align 4
  %insn = bitcast i8* %b to i32*
  %1 = load i32, i32* %insn, align 4
  %add = add i32 %1, %conv
  store i32 %add, i32* %tmp.sroa.0.0..sroa_idx, align 4
  %sub = sub i32 %tmp.sroa.0.0.copyload, %conv
  store i32 %sub, i32* %insn, align 4
  %fixup = getelementptr inbounds i8, i8* %b, i64 4
  %2 = bitcast i8* %fixup to i32*
  %3 = load i32, i32* %2, align 4
  %add4 = add i32 %3, %conv
  store i32 %add4, i32* %0, align 4
  %sub7 = sub i32 %tmp.sroa.5.0.copyload, %conv
  store i32 %sub7, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.exception_table_entry* @search_extable(%struct.exception_table_entry* noundef %base, i64 noundef %num, i64 noundef %value) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = bitcast i64* %value.addr to i8*
  %1 = bitcast %struct.exception_table_entry* %base to i8*
  %call = call i8* @bsearch(i8* noundef nonnull %0, i8* noundef %1, i64 noundef %num, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @cmp_ex_search) #4
  %2 = bitcast i8* %call to %struct.exception_table_entry*
  ret %struct.exception_table_entry* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bsearch(i8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @cmp_ex_search(i8* nocapture noundef readonly %key, i8* noundef readonly %elt) #2 {
entry:
  %0 = bitcast i8* %elt to %struct.exception_table_entry*
  %1 = bitcast i8* %key to i64*
  %2 = load i64, i64* %1, align 8
  %call = call fastcc i64 @ex_to_insn(%struct.exception_table_entry* noundef %0) #5
  %cmp = icmp ugt i64 %2, %call
  %cmp2 = icmp ult i64 %2, %call
  %. = sext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @ex_to_insn(%struct.exception_table_entry* noundef %x) unnamed_addr #2 {
entry:
  %insn = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %x, i64 0, i32 0
  %0 = ptrtoint %struct.exception_table_entry* %x to i64
  %1 = load i32, i32* %insn, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 %conv, %0
  ret i64 %add
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
