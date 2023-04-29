; ModuleID = 'lib/kasprintf.c'
source_filename = "lib/kasprintf.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [62 x i8] c"different return values (%u and %u) from vsnprintf(\22%s\22, ...)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @kvasprintf(i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* noundef %ap) local_unnamed_addr #0 {
entry:
  %aq = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %byval-temp15 = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %aq to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.va_copy(i8* nonnull %0, i8* %1)
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef null, i64 noundef 0, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7
  call void @llvm.va_end(i8* nonnull %0)
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  %3 = call i8* @llvm.returnaddress(i32 0)
  %4 = ptrtoint i8* %3 to i64
  %and = and i64 %4, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %5 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %5
  %or = or i64 %shl5.neg, %4
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %4
  %cond = select i1 %tobool.not, i64 %and10, i64 %or
  %call11 = call i8* @__kmalloc_track_caller(i64 noundef %conv, i32 noundef %gfp, i64 noundef %cond) #8
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %6 = bitcast %"struct.std::__va_list"* %byval-temp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call16 = call i32 @vsnprintf(i8* noundef nonnull %call11, i64 noundef %conv, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp15) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7
  %cmp.not = icmp eq i32 %call, %call16
  br i1 %cmp.not, label %cleanup, label %do.end, !prof !8

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 noundef %call, i32 noundef %call16, i8* noundef %fmt) #8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kasprintf.c\22; .popsection; .long 14472b - 14470b; .short 31; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i8* %call11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__kmalloc_track_caller(i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kvasprintf_const(i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef %ap) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %call = call i8* @strchr(i8* noundef %fmt, i32 noundef 37) #8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @kstrdup_const(i8* noundef %fmt, i32 noundef %gfp) #8
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @strcmp(i8* noundef %fmt, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %gr_offs_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %ap, i64 0, i32 3
  %gr_offs = load i32, i32* %gr_offs_p, align 8
  %0 = icmp sgt i32 %gr_offs, -1
  br i1 %0, label %vaarg.on_stack, label %vaarg.maybe_reg

vaarg.maybe_reg:                                  ; preds = %if.then4
  %new_reg_offs = add nsw i32 %gr_offs, 8
  store i32 %new_reg_offs, i32* %gr_offs_p, align 8
  %inreg = icmp ult i32 %gr_offs, -7
  br i1 %inreg, label %vaarg.in_reg, label %vaarg.on_stack

vaarg.in_reg:                                     ; preds = %vaarg.maybe_reg
  %reg_top_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %ap, i64 0, i32 1
  %reg_top = load i8*, i8** %reg_top_p, align 8
  %1 = sext i32 %gr_offs to i64
  %2 = getelementptr inbounds i8, i8* %reg_top, i64 %1
  br label %vaarg.end

vaarg.on_stack:                                   ; preds = %vaarg.maybe_reg, %if.then4
  %stack_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %ap, i64 0, i32 0
  %stack = load i8*, i8** %stack_p, align 8
  %new_stack = getelementptr inbounds i8, i8* %stack, i64 8
  store i8* %new_stack, i8** %stack_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.on_stack, %vaarg.in_reg
  %vaargs.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %stack, %vaarg.on_stack ]
  %vaargs.addr = bitcast i8* %vaargs.addr.in to i8**
  %3 = load i8*, i8** %vaargs.addr, align 8
  %call5 = call i8* @kstrdup_const(i8* noundef %3, i32 noundef %gfp) #8
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7
  %5 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef align 8 dereferenceable(32) %5, i64 32, i1 false)
  %call7 = call noalias i8* @kvasprintf(i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7
  br label %return

return:                                           ; preds = %if.end6, %vaarg.end, %if.then
  %retval.0 = phi i8* [ %call7, %if.end6 ], [ %call5, %vaarg.end ], [ %call1, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @kasprintf(i32 noundef %gfp, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call noalias i8* @kvasprintf(i32 noundef %gfp, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i8* %call
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2150552839}
